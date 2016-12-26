#include "Heap.h"
#include "RingBuffer.h"
#include "Terminal.h"

void main()
{
	// setup
	Heap* heap = Heap_Construct(heapNone);
	void* memory = Heap_Alloc(heap, RingBuffer_size);
	RingBuffer* buffer = RingBuffer_Construct(memory);
	
	Terminal_Start(buffer);
	
	// teardown
	Heap_Free(heap, memory);
}