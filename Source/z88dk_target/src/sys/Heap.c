#include "Heap.h"
#include <malloc.h>


#define Page4k 0x1000

struct _heap {
    HeapFlags Flags;
} crt_heap;

//Heap* FastAPI(Heap_Construct__fast(HeapFlags flags))
Heap* Heap_Construct(HeapFlags flags)
{
    crt_heap.Flags = flags;
    return &crt_heap;
}

//void* API(Heap_Alloc(Heap* heap, uint16_t length))
void* Heap_Alloc(Heap* heap, uint16_t length)
{
    if (heap != &crt_heap) return NULL;
    return malloc(length);
}

//void API(Heap_Free(Heap* heap, void* memory))
void Heap_Free(Heap* heap, void* memory)
{
    if (heap != &crt_heap) return;
    free(memory);
}
