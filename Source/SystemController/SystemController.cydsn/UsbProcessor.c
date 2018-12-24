#include "UsbProcessor.h"
#include "Message.h"

// dispatches to devices
#include "KeyBoard.h"

#define USB_PORT           (0u)
#define ENDPOINT_INPUT     (1u)
#define ENDPOINT_OUTPUT    (2u)

#define MAX_BUFFER_SIZE 64
static uint8_t PacketBuffer[MAX_BUFFER_SIZE];

uint8_t UsbProcessor_Start()
{
    USB_Start(USB_PORT, USB_5V_OPERATION);
    //while (0u == USB_GetConfiguration()) { }
    for(int i = 0; i < 1000; i++)
    {
        if (USB_GetConfiguration()) 
        {
            UsbProcessor_Enable(true);
            return 1;
        }
    }
    
    return 0;
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

void UsbProcessor_Send(Message* message)
{
    // don't send if the previous message has not completed.
    while (USB_IN_BUFFER_EMPTY != USB_GetEPState(ENDPOINT_INPUT)) { }
    
    USB_LoadInEP(ENDPOINT_INPUT, (const uint8_t*)message, sizeof(Message));
}

void UsbProcessor_Dispatch(Message* message)
{
    switch(message->DevId)
    {
        case deviceNone:
            // test loop-back
            UsbProcessor_Send(message);
            break;
        case deviceKeyboard:
            KeyBoard_Handle(message);
            break;
        case deviceFileSystem:
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

        // TODO: Check length against sizeof(Message)
        USB_ReadOutEP(ENDPOINT_OUTPUT, PacketBuffer, length);

        // TODO: exit if not ready?
        // Wait until DMA completes copying data from OUT endpoint buffer.
        while (USB_OUT_BUFFER_FULL == USB_GetEPState(ENDPOINT_OUTPUT)) { }
        
        // TODO: take dispatch out of the USB receive loop/lock?
        UsbProcessor_Dispatch((Message*)PacketBuffer);
        
        // re-enable to receive more from host
        UsbProcessor_Enable(true);
    }
}

/* [] END OF FILE */
