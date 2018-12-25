#include "Debug.h"
#include "Sys.h"
#include <string.h>

uint16_t String_Copy(const char8_t *source, char8_t *buffer, uint16_t capacity)
{
    const uint16_t maxStrLen = capacity - 1;
    int i;

    dGuardErrVal(source == NULL, E_NULLPTR, 0);
    dGuardErrVal(buffer == NULL, E_ARGNULLOREMPTY, 0);
    dGuardErrVal(capacity == 0, E_ARGNOTINRANGE, 0);

    // TODO: make asm version
    for (i = 0; i < maxStrLen; i++)
    {
        buffer[i] = source[i];

        if (source[i] == 0) break;
    }

    if (i == maxStrLen)
    {
        buffer[i] = 0;
        i++;
    }
    return i;
}

int16_t String_Compare(const char8_t *strx, const char8_t *stry, uint16_t length)
{
    dGuardErrVal(strx == NULL, E_NULLPTR, 0);
    dGuardErrVal(stry == NULL, E_ARGNULLOREMPTY, 0);

    if (length == 0) return stricmp((char *)strx, (char *)stry);

    return strnicmp((char *)strx, (char *)stry, length);
}

int16_t String_CompareExact(const char8_t *strx, const char8_t *stry, uint16_t length)
{
    dGuardErrVal(strx == NULL, E_NULLPTR, 0);
    dGuardErrVal(stry == NULL, E_ARGNULLOREMPTY, 0);

    if (length == 0) return strcmp((char *)strx, (char *)stry);

    return strncmp((char *)strx, (char *)stry, length);
}

uint16_t String_GetLength(const char8_t *source, uint16_t capacity)
{
    dGuardErrVal(source == NULL, E_NULLPTR, 0);

    if (capacity == 0) return strlen((char *)source);

    return strnlen((char *)source, capacity);
}
