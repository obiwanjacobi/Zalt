#ifndef __CPUCOMMANDS_H__
#define __CPUCOMMANDS_H__

#include <project.h>
#include "SerialTerminal.h"
#include "CommandParser.h"
    
uint16_t ClockMode_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);
uint16_t ClockDivider_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);
uint16_t ClockPulse_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);
uint16_t CpuReset_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);
uint16_t CpuGo_Execute(SerialTerminal* serialTerminal, TerminalCommand* command);

void ClockMode_ReportValue();
void ClockDivider_ReportValue();

#endif //__CPUCOMMANDS_H__

/* [] END OF FILE */
