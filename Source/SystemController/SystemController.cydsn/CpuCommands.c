#include "CpuCommands.h"
#include "CpuController.h"
#include "BusController.h"
#include "MemoryController.h"
#include "IOProcessor.h"

#include <stdlib.h>

//
// CPU Control Commands
//

static const char* ClkMode_Step = "step";
static const char* ClkMode_Fast = "fast";
static const char* ClkMode_Slow = "slow";
static const char* ClkMode_Off = "off";

void ClockMode_ReportValue()
{
    char* pTxt = "Clock Mode = Step/Off";
    
    switch(CpuController_GetClockMode())
    {
        case CPUMODE_NORMAL_FAST:
        pTxt = "Clock Mode = Fast";
        break;
        
        case CPUMODE_NORMAL_SLOW:
        pTxt = "Clock Mode = Slow";
        break;
        
        case CPUMODE_STEP:
        default:
        break;
    }
    
    SerialTerminal_WriteLine(pTxt);
}

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
        {
            command->Mode = CPUMODE_NORMAL_FAST;
        }
        if (strcasecmp((const char*)temp, ClkMode_Slow) == 0)
        {
            command->Mode = CPUMODE_NORMAL_SLOW;
        }
        if (strcasecmp((const char*)temp, ClkMode_Step) == 0)
        {
            command->Mode = CPUMODE_STEP;
        }
        if (strcasecmp((const char*)temp, ClkMode_Off) == 0)
        {
            command->Mode = CPUMODE_STEP;
        }
        
        CpuController_SetClockMode(command->Mode);
        ClockMode_ReportValue();
    }
    else
    {
        SerialTerminal_WriteLine(INCOMPLETE);
    }
    
    return totalRead;
}

void ClockDivider_ReportValue()
{
    uint8_t div = CpuController_GetClockDivider();
    SerialTerminal_Write("Clock Divider = ");
    SerialTerminal_WriteUint16(div, 10);
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
        
        ClockDivider_ReportValue();
        SerialTerminal_WriteLine(NULL);
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
    
    CpuController_Reset(Active);
    IOProcessor_ReleaseCpuWait();
    
    if (number > 0)
    {
        // give Z80 enough time to reset.
        CpuController_WaitCycles(number);
        CpuController_Reset(Inactive);
        
        if (CpuController_IsResetActive())
            SerialTerminal_WriteLine("RESET ERROR");
        else
            SerialTerminal_WriteLine(OK);
    }
    else
    {
        SerialTerminal_WriteLine(SUSPENDED);
    }
    
    return totalRead;
}

//
// Execute code
//
// => 'go' [nnnn]     nnnn => address to start execution from. if not supplier starts at 0000.
uint16_t CpuGo_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    RingBuffer* const buffer = &serialTerminal->RxBuffer;
    uint16_t totalRead = 0;
    uint8_t temp[10];
    char* endPtr = NULL;
    
    uint16_t address = 0;
    
    if (!RingBuffer_IsEmpty(buffer))
    {
        totalRead += CommandParser_Read(buffer, temp, 9);
        
        command->Address = strtoul((const char*)temp, &endPtr, 10);
        address = command->Address;
    }
    
    // cannot jump to address 1 or 2 (JP instruction takes 3 bytes)
    if (address > 2)
    {
        // Z80 JP instruction to 'address'
        uint8_t jmp[3] = { 0xC3, (uint8_t)(address & 0xFF), (uint8_t)(address >> 8) };
        
        Memory mem;
        mem.Address = 0;
        mem.Buffer = jmp;
        mem.Length = 3;
        
        BusState bus;
        if (!BusController_Open(&bus))
        {
            SerialTerminal_WriteLine("Go Command failed to execute.");
            return totalRead;
        }
        MemoryController_Write(&mem);
        BusController_Close(&bus);
    }
    
    // reset CPU
    CpuController_Reset(Active);
    CpuController_WaitCycles(10);
    IOProcessor_ReleaseCpuWait();
    CpuController_Reset(Inactive);

    return totalRead;
}


/* [] END OF FILE */
