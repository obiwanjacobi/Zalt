#ifndef __URI_H__
#define __URI_H__

#include "Types.h"

typedef struct
{
    const char_t *Raw;
} Uri;

Uri *Uri_Construct(const char_t *uri);

#endif //__URI_H__