#include "Stream.h"
#include "../sys/Async.h"
#include "ConsoleStreamProvider.h"
#include <string.h>

static StreamProvider *ConsoleStreamProvider;

result_t StreamProvider_Construct()
{
    ConsoleStreamProvider = ConsoleStreamProvider_Construct(Thread_Alloc(ConsoleStreamProvider_size));
    return ConsoleStreamProvider == NULL ? E_NULLPTR : S_OK;
}

// Stream* Stream_Construct(uint16_t length)
#define Stream_Construct(p) Stream_Construct__fast(p)
Stream *FastAPI(Stream_Construct__fast(uint16_t length))
{
    Stream *stream = Thread_Alloc(length);
    memset(stream, 0, length);
    return stream;
}

#define Stream_Destruct(p) Thread_Free(p)

Stream *Stream_Open(const char_t *location, StreamFlags access)
{
    result_t result;
    Stream *stream;
    uint16_t size = 0;
    AsyncThis async;

    // TODO: parse location into parts

    // call providers CanProvide with protocol
    size = ConsoleStreamProvider->fnCanProvide(location);
    if (size == 0)
    {
        Error_Set(E_NOTSUPPORTED);
        return NULL;
    }

    // create stream for provider
    stream = Stream_Construct(size);
    stream->StreamProvider = ConsoleStreamProvider;

    Async_Construct(&async);
    while (Async_IsPending(&async))
    {
        result = ConsoleStreamProvider->fnTryOpenStream(&async, location, access, stream);

        if (Failed(result))
        {
            Error_Set(result);
            Stream_Destruct(stream);
            return NULL;
        }
    }

    return stream;
}

// result_t Stream_Close(Stream* stream)
#define Stream_Close(p) Stream_Close__fast(p)
result_t FastAPI(Stream_Close__fast(Stream *stream))
{
    dGuardVal(stream == NULL, E_NULLPTR);
    dGuardVal(stream->StreamProvider == NULL, E_NOTINITIALIZED);

    if (stream->StreamProvider->fnTryCloseStream != NULL)
    {
        return stream->StreamProvider->fnTryCloseStream(stream);
    }

    Stream_Destruct(stream);
    return S_OK;
}

uint16_t Stream_Read(Stream *stream, uint8_t *buffer, uint16_t capacity)
{
    AsyncThis async;
    uint16_t read = 0;

    dGuardErrVal(stream == NULL, E_NULLPTR, 0);
    dGuardErrVal(stream->StreamProvider == NULL, E_NOTINITIALIZED, 0);
    dGuardErrVal(stream->StreamProvider->fnReadStream == NULL, E_NOTSUPPORTED, 0);

    Async_Construct(&async);
    while (Async_IsPending(&async))
    {
        read += stream->StreamProvider->fnReadStream(&async, stream, buffer, capacity);
    }

    return read;
}

uint16_t Stream_Write(Stream *stream, const uint8_t *buffer, uint16_t length)
{
    AsyncThis async;
    uint16_t written = 0;

    if (length == 0) return 0;

    dGuardErrVal(stream == NULL, E_NULLPTR, 0);
    dGuardErrVal(stream->StreamProvider == NULL, E_NOTINITIALIZED, 0);
    dGuardErrVal(stream->StreamProvider->fnWriteStream == NULL, E_NOTSUPPORTED, 0);

    Async_Construct(&async);
    while (Async_IsPending(&async))
    {
        written += stream->StreamProvider->fnWriteStream(&async, stream, buffer, length);
    }

    return written;
}

bool_t Stream_HasFlags(const Stream *stream, StreamFlags flags)
{
    return (stream->Flags & flags) != 0 ? true : false;
}
