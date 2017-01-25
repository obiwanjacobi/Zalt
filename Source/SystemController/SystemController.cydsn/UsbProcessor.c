#include "UsbProcessor.h"
#include "Message.h"

// dispatches to devices
#include "KeyBoard.h"

#define USB_PORT           (0u)
#define ENDPOINT_INPUT     (1u)
#define ENDPOINT_OUTPUT    (2u)

#define MAX_BUFFER_SIZE 64
static uint8_t PacketBuffer[MAX_BUFFER_SIZE];

void UsbProcessor_Start()
{
    USB_Start(USB_PORT, USB_5V_OPERATION);
    while (0u == USB_GetConfiguration()) { }
    UsbProcessor_Enable(true);
}

void UsbProcessor_Enable(bool_t enable)
{
    if (enable)
        USB_EnableOutEP(ENDPOINT_OUTPUT);
    else
        USB_DisableOutEP(ENDPOINT_OUTPUT);
}

void UsbProcessor_CheckConfig()
{
    // Check if configuration is changed.
    if (USB_IsConfigurationChanged())
    {
        if (USB_GetConfiguration())
            UsbProcessor_Enable(true);
    }
}

void UsbProcessor_Dispatch(Message* message, uint8_t length)
{
    switch(message->DevId)
    {
        case Keyboard:
            KeyBoard_Handle(message, length);
            break;
    }
}

void UsbProcessor_Receive()
{
    UsbProcessor_CheckConfig();
    
    if (USB_EVENT_PENDING == USB_GetEPState(ENDPOINT_OUTPUT))
    {
        // Number of received data bytes.
        uint8_t length = USB_GetEPCount(ENDPOINT_OUTPUT);

        USB_ReadOutEP(ENDPOINT_OUTPUT, PacketBuffer, length);

        // TODO: exit if not ready?
        // Wait until DMA completes copying data from OUT endpoint buffer.
        while (USB_OUT_BUFFER_FULL == USB_GetEPState(ENDPOINT_OUTPUT)) { }
        
        // TODO: take dispatch out of the USB receive loop/lock?
        UsbProcessor_Dispatch((Message*)PacketBuffer, length);
        
        // re-enable to receive more from host
        UsbProcessor_Enable(true);
    }
}


/* [] END OF FILE */
