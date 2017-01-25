#include "Usb.h"
#include "UsbInput.h"
#include "UsbOutput.h"

Usb::Usb()
{
	_handle = NULL;
	_input = new UsbInput(this);
	_output = new UsbOutput(this);
	_last_error = libusb_init(&_context);
}

Usb::~Usb()
{
	close();
	libusb_exit(_context);
}

bool Usb::open()
{
	_handle = libusb_open_device_with_vid_pid(_context, 0xDEAD, 0xBEEF);

	if (_handle != NULL)
	{
		_input->initialize(_handle);
		_output->initialize(_handle);
		return true;
	}

	return false;
}

void Usb::close()
{
	if (_handle != NULL)
	{
		_input->cancel();
		_output->cancel();

		libusb_close(_handle);
		_handle = NULL;
	}
}

void Usb::run()
{
	forever{
		libusb_handle_events(_context);
		if (isInterruptionRequested()) return;
	}
}