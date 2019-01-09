#ifndef __MEMORYFAR_H__
#define __MEMORYFAR_H__

#include "Types.h"

#ifdef __SCCZ80

#define farptr_t void *__far
#define FarPtrFn(fn) (*__far fn)
#define FarPtrOf(T) T *__far

// typedef uint8_t *__far farptru8_t;
// typedef char8_t *__far farptrc8_t;
// typedef uint16_t *__far farptru16_t;

#else

typedef void *farptr_t;
#define FarPtrFn(fn) (*fn)
#define FarPtrOf(T) T *

// typedef uint8_t *farptru8_t;
// typedef char8_t *farptrc8_t;
// typedef uint16_t *farptru16_t;

#endif //__SCCZ80

#endif //__MEMORYFAR_H__
