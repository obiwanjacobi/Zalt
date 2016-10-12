#ifndef __StringBuilder_H__
#define __StringBuilder_H__

#include "Types.h"
#include "Error.h"

// variable length struct
typedef struct
{
	// total capacity of Buffer.
	uint16_t Capacity;
	
	// length of buffer string content.
	uint16_t Length;
	
	// the string content char[Capacity]
	char Buffer[];
	
} StringBuffer;


// constructs a StringBuffer struct in the passed buffer.
StringBuffer* StringBuilder_Construct(void* buffer, uint16_t capacity);

// Appends a string to the end of the StringBuffer content.
result_t StringBuilder_AppendString(StringBuffer* builder, const char* text, uint16_t length);

// Appends a char to the end of the StringBuffer content.
result_t StringBuilder_AppendChar(StringBuffer* builder, char value);

// Appends a value to the end of the StringBuffer content.
result_t StringBuilder_AppendUint8(StringBuffer* builder, uint8_t value, uint8_t base);

// Appends a value to the end of the StringBuffer content.
result_t StringBuilder_AppendUint16(StringBuffer* builder, uint16_t value, uint8_t base);



#endif //__StringBuilder_H__