#ifndef __MEMORYMANAGER_H__
#define __MEMORYMANAGER_H__

#include <project.h>

#define MemMapTableSize     16
#define MemMapTableCount   256

void MemoryManager_Init();
void MemoryManager_WriteNullTable();

inline uint8_t MemoryManager_ReadTableData(uint8_t mapIndex);
inline void MemoryManager_WriteTableData(uint8_t mapIndex, uint8_t data);

inline void MemoryManager_SelectTable(uint8_t tableIndex);
inline void MemoryManager_SelectTableIO(uint8_t tableIndex);



#endif//__MEMORYMANAGER_H__
/* [] END OF FILE */
