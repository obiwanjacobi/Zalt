#include "sys/Thread.h"
#include "sys/Sys.h"
#include "io/Stream.h"
#include "RingBuffer.h"
#include "Monitor.h"


void init()
{
	Thread_Construct();
	StreamProvider_Construct();
}

void main()
{
	//void* memory;
	//RingBuffer* buffer = NULL;
	
	System_DebugConsole_Log("1");
	dInfoPoint();
	System_DebugConsole_Log("2");

	// setup
	//init();
	//memory = Thread_Alloc(RingBuffer_size);
	//buffer = RingBuffer_Construct(memory);

	//Monitor_Start(buffer);
	
	// teardown
	//Thread_Free(memory);
}