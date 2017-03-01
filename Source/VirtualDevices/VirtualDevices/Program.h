#pragma once
#include "Devices/KeyBoardDevice.h"
#include "Devices/FileSystemDevice.h"
#include "Devices/UsbTest.h"
#include "Usb/Usb.h"
#include <QtWidgets/QApplication>
#include <memory>


class Program : public QApplication
{
	Q_OBJECT

public:
	Program(int &argc, char **argv);

	bool initialize();
	void shutdown();

	static Program* instance() { return (Program*)qApp; }

	// devices
	void installKeyBoardDevice(QObject* owner, QAbstractButton* target) {
		_keyBoardDevice->initialize(owner, target);
	}

	KeyBoardDevice* keyBoardDevice() const {
		return _keyBoardDevice.get();
	}

	FileSystemDevice* fileSystemDevice() const {
		return _fileSystemDevice.get();
	}

	UsbTest* usbTest() const {
		return _usbTest.get();
	}

private: 
	Usb _usb;
	std::unique_ptr<KeyBoardDevice> _keyBoardDevice;
	std::unique_ptr<FileSystemDevice> _fileSystemDevice;
	std::unique_ptr<UsbTest> _usbTest;
};