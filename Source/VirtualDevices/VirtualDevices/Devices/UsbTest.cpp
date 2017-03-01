#include "UsbTest.h"

void UsbTest::initialize()
{
	registerDevice(Devices::None);
}

bool UsbTest::SendTestMessage()
{
	auto msg = newMessage(0);
	post(msg);

	_lock.lock();
	bool success = _msgReceived.wait(&_lock, 10000);
	_lock.unlock();

	return success;
}

void UsbTest::onMessageReceived(Message* message)
{
	_msgReceived.wakeAll();
}