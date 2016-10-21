#include "MemoryController.h"

//#define SPIN_WAIT 150

inline void SpinWait()
{
//    uint8_t spin = SPIN_WAIT;
//    while (--spin);
    CyDelayUs(1);
}

uint8_t MemCtrl_Read(uint16_t address)
{
    LsbA_Write(address & 0x00FF);
    MsbA_Write((address & 0xFF00) >> 8);
    
    CyPins_ClearPin(ExtBus_MemReq);
    CyPins_ClearPin(ExtBus_Rd);
    
    SpinWait();
    
    uint8_t data = D_Read();
    //SysTerminal_PutChar(data);
    
    CyPins_SetPin(ExtBus_Rd);
    CyPins_SetPin(ExtBus_MemReq);
    
    return data;
}

void MemCtrl_Write(uint16_t address, uint8_t data)
{
    LsbA_Write(address & 0x00FF);
    MsbA_Write((address & 0xFF00) >> 8);
    
    CyPins_ClearPin(ExtBus_MemReq);
    CyPins_ClearPin(ExtBus_Wr);
        
    D_Write(data);
    //SysTerminal_PutChar(data);
    
    SpinWait();
    
    CyPins_SetPin(ExtBus_Wr);
    CyPins_SetPin(ExtBus_MemReq);
}

void MemoryController_Read(Memory* memory)
{
    uint16_t address = memory->Address;
    uint16_t i;
    for(i = 0; i < memory->Length; i++)
    {
        memory->Buffer[i] = MemCtrl_Read(address);
        SpinWait();
        address++;
    }    
}

void MemoryController_Write(Memory* memory)
{
    uint16_t address = memory->Address;
    uint16_t i;
    for(i = 0; i < memory->Length; i++)
    {
        MemCtrl_Write(address, memory->Buffer[i]);
        SpinWait();
        address++;
    }
}

void MemoryController_WriteByte(Memory* memory, uint8_t data)
{
    MemCtrl_Write(memory->Address, data);
    memory->Address++;
    memory->Length--;
}

/* [] END OF FILE */
