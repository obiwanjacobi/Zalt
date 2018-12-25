#include "DebugCommands.h"
#include "Debugger.h"
//
// Debug commands
//
static const char* Debug_Break = "break";
static const char* Debug_Run = "run";

#define DEBUG_CMD_NONE      0
#define DEBUG_CMD_BREAK     1
#define DEBUG_CMD_RUN       2
//
// Debug (Z80)
//
// => 'dbg' [break]     Breaks into the Z80 program (NMI)
// => 'dbg' [run]       Resumes the Z80 program
uint16_t Debug_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    RingBuffer* const buffer = &serialTerminal->RxBuffer;
    uint16_t totalRead = 0;
    uint8_t temp[10];
    
    command->Param3 = 0;
    command->Mode = DEBUG_CMD_NONE;
    
    if (!RingBuffer_IsEmpty(buffer))
    {
        totalRead += CommandParser_Read(buffer, temp, 10);
        
        if (strcasecmp((const char*)temp, Debug_Break) == 0)
            command->Mode = DEBUG_CMD_BREAK;
        if (strcasecmp((const char*)temp, Debug_Run) == 0)
            command->Mode = DEBUG_CMD_RUN;
    }
    
    switch(command->Mode)
    {
        case DEBUG_CMD_BREAK:
            Debugger_RemoteBreak();
            break;
            
        case DEBUG_CMD_RUN:
            Debugger_RemoteContinue();
            break;
            
        default:
            SerialTerminal_WriteLine(INCOMPLETE);
            break;
    }
    
    if (command->Mode)
    {
        SerialTerminal_WriteLine(OK);
    }
    
    return totalRead;
}

/* [] END OF FILE */
