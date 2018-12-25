#include "MemoryManagerCommands.h"
#include "MemoryManager.h"
#include "BusController.h"

#include <stdlib.h>

static const char* MemMgr_Sel = "sel";
static const char* MemMgr_Get = "get";
static const char* MemMgr_Put = "put";
static const char* MemMgr_Nul = "nul";

void MemoryManager_ReportTable(uint8_t table)
{
    SerialTerminal_Write("Table ");
    SerialTerminal_WriteUint16(table, 10);
    SerialTerminal_Write(": ");
}

void MemoryManager_ReportTableIndex()
{
    for(uint8_t index = 0; index < MemMapTableSize; index++)
    {
        if (index > 0)
        {
            SysTerminal_PutChar(',');
        }
        
        SerialTerminal_WriteUint16(MemoryManager_ReadTableData(index), 10);
    }
    SerialTerminal_WriteLine(NULL);
}

void MemoryManager_MapAction(uint8_t mode, int16_t table, int16_t index, uint8_t value)
{
    BusState busState;
    BusController_Open(&busState);
    BusController_EnableDataBusOutput(1);
    
    switch (mode)
    {
        case MM_MODE_SEL:
            MemoryManager_SelectTable(table);
            break;
        case MM_MODE_GET:
            if (table == -1 )
            {
                for(table = 0; table < MemMapTableCount; table++)
                {
                    MemoryManager_ReportTable(table);
                    
                    MemoryManager_SelectTableIO(table);
                    
                    // reading, so disable driving the databus
                    BusController_EnableDataBusOutput(0);
                    
                    MemoryManager_ReportTableIndex();
                    
                    BusController_EnableDataBusOutput(1);
                }
            }
            else
            {
                MemoryManager_ReportTable(table);
                    
                MemoryManager_SelectTableIO(table);
                // reading, so disable driving the databus
                BusController_EnableDataBusOutput(0);
                if (index == -1)
                {
                    MemoryManager_ReportTableIndex();
                }
                else
                {
                    SerialTerminal_WriteUint16(MemoryManager_ReadTableData(index), 10);
                }
            }
            break;
        case MM_MODE_PUT:
            MemoryManager_SelectTableIO(table);
            MemoryManager_WriteTableData(index, value);
            break;
        case MM_MODE_NUL:
            if (table == -1)
            {
                for(table = 0; table < MemMapTableCount; table++)
                {
                    MemoryManager_SelectTableIO(table);
                    MemoryManager_WriteNullTable();
                }
            }
            else
            {
                MemoryManager_SelectTableIO(table);
                MemoryManager_WriteNullTable();
            }
            break;
        default:
            break;
    }
    
    BusController_EnableDataBusOutput(0);
    BusController_Close(&busState);

}

//
// Memory Manager
//
// 'mm' sel [n]             n => operational table index (default = 0) (0-255)
// 'mm' get [n] [i]         n => table index to read (0-255), i => map index in table (1-15)
// 'mm' put <n> <i> [v]     n => table index to modify (0-255), i => map index in table (1-15), v => value to put (0-255)
// 'mm' nul [n]             => writes null table in [n], or all (256) tables if [n] is ommitted
uint16_t MemoryManager_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    RingBuffer* const buffer = &serialTerminal->RxBuffer;
    uint16_t totalRead = 0;
    uint8_t temp[10];
    char* endPtr = NULL;
    
    int16_t table = -1;
    int16_t index = -1;
    int16_t value = -1;
    
    // parse command parameters
    if (!RingBuffer_IsEmpty(buffer))
    {
        totalRead += CommandParser_Read(buffer, temp, 9);
        
        if (strcasecmp((const char*)temp, MemMgr_Sel) == 0)
            command->Mode = MM_MODE_SEL;
        if (strcasecmp((const char*)temp, MemMgr_Get) == 0)
            command->Mode = MM_MODE_GET;
        if (strcasecmp((const char*)temp, MemMgr_Put) == 0)
            command->Mode = MM_MODE_PUT;
        if (strcasecmp((const char*)temp, MemMgr_Nul) == 0)
            command->Mode = MM_MODE_NUL;
        
        if (!RingBuffer_IsEmpty(buffer))
        {
            totalRead += CommandParser_Read(buffer, temp, 9);
            table = strtoul((const char*)temp, &endPtr, 10);
            
            if (!RingBuffer_IsEmpty(buffer))
            {
                totalRead += CommandParser_Read(buffer, temp, 9);
                index = strtoul((const char*)temp, &endPtr, 10);
                
                if (!RingBuffer_IsEmpty(buffer))
                {
                    totalRead += CommandParser_Read(buffer, temp, 9);
                    value = strtoul((const char*)temp, &endPtr, 10);
                }
            }
        }
    }
    
    if (command->Mode == 0)
    {
        SerialTerminal_WriteLine("Use: sel, put, get or nul");
        return totalRead;
    }
    if (table == -1)
    {
        if (command->Mode == MM_MODE_PUT)
        {
            SerialTerminal_WriteLine(INCOMPLETE);
            return totalRead;
        }
        else if (command->Mode == MM_MODE_SEL)
        {
            table = 0;
        }
    }
    
    if (index == -1)
    {
        if (command->Mode == MM_MODE_PUT)
        {
            SerialTerminal_WriteLine(INCOMPLETE);
            return totalRead;
        }
    }

    // perform the operation
    MemoryManager_MapAction(command->Mode, table, index, value);
    
    SerialTerminal_WriteLine(OK);
    return totalRead;
}

//
// Bank/Block Switch
//
// 'bs' [b] [p]  => [b] is source bank 1-255, [p] is target page 1-15
// switches a 4k source block [b] into target page [p] on current mem-map table.
// this is an easier/simpler version of 'mm put'.
uint16_t BankSwitch_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    RingBuffer* const buffer = &serialTerminal->RxBuffer;
    uint16_t totalRead = 0;
    uint8_t temp[10];
    char* endPtr = NULL;
    
    int16_t bank = -1;
    int16_t page = -1;
    
    // parse command parameters
    if (!RingBuffer_IsEmpty(buffer))
    {
        totalRead += CommandParser_Read(buffer, temp, 9);
        bank = strtoul((const char*)temp, &endPtr, 10);
        
        if (!RingBuffer_IsEmpty(buffer))
        {
            totalRead += CommandParser_Read(buffer, temp, 9);
            page = strtoul((const char*)temp, &endPtr, 10);
        }
    }
    
    // params not specified (no default rto apply here)
    if (bank == -1 || page == -1)
    {
        SerialTerminal_WriteLine(INCOMPLETE);
        return totalRead;
    }
    
    // only mapping bank 0 to page 0 is allowed.
    if ((bank == 0 || page == 0) &&
        !(bank == 0 && page == 0))
    {
        SerialTerminal_WriteLine("Bank/Page 0 is fixed and cannot be used.");
        return totalRead;
    }
    
    BusState busState;
    BusController_Open(&busState);
    BusController_EnableDataBusOutput(1);
    
    MemoryManager_WriteTableData(page, bank);
    
    BusController_EnableDataBusOutput(0);
    BusController_Close(&busState);
    
    SerialTerminal_WriteLine(OK);
    return totalRead;
}

/* [] END OF FILE */
