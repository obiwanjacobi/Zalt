#include "ConsoleStreamProvider.h"
#include "../sys/Async.h"
#include <stdio.h>

const char* ConsoleProtocol = "con";
const uint8_t ConsoleStreamProvider_size = sizeof(StreamProvider);
static const uint8_t ConsoleStream_size = sizeof(Stream);

uint16_t ConsoleStreamProvider_CanProvide(const char* protocol)
{
    if (String_Compare(protocol, ConsoleProtocol, 3) == 0) {
        return ConsoleStream_size;
    }
    return 0;
}

result_t ConsoleStreamProvider_TryOpenStream(const char* uri, StreamFlags access, Stream* stream)
{
    uri; access;
    if (stream == NULL) return E_NULLPTR;
    stream->Flags = streamFlags_CanRead | streamFlags_CanWrite;
    return S_OK;
}

AsyncResult* ConsoleStreamProvider_BeginReadStream(Stream* stream, uint8_t* buffer, uint16_t capacity)
{
    AsyncResult* result = NULL;
    if (stream == NULL) { Error_Set(E_NULLPTR); return NULL; }
    if (buffer == NULL) { Error_Set(E_ARGNULLOREMPTY); return NULL; }
    if (capacity == 0) { Error_Set(E_ARGNOTINRANGE); return NULL; }
    //if ((stream->Flags & streamAccess_Read) == 0) { Error_Set(E_NOACCESS); return NULL;}

    buffer[0] = getchar();
    stream->Position += 1;

    result = Thread_Alloc(AsyncResult_size);
    result->State = asyncState_CompletedSync;
    return result;
}

uint16_t ConsoleStreamProvider_EndReadStream(Stream* stream, AsyncResult* asyncResult)
{
    Thread_Free(asyncResult);
    if (stream == NULL) { Error_Set(E_NULLPTR); return 0; }
    return 1;
}

static struct {
    AsyncState State;
    uint16_t TotalBytes;
} consoleAsyncResult;

AsyncResult* ConsoleStreamProvider_BeginWriteStream(Stream* stream, const uint8_t* buffer, uint16_t length)
{
    uint16_t i;
    if (stream == NULL) { Error_Set(E_NULLPTR); return NULL; }
    if (buffer == NULL) { Error_Set(E_ARGNULLOREMPTY); return NULL; }
    if (length == 0) { Error_Set(E_ARGNOTINRANGE); return NULL; }
    //if ((stream->Flags & streamAccess_Write) == 0) { Error_Set(E_NOACCESS); return NULL;}

    for(i = 0; i < length; i++) {
        putchar(buffer[i]);
    }

    i++;    // from zero-based index to count
    stream->Position += i;

    consoleAsyncResult.State = asyncState_CompletedSync;
    consoleAsyncResult.TotalBytes = i;
    return (AsyncResult*)&consoleAsyncResult;
}

uint16_t ConsoleStreamProvider_EndWriteStream(Stream* stream, AsyncResult* asyncResult)
{
    if (stream == NULL) { Error_Set(E_NULLPTR); return 0; }
    if (asyncResult == NULL) { Error_Set(E_ARGNULLOREMPTY); return 0; }
    if (asyncResult != (AsyncResult*)&consoleAsyncResult) { Error_Set(E_NOTINITIALIZED); return 0; }
    return consoleAsyncResult.TotalBytes;
}

StreamProvider* ConsoleStreamProvider_Construct(void* memory)
{
    StreamProvider* provider = (StreamProvider*)memory;
    if (memory == NULL) { Error_Set(E_NULLPTR); return NULL; }

    provider->fnCanProvide = ConsoleStreamProvider_CanProvide;
    provider->fnTryOpenStream = ConsoleStreamProvider_TryOpenStream;
    provider->fnTryCloseStream = NULL;
    provider->fnBeginReadStream = ConsoleStreamProvider_BeginReadStream;
    provider->fnEndReadStream = ConsoleStreamProvider_EndReadStream;
    provider->fnBeginWriteStream = ConsoleStreamProvider_BeginWriteStream;
    provider->fnEndWriteStream = ConsoleStreamProvider_EndWriteStream;

    return provider;
}
