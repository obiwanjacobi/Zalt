#ifndef __RINGBUFFER_H__
#define __RINGBUFFER_H__

#include "sys/Types.h"

/// A 255 byte ring- or circular buffer
/// optimized for simple/fast book keeping
struct _ringBuffer8
{
    uint8_t ReadIndex;
    uint8_t WriteIndex;
    uint8_t Buffer[256];
};
typedef struct _ringBuffer8 RingBuffer;
extern const uint16_t RingBuffer_size;
extern const uint16_t RingBuffer_MaxCapacity;

/// initializes the raw memory (RingBuffer_size long) into a RingBuffer
RingBuffer *RingBuffer_Construct(void *memory);
/// Reads a value from the buffer. No underrun detection. Call IsEmpty.
uint8_t RingBuffer_Read(RingBuffer *buffer);
/// Writes a value to the buffer. No overrun detection. Call IsFull.
void RingBuffer_Write(RingBuffer *buffer, uint8_t value);
/// indicate if the buffer is full.
bool_t RingBuffer_IsFull(RingBuffer *buffer);
/// indicates if the buffer is empty.
bool_t RingBuffer_IsEmpty(RingBuffer *buffer);
/// retrieves the number of values in the buffer.
/// More expensive than IsEmpty. Max 254.
uint8_t RingBuffer_GetCount(RingBuffer *buffer);
/// Reads a value from the buffer. No underrun detection. Call IsEmpty.
uint8_t RingBuffer_Peek(RingBuffer *buffer);
/// Clears and resets the buffer
void RingBuffer_Clear(RingBuffer *buffer);

#endif //__RINGBUFFER_H__