#pragma once
#include <libusb.h>
#include <QObject>

class Usb;
class MessageHeader;

typedef unsigned char EndPointId;

class UsbEndPoint : public QObject
{
	friend class Usb;

	Q_OBJECT

public:
	UsbEndPoint(Usb* usb, EndPointId id);
	~UsbEndPoint();

	EndPointId id() const {
		return _transfer->endpoint;
	}

	bool isBusy() const {
		return _busy;
	}

	bool cancel() {
		if (!isBusy()) return false;
		return libusb_cancel_transfer(_transfer) == 0;
	}

protected:
	Usb* usb() const {
		return _usb;
	}

	// Usb has to be open
	bool initialize(libusb_device_handle* handle);
	bool submit(MessageHeader* msgHeader);

	virtual void onCompleted(int length) { _busy = false; }
	virtual void onError(enum libusb_transfer_status status) { _busy = false; }

private:
	Usb* _usb;
	libusb_transfer* _transfer;
	bool _busy;

	void onCallback();
	static void Callback(libusb_transfer* transfer);
};