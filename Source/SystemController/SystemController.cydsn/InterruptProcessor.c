#include "InterruptProcessor.h"
#include "InterruptController.h"
#include "IOProcessor.h"

// only one at a time
static uint8_t NextVector;


void InterruptProcessor_Init()
{
    NextVector = INTERRUPT_VECTOR_NONE;
    Z80Ctrl_ISR_INT_StartEx(InterruptProcessor_ISR_OnInterrupt);
}

bool_t InterruptProcesor_CanInterrupt()
{
    return NextVector == INTERRUPT_VECTOR_NONE ? true : false;
}

bool_t InterruptProcesor_Interrupt(uint8_t vector)
{
    if (NextVector == INTERRUPT_VECTOR_NONE)
    {
        NextVector = vector;
        InterruptController_SetInterrupt(true);
        return true;
    }
    return false;
}

void InterruptProcessor_ISR_OnInterrupt()
{
    // Z80 Controller (design component) has enabled the Data bus for us to write to.
    if (NextVector != INTERRUPT_VECTOR_NONE)
    {
        D_Write(NextVector);
        NextVector = INTERRUPT_VECTOR_NONE;
    }
    
    // interrupt is acknowledged, turn it off
    InterruptController_SetInterrupt(false);
    // release the wait cycles
    IOProcessor_ReleaseCpuWait();
}

/* [] END OF FILE */
