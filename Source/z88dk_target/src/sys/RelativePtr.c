#include "Sys.h"

relptr_t RelativePtr_Construct(relptr_t *relPtr, ptr_t ptr)
{
    if (ptr == NULL)
    {
        *relPtr = 0;
        return 0;
    }
    *relPtr = (uint8_t *)ptr - relPtr;
    return *relPtr;
}

ptr_t RelativePtr_ToPointer__fast(relptr_t *relPtr)
{
    return relPtr + *relPtr;
}
