#ifndef __IOCONTROLLER_H__
#define __IOCONTROLLER_H__

#include <project.h>

// CPU-Board hardware IO addresses
#define IO_MemoryManagerUnit_Base           0x08FF
#define IO_MemoryManagerUnit_Data_ReadTable     (IO_MemoryManagerUnit_Base|0x600)
#define IO_MemoryManagerUnit_Data_WriteTable    (IO_MemoryManagerUnit_Base|0x700)
#define IO_MemoryManagerUnit_Table              (IO_MemoryManagerUnit_Base|0x400)
#define IO_MemoryManagerUnit_TableIO            (IO_MemoryManagerUnit_Base|0x500)

// Direct input/output (Bus must be acquired!)
uint8_t IOController_Input(uint16_t address);
void IOController_Output(uint16_t address, uint8_t data);

#endif //__IOCONTROLLER_H__

/* [] END OF FILE */