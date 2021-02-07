#ifndef __BUSCONTROLLER_H__
#define __BUSCONTROLLER_H__

#include "SystemController.h"
    
/*
    #define BUSACK_IGNORE to run without a Z80. 
    This will not wait for the BUSACK to activate
 */ 
// Do not wait for the Z80 BUSACK to activate
// Use for testing without a Z80 CPU.
//#define BUSACK_IGNORE


typedef enum
{
    BusError_Success,   // no errors
    BusError_Taken,     // an external device has taken the bus (not the system controller)
    BusError_NoAck,     // the Z80 is not responding to BUSREQ with BUSACK
    BusError_Busy,      // we are already acquiring the bus
    
} BusError;

typedef enum
{
    BusStateFlags_None = 0,                 // clean/init
    BusStateFlags_ReturnToReset = 0x01,     // activate reset when bus is closed
    BusStateFlags_ReleaseOnClose = 0x02     // release ownership of bus when Close is called.
    
} BusStateFlags;

typedef struct
{
    BusStateFlags Flags;
    BusError Result;

} BusState;
    
// TODO: Wait-state management
    
void BusController_Init();
void BusController_ResetState();

bool_t BusController_Open(BusState* state);
void BusController_Close(BusState* state);

// sync acquire the external bus
BusError BusController_Acquire();

// sync release the external bus
void BusController_Release();

// is BusReq active?
bool_t BusController_IsAcquiring();
bool_t BusController_IsCpuBusEnabled();
void BusController_AssertCpuBus(active_t expected, const char* msg);

// enable data bus outputs for write
void BusController_EnableDataBusOutput(bool_t enable);
bool_t BusController_IsDataBusOutputEnabled();
void BusController_AssertDataBusOutput(active_t expected, const char* msg);

#endif  //__BUSCONTROLLER_H__

/* [] END OF FILE */
