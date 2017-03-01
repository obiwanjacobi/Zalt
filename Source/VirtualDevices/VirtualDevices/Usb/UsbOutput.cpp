#include "UsbOutput.h"
#include "Protocol\MessageHeader.h"
#include "Usb.h"

UsbOutput::UsbOutput(Usb* usb)
	: UsbEndPoint(usb, LIBUSB_ENDPOINT_OUT | EP2)
{ }

void UsbOutput::post(unique_ptr<MessageHeader>& msg)
{
	_messages.push_back(move(msg));
	next();
}

bool UsbOutput::next()
{
	if (isBusy()) return false;
	if (_messages.size() == 0) return false;

	return submit(_messages.front().get());
}

void UsbOutput::onCompleted(Message* message, enum libusb_transfer_status status, int length)
{
	UsbEndPoint::onCompleted(message, status, length);

	unique_ptr<MessageHeader> msg = std::move(_messages.front());
	_messages.pop_front();

	msg->Handler(&msg->Message, MakeMessageStatus(status), msg->UserData);
	
	next();

	// msg should be deleted here...
}
