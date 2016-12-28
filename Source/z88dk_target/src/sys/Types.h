#ifndef __TYPES_H__
#define __TYPES_H__

#include <stdint.h>
#include <stdlib.h>


/// standard types value ranges
#define uint8_min 0
#define uint8_max UINT8_MAX
#define uint16_min 0
#define uint16_max UINT16_MAX
#define uint32_min 0
#define uint32_max UINT32_MAX
#define int8_min INT8_MIN
#define int8_max INT8_MAX
#define int16_min INT16_MIN
#define int16_max INT16_MAX
#define int32_min INT32_MIN
#define int32_max INT32_MAX

//extern const char* EndOfLine;
extern const char NewLineChar;
extern const char CarriageReturnChar;

// our own bool
enum _bool_t {
	false,
	true
};
typedef enum _bool_t bool_t;

/// SmallArray8 represents a fixed array of 8-bit items
/// no larger than 255 bytes long.
// variable length struct
struct _smallArray8 {
	// total capacity of array.
	uint8_t Capacity;
    union {
        // the data content uint8_t[Capacity]
	    uint8_t Data[1];
        // the string content char[Capacity]
	    char Text[1];
    };
};
typedef struct _smallArray8 SmallArray8;
extern const uint8_t SmallArray8_size;
extern const uint8_t SmallArray8_MaxCapacity;

/// Array8 represents a fixed array of 8-bit items
/// no larger than 64k bytes long.
// variable length struct
struct _array8 {
	// total capacity of array.
	uint16_t Capacity;
    union {
        // the data content uint8_t[Capacity]
	    uint8_t Data[1];
        // the string content char[Capacity]
	    char Text[1];
    };
};
typedef struct _array8 Array8;
extern const uint8_t Array8_size;
extern const uint16_t Array8_MaxCapacity;

// variable length struct
struct _collection8 {
	// length of used array content.
	uint16_t Length;
	
	// Same as Array8:
    // total capacity of array.
	uint16_t Capacity;
    union {
        // the data content uint8_t[Capacity]
	    uint8_t Data[1];
        // the string content char[Capacity]
	    char Text[1];
    };
};
typedef struct _collection8 Collection8;
extern const uint8_t Collection8_size;
extern const uint16_t Collection8_MaxCapacity;

// an opaque handle to something
//typedef void* handle_t;
#define handle_t	void*

#endif	//__TYPES_H__