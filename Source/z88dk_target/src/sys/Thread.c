#include "Thread.h"
#include "Debug.h"
#include "Heap.h"

static Thread CurrentThread;

void Thread_Construct()
{
    CurrentThread.Id = 1;
    CurrentThread.Heap = Heap_Construct(heapNone);
    CurrentThread.LastError = S_OK;
}

Thread *Thread_GetCurrent()
{
    return &CurrentThread;
}

ThreadId FastCall(Thread_GetId(Thread *thread))
{
    dGuardErrVal(thread != NULL, E_NULLPTR, 0);
    return thread->Id;
}

#ifdef __SDCC
Heap *FastCall(Thread_GetHeap__fast(Thread *thread))
#elif __SCCZ80
Heap __FASTCALL__ *Thread_GetHeap__fast(Thread *thread)
#else
Heap *Thread_GetHeap(Thread *thread)
#endif
{
    dGuardErrVal(thread != NULL, E_NULLPTR, NULL);
    return thread->Heap;
}

/// Allocates from the current thread heap.
// void* Thread_Alloc(uint16_t length)
#ifdef __SDCC
ptr_t FastCall(Thread_Alloc__fast(uint16_t length))
#elif __SCCZ80
void __FASTCALL__ *Thread_Alloc__fast(uint16_t length)
#else
ptr_t Thread_Alloc(uint16_t length)
#endif
{
    if (length == 0) return NULL;
    return Heap_Alloc(CurrentThread.Heap, length);
}

/// Frees to the current thread heap.
// void Thread_Free(void* memory)
void FastCall(Thread_Free__fast(void *memory))
{
    if (memory == NULL) return;
    Heap_Free(CurrentThread.Heap, memory);
}
