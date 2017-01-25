#pragma once
#include "Devices/KeyBoardDevice.h"
#include "Usb/Usb.h"
#include <QtWidgets/QApplication>

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
		return _keyBoardDevice;
	}

private: 
	Usb _usb;
	KeyBoardDevice* _keyBoardDevice;
};