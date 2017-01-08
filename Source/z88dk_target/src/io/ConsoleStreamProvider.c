#include "ConsoleStreamProvider.h"
#include "../sys/Async.h"
#include "../sys/System.h"

const char* ConsoleProtocol = "con";
const uint8_t ConsoleStreamProvider_size = sizeof(StreamProvider);
static const uint8_t ConsoleStream_size = sizeof(ConsoleStream);

#define CONSOLESTREAM_BUFFERSIZE 5
struct _consoleStream {
    union {
        Stream Stream;
    } base;

    // Console Specific
    uint8_t InputBuffer[CONSOLESTREAM_BUFFERSIZE];
};
typedef struct _consoleStream ConsoleStream;

#define ConsoleStream_FromStream(stream)    ((ConsoleStream*)stream)
#define ConsoleStream_ToStream(consoleStream)    (&((consoleStream)->base.Stream))

static ConsoleStream* DebugConsole;

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
    DebugConsole = (ConsoleStream*)stream;
    
    return S_OK;
}

// used for both read and write!
// not reentrant!
static struct {
    AsyncState State;
    uint16_t TotalBytes;
} consoleAsyncResult;


AsyncResult* ConsoleStreamProvider_BeginReadStream(Stream* stream, uint8_t* buffer, uint16_t capacity)
{
    uint8_t index;
    AsyncResult* result = NULL;
    ConsoleStream* consoleStream = ConsoleStream_FromStream(stream);

    if (stream == NULL) { Error_Set(E_NULLPTR); return NULL; }
    if (buffer == NULL) { Error_Set(E_ARGNULLOREMPTY); return NULL; }
    if (capacity == 0) { Error_Set(E_ARGNOTINRANGE); return NULL; }
    //if ((stream->Flags & streamAccess_Read) == 0) { Error_Set(E_NOACCESS); return NULL;}

    for(index = 0; index < CONSOLESTREAM_BUFFERSIZE && index < capacity; index++) {
        if (consoleStream->InputBuffer[index] == 0) break;
        buffer[index] = consoleStream->InputBuffer[index];
        consoleStream->InputBuffer[index] = 0;
    }

    stream->Position += index;

    consoleAsyncResult.State = asyncState_CompletedSync;
    consoleAsyncResult.TotalBytes = index;
    return (AsyncResult*)&consoleAsyncResult;
}

uint16_t ConsoleStreamProvider_EndReadStream(Stream* stream, AsyncResult* asyncResult)
{
    if (stream == NULL) { Error_Set(E_NULLPTR); return 0; }
    if (asyncResult == NULL) { Error_Set(E_ARGNULLOREMPTY); return 0; }
    if (asyncResult != (AsyncResult*)&consoleAsyncResult) { Error_Set(E_NOTINITIALIZED); return 0; }
    return consoleAsyncResult.TotalBytes;
}

AsyncResult* ConsoleStreamProvider_BeginWriteStream(Stream* stream, const uint8_t* buffer, uint16_t length)
{
    uint16_t i;
    if (stream == NULL) { Error_Set(E_NULLPTR); return NULL; }
    if (buffer == NULL) { Error_Set(E_ARGNULLOREMPTY); return NULL; }
    if (length == 0) { Error_Set(E_ARGNOTINRANGE); return NULL; }
    //if ((stream->Flags & streamAccess_Write) == 0) { Error_Set(E_NOACCESS); return NULL;}

    for(i = 0; i < length; i++) {
        System_DebugConsole_Out(buffer[i]);
    }

    stream->Position += length;

    consoleAsyncResult.State = asyncState_CompletedSync;
    consoleAsyncResult.TotalBytes = length;
    return (AsyncResult*)&consoleAsyncResult;
}

uint16_t ConsoleStreamProvider_EndWriteStream(Stream* stream, AsyncResult* asyncResult)
{
    if (stream == NULL) { Error_Set(E_NULLPTR); return 0; }
    if (asyncResult == NULL) { Error_Set(E_ARGNULLOREMPTY); return 0; }
    if (asyncResult != (AsyncResult*)&consoleAsyncResult) { Error_Set(E_NOTINITIALIZED); return 0; }
    return consoleAsyncResult.TotalBytes;
}

StreamProvider* FastCall(ConsoleStreamProvider_Construct__fast(void* memory))
{
    StreamProvider* provider = (StreamProvider*)memory;
    if (memory == NULL) { Error_Set(E_NULLPTR); return NULL; }

    DebugConsole = NULL;

    provider->fnCanProvide = ConsoleStreamProvider_CanProvide;
    provider->fnTryOpenStream = ConsoleStreamProvider_TryOpenStream;
    provider->fnTryCloseStream = NULL;  // use default
    provider->fnBeginReadStream = ConsoleStreamProvider_BeginReadStream;
    provider->fnEndReadStream = ConsoleStreamProvider_EndReadStream;
    provider->fnBeginWriteStream = ConsoleStreamProvider_BeginWriteStream;
    provider->fnEndWriteStream = ConsoleStreamProvider_EndWriteStream;

    return provider;
}

// keyboard device is sending chars
void ISR(KeyBoard_OnKey__isr(uint8_t key))
{
    if (DebugConsole == NULL) { return; }
    if (DebugConsole->InputBuffer[0] == 0) DebugConsole->InputBuffer[0] = key;
    if (DebugConsole->InputBuffer[1] == 0) DebugConsole->InputBuffer[1] = key;
    if (DebugConsole->InputBuffer[2] == 0) DebugConsole->InputBuffer[2] = key;
    if (DebugConsole->InputBuffer[3] == 0) DebugConsole->InputBuffer[3] = key;
    if (DebugConsole->InputBuffer[4] == 0) DebugConsole->InputBuffer[4] = key;
}
