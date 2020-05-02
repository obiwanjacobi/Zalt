#ifndef __VGACOMMANDS_H__
#define __VGACOMMANDS_H__

#include <project.h>
#include "SerialTerminal.h"
#include "CommandParser.h"
    
uint16_t Vga_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);

#endif //__VGACOMMANDS_H__

/* [] END OF FILE */
