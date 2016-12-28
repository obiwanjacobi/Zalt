#include "Monitor.h"
#include "RingBuffer.h"
#include "io/Io.h"


static Stream* Console;

void OpenConsole()
{
    Console = Stream_Open(ConsoleProtocol, streamAccess_Read | streamAccess_Write);
}

void ReadLineInto(RingBuffer* inputBuffer)
{
    RingBuffer_Clear(inputBuffer);
    StreamReader_ReadLine(Console, inputBuffer->Buffer, RingBuffer_MaxCapacity);
}

extern bool_t Dispatch(RingBuffer*);
extern void PrintLogo(Stream*);

void Monitor_Start(RingBuffer* inputBuffer)
{
    OpenConsole();
    PrintLogo(Console);

    while(1)
    {
        ReadLineInto(inputBuffer);
        if (!Dispatch(inputBuffer)) break;
    };

    Stream_Close(Console);
    Console = NULL;
}