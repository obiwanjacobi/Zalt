#ifndef __API_H__
#define __API_H__

// FastCall for C calls with one parameter
// FastAPI for asm calls with one parameter
// API for other asm calls (cannot not be pointed to!)
// - omit macro when function pointer is needed

#ifdef __SDCC
#define FastCall(fn) fn __z88dk_fastcall
#define FastAPI(fn) fn __z88dk_fastcall
#define API(fn) fn __z88dk_callee
#define ISR(fn) fn __z88dk_fastcall
#elif __SCCZ80
// these do not work for pointer return values!
#define FastCall(fn) __FASTCALL__ fn
#define FastAPI(fn) __FASTCALL__ fn
#define API(fn) __CALLEE__ fn
#define ISR(fn) __FASTCALL__ fn
#else
#define FastCall(fn) fn
#define FastAPI(fn) fn
#define API(fn) fn
#define ISR(fn) fn
#endif

// Example for a ptr retval fast fn:
// #ifdef __SDCC
// void *FastAPI(fn__fast(uint16_t p));
// #define fn(p) fn__fast(p)
// #elif __SCCZ80
// void __FASTCALL__ *fn__fast(uint16_t p);
// #define fn(p) fn__fast(p)
// #else
// void *fn(uint16_t p);
// #endif

#endif //__API_H__
