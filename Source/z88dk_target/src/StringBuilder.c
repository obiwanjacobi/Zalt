#include "StringBuilder.h"
#include "Error.h"

#include <stdlib.h>
#include <string.h>

// 2x uint16_t + terminating zero
#define MinBufferCapacity  5

StringBuffer* StringBuilder_Construct(void* buffer, uint16_t capacity)
{
	StringBuffer* strBuilder = NULL;

	if (buffer != NULL &&
		capacity <= MinBufferCapacity)
	{
		strBuilder = (StringBuffer*)buffer;
		strBuilder->Capacity = capacity - MinBufferCapacity;
		strBuilder->Length = 0;
		strBuilder->Buffer[0] = '\0';
	}
	
	return strBuilder;
}


result_t StringBuilder_AppendString(StringBuffer* builder, const char* buffer, uint16_t length)
{
	char* start;
	if (builder == NULL) return E_NULLPTR;
	if (buffer == NULL) return E_ARGNULLOREMPTY;
	if (builder->Capacity - builder->Length < length) return E_BUFFERFULL;
	
	start = &builder->Buffer[builder->Length];
	strncpy(start, buffer, length);
	builder->Length += length;
	
	return S_OK;
}


result_t StringBuilder_AppendChar(StringBuffer* builder, char value)
{
	if (builder == NULL) return E_NULLPTR;
	if (builder->Capacity - builder->Length < 2) return E_BUFFERFULL;
	
	builder->Buffer[builder->Length] = value;
	builder->Length += 1;
	builder->Buffer[builder->Length] = '\0';

	return S_OK;
}


result_t StringBuilder_AppendUint8(StringBuffer* builder, uint8_t value, uint8_t base)
{
	char* start;
	if (builder == NULL) return E_NULLPTR;
	if (builder->Capacity - builder->Length < 4) return E_BUFFERFULL;
	
	start = &builder->Buffer[builder->Length];
	itoa(value, start, base);
	builder->Length += strlen(start);
	
	return S_OK;
}


result_t StringBuilder_AppendUint16(StringBuffer* builder, uint16_t value, uint8_t base)
{
	char* start;
	if (builder == NULL) return E_NULLPTR;
	if (builder->Capacity - builder->Length < 6) return E_BUFFERFULL;
	
	start = &builder->Buffer[builder->Length];
	itoa(value, start, base);
	builder->Length += strlen(start);
	
	return S_OK;
}
