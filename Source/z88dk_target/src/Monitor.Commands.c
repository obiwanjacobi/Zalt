#include "RingBuffer.h"
#include "sys/Sys.h"
#include "io/Io.h"


static const uint8_t MaxCommandLength = 6;

enum _command {
    commandDump,
    commandHelp,
    commandReg,
    commandQuit,
    command_EndOfTable
};

// sorted alpabetacilay
static char* Commands[] = {
    "dump",
    "help",
    "reg",
    "quit",
    NULL
};

void PrintLogo(Stream* console)
{
    StreamWriter_WriteLine(console, "Zalt Monitor v1.0", 17);
}

void ExecuteDump(RingBuffer* inputBuffer, Stream* console)
{

}

void ExecuteHelp(Stream* console)
{
    StreamWriter_WriteLine(console, "quit - Exits the monitor", 24);
    StreamWriter_WriteLine(console, "dump - dumps memory: [address] [length]", 39);
    StreamWriter_WriteLine(console, "reg - displays CPU register values: [name]", 42);
}

void ExecuteReg(RingBuffer* inputBuffer, Stream* console)
{

}


bool_t ExecuteCommand(uint8_t cmdIndex, RingBuffer* inputBuffer, Stream* console)
{
    switch(cmdIndex) {
        case commandDump:
            ExecuteDump(inputBuffer, console);
        break;
        case commandHelp:
            ExecuteHelp(console);
        break;
        case commandReg:
            ExecuteReg(inputBuffer, console);
        break;
    }
    return true;
}

bool_t Dispatch(RingBuffer* inputBuffer, Stream* console)
{
    uint8_t cmdIndex = 0;
    while(Commands[cmdIndex] != NULL) {
        if (String_Compare(Commands[cmdIndex], inputBuffer->Buffer, MaxCommandLength) == 0) {
            if (cmdIndex == commandQuit) return false;

            return ExecuteCommand(cmdIndex, inputBuffer, console);
        }
        cmdIndex += 1;
    }

    StreamWriter_WriteLine(console, "- Invalid Command.", 18);

    return true;
}