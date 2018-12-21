#ifndef __IOADDRESSES_H__
#define __IOADDRESSES_H__
    
//
// IO Addresses for SystemController peripherals
//

// These definitions MUST be the same as the asm file:
//     'Zalt\Source\z88dk_target\libsrc\_DEVELOPMENT\target\zalt\system\io_addresses.asm'
    
// test loop IO address
#define IO_TEST_LOOP    0x00

// port for PSoc <=> Z80 debug communication
#define IO_DEBUGGER     0x08

// fixed user serial commlink to PC
#define IO_Terminal       0x20

// fixed (debug) serial commlink to PC
#define IO_Serial       0x30

    
#endif  //__IOADDRESSES_H__

/* [] END OF FILE */
