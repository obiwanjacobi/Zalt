#ifndef __HEAP_H__
#define __HEAP_H__

#include "Types.h"

typedef void Heap;

enum _heapFlags {
    heapNone
    // small/near-heap, large/far-heap, fixed/pool-heap
};
typedef enum _heapFlags HeapFlags;

Heap* Heap_Construct(HeapFlags flags);
void* Heap_Alloc(Heap* heap, uint16_t size);
void Heap_Free(Heap* heap, void* memory);

#endif //__HEAP_H__