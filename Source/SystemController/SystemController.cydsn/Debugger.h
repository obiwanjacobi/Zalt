#ifndef __DEBUGGER_H__
#define __DEBUGGER_H__
    
#include "SystemController.h"
    
void Debugger_Init();
void Debugger_ISR_OnHaltInterrupt();

uint8_t Debugger_IO_OnInput();
void Debugger_IO_OnOutput(uint8 data);

void Debugger_PrintRegisterValues();

#endif  //__DEBUGGER_H__

/* [] END OF FILE */
