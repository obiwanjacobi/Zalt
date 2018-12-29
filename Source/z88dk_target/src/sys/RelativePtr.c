#include "Sys.h"

relptr_t RelativePtr_Construct(relptr_t *relPtr, ptr_t ptr)
{
    if (ptr == NULL) return 0;
    // error 42: pointer + pointer invalid
    // that is why we cast
    *relPtr = (uint16_t)relPtr + (uint16_t)ptr;
    return *relPtr;
}

ptr_t RelativePtr_ToPointer__fast(relptr_t *relPtr)
{
    return relPtr + *relPtr;
}
