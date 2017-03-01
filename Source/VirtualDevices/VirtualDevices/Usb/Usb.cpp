#include "Usb.h"
#include "UsbInput.h"
#include "UsbOutput.h"

Usb::Usb()
{
	_handle = nullptr;
	_input = make_unique<UsbInput>(this);
	_output = make_unique<UsbOutput>(this);
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

	if (_handle != nullptr)
	{
		_input->initialize(_handle);
		_output->initialize(_handle);
		return true;
	}

	return false;
}

void Usb::close()
{
	if (_handle != nullptr)
	{
		_input->cancel();
		_output->cancel();

		libusb_close(_handle);
		_handle = nullptr;
	}
}

void Usb::run()
{
	forever{
		libusb_handle_events(_context);
		if (isInterruptionRequested()) return;
	}
}