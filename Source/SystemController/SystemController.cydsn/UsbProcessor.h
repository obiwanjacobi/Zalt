#ifndef __USBPROCESSOR_H__
#define __USBPROCESSOR_H__
    
#include "SystemController.h"

// requires interrupts on
uint8_t UsbProcessor_Start();

void UsbProcessor_Enable(bool_t enable);
void UsbProcessor_Receive();

#endif  //__USBPROCESSOR_H__

/* [] END OF FILE */
