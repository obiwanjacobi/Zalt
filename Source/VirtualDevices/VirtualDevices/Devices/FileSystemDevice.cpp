#include "FileSystemDevice.h"

FileSystemDevice::FileSystemDevice(Usb* usb)
	: Device::Device(usb)
{ }

FileSystemDevice::~FileSystemDevice()
{ }

void FileSystemDevice::initialize(const char* basPath)
{
	_basePath = _basePath;
	registerDevice(Devices::FileSystem);
}