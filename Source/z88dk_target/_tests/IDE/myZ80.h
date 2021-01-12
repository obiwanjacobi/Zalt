
#ifndef __Z80_H__
#define __Z80_H__

extern void __LIB__ z80_delay_ms(uint16_t ms) __smallc __z88dk_fastcall;

extern uint8_t __LIB__ z80_inp(uint16_t port) __smallc __z88dk_fastcall;

extern void __LIB__ z80_outp(uint16_t port,uint8_t data) __smallc;
extern void __LIB__ z80_outp_callee(uint16_t port,uint8_t data) __smallc __z88dk_callee;
#define z80_outp(a,b) z80_outp_callee(a,b)

#endif
