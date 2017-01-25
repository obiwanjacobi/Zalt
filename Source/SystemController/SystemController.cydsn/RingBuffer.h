#ifndef __RINGBUFFER_H__
#define __RINGBUFFER_H__

#include "SystemController.h"

typedef struct
{
    uint8_t* Buffer;
    uint16_t Length;
    uint16_t WriteIndex;
    uint16_t ReadIndex;
    
} RingBuffer;

// initializes the structure and assigns the buffer and length. Resets the content.
void RingBuffer_Init(RingBuffer* ringBuffer, uint8_t* buffer, uint16_t length);

uint8_t RingBuffer_ReadByte(RingBuffer* ringBuffer);
uint8_t RingBuffer_WriteByte(RingBuffer* ringBuffer, uint8_t data);
uint8_t RingBuffer_Read(RingBuffer* ringBuffer, uint8_t* buffer, uint8_t maxLength, uint8_t match);

inline uint8_t RingBuffer_Peek(RingBuffer* ringBuffer);
uint8_t RingBuffer_PeekLastWritten(RingBuffer* ringBuffer);

inline bool_t RingBuffer_IsEmpty(RingBuffer* ringBuffer);
inline bool_t RingBuffer_IsFull(RingBuffer* ringBuffer);
uint16_t RingBuffer_getLength(RingBuffer* ringBuffer);

#endif  //__RINGBUFFER_H__

/* [] END OF FILE */
