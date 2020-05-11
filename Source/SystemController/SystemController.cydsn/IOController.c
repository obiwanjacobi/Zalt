#include "IOController.h"

void SpinWaitIO()
{
    CyDelayUs(2);
}

uint8_t IOController_Input(uint16_t address)
{
    LsbA_Write(address & 0x00FF);
    MsbA_Write((address & 0xFF00) >> 8);
    
    ActivateNotPin(ExtBus_IoReq);
    ActivateNotPin(ExtBus_Rd);
    
    SpinWaitIO();
    
    uint8_t data = D_Read();
    
    DeactivateNotPin(ExtBus_Rd);
    DeactivateNotPin(ExtBus_IoReq);
    
    return data;
}

void IOController_Output(uint16_t address, uint8_t data)
{
    LsbA_Write(address & 0x00FF);
    MsbA_Write((address & 0xFF00) >> 8);
    
    ActivateNotPin(ExtBus_IoReq);
    D_Write(data);
    ActivateNotPin(ExtBus_Wr);
    
    SpinWaitIO();
        
    DeactivateNotPin(ExtBus_Wr);
    DeactivateNotPin(ExtBus_IoReq);
}

/* [] END OF FILE */
