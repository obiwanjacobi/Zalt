#ifndef __COMMANDPARSER_H__
#define __COMMANDPARSER_H__

#include <project.h>
#include "RingBuffer.h"

const char* OK;
const char* SUSPENDED;
const char* INCOMPLETE;

typedef enum
{
    Command_None,
    Command_MemoryWrite,
    Command_MemoryRead,
    Command_MemoryDump,
    Command_MemoryFill,
    Command_MemoryTest,
    Command_ClockMode,
    Command_ClockDivider,
    Command_ClockPulse,
    Command_CpuReset,
    Command_CpuGo,
    Command_TerminalOff,
    Command_MemoryManager,
    Command_BankSwitch,
    Command_Debug,
    Command_Status,
    Command_VGA,
    Command_IDE,
    
} Commands;   

typedef struct
{
    uint8_t CommandLine[5];
    
    Commands Command;
    union {
        uint16_t Address;
        uint16_t Number;
        uint16_t Mode;
    };
    union {
        uint16_t Length;
    };
    union {
        uint16_t Param3;
    };

} TerminalCommand;

uint8_t CommandParser_BuildCommand(TerminalCommand* command, RingBuffer* buffer);
uint8_t CommandParser_Read(RingBuffer* buffer, uint8_t* target, uint8_t maxLength);

bool_t CommandParser_IsNewLine(uint8_t data);

#endif  //__COMMANDPARSER_H__
/* [] END OF FILE */
