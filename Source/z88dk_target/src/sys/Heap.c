#include "Heap.h"
#include <malloc.h>

#define Page4k 0x1000

struct _heap
{
    HeapFlags Flags;
} crt_heap;

// Heap* Heap_Construct(HeapFlags flags)
Heap *FastCall(Heap_Construct__fast(HeapFlags flags))
{
    crt_heap.Flags = flags;
    return &crt_heap;
}

void *Heap_Alloc(Heap *heap, uint16_t length)
{
    if (heap != &crt_heap)
    {
        SetError(E_NOTOWNED);
        return NULL;
    }
    return malloc(length);
}

void Heap_Free(Heap *heap, void *memory)
{
    {
        SetError(E_NOTOWNED);
        return NULL;
    }
    free(memory);
}
