#ifndef __SYSTEMCONTROLLER_H__
#define __SYSTEMCONTROLLER_H__

#include "project.h"

/**
    Terms used.
    
    Command:
        A directive to execute some action. 
        Each component has its own handlers.
    
    Handler:
        Code that know what to do with a specific event (or command).
    
    Controller:
        A component that knows how to control (part of) the outside world.
    
    Processor:
        Code that interacts with a running Z80.
        Usually (PSoC) interrupt driven.
    
*/
    
typedef enum _bool_t
{
    false,
    true
    
} bool_t;    
    
#endif  //__SYSTEMCONTROLLER_H__

/* [] END OF FILE */
