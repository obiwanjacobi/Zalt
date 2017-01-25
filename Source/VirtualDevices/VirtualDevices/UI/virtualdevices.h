#ifndef VIRTUALDEVICES_H
#define VIRTUALDEVICES_H

#include <QtWidgets/QMainWindow>
#include "ui_virtualdevices.h"

class VirtualDevices : public QMainWindow
{
	Q_OBJECT

public:
	VirtualDevices(QWidget *parent = 0);
	~VirtualDevices();

private:
	Ui::VirtualDevicesClass ui;
};

#endif // VIRTUALDEVICES_H
