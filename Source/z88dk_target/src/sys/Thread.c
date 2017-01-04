#include "Thread.h"
#include "Heap.h"

static Thread CurrentThread;

void Thread_Construct()
{
	CurrentThread.Id = 1;
	CurrentThread.Heap = Heap_Construct(heapNone);
	CurrentThread.LastError = S_OK;
}

Thread* Thread_GetCurrent()
{
	return &CurrentThread;
}

ThreadId Thread_GetId(Thread* thread)
{
	return thread->Id;
}

Heap* FastAPI(Thread_GetHeap__fast(Thread* thread))
{
	return thread->Heap;
}

/// Allocates from the current thread heap.
//void* FastAPI(Thread_Alloc__fast(uint16_t length))
void* Thread_Alloc(uint16_t length)
{
	if (length == 0) return NULL;
	return Heap_Alloc(CurrentThread.Heap, length);
}

/// Frees to the current thread heap.
//void FastAPI(Thread_Free__fast(void* memory))
void Thread_Free(void* memory)
{
	if (memory == NULL) return;
    Heap_Free(CurrentThread.Heap, memory);
}