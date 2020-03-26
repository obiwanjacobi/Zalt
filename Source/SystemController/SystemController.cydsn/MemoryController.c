#include "MemoryController.h"

inline void SpinWait()
{
    CyDelayUs(1);
}

void MemoryController_TestMemory(TestMemory* memory, TestMemoryResult* result)
{
    const uint8_t test0 = 0;
    const uint8_t test1 = 0xAA;
    const uint8_t test2 = 0x55;
    const uint8_t testF = 0xFF;
    
    while(memory->Length > 0)
    {
        result->Expected = test1;
        MemoryController_WriteAddress(memory->Address, result->Expected);
        result->Actual = MemoryController_ReadAddress(memory->Address);
        if (result->Actual != result->Expected)
        {
            break;
        }
        
        result->Expected = test2;
        MemoryController_WriteAddress(memory->Address, result->Expected);
        result->Actual = MemoryController_ReadAddress(memory->Address);
        if (result->Actual != result->Expected)
        {
            break;
        }
        
        result->Expected = testF;
        MemoryController_WriteAddress(memory->Address, result->Expected);
        result->Actual = MemoryController_ReadAddress(memory->Address);
        if (result->Actual != result->Expected)
        {
            break;
        }
        
        result->Expected = test0;
        MemoryController_WriteAddress(memory->Address, result->Expected);
        result->Actual = MemoryController_ReadAddress(memory->Address);
        if (result->Actual != result->Expected)
        {
            break;
        }
        
        memory->Address++;
        memory->Length--;
    }
}

uint8_t MemoryController_ReadAddress(uint16_t address)
{
    LsbA_Write(address & 0x00FF);
    MsbA_Write((address & 0xFF00) >> 8);
    
    ActivateNotPin(ExtBus_MemReq);
    ActivateNotPin(ExtBus_Rd);
    
    SpinWait();
    uint8_t data = D_Read();
    
    DeactivateNotPin(ExtBus_Rd);
    DeactivateNotPin(ExtBus_MemReq);
    
    return data;
}

void MemoryController_WriteAddress(uint16_t address, uint8_t data)
{
    LsbA_Write(address & 0x00FF);
    MsbA_Write((address & 0xFF00) >> 8);
    
    ActivateNotPin(ExtBus_MemReq);
    ActivateNotPin(ExtBus_Wr);
        
    D_Write(data);
    SpinWait();
    
    DeactivateNotPin(ExtBus_Wr);
    DeactivateNotPin(ExtBus_MemReq);
}

void MemoryController_Read(Memory* memory)
{
    uint16_t address = memory->Address;
    uint16_t i;
    for(i = 0; i < memory->Length; i++)
    {
        memory->Buffer[i] = MemoryController_ReadAddress(address);
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
        MemoryController_WriteAddress(address, memory->Buffer[i]);
        SpinWait();
        address++;
    }
}

void MemoryController_WriteByte(Memory* memory, uint8_t data)
{
    MemoryController_WriteAddress(memory->Address, data);
    memory->Address++;
    memory->Length--;
}

/* [] END OF FILE */
