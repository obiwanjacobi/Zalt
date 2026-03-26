/*
 * Stream usage example: async HD sector read piped to a consumer.
 *
 * Two independent Async_Functions share a Stream:
 *   HdRead      - producer: reads bytes from HD hardware, writes to stream
 *   FileConsumer - consumer: reads bytes from stream, processes them
 *
 * Both run cooperatively from the main loop. The 32-byte ring buffer
 * absorbs speed mismatches between the two sides.
 *
 * Data flow:
 *
 *   HD hardware ──► HdRead async ──► [ring buffer] ──► FileConsumer async
 *                        │                                     │
 *                   Stream_Write()                       Stream_Read()
 *                   Stream_Close()                       Stream_IsDone()
 */

#include "Sys.h"
#include "Async.h"
#include "Stream.h"

/* 32-byte ring buffer (power of 2 required) */
#define HD_BUF_SIZE 32
static uint8_t _hd_buf[HD_BUF_SIZE];
static Stream  _hd_stream;

/* -----------------------------------------------------------------------
 * Derived AsyncThis structs — AsyncThis MUST be the first member so that
 * (AsyncThis*) casts are safe (C standard guarantees pointer equivalence).
 * Per-instance state lives here instead of static locals, so multiple
 * concurrent instances of the same function never clobber each other.
 * ----------------------------------------------------------------------- */
typedef struct
{
    AsyncThis _async;       /* base — must be first */
    uint8_t   byte;
    uint16_t  remaining;
} HdReadThis;

typedef struct
{
    AsyncThis _async;       /* base — must be first */
    uint8_t   byte;
} FileConsumerThis;

static HdReadThis       _hd_async;
static FileConsumerThis _consumer_async;

/* -----------------------------------------------------------------------
 * Producer: reads one 512-byte sector from HD, writes bytes to stream.
 * ----------------------------------------------------------------------- */
Async_FunctionWithParams(HdRead, uint16_t sector)
{
    HdReadThis *self = (HdReadThis *)async;

    self->remaining = 512;

    /* Wait for drive to be ready */
    Async_WaitUntil(Hd_IsReady());

    Hd_StartRead(sector);

    while (self->remaining > 0)
    {
        /* Wait for HD to have a byte available */
        Async_WaitUntil(Hd_ByteReady());
        self->byte = Hd_ReadByte();

        /* Wait for space in the stream buffer */
        Async_WaitUntil(Stream_CanWrite(&_hd_stream));
        Stream_Write(&_hd_stream, self->byte);

        self->remaining--;
    }

    /* Signal to consumer that no more data is coming */
    Stream_Close(&_hd_stream);
}
Async_EndFn();

/* -----------------------------------------------------------------------
 * Consumer: drains the stream and processes each byte.
 * ----------------------------------------------------------------------- */
Async_Function(FileConsumer)
{
    FileConsumerThis *self = (FileConsumerThis *)async;

    /* Wait until there's something to read, or the stream is finished */
    Async_WaitUntil(Stream_CanRead(&_hd_stream) || Stream_IsDone(&_hd_stream));

    /* Drain whatever is currently in the buffer */
    while (Stream_CanRead(&_hd_stream))
    {
        self->byte = Stream_Read(&_hd_stream);
        /* TODO: process byte */
    }

    /* If stream is not done yet, yield and come back for more */
    if (!Stream_IsDone(&_hd_stream))
        Async_Return();

    /* Stream fully drained and closed - we're done */
}
Async_EndFn();

/* -----------------------------------------------------------------------
 * Main loop
 * ----------------------------------------------------------------------- */
void Main_Loop(void)
{
    Stream_Construct(&_hd_stream, _hd_buf, HD_BUF_SIZE);
    Async_Construct((AsyncThis *)&_hd_async);
    Async_Construct((AsyncThis *)&_consumer_async);

    for (;;)
    {
        HdRead((AsyncThis *)&_hd_async, 0 /* sector number */);
        FileConsumer((AsyncThis *)&_consumer_async);

        /* other tasks here... */
    }
}
