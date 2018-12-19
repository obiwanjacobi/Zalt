#include "TestTasks.h"
#include "io/Io.h"
#include "sys/Debug.h"

#define MAX_COUNT 3999

static uint16_t _task = 0;
static uint16_t count = MAX_COUNT;

bool_t CountDown3()
{
    count--;

    if (count == 0)
    {
        count = MAX_COUNT;
        return true;
    }

    return false;
}

Task_Begin(Task3_Execute)
{
    while (true)
    {
        Task_WaitUntil(CountDown3());
        System_DebugConsole_Out('3');
    }
}
Task_End
