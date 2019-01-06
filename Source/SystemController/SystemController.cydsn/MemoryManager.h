#ifndef __MEMORYMANAGER_H__
#define __MEMORYMANAGER_H__

#include "IOProcessor.h"
#include "SystemController.h"


#define MemMapTableSize     16
#define MemMapTableCount   256

// CPU-Board hardware IO addresses
#define IO_MemoryManagerUnit_Base           0x08FF
#define IO_MemoryManagerUnit_Data_ReadTable     (IO_MemoryManagerUnit_Base|0x600)   // 0x0EFF (1110 1111 1111)
#define IO_MemoryManagerUnit_Data_WriteTable    (IO_MemoryManagerUnit_Base|0x700)   // 0x0FFF (1111 1111 1111)
#define IO_MemoryManagerUnit_Table              (IO_MemoryManagerUnit_Base|0x400)   // 0x0CFF (1100 1111 1111)
#define IO_MemoryManagerUnit_TableIO            (IO_MemoryManagerUnit_Base|0x500)   // 0x0DFF (1101 1111 1111)

void MemoryManager_Init();
void MemoryManager_WriteNullTable();

uint8_t MemoryManager_ReadTableData(uint8_t mapIndex);
void MemoryManager_WriteTableData(uint8_t mapIndex, uint8_t data);

void MemoryManager_SelectTable(uint8_t tableIndex);
void MemoryManager_SelectTableIO(uint8_t tableIndex);

uint8_t MemoryManager_GetCurrentTable();

#endif//__MEMORYMANAGER_H__
/* [] END OF FILE */
