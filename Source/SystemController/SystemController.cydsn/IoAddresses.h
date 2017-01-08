#ifndef __IOADDRESSES_H__
#define __IOADDRESSES_H__
    
//
// IO Addresses for SystemController peripherals
//


// test loop IO address
#define IO_TEST_LOOP    0x00

// port for PSoc <=> Z80 debug communication
#define IO_DEBUGGER     0x08

// fixed user serial commlink to PC
#define IO_Terminal       0x10

// fixed (debug) serial commlink to PC
#define IO_Serial       0x20

    
#endif  //__IOADDRESSES_H__

/* [] END OF FILE */
