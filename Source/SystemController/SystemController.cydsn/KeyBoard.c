#include "KeyBoard.h"
#include "InterruptProcessor.h"

uint8_t KeyBoard_GetKey()
{
    // TODO: each device should have its own (small) buffer
    // for now
    return SysTerminal_GetChar();
}

bool_t KeyBoard_Signal()
{
    return InterruptProcesor_Interrupt(INTERRUPT_VECTOR_KEYBOARD);
}


/* [] END OF FILE */
