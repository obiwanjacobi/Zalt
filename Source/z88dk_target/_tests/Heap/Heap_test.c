#include "..\..\src\sys\Heap.h"
#include <malloc.h>
#include <stdint.h>

static uint8_t *mem = NULL;

void main()
{
    Heap *heap = Heap_Construct(heapNone);
    mem = Heap_Alloc(heap, 100);

    mem[0] = 0;
    mem[1] = 1;
    mem[98] = 98;
    mem[99] = 99;

    Heap_Free(heap, mem);
}
