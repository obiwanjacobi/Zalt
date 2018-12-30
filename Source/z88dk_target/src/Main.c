#include "Monitor.h"
#include "RingBuffer.h"
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
    void *memory;
    RingBuffer *buffer = NULL;

    // setup
    GlobalInit();
    memory = Thread_Alloc(RingBuffer_size);
    buffer = RingBuffer_Construct(memory);
    Monitor_Start(buffer);

    // teardown
    Thread_Free(memory);
}
