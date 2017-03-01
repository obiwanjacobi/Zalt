#pragma once
#include <stdint.h>
#include <string>

enum class Devices {
	None,
	Keyboard,
	FileSystem,
};


struct KeyboardInput {
	uint8_t Key;
	uint8_t Modifiers;
};


enum class FileSystemCommandCode {
	None = 0x00,

	FileCreate = 0x01,
	FileRead = 0x02,
	FileWrite = 0x03,
	FileDelete = 0x04,

	DirCreate = 0x10,
	DirList = 0x11,
	DirDelete = 0x12,

	Meta = 0x80
};

struct FileSystemCommand {
	uint8_t CommandCode;
	char Path[61];
};


// basis of all communication
struct Message
{
	// owning device
	uint8_t DevId;
	// device specific message type
	uint8_t Type;

	union {
		// message data (max 62 bytes)
		uint8_t Data[62];

		KeyboardInput KeyboardInput;
		FileSystemCommand FileSystemCommand;
	};
};

static_assert(sizeof(Message) <= 64, "Usb Message too large");