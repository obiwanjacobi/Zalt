#include "InterruptController.h"

void InterruptController_SetInterrupt(bool_t enable)
{
    WriteNotPin(ExtInt_CpuInt, enable);
}

void InterruptController_SetNmi(bool_t enable)
{
    WriteNotPin(ExtInt_CpuNmi, enable);
}


/* [] END OF FILE */
