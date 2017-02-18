#include "TestTasks.h"
#include "io/Io.h"

static uint16_t _task = 0;
static Stream* Console;
static uint8_t Key;

bool_t HasKey()
{
    if (Stream_Read(Console, &Key, 1) > 0) {
        return true;
    }
    return false;
}


Task_Begin(Task1_Execute)
{
    Console = Stream_Open(ConsoleProtocol, streamAccess_Read | streamAccess_Write);

    while(true) {
        Task_WaitUntil(HasKey());
        System_DebugConsole_Out(Key);
        //dBreakpoint();
    }
}
Task_End
