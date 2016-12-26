#include "RingBuffer.h"

const uint16_t RingBuffer_size = sizeof(RingBuffer);

RingBuffer* RingBuffer_Construct(void* memory) {
    RingBuffer* buffer = (RingBuffer*)memory;
    if (memory == NULL) return NULL;
    buffer->ReadIndex = 0;
    buffer->WriteIndex = 0;
    return buffer;
}

uint8_t RingBuffer_GetCount(RingBuffer* buffer) {
    return buffer->WriteIndex - buffer->ReadIndex;
}

bool_t RingBuffer_IsFull(RingBuffer* buffer) {
    return (buffer->ReadIndex == buffer->WriteIndex + 1) ? true : false;
}

bool_t RingBuffer_IsEmpty(RingBuffer* buffer) {
    return (buffer->ReadIndex == buffer->WriteIndex) ? true : false;
}

uint8_t RingBuffer_Read(RingBuffer* buffer) {
    uint8_t value = buffer->Buffer[buffer->ReadIndex];
    buffer->ReadIndex += 1;
    return value;
}

void RingBuffer_Write(RingBuffer* buffer, uint8_t value) {
    buffer->Buffer[buffer->WriteIndex] = value;
    buffer->WriteIndex += 1;
}