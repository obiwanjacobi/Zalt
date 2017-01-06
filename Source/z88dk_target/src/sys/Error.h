#ifndef __ERROR_H__
#define __ERROR_H__

#include "api.h"
#include <stdint.h>

typedef uint16_t result_t;

#define S_WITHINFO			2
#define S_FALSE				1
#define S_TRUE				0
#define S_OK				0

#define E_ERROR_BASE        0x10
#define E_NULLPTR			E_ERROR_BASE + 0
#define E_BUFFERFULL		E_ERROR_BASE + 1
#define E_BUFFEROVERRUN		E_ERROR_BASE + 2
#define E_ARGNULLOREMPTY	E_ERROR_BASE + 3
#define E_ARGNOTINRANGE		E_ERROR_BASE + 4
#define E_NOTIMPLEMENTED    E_ERROR_BASE + 5
#define E_NOTSUPPORTED	    E_ERROR_BASE + 6
#define E_NOTINITIALIZED    E_ERROR_BASE + 7
#define E_NOACCESS          E_ERROR_BASE + 8
#define E_OUTOFMEMORY       E_ERROR_BASE + 9

#define Succeeded(r)	((r) < E_ERROR_BASE)
#define Failed(r)		((r) > E_ERROR_BASE - 1)

// (thread) global error
//void Error_Set(result_t error);
void FastCall(Error_Set__fast(result_t error));
#define Error_Set(p) Error_Set__fast(p)

result_t Error_Get();

#endif //__ERROR_H__