#pragma once

#include "Device.h"
#include <qmutex.h>
#include <qwaitcondition.h>

class UsbTest : public Device<UsbTest>
{
public:
	UsbTest(Usb* usb)
		: Device(usb)
	{}

	void initialize();

	bool SendTestMessage();

	static Devices DeviceType() {
		return Devices::None;
	}

	void onMessageReceived(Message* message);

protected:
	

private:
	QWaitCondition _msgReceived;
	QMutex _lock;
};