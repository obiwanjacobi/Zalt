#include "Sys.h"
#include <string.h>

uint16_t String_Copy(const char* source, char* buffer, uint16_t capacity)
{
    if (source == NULL) { Error_Set(E_NULLPTR); return 0; }
    if (buffer == NULL) { Error_Set(E_ARGNULLOREMPTY); return 0; }
    if (capacity == 0) { Error_Set(E_ARGNOTINRANGE); return 0; }
    // TODO: make own version that returns number of copied bytes
    return strlcpy(buffer, (char*)source, capacity);
}

int16_t String_Compare(const char* strx, const char* stry, uint16_t capacity)
{
    if (strx == NULL) { Error_Set(E_NULLPTR); return 0; }
    if (stry == NULL) { Error_Set(E_ARGNULLOREMPTY); return 0; }
    
    if (capacity == 0)
        return stricmp((char*)strx, (char*)stry);
    
    return strnicmp((char*)strx, (char*)stry, capacity);
}

int16_t String_CompareExact(const char* strx, const char* stry, uint16_t capacity)
{
    if (strx == NULL) { Error_Set(E_NULLPTR); return 0; }
    if (stry == NULL) { Error_Set(E_ARGNULLOREMPTY); return 0; }
    
    if (capacity == 0)
        return strcmp((char*)strx, (char*)stry);

    return strncmp((char*)strx, (char*)stry, capacity);
}

uint16_t String_GetLength(const char* source, uint16_t capacity)
{
    if (source == NULL) { Error_Set(E_NULLPTR); return 0; }
    
    if (capacity == 0)
        return strlen((char*)source);

    return strnlen((char*)source, capacity);
}
