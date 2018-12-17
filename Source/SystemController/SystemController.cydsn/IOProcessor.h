#ifndef __IOPROCESSORER_H__
#define __IOPROCESSORER_H__
    
#include "SystemController.h"

// Mode flags
#define MODE_NONE    0
#define MODE_READ    1
#define MODE_WRITE   2
#define MODE_MEMORY  4
#define MODE_IO      8
#define MODE_INPUT   9
#define MODE_OUTPUT 10
    
typedef struct
{
    uint8_t Mode;   // MODE_X flags
    uint8_t Address;
    uint8_t Data;
    
} IOInfo;
    

void IOProcessor_Init();

// for system use, don't call
void IOProcessor_ISR_OnIOInterrupt();
void IOProcessor_OutputDispatch(IOInfo* ioInfo);
void IOProcessor_InputDispatch(IOInfo* ioInfo);
    
void IOProcessor_ReleaseCpuWait();

#endif  //__IOPROCESSORER_H__

/* [] END OF FILE */
