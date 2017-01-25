#pragma once
#include <stdint.h>


enum class Devices {
	None,
	Keyboard,
};


struct KeyboardInput
{
	uint8_t Key;
	uint8_t Modifiers;
};



// basis of all communication
class Message
{
public:
	// owning device
	uint8_t DevId;
	// device specific message type
	uint8_t Type;

	union {
		// message data (max 62 bytes)
		uint8_t Data[62];

		KeyboardInput KeyboardInput;
	};
};

static_assert(sizeof(Message) <= 64, "Usb Message too large.");