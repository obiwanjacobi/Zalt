#include "CommandHandler.h"
#include "MemoryCommands.h"
#include "MemoryManagerCommands.h"
#include "MemoryManager.h"
#include "CpuCommands.h"
#include "CpuController.h"
#include "DebugCommands.h"
#include "VgaCommands.h"
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
// Status
//
// 'stat' reports the current status
uint16_t Status_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    // cpu
    const char* cpuStat = "Running";
    if (CpuController_IsResetActive())
    {
        cpuStat = SUSPENDED;
    }
    else if (CpuController_IsCpuHalted())
    {
        cpuStat = "Halted";
    }
    SerialTerminal_Write("CPU ");
    SerialTerminal_WriteLine(cpuStat);
    
    ClockMode_ReportValue();
    ClockDivider_ReportValue();
    SerialTerminal_WriteLine(NULL);
    
    // memory
    uint8_t table = MemoryManager_GetCurrentTable();
    SerialTerminal_Write("Memory ");
    MemoryManager_MapAction(MM_MODE_GET, table, -1, 0);
        
    // USB
    SerialTerminal_Write("USB Virtual Devices ");
    if (USB_GetConfiguration() == 0)
    {
        SerialTerminal_Write("not ");
    }
    SerialTerminal_WriteLine("connected");
    
    if (serialTerminal->IsActive == 0)
    {
        SerialTerminal_WriteLine("Terminal is Off");
    }
    
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
        case Command_MemoryWrite:
            bytesRead = DmaParseCommandParameters(&serialTerminal->RxBuffer, command);
            MemoryWrite_Execute(serialTerminal, command);
            break;
        case Command_MemoryRead:
            bytesRead = DmaParseCommandParameters(&serialTerminal->RxBuffer, command);
            MemoryRead_Execute(serialTerminal, command);
            break;
        case Command_MemoryDump:
            bytesRead = DmaParseCommandParameters(&serialTerminal->RxBuffer, command);
            MemoryDump_Execute(serialTerminal, command);
            break;
        case Command_MemoryFill:
            bytesRead = DmaParseCommandParameters(&serialTerminal->RxBuffer, command);
            MemoryFill_Execute(serialTerminal, command);
            break;
        case Command_MemoryTest:
            bytesRead = DmaParseCommandParameters(&serialTerminal->RxBuffer, command);
            MemoryTest_Execute(serialTerminal, command);
            break;
        case Command_ClockMode:
            bytesRead = ClockMode_Execute(serialTerminal, command);
            break;
        case Command_ClockDivider:
            bytesRead = ClockDivider_Execute(serialTerminal, command);
            break;
        case Command_ClockPulse:
            bytesRead = ClockPulse_Execute(serialTerminal, command);
            break;
        case Command_CpuReset:
            bytesRead = CpuReset_Execute(serialTerminal, command);
            break;
        case Command_CpuGo:
            bytesRead = CpuGo_Execute(serialTerminal, command);
            break;
        case Command_TerminalOff:
            bytesRead = TerminalOff_Execute(serialTerminal, command);
            break;
        case Command_MemoryManager:
            bytesRead = MemoryManager_Execute(serialTerminal, command);
            break;
        case Command_BankSwitch:
            bytesRead = BankSwitch_Execute(serialTerminal, command);
            break;
        case Command_Debug:
            bytesRead = Debug_Execute(serialTerminal, command);
            break;
        case Command_Status:
            bytesRead = Status_Execute(serialTerminal, command);
            break;
        case Command_VGA:
            bytesRead = Vga_Execute(serialTerminal, command);
            break;
        default:
            // not implemented yet
            break;
    }
    
    return bytesRead;
}

/* [] END OF FILE */
