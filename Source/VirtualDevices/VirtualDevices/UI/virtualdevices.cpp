#include "virtualdevices.h"
#include "Program.h"

VirtualDevices::VirtualDevices(QWidget *parent)
	: QMainWindow(parent)
{
	ui.setupUi(this);

	// keyboard interaction
	auto prog = Program::instance();
	prog->installKeyBoardDevice(prog, ui.keyboard);
}

VirtualDevices::~VirtualDevices()
{

}
