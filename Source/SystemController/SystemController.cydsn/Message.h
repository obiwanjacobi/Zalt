#ifndef __MESSAGE_H__
#define __MESSAGE_H__
    
#include "SystemController.h"
//#include <stdint.h>

/*
 *  This file is a logical-copy of the Message.h in the virtual devices project.
 */

typedef enum {
	deviceNone,
	deviceKeyboard,
    deviceFileSystem,
} Devices;


typedef struct
{
	uint8_t Key;
	uint8_t Modifiers;
} KeyboardInput;

//
// message types per device
//

// Keyboard
#define KEYBOARD_INPUTKEY   1
// FileSystem
#define FILESYSTEM_COMMAND  1

typedef enum  {
	fscmdNone = 0x00,

	fscmdFileCreate = 0x01,
	fscmdFileRead = 0x02,
	fscmdFileWrite = 0x03,
	fscmdFileDelete = 0x04,

	fscmdDirCreate = 0x10,
	fscmdDirList = 0x11,
	fscmdDirDelete = 0x12,

	fscmdMeta = 0x80
} FileSystemCommandCode;

typedef struct  {
    // file-system command
	uint8_t CommandCode;
    
    union {
        // path involved in command
	    char Path[61];
    };
    
} FileSystemCommand;



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
        FileSystemCommand FileSystem;
	};
} Message;

//static_assert(sizeof(Message) <= 64, "Usb Message too large.");

#endif  //__MESSAGE_H__