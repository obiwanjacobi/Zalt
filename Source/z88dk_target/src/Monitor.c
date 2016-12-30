#include "Monitor.h"
#include "RingBuffer.h"
#include "io/Io.h"


static Stream* Console;

void OpenConsole()
{
    Console = Stream_Open(ConsoleProtocol, streamAccess_Read | streamAccess_Write);
}

uint16_t ReadLineInto(RingBuffer* inputBuffer)
{
    RingBuffer_Clear(inputBuffer);
    return StreamReader_ReadLine(Console, inputBuffer->Buffer, RingBuffer_MaxCapacity);
}

extern bool_t Dispatch(RingBuffer*, Stream*);
extern void PrintLogo(Stream*);

void Monitor_Start(RingBuffer* inputBuffer)
{
    if (inputBuffer == NULL) return;

    OpenConsole();
    PrintLogo(Console);

    while(1) {
        uint16_t read = ReadLineInto(inputBuffer);
        StreamWriter_WriteLine(Console, inputBuffer->Buffer, read);

        if (!Dispatch(inputBuffer, Console)) break;
    }

    StreamWriter_WriteLine(Console, "Bye.", 4);

    Stream_Close(Console);
    Console = NULL;
}