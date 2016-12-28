#ifndef __IO_H__
#define __IO_H__

#include "../sys/Types.h"
#include "../sys/Error.h"


//
// Stream
//

typedef uint8_t	StreamProviderId;

typedef uint8_t StreamFlags;
extern const StreamFlags streamFlags_CanSeek;
extern const StreamFlags streamFlags_CanRead;
extern const StreamFlags streamFlags_CanWrite;
extern const StreamFlags streamAccess_Read;
extern const StreamFlags streamAccess_Write;

enum _streamSeekStart {
	Begin,
	Current,
	End
};
typedef enum _streamSeekStart SeekStart;

// streams are opague.
struct _stream;
typedef struct _stream Stream;

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

// sync read/write
uint16_t Stream_Read(Stream* stream, uint8_t* buffer, uint16_t capacity);
uint16_t Stream_Write(Stream* stream, const uint8_t* buffer, uint16_t length);

extern const char* ConsoleProtocol;


//
// StreamReader
//

bool_t StreamReader_TryReadByte(Stream* stream, uint8_t* outByte);
uint16_t StreamReader_ReadLine(Stream* stream, uint8_t* buffer, uint16_t capacity);


//
// StreamWriter
//

uint16_t StreamWriter_WriteLine(Stream* stream, const uint8_t* source, uint16_t length);


#endif  //__IO_H__