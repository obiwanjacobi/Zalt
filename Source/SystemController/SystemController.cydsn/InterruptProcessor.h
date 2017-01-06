#ifndef __INTERRUPTPROCESSOR_H__
#define __INTERRUPTPROCESSOR_H__
    
#include "SystemController.h"
#include "InterruptController.h"
    
// initializes the interrupt processor
void InterruptProcessor_Init();

// interrupt handler for Z80 interrupt acknowledge (IM2)
inline void InterruptProcessor_ISR_OnInterrupt();

// indicates if a call to InterruptProcesor_Interrupt will succeed
bool_t InterruptProcesor_CanInterrupt();

// initiates a Z80 interrupt for the specified vector
// returns false if another interrupt is already in progress
bool_t InterruptProcesor_Interrupt(uint8_t vector);

// enables/disables interrupt processing
// return value indicates if successful (an interrupt may be pending)
bool_t InterruptProcessor_Enable(bool_t enable);

// indicates if (Z80) interrupts are enabled
bool_t InterruptProcessor_IsEnabled();


#endif  //__INTERRUPTPROCESSOR_H__

/* [] END OF FILE */
