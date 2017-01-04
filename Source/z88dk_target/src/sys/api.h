#ifndef __API_H__
#define __API_H__

// FastAPI for calls with one parameter
// API for other calls (cannot not be pointed to!)
// - omit macro when function pointer is needed

#ifdef __SDCC
#define FastAPI(fn)	fn __z88dk_fastcall
#define API(fn)	fn __z88dk_callee
#endif

#ifdef __SCCZ80
#define FastAPI(fn)	__FASTCALL__ fn
#define API(fn)	__CALLEE__ fn
#endif

#endif	//__API_H__