#ifndef __STREAM_H__
#define __STREAM_H__

#include "Io.h"
#include "../sys/Sys.h"

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

// virtual functions definitions for a stream provider:
typedef uint16_t (*CanProvide)(const char *protocol);
typedef result_t (*TryOpenStream)(AsyncThis *async, const char *uri, StreamFlags access, Stream *outStream);
typedef result_t (*TryCloseStream)(Stream *stream);
typedef uint16_t (*ReadStream)(AsyncThis *async, Stream *stream, uint8_t *buffer, uint16_t capacity);
typedef uint16_t (*WriteStream)(AsyncThis *async, Stream *stream, const uint8_t *buffer, uint16_t length);

struct _streamProvider
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

	// methods for reading async
	ReadStream fnReadStream;

	// methods for writing async
	WriteStream fnWriteStream;
};

typedef struct _streamProvider StreamProvider;
// Each StreamProvider implementation supplies a factory method for constructing/initializing this struct.

// basis for managing streams.
struct _stream
{
	// flags
	StreamFlags Flags;
	// total length of the stream (0xFFFF if unknown)
	uint16_t Length;
	// position of reading and/or writing the content in the stream.
	uint16_t Position;
	// pointer to the provider that owns the stream
	StreamProvider *StreamProvider;

	// providers may allocate larger streams for custom data
};

/// Initializes all the stream providers. Call on setup.
result_t StreamProvider_Construct();

// seek
uint16_t Stream_GetPosition(const Stream *stream);
result_t Stream_SetPosition(Stream *stream, uint16_t pos);
result_t Stream_Seek(Stream *stream, SeekStart startAt, uint16_t pos);

#endif //__STREAM_H__