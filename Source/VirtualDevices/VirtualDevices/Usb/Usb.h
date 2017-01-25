#pragma once
#include "UsbInput.h"
#include "UsbOutput.h"
#include <QThread>
#include "libusb.h"

class Usb : public QThread
{
	Q_OBJECT

	friend class UsbEndPoint;

public:
	Usb();
	~Usb();

	bool open();
	void close();

	const char* GetLastError() const {
		return libusb_error_name(_last_error);
	}

	bool isOpen() const {
		return _handle != NULL;
	}

	UsbInput* input() const {
		return _input;
	}

	UsbOutput* output() const {
		return _output;
	}

protected:
	void run() override;

private:
	int _last_error;
	libusb_context* _context;
	libusb_device_handle* _handle;
	UsbInput* _input;
	UsbOutput* _output;
};

