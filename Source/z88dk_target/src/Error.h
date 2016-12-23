#ifndef __ERROR_H__
#define __ERROR_H__

typedef uint16_t	result_t;

#define S_FALSE				1
#define S_TRUE				0
#define S_OK				0


#define E_NULLPTR			2
#define E_BUFFERFULL		3
#define E_BUFFEROVERRUN		4
#define E_ARGNULLOREMPTY	5
#define E_ARGNOTINRANGE		6

#define Succeeded(r)	((r) < 2)
#define Failed(r)		((r) > 1)

// (thread) global error
result_t SetLastError(result_t err);
result_t GetLastError();


#endif //__ERROR_H__