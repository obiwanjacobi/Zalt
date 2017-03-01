#include "Program.h"

Program::Program(int &argc, char **argv) 
	: QApplication(argc, argv)
{ }

bool Program::initialize()
{
	_keyBoardDevice = std::make_unique<KeyBoardDevice>(&_usb);
	_fileSystemDevice = std::make_unique<FileSystemDevice>(&_usb);
	_usbTest = std::make_unique<UsbTest>(&_usb);

	_fileSystemDevice->initialize("C:\\Zalt_FileSystem");
	_usbTest->initialize();

	if (_usb.open())
	{
		_usb.start();
		return true;
	}

	return false;
}

void Program::shutdown()
{
	_usb.requestInterruption();
	_usb.close();
	_usb.wait();
}