#ifndef __Thread_H__
#define __Thread_H__

#include "../Types.h"

// 0 is reserved
typedef uint8_t		ThreadId;

typedef struct
{
	ThreadId	Id;
	void*		Stack;
	void*		Heap;
	
} Thread;

Thread* Thread_GetCurrent();


#endif	//__Thread_H__