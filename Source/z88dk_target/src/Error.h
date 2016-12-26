#ifndef __ERROR_H__
#define __ERROR_H__

typedef uint16_t	result_t;

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

#define Succeeded(r)	((r) < E_ERROR_BASE)
#define Failed(r)		((r) > E_ERROR_BASE-1)

// (thread) global error
result_t SetLastError(result_t err);
result_t GetLastError();


#endif //__ERROR_H__