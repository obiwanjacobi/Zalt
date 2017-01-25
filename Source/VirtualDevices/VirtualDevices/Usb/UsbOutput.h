#pragma once
#include "UsbEndPoint.h"
#include "Protocol\Message.h"

class Usb;

class UsbOutput : public UsbEndPoint
{
	Q_OBJECT

public:
	UsbOutput(Usb* usb);

	void post(MessageHeader* msg);

protected:
	void onCompleted(int length) override;
	void onError(enum libusb_transfer_status status) override;
private:
	QList<MessageHeader*> _messages;

	bool next();
};