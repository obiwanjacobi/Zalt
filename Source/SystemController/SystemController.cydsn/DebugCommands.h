#ifndef __DEBUGCOMMANDS_H__
#define __DEBUGCOMMANDS_H__

#include "SystemController.h"
#include "RingBuffer.h"
#include "CommandParser.h"
#include "SerialTerminal.h"

    
uint16_t Debug_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);

    
#endif  //__DEBUGCOMMANDS_H__
/* [] END OF FILE */
