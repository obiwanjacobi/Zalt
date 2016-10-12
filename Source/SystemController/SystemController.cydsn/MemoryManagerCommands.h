#ifndef __MEMORYMANAGERCOMMANDS_H__
#define __MEMORYMANAGERCOMMANDS_H__

#include <project.h>
#include "SerialTerminal.h"
#include "CommandParser.h"
    
uint16_t MemoryManager_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);
uint16_t BankSwitch_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);

#endif  //__MEMORYMANAGERCOMMANDS_H__

/* [] END OF FILE */
