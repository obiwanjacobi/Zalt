#ifndef __IO_H__
#define __IO_H__

#include "../sys/Types.h"
#include "../sys/Error.h"

//
// Stream
//

typedef uint8_t StreamProviderId;

typedef uint8_t StreamFlags;
#define streamFlags_None 0x00
#define streamFlags_CanSeek 0x01
#define streamFlags_CanRead 0x02
#define streamFlags_CanWrite 0x04
#define streamAccess_Read 0x10
#define streamAccess_Write 0x20
#define streamTransport_Block 0x80

enum _streamSeekStart
{
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
Stream *Stream_Open(const char *location, StreamFlags flags);

//result_t Stream_Close(Stream* stream);
result_t FastCall(Stream_Close__fast(Stream *stream));
#define Stream_Close(p) Stream_Close__fast(p)

// sync read/write
uint16_t Stream_ReadAsync(Stream *stream, uint8_t *buffer, uint16_t capacity);
uint16_t Stream_WriteAsync(Stream *stream, const uint8_t *buffer, uint16_t length);
bool_t Stream_HasFlags(const Stream *stream, StreamFlags flags);

// protocol name for console streams
extern const char *ConsoleProtocol;

//
// StreamReader
//

bool_t StreamReader_TryReadByte(Stream *stream, uint8_t *outByte);
uint16_t StreamReader_ReadLine(Stream *stream, uint8_t *buffer, uint16_t capacity);

//
// StreamWriter
//

uint16_t StreamWriter_Write(Stream *stream, const uint8_t *source, uint16_t length);
uint16_t StreamWriter_WriteLine(Stream *stream, const uint8_t *source, uint16_t length);

#endif //__IO_H__