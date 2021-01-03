#ifndef __COMMANDPARSER_H__
#define __COMMANDPARSER_H__

#include <project.h>
#include "RingBuffer.h"

const char* OK;
const char* SUSPENDED;
const char* INCOMPLETE;

    
#define COMMAND_NONE            0
#define COMMAND_MEMORYWRITE     1
#define COMMAND_MEMORYREAD      2
#define COMMAND_MEMORYDUMP      3
#define COMMAND_MEMORYFILL      4
#define COMMAND_MEMORYTEST      5
#define COMMAND_CLOCKMODE       6
#define COMMAND_CLOCKDIVIDER    7
#define COMMAND_CLOCKPULSE      8
#define COMMAND_CPURESET        9
#define COMMAND_TERMINAL_OFF   10
#define COMMAND_MEMORYMANAGER  11
#define COMMAND_BANKSWITCH     12
#define COMMAND_DEBUG          13
#define COMMAND_STATUS         14
#define COMMAND_VGA            15
#define COMMAND_IDE            16


typedef struct
{
    uint8_t CommandLine[5];
    
    uint16_t Command;
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
