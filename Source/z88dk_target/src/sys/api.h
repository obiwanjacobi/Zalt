#ifndef __API_H__
#define __API_H__

// FastCall for C calls with one parameter
// FastAPI for asm calls with one parameter
// API for other asm calls (cannot not be pointed to!)
// - omit macro when function pointer is needed

#if defined(__SDCC) || defined(__SCCZ80)
#define FastCall(fn) fn __z88dk_fastcall
#define FastAPI(fn) fn __z88dk_fastcall
#define API(fn) fn __z88dk_callee
#define ISR(fn) fn __z88dk_fastcall
#else
// mainly for IDE
#define FastCall(fn) fn
#define FastAPI(fn) fn
#define API(fn) fn
#define ISR(fn) fn
#endif

#endif //__API_H__
