#ifndef __MEMORYCONTROLLER_H__
#define __MEMORYCONTROLLER_H__

#include <project.h>
    
typedef struct
{
    uint16_t Address;
    uint8_t* Buffer;
    uint16_t Length;
    
} Memory;

// reads memory->Length bytes into memory->Buffer starting at memory->Address
void MemoryController_Read(Memory* memory);

// writes memory->Length bytes from memory->Buffer to memory->Address
void MemoryController_Write(Memory* memory);

void MemoryController_WriteByte(Memory* memory, uint8_t data);

#endif  // __MEMORYCONTROLLER_H__

/* [] END OF FILE */
