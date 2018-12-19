#include "minunit.h"

#include "Heap.h"
#include "Sys.h"

static const char *Heap_Construct_test()
{
    Heap *heap = Heap_Construct(heapNone);
    mu_assert(heap != NULL, "no heap");
    return NULL;
}

static const char *Heap_Alloc_test()
{
    Heap *heap = Heap_Construct(heapNone);
    void *mem = Heap_Alloc(heap, 10);
    Heap_Free(heap, mem);

    mu_assert(mem != NULL, "no mem");
    return NULL;
}

static const char *Heap_Alloc_test_NoHeap()
{
    Heap *heap = Heap_Construct(heapNone);
    void *mem = Heap_Alloc((Heap *)"someOtherPtr", 10);
    mu_assert(mem == NULL, "this probably crashed");
    return NULL;
}

static const char *Heap_testSuite()
{
    mu_run_test(Heap_Construct_test);
    mu_run_test(Heap_Alloc_test);
    mu_run_test(Heap_Alloc_test_NoHeap);
    return NULL;
}