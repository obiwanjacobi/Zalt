#include "UI/virtualdevices.h"
#include "Program.h"
#include <iostream>

int main(int argc, char *argv[])
{
    std::cout << "Zalt Virtual Devices Application\n";

	Program program(argc, argv);
	
	if (!program.initialize())
	{
		std::cout << ">> Usb device not found.\n\n";
		return -1;
	}

	VirtualDevices w;
	w.show();
	
	int exitCode = program.exec();

	program.shutdown();

	return exitCode;
}
