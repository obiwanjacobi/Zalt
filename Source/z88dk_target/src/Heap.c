#include <malloc.h>
#include "Heap.h"

#define Page4k 0x1000

struct _heap {
    HeapFlags Flags;
} crt_heap;

Heap* Heap_Construct(HeapFlags flags) {
    crt_heap.Flags = flags;
    return &crt_heap;
}

void* Heap_Alloc(Heap* heap, uint16_t size) {
    if (heap != &crt_heap) return NULL;
    return malloc(size);
}

void Heap_Free(Heap* heap, void* memory) {
    if (heap != &crt_heap) return;
    free(memory);
}