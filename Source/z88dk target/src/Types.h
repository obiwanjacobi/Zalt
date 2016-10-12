#ifndef __TYPES_H__
#define __TYPES_H__

#include <stdint.h>

// our own bool
typedef enum
{
	false,
	true
} bool_t;

// a handle to something else
//typedef handle_t	void*
#define handle_t	void*

#endif	//__TYPES_H__