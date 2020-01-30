#include "InterruptProcessor.h"
#include "InterruptController.h"
#include "IOProcessor.h"
#include "BusController.h"
#include "CpuController.h"

// only one at a time
static volatile uint8_t NextVector;
static volatile bool_t InterruptsAreEnabled;

void InterruptProcessor_Init()
{
    InterruptsAreEnabled = true;
    NextVector = INTERRUPT_VECTOR_NONE;
    InterruptController_SetInterrupt(false);
    Z80Ctrl_ISR_INT_StartEx(InterruptProcessor_ISR_OnInterrupt);
}

bool_t InterruptProcessor_IsEnabled()
{
    return InterruptsAreEnabled;
}

bool_t InterruptProcessor_Enable(bool_t enable)
{
    InterruptsAreEnabled = enable;
    return NextVector == INTERRUPT_VECTOR_NONE ? true : false;
}

bool_t InterruptProcesor_CanInterrupt()
{
    return InterruptsAreEnabled && NextVector == INTERRUPT_VECTOR_NONE ? true : false;
}

bool_t InterruptProcesor_Interrupt(uint8_t vector)
{
    if (InterruptsAreEnabled &&
        NextVector == INTERRUPT_VECTOR_NONE)
    {
        NextVector = vector;
        InterruptController_SetInterrupt(true);
        return true;
    }
    return false;
}

void InterruptProcessor_ISR_OnInterrupt()
{
    if (CpuController_IsResetActive() || BusController_IsAcquiring()) return;
    
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
