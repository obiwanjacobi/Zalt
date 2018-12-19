#include "Sys.h"
#include <string.h>

uint16_t String_Copy(const char *source, char *buffer, uint16_t capacity)
{
    dGuardErrVal(source == NULL, E_NULLPTR, 0);
    dGuardErrVal(buffer == NULL, E_ARGNULLOREMPTY, 0);
    dGuardErrVal(capacity == 0, E_ARGNOTINRANGE, 0);
    // TODO: make own version that returns number of copied bytes
    return strlcpy(buffer, (char *)source, capacity);
}

int16_t String_Compare(const char *strx, const char *stry, uint16_t capacity)
{
    dGuardErrVal(strx == NULL, E_NULLPTR, 0);
    dGuardErrVal(stry == NULL, E_ARGNULLOREMPTY, 0);

    if (capacity == 0) return stricmp((char *)strx, (char *)stry);

    return strnicmp((char *)strx, (char *)stry, capacity);
}

int16_t String_CompareExact(const char *strx, const char *stry, uint16_t capacity)
{
    dGuardErrVal(strx == NULL, E_NULLPTR, 0);
    dGuardErrVal(stry == NULL, E_ARGNULLOREMPTY, 0);

    if (capacity == 0) return strcmp((char *)strx, (char *)stry);

    return strncmp((char *)strx, (char *)stry, capacity);
}

uint16_t String_GetLength(const char *source, uint16_t capacity)
{
    dGuardErrVal(source == NULL, E_NULLPTR, 0);

    if (capacity == 0) return strlen((char *)source);

    return strnlen((char *)source, capacity);
}
