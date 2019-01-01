#ifndef __ERROR_H__
#define __ERROR_H__

#include "api.h"
#include <stdint.h>

typedef uint8_t result_t;

//
// success codes
//

// success, but with aditional info
#define S_WITHINFO 2
// alternate boolean
#define S_FALSE 1
#define S_TRUE 0
// success
#define S_OK 0

//
// error codes
//

#define E_ERROR_BASE 0x10
// a (this) function parameter was NULL
#define E_NULLPTR E_ERROR_BASE + 0
// the available space in the buffer has been used up
#define E_BUFFERFULL E_ERROR_BASE + 1
// the available space in the buffer was exceeded
#define E_BUFFEROVERRUN E_ERROR_BASE + 2
// a (non-this) function parameter was NULL or empty
#define E_ARGNULLOREMPTY E_ERROR_BASE + 3
// the value of function parameter was not within the expected range
#define E_ARGNOTINRANGE E_ERROR_BASE + 4
// the (interface) function is not implemented
#define E_NOTIMPLEMENTED E_ERROR_BASE + 5
// the (interface) function is not supported
#define E_NOTSUPPORTED E_ERROR_BASE + 6
// an Init or Construct method must first be called on the object
#define E_NOTINITIALIZED E_ERROR_BASE + 7
// access is not permitted
#define E_NOACCESS E_ERROR_BASE + 8
// available memory has been depleted
#define E_OUTOFMEMORY E_ERROR_BASE + 9
// calling the open function multiple times
#define E_ALREADYOPEN E_ERROR_BASE + 10
// passing an object or handle that belongs to something else
#define E_NOTOWNED E_ERROR_BASE + 11

#define Succeeded(r) ((r) < E_ERROR_BASE)
#define Failed(r) ((r) >= E_ERROR_BASE)

// (thread) global error
// void Error_Set(result_t error);
void FastCall(Error_Set__fast(result_t error));
#define Error_Set(p) Error_Set__fast(p)

result_t Error_Get();

#endif //__ERROR_H__
