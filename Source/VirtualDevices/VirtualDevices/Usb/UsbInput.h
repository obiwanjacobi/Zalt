#pragma once
#include "UsbEndPoint.h"
#include "Protocol\MessageHeader.h"

#include <unordered_map>
using namespace std;

class Usb;

typedef struct {
	MessageHandler Handler;
	void* UserData;
} DeviceCallbackInfo;

class UsbInput : public UsbEndPoint
{
	Q_OBJECT

public:
	UsbInput(Usb* usb);

	void registerDevice(MessageHandler handler, void* userData, Devices deviceId);

	bool initialize(libusb_device_handle* handle) {
		bool success = UsbEndPoint::initialize(handle);
		receive(&_message);
		return success;
	}
protected:
	void onCompleted(Message* message, enum libusb_transfer_status status, int length) override;

private:
	Message _message;
	unordered_map<Devices, DeviceCallbackInfo> _registerations;
};