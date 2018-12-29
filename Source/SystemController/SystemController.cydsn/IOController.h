#ifndef __IOCONTROLLER_H__
#define __IOCONTROLLER_H__

#include <project.h>

// Direct input/output (Bus must be acquired!)
uint8_t IOController_Input(uint16_t address);
void IOController_Output(uint16_t address, uint8_t data);

#endif //__IOCONTROLLER_H__

/* [] END OF FILE */