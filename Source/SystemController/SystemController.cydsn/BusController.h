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


// bus state flags
#define RETURN_TO_RESET     0x01
#define RELEASE_BUS         0x02
    
typedef struct
{
    uint8_t Flags;
    
} BusState;
    
// TODO: Wait-state management
    
void BusController_Init();
void BusController_ResetState();

bool_t BusController_Open(BusState* state);
void BusController_Close(BusState* state);

// sync acquire the external bus
bool_t BusController_Acquire();

// sync release the external bus
void BusController_Release();

// is BusReq active?
bool_t BusController_IsAcquiring();

// enable data bus outputs for write
void BusController_EnableDataBusOutput(bool_t enable);
bool_t BusController_IsDataBusOutputEnabled();
void BusController_AssertDataBusOutput(active_t expected);

#endif  //__BUSCONTROLLER_H__

/* [] END OF FILE */
