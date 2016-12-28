#ifndef __THREAD_H__
#define __THREAD_H__

#include "Sys.h"

// 0 is reserved
typedef uint8_t ThreadId;

struct _thread {
	ThreadId Id;
	result_t LastError;
	Heap* Heap;
};

// call in setup of main
void Thread_Construct();

#endif	//__THREAD_H__