#pragma once
#include "UsbEndPoint.h"
#include "Protocol\Message.h"

#include <deque>
#include <memory>
using namespace std;

class Usb;

class UsbOutput : public UsbEndPoint
{
	Q_OBJECT

public:
	UsbOutput(Usb* usb);

	void post(unique_ptr<MessageHeader>& msg);

protected:
	void onCompleted(Message* message, enum libusb_transfer_status status, int length) override;

private:
	deque<unique_ptr<MessageHeader>> _messages;


	bool next();
};