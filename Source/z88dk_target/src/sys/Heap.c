#include "Heap.h"
#include "Debug.h"
#include <malloc.h>

#define Page4k 0x1000

struct _heap
{
    HeapFlags Flags;
} crt_heap;

// Heap* Heap_Construct(HeapFlags flags)
#ifdef __SDCC
Heap *FastCall(Heap_Construct__fast(HeapFlags flags))
#elif __SCCZ80
Heap __FASTCALL__ *Heap_Construct__fast(HeapFlags flags)
#else
Heap *Heap_Construct(HeapFlags flags)
#endif
{
    crt_heap.Flags = flags;
    return &crt_heap;
}

void *Heap_Alloc(Heap *heap, uint16_t length)
{
    dGuardErrVal(heap == NULL, E_NULLPTR, NULL);
    if (heap != &crt_heap)
    {
        Error_Set(E_NOTOWNED);
        return NULL;
    }
    return malloc(length);
}

void Heap_Free(Heap *heap, void *memory)
{
    dGuardErr(heap == NULL, E_NULLPTR);
    dGuardErr(memory == NULL, E_ARGNULLOREMPTY);
    if (heap != &crt_heap)
    {
        Error_Set(E_NOTOWNED);
        return;
    }
    free(memory);
}
