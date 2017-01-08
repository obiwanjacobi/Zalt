#ifndef __INTERRUPTCONTROLLER_H__
#define __INTERRUPTCONTROLLER_H__

#include "SystemController.h"

// Z80 Interrupt vecotr for IM2: Bit0 MUST be zero! (even numbers)
#define INTERRUPT_VECTOR_NONE       0
#define INTERRUPT_VECTOR_KEYBOARD   2
    
void InterruptController_SetInterrupt(bool_t enable);
void InterruptController_SetNmi(bool_t enable);
    
#endif //__INTERRUPTCONTROLLER_H__

/* [] END OF FILE */
