#include "IOController.h"

void SpinWaitIO()
{
    CyDelayUs(1);
}

uint8_t IOController_Input(uint16_t address)
{
    LsbA_Write(address & 0x00FF);
    MsbA_Write((address & 0xFF00) >> 8);
    
    CyPins_ClearPin(ExtBus_IoReq);
    CyPins_ClearPin(ExtBus_Rd);
    
    SpinWaitIO();
    
    uint8_t data = D_Read();
    
    CyPins_SetPin(ExtBus_Rd);
    CyPins_SetPin(ExtBus_IoReq);
    
    return data;
}

void IOController_Output(uint16_t address, uint8_t data)
{
    LsbA_Write(address & 0x00FF);
    MsbA_Write((address & 0xFF00) >> 8);
    
    CyPins_ClearPin(ExtBus_IoReq);
    CyPins_ClearPin(ExtBus_Wr);
        
    D_Write(data);
    
    SpinWaitIO();
        
    CyPins_SetPin(ExtBus_Wr);
    CyPins_SetPin(ExtBus_IoReq);
}

/* [] END OF FILE */
