#include "KeyBoardDevice.h"
#include "Devices.h"
#include "Protocol/MessageHeader.h"
#include <QEvent>
#include <QFocusEvent>
#include <iostream>

KeyBoardDevice::KeyBoardDevice(Usb* usb) 
{
	_usb = usb;
	_enable = false;
}

KeyBoardDevice::~KeyBoardDevice() 
{
}

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

void KeyBoardDevice::KeyBoardMessageHandler(Message* msg, void* userData)
{
	((KeyBoardDevice*)userData)->onMessage(msg);
}

void KeyBoardDevice::onMessage(Message* msg)
{
	std::cout << (char)msg->Data[0];
}

void KeyBoardDevice::onKeyPress(QKeyEvent* keyEvent)
{
	// TODO: send to USB
	//std::cout << (char)keyEvent->key();

	MessageHeader* msg = MessageHeader::New(KeyBoardMessageHandler, Devices::Keyboard, (uint8_t)KeyboardMessageTypes::KeyInput);
	msg->UserData = this;
	msg->Message.KeyboardInput.Key = keyEvent->key();
	msg->Message.KeyboardInput.Modifiers = keyEvent->modifiers();

	_usb->output()->post(msg);
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