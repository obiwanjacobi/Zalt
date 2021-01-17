#include "BusController.h"
#include "CpuController.h"
#include "SerialTerminal.h"

#define SysCtrlReg_BusEnable        0
#define SysCtrlReg_DataBusEnable    1

void BusController_EnableExternalBus(bool_t enable)
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

bool_t BusController_IsDataBusOutputEnabled()
{
    uint8_t ctrlReg = SysCtrlReg_Read();
    return ctrlReg & (1 << SysCtrlReg_DataBusEnable) ? true : false;
}

void BusController_AssertDataBusOutput(active_t expected)
{
    bool_t enabled = BusController_IsDataBusOutputEnabled();
    bool_t notEnabled = enabled ? false : true;
    bool_t failed = expected == Active ? notEnabled : enabled;
    
    if (failed)
        SerialTerminal_Write("ERROR: Bus Conflict!");
}

bool_t BusController_WaitForBusAck(active_t waitFor)
{
    active_t value;
    uint64_t counter = 0;
    do
    {
        CyDelayUs(1);
        value = ReadNotPin(ExtBus_BusAck);
        
#ifdef BUSACK_IGNORE
        break;
#endif

        counter++;
        if (counter > 999999) {
            SerialTerminal_WriteLine("=> BusAck not responding (hanging)");
            return false;
        }
                
    } while (value != waitFor);
    return true;
}

void BusController_ResetState()
{
    // set control lines in neutral state
    WriteNotPin(ExtBus_BusReq, Inactive);
    WriteNotPin(ExtBus_MemReq, Inactive);
    WriteNotPin(ExtBus_IoReq, Inactive);
    WriteNotPin(ExtBus_Rd, Inactive);
    WriteNotPin(ExtBus_Wr, Inactive);
    
    LsbA_Write(0);
    MsbA_Write(0);
    D_Write(0);
}

void BusController_Init()
{
    // disable external bus
    BusController_EnableExternalBus(false);
    BusController_EnableDataBusOutput(false);
    
    BusController_ResetState();
}

bool_t BusController_Acquire()
{
    // set control lines in neutral state
    BusController_ResetState();
    
    // activate BusReq
    WriteNotPin(ExtBus_BusReq, Active);
    
    // wait for acknowledge
    if (!BusController_WaitForBusAck(Active))
    {
        WriteNotPin(ExtBus_BusReq, Inactive);
        return false;
    }
    
    // enable the external bus
    BusController_EnableExternalBus(true);
    return true;
}

void BusController_Release()
{
    // disable output drives on the external bus
    BusController_EnableExternalBus(false);
    BusController_EnableDataBusOutput(false);
    
    // release BusReq (and reset others)
    BusController_ResetState();
    
    // wait for cpu to take over bus again
    BusController_WaitForBusAck(Inactive);
}

bool_t BusController_IsAcquiring()
{
    return (ReadNotPin(ExtBus_BusReq) == Active) ? true : false;
}

bool_t BusController_IsAcquired()
{
    return (ReadNotPin(ExtBus_BusAck) == Active) ? true : false;
}

bool_t BusController_Open(BusState* state)
{
    state->Flags = 0;
    if (!BusController_IsAcquiring())
    {
        if (CpuController_IsResetActive())
        {
            state->Flags = RETURN_TO_RESET;
            CpuController_Reset(Inactive);
            CyDelayUs(1);
        }
        
        state->Flags |= RELEASE_BUS;
        return BusController_Acquire();
    }
    return true;
}

void BusController_Close(BusState* state)
{
    if (state->Flags)
    {
        BusController_EnableDataBusOutput(false);
        BusController_Release();
        if ((state->Flags & RETURN_TO_RESET) != 0) CpuController_Reset(Active);
    }
}

/* [] END OF FILE */
