#pragma once
#include "UsbEndPoint.h"

class Usb;

class UsbInput : public UsbEndPoint
{
	Q_OBJECT

public:
	UsbInput(Usb* usb);
};