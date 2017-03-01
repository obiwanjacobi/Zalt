#pragma once
#include "Device.h"


enum class FileSystemMessageTypes {
	None,
	Command,
	StreamRead,
	StreamWrite,
};

class FileSystemDevice : public Device<FileSystemDevice>
{
public:
	FileSystemDevice(Usb* usb);
	~FileSystemDevice();

	void initialize(const char* basPath);

	static inline Devices DeviceType() {
		return Devices::FileSystem;
	}

private:
	const char* _basePath;

};