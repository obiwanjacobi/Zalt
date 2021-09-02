# IDE Module

The idea here is to have the details of the IDE/PATA disk managed by an MCU.
The MCU acts as a DMA controller to the Z80 and can read/write data directly into/from the Z80 memory - after the Z80 has released its bus.

The idea is also that the interaction abstraction is higher that tracks and sectors or even logical blocks.
The idea of (Meta) Streams can be implemented to interface with the disk. The data is moved between Z80 memory and IDE(DMA) using blocks of a certain size. There will be a limit on the max block size because of the size of the internal memory of the MCU (4kB). The location of the command parameter and data buffers have to be on an address that is greater than `0x2200` (ATmega2560) because the DMA of the IDE controller cannot go below that - where it's own internal memory is located. Note that it is also possible to set an upper limit and free a couple of pins on the MCU that would then not be needed for the upper address lines.

The MCU exposes IO locations to the Z80 program to set registers. At what address the data is to be read/written and how large the blocks are etc. Writing to the data or Command Buffer registers, will reset any internal state in the IDE controller.

Register | Description
--|--
Buffer Address | 16-bit memory address for data exchange [1]
Buffer Length | 16-bit memory size [2]
Command Buffer Address | 16-bit memory address for writing command parameters [1][3]
BlockIndex | Writing this triggers a block-move for the current command [4]
Status | Status of the last (or current) operation [5]
Interrupt Vector | IM0 RST instruction or IM2 interrupt vector

---

Notes:

1. The Z80 raw address must be supplied to these registers. The MCU-DMA will take over the Z80 bus and any memory mapping the MMU has in place will activate as if the Z80 itself was reading/writing data.

2. The length of these data blocks are always a multiple of 512 bytes due to the logical block size the IDE uses (128 x 16-bit words). Not strictly needed but addition data will be read from the IDE disk and not used. For writing, the entire 512 bytes for that block has to be read, the changes copied in and the result written back. If the data does not align with the disk's logical blocks, multiple blocks have to be read and written.

3. The command buffer has a fixed (mandatory) length.

4. If we make the BlockIndex 8-bits the maximum file size is related to the `BufferLength`. With a `BufferLength` of 512-multiples the maximum file size would be 256*512=131072 bytes. Sounds like a reasonable start. A 4k buffer would yield 1MB file sizes.

5. Status can be written to set interrupt enable.

> For a (potential) RAM disk, we need extra registers that point to the RAM disk buffer (in Z80 memory) and defines its length.

## Commands

Command | Description
--|--
Read | reads a file
Write | writes a file
Delete | deletes a file
Move | moves a file or folder
Copy | copies a file or folder
Find | finds one or more files (returns meta)
ReadMeta | reads the meta stream
WriteMeta | writes the meta stream (create folders)
DeleteMeta | deletes the meta stream (delete folders)
Abort | aborts any active command

---

The Ide Controller will store all state that is needed across block calls - triggered by writing to the IO `BlockIndex` register of the IDE controller - in the command block. The reserved/filler area is there for that purpose and should not be changed by the Z80 program. Any new command can zero-out the command block and fill the parameters as needed (`Command` is mandatory).

The command parameter block is kept intact during the execution of multiple block transfers for a command - only the IDE controller will update the Stream parameters for bookkeeping. Then by writing the (next) BlockIndex into the IO register, the IDE controller will process the next block.

Multiple file transfers can be interleaved by (re)writing the location of the Command Parameter and data buffers.

## Command Parameters

Due to the high abstraction of the commands there is a need to pass extra command parameters.

```c
enum Commands
{
    None,   // done
    Read,
    Write,
    Delete
    Copy,   // also Move?
    Find,
    Abort   // error
    Meta    // flag
    Direct  // flag
    Sequential  // flag
}

enum Status
{
    Done,
    Error,
    Busy,
}

struct CommandParameters
{
    Commands    Command;
    Status      Status;
    uint16_t    ContentLength;
    uint16_t    ContentOffset;
    const char* Location;       // 16 bits

    // block bookkeeping
    uint16_t    StreamLength;
    uint16_t    StreamOffset;
    uint8_t     Filler[];   // reserved space
}
```

The `None` command is written by the IDE controller on the last block when a data exchange is finished. When a Z80 program writes a stream to the IDE controller it does not have to indicate the end. The IDE controller uses the `ContentLength` in combination with `StreamLength` and `StreamOffset` to calculate this.

The `Abort` command can be written by the Z80 program to abort an unfinished exchange -or it is written by the IDE controller when an error occurs. It is also an error when the `BlockIndex` written to the IO register of the IDE controller is outside the range of the `ContentLength` and `ContentOffset` specified in the command parameter block.

The `Meta` flag can be combined with the following commands:

- Read
- Write
- Delete

The `Direct` flag on any command indicates that the operation is to use the data from the Z80 memory directly and not copy it to the IDE controller's internal memory first.

The `Sequential` flag indicates that (part of) the file is read in sequence (forward, not random access) *AND* that the command will not be interleaved with other commands. This allows the IDE controller to prefetch data for the next block while the Z80 program is processing the current block. Not all commands will take advantage of this flag but it is never an error specifying it.

The `Status` field is a copy of the Status register at the very last moment the IDE controller has access to the Z80 memory bus. The status register can be queried at any time to get an up to date value. For instance a write command copies the data over to the IDE controller's internal memory and then releases the bus. At that time the status is `Busy` as an indication of the data being written to disk. It also indicates that it is ok for the Z80 program to fill up the (write) buffer with another block of data.

The `Location` field of the file (or folder) to fetch is a pointer to a null-terminated string. The location of this string must be accessible to the IDE controller when it accesses the Z80 memory directly (DMA). Should not be a problem.

### File Path (Location)

The file path parameters identifies the location of a file on the file system. Files and Folders can be explored by opening Meta streams on the root or any known folder location.

This parameter is mandatory for all commands.

Location | Description
--|--
`/` | root folder
`/MyFolder/` | 1st level folder [1]
`/MyFile.dat` | root file
`/**/*.txt` | Find query (find all text files in any folder)

---

1. Note that folder paths always end with a path separator (`/`).

### Block Number

The block numbers (Id) of the first block in the buffer. When a command starts this is always 0. When a continuation is submitted, this number is incremented by the Z80 program.

### Content Length

The content length parameter allows a limit on the amount of data to return from a (data) stream. Usually not very useful for Meta streams.

This parameter can be specified per byte (no alignment).
If not specified (zero) the entire file is retrieved.

### Content Offset

The content offset parameter allows reading or writing partial files. Usually not very useful for Meta streams.

This parameter can be specified per byte (no alignment).
If not specified (zero) data transfers starts at the beginning of the file.

### Stream Length

Running value for length of the stream. It is always smaller or equal to the `BufferLength`.

### Stream Offset

Running value for the offset for the current block in the buffer. The next block will start at the `Stream Offset` + `Stream Length`, taking the `ContentOffset` as a start point.

For Meta Streams it may be necessary to relate back to the disk data. For instance doing a list (dir) on a folder may return more files than the buffer has room for. This field will point to the next item in the original list (from FS).

### Stream Structure

Exchange of data between the Z80 program and the IDE (or any other smart device) is done by pumping over blocks of data using the shared (Z80) memory buffer.

For data files the buffer is just a part of the file content. The interpretation of that content is up to the Z80 program.

For Meta Streams there is a fixed structure to the content of the stream. If a meta stream is larger than the buffer length, it will always contain a number of complete structures - it never ends (or begins) with a partial structure.

The bad news is that the structure is a variable size - to save space.

```c
enum MetaFlags
{
    None = 0x00,        // end of the line
    File = 0x01,
    Folder = 0x02,

    Protected = 0x04,  // read-only
    Hidden = 0x08,

    // TBD
    Meta,   // indicates a meta stream
    Volume, // volume/partition ??
    Flush,  // make sure everything is persisted
}

struct MetaRecord
{
    MetaFlags   Flags;  // uint8_t
    uint32_t    ContentLength; // max length dependent on FS
    uint16_t    Date;
    uint16_t    Time;
    char        Location[1+];   // variable length
}
```

Field | Offset | Description
--|--|--
Flags | 0 | Flags and attributes of the record
ContentLength | 1 | Length in bytes of a file (0 for Folder)
Date | 5 | Date (year, month and day) of last modified
Time | 7 | Time (hour, minute, second) of last modified
Location | 19 | Zero terminated string of path (min length is 1)
\<end> | > 20 | Variable length structure

---

The end of the stream is indicated by an additional `null` in memory (next record's Flags = None).

> No provision for Volumes, Partitions, (un)mounting etc. yet.

> Mount drives by name (not drive letter) service as root.

Location names are subject to underlying file system (FAT32/exFAT). Assume 8.3 file names.

## Process Interaction

### Read

- The Z80 program initializes the command block for a read operation.
- The Z80 program sets the MCU-DMA registers using OUT instruction at the appropriate addresses.
- The Z80 program triggers the MCU-DMA to perform the read command (writing to the BlockIndex register).
- The MCU-DMA implements the file system and maps the requested file path to an entry in the index on disk.
- The MCU-DMA activates the read-command to the IDE disk and retrieves the first logical block.
- When retrieving the data from disk is finished, the MCU-DMA activates the Z80 /BUSRQ to gain access to the memory.
- After /BUSACK is activated the MCU-DMA disables the IDE-interface and enables the external memory interface.
- It then copies the data from the MCU's internal memory to a memory location that corresponds to the target address in the Z80 memory. It also updates the command block.
- When done it releases the Z80 /BUSRQ and advanced its internal state-machine to setup the next read cycle from the ide.
- The MCU-DMA will generate an /INT to the Z80.
- In the mean time the MCU-DMA will commence to read the next data block into its internal memory (pre-fetch).
- The Z80 program will respond to the interrupt and signal the MCU-DMA that the next block can be read (by writing to the BlockIndex register).
- The MCU-DMA will continue to move data from its internal memory to the Z80's memory and preloading the next data block.

### Write

- The Z80 program initializes the command block for a write operation.
- The Z80 program sets the MCU-DMA registers using OUT instruction at the appropriate addresses.
- The Z80 program writes its data to the (shared) memory it has set up for the MCU-DMA to access.
- The Z80 program triggers the MCU-DMA to perform the write command (writing to the BlockIndex register).
- Then the MCU-DMA activates the Z80 /BUSRQ to gain access to the memory.
- After /BUSACK is activated the MCU-DMA (disables the IDE-interface and) enables the external memory interface.
- It then copies the data from  a memory location that corresponds to the target address in the Z80 memory to the MCU's internal memory.
- When done it releases the Z80 /BUSRQ.
- The MCU-DMA implements the file system and maps the requested file path to an entry in the index on disk.
- The MCU-DMA activates the write-command to the IDE disk and pushes the first logical block.
- The Z80 program can fill its data buffer in memory in the meantime, to prepare for the next write cycle.
- The MCU-DMA will generate an /INT to the Z80 when it has finished writing to the IDE disk.
- The Z80 program will respond to the interrupt and signal the MCU-DMA that the next block can be written (by writing to a register).
- The MCU-DMA will continue to move data from the Z80's memory to the MCU's internal memory while the Z80 can continue to prepare the data to write in its memory buffer while the MCU is busy writing to disk.

