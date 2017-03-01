#include "KeyBoardDevice.h"
#include <QEvent>
#include <QFocusEvent>
#include <iostream>

KeyBoardDevice::KeyBoardDevice(Usb* usb) 
	: Device::Device(usb)
{
	_enable = false;
}

KeyBoardDevice::~KeyBoardDevice() 
{ }

bool KeyBoardDevice::initialize(QObject* owner, QAbstractButton* target)
{
	QObject::connect(target, &QAbstractButton::clicked, this, &KeyBoardDevice::onEnable);
	owner->installEventFilter(this);
	return true;
}

void KeyBoardDevice::onEnable(bool enable)
{
	_enable = enable;
}

bool KeyBoardDevice::eventFilter(QObject* o, QEvent* e)
{
	if (!_enable) return false;

	switch (e->type())
	{
	case QEvent::KeyPress:
		onKeyPress(static_cast<QKeyEvent*>(e));
		return true;
	}

	return QObject::eventFilter(o, e);
}

void KeyBoardDevice::onKeyPress(QKeyEvent* keyEvent)
{
	unique_ptr<MessageHeader> msg = newMessage(keyEvent->key(), keyEvent->modifiers());

	post(msg);
}

//
// USB
//

void KeyBoardDevice::onMessageCompleted(Message* msg)
{
	std::cout << (char)msg->Data[0];
}

unique_ptr<MessageHeader> KeyBoardDevice::newMessage(uint8_t key, uint8_t modifiers)
{
	unique_ptr<MessageHeader> msg = Device::newMessage((uint8_t)KeyboardMessageTypes::KeyInput);

	msg->Message.KeyboardInput.Key = key;
	msg->Message.KeyboardInput.Modifiers = modifiers;

	return msg;
}


