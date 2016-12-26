#include "..\..\src\Heap.h"
#include "..\..\src\RingBuffer.h"

static bool_t isEmpty1 = false;
static bool_t isEmpty2 = false;
static bool_t isFull = false;
static uint8_t count = 0;
static uint8_t val = 0;

void main(void)
{
	Heap* heap = Heap_Construct(heapNone);
    void* mem = Heap_Alloc(heap, RingBuffer_size);
    RingBuffer* buf = RingBuffer_Construct(mem);

    isEmpty1 = RingBuffer_IsEmpty(buf);
    if (isEmpty1) {
        RingBuffer_Write(buf, 42);
        count = RingBuffer_GetCount(buf);
    }
    isFull = RingBuffer_IsFull(buf);
    if (!isFull) {
        val = RingBuffer_Read(buf);
    }
    isEmpty2 = RingBuffer_IsEmpty(buf);

    Heap_Free(heap, mem);
}