#ifndef __MESSAGE_H__
#define __MESSAGE_H__
    
#include "SystemController.h"
//#include <stdint.h>


typedef enum {
	None,
	Keyboard,
} Devices;


typedef struct
{
	uint8_t Key;
	uint8_t Modifiers;
} KeyboardInput;

// message types per device
#define KEYBOARD_INPUTKEY   1

// basis of all communication
typedef struct 
{
	// owning device
	uint8_t DevId;
	// device specific message type
	uint8_t Type;

	union {
		// message data (max 62 bytes)
		uint8_t Data[62];

		KeyboardInput KeyboardInput;
	};
} Message;

//static_assert(sizeof(Message) <= 64, "Usb Message too large.");

#endif  //__MESSAGE_H__