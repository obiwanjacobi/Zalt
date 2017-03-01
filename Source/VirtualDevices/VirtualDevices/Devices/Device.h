#pragma once
#include "Usb\Usb.h"
#include "Protocol/MessageHeader.h"

#include <memory>
using namespace std;


template<typename DeviceT>
class Device
{
protected:
	Device(Usb* usb) {
		_usb = usb;
	}

	// output
	void post(unique_ptr<MessageHeader>& msgHdr) {
		_usb->output()->post(msgHdr);
	}

	// input
	void registerDevice(Devices deviceId) {
		_usb->input()->registerDevice(MessageHandler, this, deviceId);
	}

	void onMessageReceived(Message* msg)
	{ }
	void onMessageCompleted(Message* msg)
	{ }
	void onMessageError(Message* msg, MessageStatus status)
	{ }

	unique_ptr<MessageHeader> newMessage(uint8_t messageType) {
		unique_ptr<MessageHeader> msg = MessageHeader::New(
			Device<DeviceT>::MessageHandler, DeviceT::DeviceType(), messageType);

		msg->UserData = static_cast<DeviceT*>(this);

		return msg;
	}

private:
	Usb* _usb;

	static void MessageHandler(Message* msg, MessageStatus status, void* userData) {
		DeviceT* pThis = static_cast<DeviceT*>(userData);
		
		switch (status)
		{
		case MessageStatus::Completed:
			pThis->onMessageCompleted(msg);
			break;
		case MessageStatus::Received:
			pThis->onMessageReceived(msg);
			break;
		default:
			pThis->onMessageError(msg, status);
			break;
		}
	}
};