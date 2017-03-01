#include "virtualdevices.h"
#include "Program.h"

#include <QMessageBox.h>

VirtualDevices::VirtualDevices(QWidget *parent)
	: QMainWindow(parent)
{
	ui.setupUi(this);

	// keyboard interaction
	auto prog = Program::instance();
	prog->installKeyBoardDevice(prog, ui.keyboard);

	connect(ui.usbTest, &QPushButton::clicked, this, &VirtualDevices::onUsbTest);
}

VirtualDevices::~VirtualDevices()
{

}

void VirtualDevices::onUsbTest(bool checked)
{
	auto prog = Program::instance();
	bool success = prog->usbTest()->SendTestMessage();

	QMessageBox msgBox;
	msgBox.setWindowTitle("Usb Test");
	msgBox.setText(success ? "Succeeded." : "Failed.");
	msgBox.exec();
}