#ifndef _COMMON_DEFINED
#define _COMMON_DEFINED

#ifdef __cplusplus
extern "C" {
#endif

/* Integer types used for FatFs API */

#if defined(_WIN32)	/* Main development platform */
#define FF_INTDEF 2
#include <windows.h>
typedef unsigned __int64 QWORD;
#elif (defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L) || defined(__cplusplus)	/* C99 or later */
#define FF_INTDEF 2
#include <stdint.h>
typedef unsigned int	UINT;	/* int must be 16-bit or 32-bit */
typedef unsigned char	BYTE;	/* char must be 8-bit */
typedef uint16_t		WORD;	/* 16-bit unsigned integer */
typedef uint32_t		DWORD;	/* 32-bit unsigned integer */
typedef uint64_t		QWORD;	/* 64-bit unsigned integer */
typedef WORD			WCHAR;	/* UTF-16 character type */
#else  	/* Earlier than C99 */
#define FF_INTDEF 1
typedef unsigned int	UINT;	/* int must be 16-bit or 32-bit */
typedef unsigned char	BYTE;	/* char must be 8-bit */
typedef unsigned short	WORD;	/* 16-bit unsigned integer */
typedef unsigned long	DWORD;	/* 32-bit unsigned integer */
typedef WORD			WCHAR;	/* UTF-16 character type */
#endif


#ifdef __cplusplus
}
#endif

#endif //_COMMON_DEFINED
