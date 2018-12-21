#include "Monitor.h"
#include "RingBuffer.h"
#include "TestTasks.h"
#include "io/Stream.h"
#include "sys/Sys.h"
#include "sys/Thread.h"

void GlobalInit()
{
    Thread_Construct();
    StreamProvider_Construct();
}

void main()
{
    // void* memory;
    // RingBuffer* buffer = NULL;

    // setup
    GlobalInit();
    // memory = Thread_Alloc(RingBuffer_size);
    // buffer = RingBuffer_Construct(memory);
    // Monitor_Start(buffer);

    while (true)
    {
        Task1_Execute();
        Task2_Execute();
        Task3_Execute();
    }

    // teardown
    // Thread_Free(memory);
}