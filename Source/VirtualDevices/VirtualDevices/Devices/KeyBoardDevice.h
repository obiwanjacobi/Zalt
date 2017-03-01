#pragma once
#include "Usb\Usb.h"
#include "Device.h"
#include "Protocol/MessageHeader.h"

#include <QObject>
#include <QKeyEvent>
#include <QtWidgets/QPushButton>

#include <memory>
using namespace std;

#define BUFFER_SIZE	16

enum class KeyboardMessageTypes {
	None,
	KeyInput
};

class KeyBoardDevice : public QObject, public Device<KeyBoardDevice>
{
	Q_OBJECT

public:
	KeyBoardDevice(Usb* usb);
	~KeyBoardDevice();

	bool initialize(QObject* owner, QAbstractButton* target);
	bool eventFilter(QObject* o, QEvent* e) override;

	static inline Devices DeviceType() {
		return Devices::Keyboard;
	}

	void onMessageCompleted(Message* msg);

private:
	QObject* _target;
	bool _enable;
	Usb* _usb;

	void onEnable(bool enable);
	void onKeyPress(QKeyEvent* keyEvent);
	
	unique_ptr<MessageHeader> newMessage(uint8_t key, uint8_t modifiers);
};