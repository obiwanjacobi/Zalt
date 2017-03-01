#include "UsbInput.h"
#include "Usb.h"

UsbInput::UsbInput(Usb* usb)
	: UsbEndPoint(usb, LIBUSB_ENDPOINT_IN | EP1)
{

}

void UsbInput::registerDevice(MessageHandler handler, void* userData, Devices deviceId)
{
	_registerations.insert_or_assign(deviceId, DeviceCallbackInfo{ handler, userData });
}

void UsbInput::onCompleted(Message* message, enum libusb_transfer_status status, int length)
{
	MessageStatus msgStatus = MakeMessageStatus(status);

	if (msgStatus == MessageStatus::Completed) {
		msgStatus = MessageStatus::Received;
	}

	// lookup device owner
	auto& entry = _registerations.find((Devices)message->DevId);

	// dispatch to device
	entry->second.Handler(message, msgStatus, entry->second.UserData);

	// setup to receive next message
	receive(&_message);
}