#include "BusController.h"
#include "CpuController.h"

#define SysCtrlReg_BusEnable    0
#define SysCtrlReg_DataBusEnable    1

void BusController_EnableExternalBus(uint8_t enable)
{
    uint8_t ctrlReg = SysCtrlReg_Read();
    
    if (enable) ctrlReg |= (1 << SysCtrlReg_BusEnable);
    else ctrlReg &= ~(1 << SysCtrlReg_BusEnable);
    
    SysCtrlReg_Write(ctrlReg);
}

void BusController_EnableDataBusOutput(bool_t enable)
{
    uint8_t ctrlReg = SysCtrlReg_Read();
    
    if (enable) ctrlReg |= (1 << SysCtrlReg_DataBusEnable);
    else ctrlReg &= ~(1 << SysCtrlReg_DataBusEnable);
    
    SysCtrlReg_Write(ctrlReg);
}

void BusController_WaitForBusAck(uint8_t active)
{
    uint8_t value;
    
    do
    {
        value = CyPins_ReadPin(ExtBus_BusAck);
        CyDelayUs(1);
        //SysTerminal_PutChar('_');
        
    } while (value == active);
}

void BusController_ResetState()
{
    // set control lines in neutral state
    CyPins_SetPin(ExtBus_BusReq);
    CyPins_SetPin(ExtBus_MemReq);
    CyPins_SetPin(ExtBus_IoReq);
    CyPins_SetPin(ExtBus_Rd);
    CyPins_SetPin(ExtBus_Wr);
    
    LsbA_Write(0);
    MsbA_Write(0);
    D_Write(0);
}

void BusController_Init()
{
    // disable external bus
    BusController_EnableExternalBus(0);
    BusController_EnableDataBusOutput(0);
    
    BusController_ResetState();
}

void BusController_Acquire()
{
    // set control lines in neutral state
    BusController_ResetState();
    
    // activate BusReq
    CyPins_ClearPin(ExtBus_BusReq);
    
    // wait for acknowledge
    BusController_WaitForBusAck(1);
    
    // enable the external bus
    BusController_EnableExternalBus(1);
}

void BusController_Release()
{
    // disable output drives on the external bus
    BusController_EnableExternalBus(0);
    BusController_EnableDataBusOutput(0);
    
    // release BusReq (and reset others)
    BusController_ResetState();
    
    // wait for cpu to take over bus again
    BusController_WaitForBusAck(0);
}

uint8_t BusController_IsAcquiring()
{
    uint8_t ctrlReg = SysCtrlReg_Read();
    return (ctrlReg & (1 << SysCtrlReg_BusEnable)) > 0;
}

uint8_t BusController_IsAcquired()
{
    return CyPins_ReadPin(ExtBus_BusAck) == 0;
}

void BusController_Open(BusState* state)
{
    state->Flags = 0;
    if (!BusController_IsAcquiring())
    {
        state->Flags = CpuController_IsResetActive() ? RETURN_TO_RESET : 0;
        if (state->Flags) CpuController_Reset(0);
        
        state->Flags |= RELEASE_BUS;
        BusController_Acquire();
    }
}

void BusController_Close(BusState* state)
{
    if (state->Flags)
    {
        BusController_Release();
        if ((state->Flags & RETURN_TO_RESET) != 0) CpuController_Reset(1);
    }
    state->Flags = 0;
}

/* [] END OF FILE */
