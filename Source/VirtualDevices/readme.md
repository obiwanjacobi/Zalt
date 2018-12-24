# VirtualDevices

* Install Qt (open source) - select msvc2015 or higher target (64 bits)
* Visual Studio Project (2015 or higher)
* Install Qt Tools for Visual Studio.

Qt Options:
* Set Version => point to `C:\Qt\5.12.0\msvc2015_64` or similar

Qt Project Settings:
* Select Qt Version for project
* Modules used:
	* Core
	* GUI
	* Widgets

## USB Driver on Windows

Download Zadig http://zadig.akeo.ie/ and configure libusb driver.

## Description

VirtualDevices is a Qt C++ project that connects to the Zalt System Controller PSoC over USB.
The VirtualDevices application simulates devices that would be accassible to the Zalt system.

I hope to replace these in the future with physical implementations including a high-speed
system IO-bus.