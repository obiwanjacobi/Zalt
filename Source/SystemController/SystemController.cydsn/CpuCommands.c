#include "CpuCommands.h"
#include "CpuController.h"
#include "IOProcessor.h"

#include <stdlib.h>

//
// CPU Control Commands
//

static const char* ClkMode_Step = "step";
static const char* ClkMode_Fast = "fast";
static const char* ClkMode_Slow = "slow";
static const char* ClkMode_Off = "off";

//
// Clock Mode
//
// => 'cm' [Step]|[Fast]|[Slow]|[off]
uint16_t ClockMode_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    RingBuffer* const buffer = &serialTerminal->RxBuffer;
    uint16_t totalRead = 0;
    uint8_t temp[6];
    
    command->Param3 = 0;
    command->Mode = 0;
    
    if (!RingBuffer_IsEmpty(buffer))
    {
        totalRead += CommandParser_Read(buffer, temp, 5);
        
        if (strcasecmp((const char*)temp, ClkMode_Fast) == 0)
            command->Mode = CPUMODE_NORMAL_FAST;
        if (strcasecmp((const char*)temp, ClkMode_Slow) == 0)
            command->Mode = CPUMODE_NORMAL_SLOW;
        if (strcasecmp((const char*)temp, ClkMode_Step) == 0)
            command->Mode = CPUMODE_STEP;
        if (strcasecmp((const char*)temp, ClkMode_Off) == 0)
            command->Mode = CPUMODE_STEP;
        
        CpuController_SetClockMode(command->Mode);
        SerialTerminal_WriteLine(OK);
    }
    else
    {
        SerialTerminal_WriteLine(INCOMPLETE);
    }
    
    return totalRead;
}

//
// Clock Divider
//
// => 'cd' [0-7]
uint16_t ClockDivider_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    RingBuffer* const buffer = &serialTerminal->RxBuffer;
    uint16_t totalRead = 0;
    uint8_t temp[10];
    char* endPtr = NULL;
    
    command->Number = 0;
    command->Param3 = 0;
    
    if (!RingBuffer_IsEmpty(buffer))
    {
        totalRead += CommandParser_Read(buffer, temp, 9);
        
        command->Number = strtoul((const char*)temp, &endPtr, 10);
        
        CpuController_SetClockDivider((uint8_t)command->Number);
        
        SerialTerminal_WriteLine(OK);
    }
    else
    {
        SerialTerminal_WriteLine(INCOMPLETE);
    }
    
    return totalRead;
}

//
// Clock Pulse
//
// => 'cp' [<number of pulses>]
uint16_t ClockPulse_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    RingBuffer* const buffer = &serialTerminal->RxBuffer;
    uint16_t totalRead = 0;
    uint8_t temp[10];
    char* endPtr = NULL;
    
    command->Number = 1;
    command->Param3 = 0;
    
    if (!RingBuffer_IsEmpty(buffer))
    {
        totalRead += CommandParser_Read(buffer, temp, 9);
        
        command->Number = strtoul((const char*)temp, &endPtr, 10);
    }
    
    if (CpuController_GetClockMode() != CPUMODE_STEP)
    {
        CpuController_SetClockMode(CPUMODE_STEP);
    }

    CpuController_PulseClock(command->Number);    
    SerialTerminal_WriteLine(OK);
    
    return totalRead;
}

//
// CPU Reset
//
// => 'rst' [n]     (n = number of clock cycles to keep the reset active) 0 = latch active
uint16_t CpuReset_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    RingBuffer* const buffer = &serialTerminal->RxBuffer;
    uint16_t totalRead = 0;
    uint8_t temp[10];
    char* endPtr = NULL;
    
    uint16_t number = 4;
    
    if (!RingBuffer_IsEmpty(buffer))
    {
        totalRead += CommandParser_Read(buffer, temp, 9);
        
        command->Number = strtoul((const char*)temp, &endPtr, 10);
        number = command->Number;
    }
    
    CpuController_Reset(1);
    IOProcessor_ReleaseCpuWait();
    
    if (number > 0)
    {
        // give Z80 enough time to reset.
        CpuController_WaitCycles(number);
        CpuController_Reset(0);
        
        SerialTerminal_WriteLine(OK);
    }
    else
    {
        SerialTerminal_WriteLine(SUSPENDED);
    }
    
    return totalRead;
}

/* [] END OF FILE */
