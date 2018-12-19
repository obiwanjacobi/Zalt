#include <stdlib.h>
#include <string.h>

char *utoa(uint16_t num, char *buf, int radix)
{
    return ultoa(num, buf, radix);
}