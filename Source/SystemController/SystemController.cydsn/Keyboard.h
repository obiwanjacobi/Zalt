#ifndef __KEYBOARD_H__
#define __KEYBOARD_H__

#include "SystemController.h"
#include "Message.h"
    
void KeyBoard_Init();
// called to handle an USB virtual device message
void KeyBoard_Handle(Message* message, uint8_t length);

// returns false when buffer is full
bool_t KeyBoard_SetKey(uint8_t key);
// returns zero when no keys available
uint8_t KeyBoard_GetKey();

// signal that a key stroke is available
// returns false if failed
bool_t KeyBoard_Signal();
    
#endif  //__KEYBOARD_H__

/* [] END OF FILE */
