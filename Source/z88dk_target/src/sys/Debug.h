#ifndef __DEBUG_H__
#define __DEBUG_H__

#ifdef DEBUG

#include "Error.h"
#include "System.h"

#define dAssert(c)              if (!(c)) { System_DebugConsole_LogAssertFailed(__FILE__, __LINE__); __asm halt __endasm; }
#define dGuard(c)               if (c) return;
#define dGuardVal(c, v)         if (c) return v;
#define dGuardErrVal(c, e, v)   if (c) { Error_Set(e); return v; }
                                                                          
#define dLog(s)                 System_DebugConsole_Log(s);
#define dLogIf(c, s)            if (c) System_DebugConsole_Log(s);

// communicates with system controller
#define dInfoPoint()            __asm halt __endasm

#else   //!DEBUG

#define dAssert(c)
#define dGuard(c)
#define dGuardVal(c, v)
#define dGuardErrVal(c, e, v)

#define dLog(s)
#define dLogIf(c, s)

#define dInfoPoint()

#endif  //DEBUG

#endif	//__DEBUG_H__