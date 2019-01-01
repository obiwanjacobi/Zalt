#ifndef __HEAP_H__
#define __HEAP_H__

#include "Sys.h"

enum _heapFlags
{
    heapNone
    // small/near-heap, large/far-heap, fixed/pool-heap
};
typedef enum _heapFlags HeapFlags;

#ifdef __SDCC
Heap *FastCall(Heap_Construct__fast(HeapFlags flags));
#define Heap_Construct(p) Heap_Construct__fast(p)
#elif __SCCZ80
Heap __FASTCALL__ *Heap_Construct__fast(HeapFlags flags);
#define Heap_Construct(p) Heap_Construct__fast(p)
#else
Heap *Heap_Construct(HeapFlags flags);
#endif

#endif //__HEAP_H__
