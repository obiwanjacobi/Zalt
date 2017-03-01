#pragma once
#include "UsbInput.h"
#include "UsbOutput.h"

#include "libusb.h"

#include <QThread>

#include <memory>
using namespace std;


//
// As programmed into the PSoC USB design component.
//

// endpoints
#define EP1		1
#define EP2		2
#define EP3		3
#define EP4		4
#define EP5		5
#define EP6		6
#define EP7		7
#define EP8		8

// interfaces
#define BulkInterfaceId			0



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
		return _input.get();
	}

	UsbOutput* output() const {
		return _output.get();
	}

protected:
	void run() override;

private:
	int _last_error;
	libusb_context* _context;
	libusb_device_handle* _handle;
	unique_ptr<UsbInput> _input;
	unique_ptr<UsbOutput> _output;
};

