#ifndef __STRINGBUILDER_H__
#define __STRINGBUILDER_H__

#include "sys/Error.h"
#include "sys/Types.h"

typedef Collection8 StringBuilder;
#define StringBuilder_size Collection8_size

// constructs a Collection struct in the passed buffer.
StringBuilder *StringBuilder_Construct(void *buffer, uint16_t capacity);

// Appends a string to the end of the Collection content.
result_t StringBuilder_AppendString(StringBuilder *builder, const char *text, uint16_t length);

// Appends a char to the end of the Collection content.
result_t StringBuilder_AppendChar(StringBuilder *builder, char8_t value);

// Appends a value to the end of the Collection content.
result_t StringBuilder_AppendUint8(StringBuilder *builder, uint8_t value, uint8_t base);

// Appends a value to the end of the Collection content.
result_t StringBuilder_AppendUint16(StringBuilder *builder, uint16_t value, uint8_t base);

#endif //__STRINGBUILDER_H__