#ifndef __MEMORYCONTROLLER_H__
#define __MEMORYCONTROLLER_H__

#include "SystemController.h"
    
typedef struct
{
    uint16_t Address;
    uint8_t* Buffer;
    uint16_t Length;
    
} Memory;

typedef struct
{
    uint16_t Address;
    uint16_t Length;
} TestMemory;

typedef struct
{
    uint8_t Expected;
    uint8_t Actual;
} TestMemoryResult;

//
// The CPU Bus must be Acquired!
//

// Failed if memory->Length > 0 on return
void MemoryController_TestMemory(TestMemory* memory, TestMemoryResult* result);

uint8_t MemoryController_ReadAddress(uint16_t address);
void MemoryController_WriteAddress(uint16_t address, uint8_t data);

// reads memory->Length bytes into memory->Buffer starting at memory->Address
void MemoryController_Read(Memory* memory);

// writes memory->Length bytes from memory->Buffer to memory->Address
void MemoryController_Write(Memory* memory);

void MemoryController_WriteByte(Memory* memory, uint8_t data);

#endif  // __MEMORYCONTROLLER_H__

/* [] END OF FILE */
