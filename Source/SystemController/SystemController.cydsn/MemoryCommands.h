#ifndef __MEMORYCOMMANDS_H__
#define __MEMORYCOMMANDS_H__

#include <project.h>
#include "RingBuffer.h"
#include "CommandParser.h"
#include "SerialTerminal.h"
    
uint16_t DmaParseCommandParameters(RingBuffer* buffer, TerminalCommand* command);
uint16_t MemoryWrite_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);
uint16_t MemoryRead_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);
uint16_t MemoryDump_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);
uint16_t MemoryFill_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);

#endif  //__MEMORYCOMMANDS_H__

/* [] END OF FILE */
