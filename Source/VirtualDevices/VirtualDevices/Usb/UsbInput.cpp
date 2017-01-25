#include "UsbInput.h"
#include "Devices\Devices.h"

UsbInput::UsbInput(Usb* usb)
	: UsbEndPoint(usb, LIBUSB_ENDPOINT_IN | EP1)
{

}