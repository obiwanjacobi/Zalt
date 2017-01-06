#ifndef __HEAP_H__
#define __HEAP_H__

#include "Sys.h"

enum _heapFlags {
    heapNone
    // small/near-heap, large/far-heap, fixed/pool-heap
};
typedef enum _heapFlags HeapFlags;

Heap* FastCall(Heap_Construct__fast(HeapFlags flags));
#define Heap_Construct(p)   Heap_Construct__fast(p)

#endif //__HEAP_H__