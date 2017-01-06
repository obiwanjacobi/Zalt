#ifndef __SYSTEM_H__
#define __SYSTEM_H__

#include "Sys.h"

//extern void System_DebugConsole_Out(uint8_t data);
extern void FastAPI(System_DebugConsole_Out__fast(uint8_t data));
#define System_DebugConsole_Out(p) System_DebugConsole_Out__fast(p)

extern uint8_t System_DebugConsole_In();

//void System_DebugConsole_Log(const char* text);
void FastCall(System_DebugConsole_Log__fast(const char* text));
#define System_DebugConsole_Log(p) System_DebugConsole_Log__fast(p)

void System_DebugConsole_LogAssertFailed(const char* file, uint16_t line);


#endif  //__SYSTEM_H__