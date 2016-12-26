#include "StringBuilder.h"
#include "Error.h"
#include <stdlib.h>
#include <string.h>

StringBuilder* StringBuilder_Construct(void* memory, uint16_t capacity)
{
	StringBuilder* builder = (StringBuilder*)memory;
	if (memory == NULL) return NULL;
	if (capacity < StringBuilder_size) return NULL;
	builder->Capacity = capacity - StringBuilder_size;
	builder->Length = 0;
	builder->Text[0] = '\0';
	return builder;
}


result_t StringBuilder_AppendString(StringBuilder* builder, const char* buffer, uint16_t length)
{
	char* start;
	if (builder == NULL) return E_NULLPTR;
	if (buffer == NULL) return E_ARGNULLOREMPTY;
	if (builder->Capacity - builder->Length < length) return E_BUFFERFULL;
	
	start = &builder->Text[builder->Length];
	strncpy(start, buffer, length);
	builder->Length += length;
	
	return S_OK;
}


result_t StringBuilder_AppendChar(StringBuilder* builder, char value)
{
	if (builder == NULL) return E_NULLPTR;
	if (builder->Capacity - builder->Length < 2) return E_BUFFERFULL;
	
	builder->Text[builder->Length] = value;
	builder->Length += 1;
	builder->Text[builder->Length] = '\0';

	return S_OK;
}


result_t StringBuilder_AppendUint8(StringBuilder* builder, uint8_t value, uint8_t base)
{
	char* start;
	if (builder == NULL) return E_NULLPTR;
	if (builder->Capacity - builder->Length < 4) return E_BUFFERFULL;
	
	start = &builder->Text[builder->Length];
	itoa(value, start, base);
	builder->Length += strlen(start);
	
	return S_OK;
}


result_t StringBuilder_AppendUint16(StringBuilder* builder, uint16_t value, uint8_t base)
{
	char* start;
	if (builder == NULL) return E_NULLPTR;
	if (builder->Capacity - builder->Length < 6) return E_BUFFERFULL;
	
	start = &builder->Text[builder->Length];
	itoa(value, start, base);
	builder->Length += strlen(start);
	
	return S_OK;
}
