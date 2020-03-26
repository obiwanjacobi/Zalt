#ifndef __MEMORYMANAGERCOMMANDS_H__
#define __MEMORYMANAGERCOMMANDS_H__

#include "SystemController.h"
#include "SerialTerminal.h"
#include "CommandParser.h"

#define MM_MODE_SEL     1
#define MM_MODE_GET     2
#define MM_MODE_PUT     3
#define MM_MODE_NUL     4
#define MM_MODE_TST     5
    
uint16_t MemoryManager_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);
uint16_t BankSwitch_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);

void MemoryManager_MapAction(uint8_t mode, int16_t table, int16_t index, int16_t value);

#endif  //__MEMORYMANAGERCOMMANDS_H__

/* [] END OF FILE */
