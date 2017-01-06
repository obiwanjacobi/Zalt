#ifndef __API_H__
#define __API_H__

// FastCall for C calls with one parameter
// FastAPI for asm calls with one parameter
// API for other asm calls (cannot not be pointed to!)
// - omit macro when function pointer is needed

#ifdef __SDCC
#define FastCall(fn)	fn __z88dk_fastcall
#define FastAPI(fn)	    fn __z88dk_fastcall
#define API(fn)	        fn __z88dk_callee
#endif

#ifdef __SCCZ80
#define FastCall(fn)	fn 
#define FastAPI(fn)	    __FASTCALL__ fn
#define API(fn)	        __CALLEE__ fn
#endif

#endif	//__API_H__