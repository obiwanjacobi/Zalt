#ifndef __STREAM_H__
#define __STREAM_H__

#include "Sys.h"

/**
 * Lightweight async ring-buffer stream.
 *
 * Usage:
 *   - Buffer size MUST be a power of 2 (8, 16, 32, 64, ...)
 *   - Writer calls Stream_Write() when Stream_CanWrite() is true
 *   - Writer calls Stream_Close() to signal end of data (EOF)
 *   - Reader calls Stream_Read() when Stream_CanRead() is true
 *   - Reader checks Stream_IsDone() to know when stream is closed AND drained
 *
 * Memory cost: 6 bytes for the struct + external buffer (you supply it).
 * A 32-byte buffer costs 38 bytes RAM total.
 */

typedef struct _stream
{
    uint8_t *buf;
    uint8_t  mask;      /* size - 1  (size MUST be a power of 2) */
    uint8_t  head;      /* write index */
    uint8_t  tail;      /* read index  */
    uint8_t  count;     /* bytes currently in buffer */
    bool_t   closed;    /* writer signals no more data */
} Stream;

/** Initialize a stream with an external buffer.
 *  size MUST be a power of 2: 8, 16, 32, 64, 128 ...
 */
void Stream_Construct(Stream *s, uint8_t *buf, uint8_t size);

/* --- Writer side --- */

/** Returns true if there is space to write at least one byte. */
bool_t  Stream_CanWrite(Stream *s);

/** Write one byte. Only call when Stream_CanWrite() is true. */
void    Stream_Write(Stream *s, uint8_t byte);

/** Signal end of data. Reader will see Stream_IsDone() after draining. */
void    Stream_Close(Stream *s);

/* --- Reader side --- */

/** Returns true if there is at least one byte to read. */
bool_t  Stream_CanRead(Stream *s);

/** Read one byte. Only call when Stream_CanRead() is true. */
uint8_t Stream_Read(Stream *s);

/** Returns true when the stream is closed AND all bytes have been read. */
bool_t  Stream_IsDone(Stream *s);

#endif /* __STREAM_H__ */
