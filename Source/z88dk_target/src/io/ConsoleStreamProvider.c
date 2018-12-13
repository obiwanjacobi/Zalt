#include "ConsoleStreamProvider.h"
#include "../sys/Async.h"
#include "../sys/System.h"

const char *ConsoleProtocol = "con";
const uint8_t ConsoleStreamProvider_size = sizeof(StreamProvider);
static const uint8_t ConsoleStream_size = sizeof(ConsoleStream);

#define CONSOLESTREAM_BUFFERSIZE 5
struct _consoleStream
{
    union {
        Stream Stream;
    } base;

    // Console Specific
    uint8_t InputBuffer[CONSOLESTREAM_BUFFERSIZE];
};
typedef struct _consoleStream ConsoleStream;

#define ConsoleStream_FromStream(stream) ((ConsoleStream *)stream)
#define ConsoleStream_ToStream(consoleStream) (&((consoleStream)->base.Stream))

static ConsoleStream *DebugConsole;

uint16_t ConsoleStreamProvider_CanProvide(const char *protocol)
{
    if (String_Compare(protocol, ConsoleProtocol, 3) == 0)
    {
        return ConsoleStream_size;
    }
    return 0;
}

result_t ConsoleStreamProvider_TryOpenStreamAsync(AsyncThis *async, const char *uri, StreamFlags access, Stream *stream)
{
    uri;
    access;

    dGuardValAsync(stream == NULL, E_NULLPTR);

    stream->Flags = streamFlags_CanRead | streamFlags_CanWrite;
    DebugConsole = (ConsoleStream *)stream;

    async->_result = asyncResult_Completed;
    return S_OK;
}

uint16_t ConsoleStreamProvider_ReadStreamAsync(AsyncThis *async, Stream *stream, uint8_t *buffer, uint16_t capacity)
{
    uint8_t index;
    ConsoleStream *consoleStream;

    async->_state == asyncResult_Error;

    dGuardErrVal(stream == NULL, E_NULLPTR, 0);
    dGuardErrVal(buffer == NULL, E_ARGNULLOREMPTY, 0);
    dGuardErrVal(capacity == 0, E_ARGNOTINRANGE, 0);
    // dGuardErrVal((stream->Flags & streamAccess_Read) == 0, E_NOACCESS, 0);

    consoleStream = ConsoleStream_FromStream(stream);
    for (index = 0; index < CONSOLESTREAM_BUFFERSIZE && index < capacity; index++)
    {
        if (consoleStream->InputBuffer[index] == 0) break;
        buffer[index] = consoleStream->InputBuffer[index];
        consoleStream->InputBuffer[index] = 0;
    }

    async->_result = asyncResult_Completed;
    stream->Position += index;
    return index;
}

uint16_t ConsoleStreamProvider_WriteStreamAsync(AsyncThis *async, Stream *stream, const uint8_t *buffer,
                                                uint16_t length)
{
    uint16_t i;
    async->_result = asyncResult_Error;

    dGuardErrVal(stream == NULL, E_NULLPTR, 0);
    dGuardErrVal(buffer == NULL, E_ARGNULLOREMPTY, 0);
    dGuardErrVal(length == 0, E_ARGNOTINRANGE, 0);
    // dGuardErrVal((stream->Flags & streamAccess_Write) == 0, E_NOACCESS, 0);

    for (i = 0; i < length; i++)
    {
        System_DebugConsole_Out(buffer[i]);
    }

    async->_result = asyncResult_Completed;
    stream->Position += length;
    return length;
}

StreamProvider *FastCall(ConsoleStreamProvider_Construct__fast(void *memory))
{
    StreamProvider *provider = (StreamProvider *)memory;

    if (memory == NULL)
    {
        Error_Set(E_NULLPTR);
        return NULL;
    }

    DebugConsole = NULL;

    provider->fnCanProvide = ConsoleStreamProvider_CanProvide;
    provider->fnTryOpenStream = ConsoleStreamProvider_TryOpenStreamAsync;
    provider->fnTryCloseStream = NULL; // use default
    provider->fnReadStream = ConsoleStreamProvider_ReadStreamAsync;
    provider->fnWriteStream = ConsoleStreamProvider_WriteStreamAsync;

    return provider;
}

// keyboard device is sending chars
void ISR(KeyBoard_OnKey__isr(uint8_t key))
{
    if (DebugConsole == NULL)
    {
        return;
    }
    if (DebugConsole->InputBuffer[0] == 0) DebugConsole->InputBuffer[0] = key;
    if (DebugConsole->InputBuffer[1] == 0) DebugConsole->InputBuffer[1] = key;
    if (DebugConsole->InputBuffer[2] == 0) DebugConsole->InputBuffer[2] = key;
    if (DebugConsole->InputBuffer[3] == 0) DebugConsole->InputBuffer[3] = key;
    if (DebugConsole->InputBuffer[4] == 0) DebugConsole->InputBuffer[4] = key;
}
