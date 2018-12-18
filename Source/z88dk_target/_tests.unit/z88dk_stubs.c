#include <stdlib.h>
#include <string.h>

int strlcpy(char *dst, char *src, int size)
{
    strncpy(dst, src, size);
    return strlen(src);
}

char *utoa(uint16_t num, char *buf, int radix)
{
    return ultoa(num, buf, radix);
}