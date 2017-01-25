#pragma once
#include "Usb\Usb.h"
#include <QObject>
#include <QKeyEvent>
#include <QtWidgets/QPushButton>

#define BUFFER_SIZE	16

enum class KeyboardMessageTypes {
	None,
	KeyInput
};

class KeyBoardDevice : public QObject
{
	Q_OBJECT

public:
	KeyBoardDevice(Usb* usb);
	~KeyBoardDevice();

	bool initialize(QObject* owner, QAbstractButton* target);
	bool eventFilter(QObject* o, QEvent* e) override;

private:
	QObject* _target;
	bool _enable;
	Usb* _usb;

	void onEnable(bool enable);
	void onKeyPress(QKeyEvent* keyEvent);
	void onMessage(Message* msg);
	static void KeyBoardMessageHandler(Message* msg, void* userData);
};