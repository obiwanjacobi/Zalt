#ifndef __IOPROCESSORER_H__
#define __IOPROCESSORER_H__
    
#include <project.h>

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
    
//
// IO Addresses for SystemController peripherals
//

// port for PSoc <=> Z80 debug communication
#define IO_DEBUGGER     0x00

// test loop IO address
#define IO_TEST_LOOP    0x10
// fixed (debug) serial commlink to PC
#define IO_Serial       0x20

void IOProcessor_Init();

// for system use, don't call
inline void IOProcessor_ISR_OnIOInterrupt();
inline void IOProcessor_OutputDispatch(IOInfo* ioInfo);
inline void IOProcessor_InputDispatch(IOInfo* ioInfo);
    
void IOProcessor_ReleaseCpuWait();

#endif  //__IOPROCESSORER_H__

/* [] END OF FILE */
