#ifndef __KEYBOARD_H__
#define __KEYBOARD_H__

#include "SystemController.h"
    
// returns the key pressed
uint8_t KeyBoard_GetKey();

// signal that a key stroke is available
// returns false if failed
bool_t KeyBoard_Signal();
    
#endif  //__KEYBOARD_H__

/* [] END OF FILE */
