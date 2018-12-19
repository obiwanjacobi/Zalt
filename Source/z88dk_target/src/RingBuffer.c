#include "RingBuffer.h"
#include "sys/Debug.h"
#include "sys/Error.h"

const uint16_t RingBuffer_size = sizeof(RingBuffer);
const uint16_t RingBuffer_MaxCapacity = 256;

RingBuffer *RingBuffer_Construct(void *memory)
{
    RingBuffer *buffer = (RingBuffer *)memory;
    dGuardErrVal(buffer == NULL, E_ARGNULLOREMPTY, NULL);

    buffer->ReadIndex = 0;
    buffer->WriteIndex = 0;
    return buffer;
}

uint8_t RingBuffer_GetCount(RingBuffer *buffer)
{
    dGuardErrVal(buffer == NULL, E_NULLPTR, 0);
    return buffer->WriteIndex - buffer->ReadIndex;
}

bool_t RingBuffer_IsFull(RingBuffer *buffer)
{
    dGuardErrVal(buffer == NULL, E_NULLPTR, false);
    return (buffer->ReadIndex == buffer->WriteIndex + 1) ? true : false;
}

bool_t RingBuffer_IsEmpty(RingBuffer *buffer)
{
    dGuardErrVal(buffer == NULL, E_NULLPTR, false);
    return (buffer->ReadIndex == buffer->WriteIndex) ? true : false;
}

uint8_t RingBuffer_Read(RingBuffer *buffer)
{
    uint8_t value;
    dGuardErrVal(buffer == NULL, E_NULLPTR, 0);
    value = buffer->Buffer[buffer->ReadIndex];
    buffer->ReadIndex += 1;
    return value;
}

uint8_t RingBuffer_Peek(RingBuffer *buffer)
{
    dGuardErrVal(buffer == NULL, E_NULLPTR, 0);
    return buffer->Buffer[buffer->ReadIndex];
}

void RingBuffer_Write(RingBuffer *buffer, uint8_t value)
{
    dGuardErr(buffer == NULL, E_NULLPTR);
    buffer->Buffer[buffer->WriteIndex] = value;
    buffer->WriteIndex += 1;
}

void RingBuffer_Clear(RingBuffer *buffer)
{
    dGuardErr(buffer == NULL, E_NULLPTR);
    buffer->ReadIndex = 0;
    buffer->WriteIndex = 0;
}