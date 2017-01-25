#include "Program.h"


Program::Program(int &argc, char **argv) 
	: QApplication(argc, argv)
{ }

bool Program::initialize()
{
	_keyBoardDevice = new KeyBoardDevice(&_usb);

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
}