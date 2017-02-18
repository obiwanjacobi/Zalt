#include "TestTasks.h"
#include "io/Io.h"

#define MAX_COUNT   9999

static uint16_t _task = 0;
static uint16_t count = MAX_COUNT;

bool_t CountDown2()
{
    count--;

    if (count == 0) {
        count = MAX_COUNT;
        return true;
    }
    
    return false;
}

Task_Begin(Task2_Execute)
{
    while(true) {
        Task_WaitUntil(CountDown2());
        System_DebugConsole_Out('2');
    }
}
Task_End
