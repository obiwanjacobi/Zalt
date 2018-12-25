#include "CommandHandler.h"
#include "MemoryCommands.h"
#include "MemoryManagerCommands.h"
#include "CpuCommands.h"
#include "DebugCommands.h"
#include "CommandParser.h"

#include <stdlib.h>


//
// Terminal Off
//
// 'to' stop interpretting incoming terminal characters
uint16_t TerminalOff_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    SerialTerminal_WriteLine("Terminal is Off - Reset to turn on.");
    serialTerminal->IsActive = 0;
    return 0;
}




//
// Dispatcher entry point
//
uint16_t CommandHandler_DispatchCommand(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    uint16_t bytesRead = 0;
    
    switch(command->Command)
    {
        case COMMAND_MEMORYWRITE:
            bytesRead = DmaParseCommandParameters(&serialTerminal->RxBuffer, command);
            MemoryWrite_Execute(serialTerminal, command);
            break;
        case COMMAND_MEMORYREAD:
            bytesRead = DmaParseCommandParameters(&serialTerminal->RxBuffer, command);
            MemoryRead_Execute(serialTerminal, command);
            break;
        case COMMAND_MEMORYFILL:
            bytesRead = DmaParseCommandParameters(&serialTerminal->RxBuffer, command);
            MemoryFill_Execute(serialTerminal, command);
            break;
        case COMMAND_CLOCKMODE:
            bytesRead = ClockMode_Execute(serialTerminal, command);
            break;
        case COMMAND_CLOCKDIVIDER:
            bytesRead = ClockDivider_Execute(serialTerminal, command);
            break;
        case COMMAND_CLOCKPULSE:
            bytesRead = ClockPulse_Execute(serialTerminal, command);
            break;
        case COMMAND_CPURESET:
            bytesRead = CpuReset_Execute(serialTerminal, command);
            break;
        case COMMAND_TERMINAL_OFF:
            bytesRead = TerminalOff_Execute(serialTerminal, command);
            break;
        case COMMAND_MEMORYMANAGER:
            bytesRead = MemoryManager_Execute(serialTerminal, command);
            break;
        case COMMAND_BANKSWITCH:
            bytesRead = BankSwitch_Execute(serialTerminal, command);
            break;
        case COMMAND_DEBUG:
            bytesRead = Debug_Execute(serialTerminal, command);
            break;
    }
    
    return bytesRead;
}

/* [] END OF FILE */
