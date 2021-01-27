#include "VgaCommands.h"
#include "BusController.h"
#include "IOController.h"
#include "MemoryController.h"
#include "MemoryManager.h"

void FillPage()
{
    uint16_t address = 0xF000;
    uint8_t data = 0;
    
    for (int i = 0; i < 0x1000; i++)
    {
        MemoryController_WriteAddress(address++, data++);
    }
}

//
// Vga Control
//
// => 'vga'  
uint16_t Vga_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    uint16_t bytesRead = 0;
    BusState busState;
    if (!BusController_Open(&busState))
    {
        SerialTerminal_WriteLine("VGA Command failed to execute.");
        return bytesRead;
    }
    BusController_EnableDataBusOutput(true);
    
    // setup extended mem-addr 0x3Fxxx
    uint8_t memMapIndex = 0xF;
    uint8_t oldMapValue = MemoryManager_ReadTableData(memMapIndex);
    MemoryManager_WriteTableData(memMapIndex, 0x3F);
    
    for (int p = 0; p < 16; p++)
    {
        // hi-vram address (A12-A17)
        IOController_Output(0x01E0, p);
        FillPage();
    }
    
    // restore original mem-map value
    MemoryManager_WriteTableData(memMapIndex, oldMapValue);
    
    BusController_EnableDataBusOutput(false);
    BusController_Close(&busState);
    return bytesRead;
}
