#include "StringBuilder.h"
#include "sys/Debug.h"
#include <stdlib.h>
#include <string.h>

StringBuilder *StringBuilder_Construct(ptr_t memory, uint16_t capacity)
{
    StringBuilder *builder = (StringBuilder *)memory;
    dGuardErrVal(memory == NULL, E_ARGNULLOREMPTY, NULL);
    dGuardErrVal(capacity < StringBuilder_size, E_ARGNOTINRANGE, NULL);

    builder->Capacity = capacity - StringBuilder_size;
    builder->Length = 0;
    builder->Text[0] = '\0';
    return builder;
}

result_t StringBuilder_AppendString(StringBuilder *builder, const char8_t *buffer, uint16_t length)
{
    char8_t *start;
    dGuardVal(builder == NULL, E_NULLPTR);
    dGuardVal(buffer == NULL, E_ARGNULLOREMPTY);
    dGuardVal(builder->Capacity - builder->Length < length, E_BUFFERFULL);

    start = &builder->Text[builder->Length];
    strlcpy(start, (char8_t *)buffer, length);
    builder->Length += length;

    return S_OK;
}

result_t StringBuilder_AppendChar(StringBuilder *builder, char8_t value)
{
    dGuardVal(builder == NULL, E_NULLPTR);
    dGuardVal(builder->Capacity - builder->Length < 2, E_BUFFERFULL);

    builder->Text[builder->Length] = value;
    builder->Length += 1;
    builder->Text[builder->Length] = '\0';

    return S_OK;
}

result_t StringBuilder_AppendUint8(StringBuilder *builder, uint8_t value, uint8_t base)
{
    char8_t *start;
    dGuardVal(builder == NULL, E_NULLPTR);
    dGuardVal(builder->Capacity - builder->Length < 4, E_BUFFERFULL);

    start = &builder->Text[builder->Length];
    itoa(value, start, base);
    builder->Length += strlen(start);

    return S_OK;
}

result_t StringBuilder_AppendUint16(StringBuilder *builder, uint16_t value, uint8_t base)
{
    char8_t *start;
    dGuardVal(builder == NULL, E_NULLPTR);
    dGuardVal(builder->Capacity - builder->Length < 6, E_BUFFERFULL);

    start = &builder->Text[builder->Length];
    itoa(value, start, base);
    builder->Length += strlen(start);

    return S_OK;
}
