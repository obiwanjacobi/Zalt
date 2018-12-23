# `System Controller Terminal`

The System Controller manages a UART terminal the Z80 uses for all normal output (printf).
[input via terminal is not tested enough yet: see also the Terminal Off command]

Refer to the next sections for more information on the terminal commands the System Controller supports.

Connect a UART to USB adapter to the UART pins at the top of the SpyBus board.
Start a Terminal program and connect to the COM port (lookup the number in the Device Manager).
`115200 8N1`.

When the SystemController is powered up (together with the rest of the system) it reports `Ready (Suspended)`. This means that the System Controller has booted and has suspended the Z80 is Reset.

A typical initialization sequence is:

* `mm nul` reset the MMU. 64k memory available.
* `cm fast` set the CPU clock to the fast (Mhz) clock.
* `cd 7` set the clock divider to produce a lowish clock speed.
* `mw 0 [length]` write program to memory, starting at address $0.
* `ACK` => send program binary
* `rst` release the Z80 to execute the uploaded program

## `Memory Commands`

These command manipulate the system's memory directly (DMA).

### Memory Read

`mr <address> [length]`

* `address` start address (in hex notation)
* `length` optional length in bytes (in hex notation)

Prints out the (binary) characters in memory starting at `address` for `length` number of bytes.

If `length` is not specified a value of 0xFF (255) is assumed.

### Memory Write

`mw <address> [length]`

* `address` start address (in hex notation)
* `length` optional length in bytes (in hex notation)

This command interacts in two phases. You start by telling the System Controller where you want to write into memory and (optionally) for how many bytes. It then reports back with an `ACK` as a sign for you to upload the binary memory image you want written into memory.

If `length` is not specified a short timeout is activated to cancel the write-mode when no more bytes are uploaded.

### Memory Fill

`mf <address> <length> <char>`

* `address` start address (in hex notation)
* `length` optional length in bytes (in hex notation)
* `char` the character data to write in each memory location.

## `CPU Commands`

These commands control the Z80 CPU.

### Reset

`rst [n]`

* `n` number of clock cycles to keep the reset active.

`rst 0` suspends the Z80 CPU by keeping reset active. Issue a `rst` command to release the hold.

### Clock Mode

`cm step|fast|slow|off`

* `step` puts the clock into stepping mode - see clock pulse command.
* `fast` switches the clock to the MHz range.
* `slow` switches the clock to the very low range (< 1kHz>)
* `off` switch the clock off.

### Clock Divider

`cd <0-7>`

For clock-mode `fast`:

* `0` system unstable
* `1` system unstable
* `2` +/- 8.0 Mhz
* `3` +/- 5.0 MHz
* `4` +/- 2.5 Mhz
* `5` +/- 1.2 Mhz
* `6` +/- 560 kHz
* `7` +/- 280 kHz

For clock-mode `slow`:

* `0` +/- 1100 Hz
* `1` +/- 545 Hz
* `2` +/- 272 Hz
* `3` +/- 136 Hz
* `4` +/- 68 Hz
* `5` +/- 34 Hz
* `6` +/- 17 Hz
* `7` +/- 8 Hz

### Clock Pulse

`cp [n]`

* `n` number of clock pulses to generate.

## `Memory Manager Commands`

These commands manipulate the Memory Management Unit (MMU) directly.

### Memory Manager

`mm sel [n]`<br/>
`mm get [n] [i]`<br/>
`mm put [n] [i] [v]`<br/>
`mm null [n]`

* `sel` select/activates a memory map table.
* `get` get the value (v) from the specified table and index.
* `put` sets the value into the specified table and index.
* `nul` resets/inits table to use value 0.

<br/>

* `n` the memory map table to select (0-255).
* `i` the map index in that table (0-16).
* `v` the value that drives MA12-MA19 (0-255).

### Bank Switch

`bs [b] [p]`

* `b` a memory bank (1-255)
* `p` a 4k memory page (1-15)

Switches a 4k source block [b] into target page [p] on current mem-map table. This is an easier/simpler version of `mm put`.

## `Debugger Commands`

Commands to aid in debugging the system.

### Debug

`dbg break|run`

* `break` breaks into the running program (NMI).
* `run` resumes the Z80 to continue executing the program.

### Terminal Off

`to`

Stops interpreting the incoming characters as System Controller Terminal commands and passes the characters onto the Z80 (INT)