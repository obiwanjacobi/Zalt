#ifndef __BUSCONTROLLER_H__
#define __BUSCONTROLLER_H__

#include "SystemController.h"

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

void BusController_Open(BusState* state);
void BusController_Close(BusState* state);

// sync acquire the external bus
void BusController_Acquire();

// sync release the external bus
void BusController_Release();

// indicates if the bus is acquired (non-zero)
//bool_t BusController_IsAcquired();
bool_t BusController_IsAcquiring();

// enable data bus outputs for write
void BusController_EnableDataBusOutput(bool_t enable);

#endif  //__BUSCONTROLLER_H__

/* [] END OF FILE */
