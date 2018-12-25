#include "MemoryManager.h"
#include "IOController.h"
#include "BusController.h"

#define ADDRESS_SHIFT   12

static uint8_t _currentTable;

// writes memory-map table data that maps A12-A15 to MA12-MA15.
// MA16-MA19 remain 0
void MemoryManager_WriteNullTable()
{
    int8_t i;
    for(i = 0; i < MemMapTableSize; i++)
    {
        MemoryManager_WriteTableData(i, i);
    }
}

uint8_t MemoryManager_ReadTableData(uint8_t mapIndex)
{
    mapIndex &= 0x0F;
    // index is most-significant-nibble
    return IOController_Input((IO_MemoryManagerUnit_Data_ReadTable | mapIndex << ADDRESS_SHIFT));
}

void MemoryManager_WriteTableData(uint8_t mapIndex, uint8_t data)
{
    mapIndex &= 0x0F;
    // index is most-significant-nibble
    IOController_Output((IO_MemoryManagerUnit_Data_ReadTable | mapIndex << ADDRESS_SHIFT), data);
}

// writes to the register that selects the mem-map table for operational use
void MemoryManager_SelectTable(uint8_t tableIndex)
{
    IOController_Output(IO_MemoryManagerUnit_Table, tableIndex);
    _currentTable = tableIndex;
}

// writes to the register that selects the mem-map table for io/modification
void MemoryManager_SelectTableIO(uint8_t tableIndex)
{
    IOController_Output(IO_MemoryManagerUnit_TableIO, tableIndex);
}

uint8_t MemoryManager_GetCurrentTable()
{
    return _currentTable;
}

void MemoryManager_Init()
{
    BusState bus;
    BusController_Open(&bus);
    BusController_EnableDataBusOutput(1);
    
    // write first table for 64k
    MemoryManager_SelectTable(0);
    MemoryManager_SelectTableIO(0);
    MemoryManager_WriteNullTable();
    
    BusController_EnableDataBusOutput(0);
    BusController_Close(&bus);
}

/* [] END OF FILE */
