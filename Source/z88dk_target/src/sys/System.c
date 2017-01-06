#include "System.h"
#include <stdlib.h>


//void System_DebugConsole_Log(const char* text)
void FastCall(System_DebugConsole_Log__fast(const char* text))
{
    if (text == NULL) return;

    while(*text != NULL) {
        System_DebugConsole_Out(*text);
        text += 1;
    }
}

void System_DebugConsole_LogAssertFailed(const char* file, uint16_t line)
{
    char buf[6];
    buf[0] = 0;
    utoa(line, buf, 10);

    System_DebugConsole_Log("Error: dAssert Failed in '");
    System_DebugConsole_Log(file);
    System_DebugConsole_Log("' at line ");
    System_DebugConsole_Log(buf);
}

