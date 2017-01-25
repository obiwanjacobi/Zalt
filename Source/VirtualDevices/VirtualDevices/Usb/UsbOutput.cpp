#include "UsbOutput.h"
#include "Devices\Devices.h"
#include "Protocol\MessageHeader.h"

UsbOutput::UsbOutput(Usb* usb)
	: UsbEndPoint(usb, LIBUSB_ENDPOINT_OUT | EP2)
{
}

void UsbOutput::post(MessageHeader* msg)
{
	_messages.append(msg);
	next();
}

bool UsbOutput::next()
{
	if (isBusy()) return false;
	if (_messages.length() == 0) return false;

	return submit(_messages.at(0));
}

void UsbOutput::onCompleted(int length)
{
	UsbEndPoint::onCompleted(length);

	MessageHeader* msg = _messages.at(0);
	_messages.removeFirst();
	next();

	msg->Handler(&msg->Message, msg->UserData);
}

void UsbOutput::onError(enum libusb_transfer_status status)
{
	UsbEndPoint::onError(status);

	_messages.removeFirst();
	next();
}