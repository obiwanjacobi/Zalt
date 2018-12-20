#include "Monitor.h"
#include "RingBuffer.h"
#include "io/Io.h"

#include "sys/Debug.h"

static Stream *Console;

void OpenConsole()
{
    Console = Stream_Open(ConsoleProtocol, streamFlags_CanRead | streamFlags_CanWrite);
}

uint16_t ReadLineInto(RingBuffer *inputBuffer)
{
    RingBuffer_Clear(inputBuffer);
    return StreamReader_ReadLine(Console, inputBuffer->Buffer, RingBuffer_MaxCapacity);
}

extern bool_t Dispatch(RingBuffer *, Stream *);
extern void PrintLogo(Stream *);

void Monitor_Start(RingBuffer *inputBuffer)
{
    dGuard(inputBuffer == NULL);

    OpenConsole();
    PrintLogo(Console);

    while (1)
    {
        uint16_t read = ReadLineInto(inputBuffer);
        StreamWriter_WriteLine(Console, inputBuffer->Buffer, read);

        if (!Dispatch(inputBuffer, Console)) break;
    }

    StreamWriter_WriteLine(Console, "Bye.", 4);

    Stream_Close(Console);
    Console = NULL;
}