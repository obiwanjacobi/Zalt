#include "InterruptController.h"

void InterruptController_SetInterrupt(bool_t enable)
{
    if (enable)
        CyPins_ClearPin(ExtInt_CpuInt);
    else
        CyPins_SetPin(ExtInt_CpuInt);
}

void InterruptController_SetNmi(bool_t enable)
{
    if (enable)
        CyPins_ClearPin(ExtInt_CpuNmi);
    else
        CyPins_SetPin(ExtInt_CpuNmi);
}


/* [] END OF FILE */
