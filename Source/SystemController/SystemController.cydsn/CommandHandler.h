#ifndef __COMMANDHANDLER_H__
#define __COMMANDHANDLER_H__

#include <SystemController.h>
#include "CommandParser.h"
#include "SerialTerminal.h"
    
// dispatcher
uint16_t CommandHandler_DispatchCommand(SerialTerminal* serialTerminal, TerminalCommand* command);


#endif  //__COMMANDHANDLER_H__
/* [] END OF FILE */
