#ifndef __HEAP_H__
#define __HEAP_H__

#include "Sys.h"

enum _heapFlags {
    heapNone
    // small/near-heap, large/far-heap, fixed/pool-heap
};
typedef enum _heapFlags HeapFlags;

Heap* Heap_Construct(HeapFlags flags);

#endif //__HEAP_H__