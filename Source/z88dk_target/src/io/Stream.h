#ifndef __STREAM_H__
#define __STREAM_H__

/******************************************************************************
Interaction between StreamProvider and Stream API:

Stream_Open ->	Parse Uri
			->	Find StreamProvider by calling CanProvide on all registered providers.
			->	Use the non-zero return value to allocate memory for Stream struct.
			->  Call StreamProvider->TryOpenStream to initialize the Stream struct.
				-> Open Stream source (smart IO device). Typically involves IO.
					The smart IO device locates the resource and starts transfering 
					content to its internal cache memory.
				-> StreamProvider contacts the MemoryManager to allocate a memory page (4k).
				-> The reserved memory page is communicated to smart IO device and 
					(DMA/DP-RAM) transfer can begin (async) - be careful with this!
				-> The StreamProvider stores any extra information at the end of the Stream struct.
			-> If unsuccessful, set error code and return null.
			-> If successful, tag the Stream with the StreamProvider and return Stream.


Stream_Read ->	Determine Stream-state:
				-> Nothing has been loaded in yet:
					Call StreamProvider to bring in the first block (sync).
					->	StreamProvider calls Smart IO Device retrieve transfer status.
					<fall through>
				-> Not everything can be read from current memory block:
					Call StreamProvider to bring in the next block (async)
					->	StreamProvider calls Smart IO Device to start transfer process.
					Empty out existing data and return byte processed (adjust Stream pos).
				-> The complete Read can come from current memory block:
					Adjust Stream position and copy content data into buffer.

Stream_Seek ->	Determine Stream-state:
				-> Nothing has been loaded in yet:
					Call StreamProvider to re-position the Stream
					->	StreamProvider calls Smart IO Device with repos info (sync).
				-> Requested pos is not in current buffer:
					-> Call StreamProvider to re-position the Stream
					->	StreamProvider calls Smart IO Device with repos info (sync).
				-> Requested pos IS in current buffer:
					Simply return.
					
Create File ->	Stream_Open with create-flag will create a new file with a temp name and default attributes.
				Stream_Open with create- and meta-flag will create a new file with specified attributes.
				After the meta-stream is closed, that content stream can be opened specifying the name used previously.

Delete File	->	Stream_Open with truncate- and meta-flags will delete the specified file. 
				Both meta- and content-streams will be deleted.
				Calling Stream_Open with the truncate-flag on the content stream will empty out the file, but not delete it.

Create Dir ->	Stream_Open with create- and meta-flags will create the directory. Cannot use without meta-flag.
Delete Dir ->	truncate on meta stream.

					
******************************************************************************/


typedef uint8_t	StreamProviderId;

typedef enum
{
	sfNone,				// 0x00
	
	// flags
	sfCanSeek,			// 0x01
	sfCanRead,			// 0x02
	sfCanSeekRead,		// 0x03
	sfCanWrite,			// 0x04
	sfCanSeekWrite,		// 0x05
	sfCanReadWrite,		// 0x06
	sfCanSeekReadWrite,	// 0x07
	
	sfReserved08,
	sfReserved09,
	sfReserved0A,
	sfReserved0B,
	sfReserved0C,
	sfReserved0D,
	sfReserved0E,
	sfReserved0F,
	
	// access
	sfReadOnly, 					// 0x10
	sfReadOnlyCanSeek				// 0x11
	sfReadOnlyCanRead				// 0x12
	sfReadOnlyCanSeekRead			// 0x13
	sfReadOnlyCanWrite				// 0x14
	sfReadOnlyCanSeekWrite			// 0x15
	sfReadOnlyCanReadWrite			// 0x16
	sfReadOnlyCanSeekReadWrite		// 0x17
	
	sfReserved18,
	sfReserved19,
	sfReserved1A,
	sfReserved1B,
	sfReserved1C,
	sfReserved1D,
	sfReserved1E,
	sfReserved1F,
	
	sfWriteOnly,					// 0x20
	sfWriteOnlyCanSeek,				// 0x21
	sfWriteOnlyCanRead,				// 0x22
	sfWriteOnlyCanSeekRead,			// 0x23
	sfWriteOnlyCanWrite,			// 0x24
	sfWriteOnlyCanSeekWrite,		// 0x25
	sfWriteOnlyCanReadWrite,		// 0x26
	sfWriteOnlyCanSeekReadWrite,	// 0x27
	
	sfReserved28,
	sfReserved29,
	sfReserved2A,
	sfReserved2B,
	sfReserved2C,
	sfReserved2D,
	sfReserved2E,
	sfReserved2F,
	
	sfReadWrite,					// 0x30
	sfReadWriteCanSeek,				// 0x31
	sfReadWriteCanRead,				// 0x32
	sfReadWriteCanSeekRead,			// 0x33
	sfReadWriteCanWrite,			// 0x34
	sfReadWriteCanSeekWrite,		// 0x35
	sfReadWriteCanReadWrite,		// 0x36
	sfReadWriteCanSeekReadWrite,	// 0x37
	
} StreamFlags;


// stream positional information
typedef struct
{
	
	// total length
	// total position
	
} StreamPosition;

// basis for managing streams.
typedef struct
{
	// flags
	StreamFlags Flags;
	// total capacity of the buffer
	uint16_t Capacity;
	// length of the content in the buffer.
	uint16_t Length;
	// position of reading or writing the content in the buffer.
	uint16_t Position;
	// Total length of the entire stream.
	uint16_t StreamLength;
	// current position of the entire stream.
	uint16_t StreamPosition;
	// ptr to the actual buffer
	uint8_t* Buffer;
	// stream provider reference
	StreamProvider* StreamProvider;
	
} Stream;


typedef struct
{
	// same as Stream
	// with buffer 
	
} BufferedStream;

// virtual functions for a stream provider:
typedef uint16_t (CanProvide*)(const char* protocol);
typedef result_t (TryOpenStream*)(Uri* uri, StreamFlags flags, Stream** outStream);
typedef result_t (TryCloseStream*)(Stream* stream);
typedef result_t (BeginReadStream*)(Stream* stream, AsyncResult* asyncResult);
typedef result_t (EndReadStream*)(Stream* stream, AsyncResult* asyncResult);

typedef struct
{
	// numeric identification of the StreamProvider.
	StreamProviderId Id;
	
	// returns the number of bytes its stream structure requires.
	// returns 0 if the provider can not provide a stream for the protocol
	// uint16_t CanProvide(const char* protocol) const;
	CanProvide fnCanProvide;
	
	// Opens the physical stream to the stream source (smart IO device)
	// returns an error code, or S_OK if successful. Each StreamProvider may have specific error codes.
	// result_t TryOpenStream(Uri* uri, StreamFlags flags, Stream** outStream);
	TryOpenStream fnTryOpenStream;
	
	// Closes the physical stream and cleans up resources (both on the Z80 as well as the smart IO device).
	// returns an error code, or S_OK if successful. Each StreamProvider may have specific error codes.
	// result_t TryCloseStream(Stream* stream);
	TryCloseStream fnTryCloseStream;
	
	
} StreamProvider;
// Each StreamProvider implementation supplies a factory method for constructing/initializing this struct.

// Stream struct constructor
Stream* Stream_Construct(void* buffer, uint16_t capacity);

// flags:
//		meta			:	open the meta stream instead of the content stream.
//		truncate		:	truncate the stream. In combination with meta will delete.
//		read-only		:	request read-only access. May be important when sharing.
//		read-write		:	request read and write access. May be expensive in terms of resources and performance.
//		forward-only	:	request only sequential access from beginning to end. No seeking supported.
//		create			:	create the resources. Can be used with or without the meta flag. Fails if exists.
//		append			:	write content to the end of the existing content.
//		
Stream* Stream_Open(const char* location, StreamFlags flags);
result_t Stream_Close(Stream* stream);

// seek
uint16_t Stream_GetPosition(Stream* stream);
result_t Stream_SetPosition(Stream* stream, uint16_t pos);
result_t Stream_Seek(Stream* stream, SeekStart startAt, uint16_t pos);

// sync read/write
uint16_t Stream_Read(uint8_t* buffer, uint16_t capacity, uint16_t length);
uint16_t Stream_Write(uint8_t* buffer, uint16_t length);



#endif 	//__STREAM_H__