#include "RingBuffer.h"

void RingBuffer_Init(RingBuffer* ringBuffer, uint8_t* buffer, uint16_t length)
{
    ringBuffer->Buffer = buffer;
    ringBuffer->Length = length;
    ringBuffer->ReadIndex = 0;
    ringBuffer->WriteIndex = 0;
    
    memset(ringBuffer->Buffer, 0, length);
}

uint8_t RingBuffer_ReadByte(RingBuffer* ringBuffer)
{
    uint8_t result = ringBuffer->Buffer[ringBuffer->ReadIndex];
    ringBuffer->Buffer[ringBuffer->ReadIndex] = 0;  // debug clarity
    ringBuffer->ReadIndex++;

    if (ringBuffer->ReadIndex >= ringBuffer->Length)
    {
        ringBuffer->ReadIndex = 0;
    }

    return result;
}

uint8_t RingBuffer_Read(RingBuffer* ringBuffer, uint8_t* buffer, uint8_t maxLength, uint8_t match)
{
    uint8_t l = RingBuffer_getLength(ringBuffer);
    if (maxLength < l) l = maxLength;
    
    uint8_t i;
    for(i = 0; i < l; i++)
    {
        buffer[i] = RingBuffer_ReadByte(ringBuffer);
        if (buffer[i] == match)
        {
            return i + 1;
        }
    }
    
    return l;
}

uint8_t RingBuffer_WriteByte(RingBuffer* ringBuffer, uint8_t data)
{
    uint8_t newIndex = ringBuffer->WriteIndex + 1;
    if (newIndex >= ringBuffer->Length)
    {
        // wrap around
        newIndex = 0;
    }

    // collision detection (buffer full condition)
    if (newIndex == ringBuffer->ReadIndex) return 0;

    ringBuffer->Buffer[ringBuffer->WriteIndex] = data;
    ringBuffer->WriteIndex = newIndex;
    return 1;
}

inline uint8_t RingBuffer_Peek(RingBuffer* ringBuffer)
{
    return ringBuffer->Buffer[ringBuffer->ReadIndex];
}

uint8_t RingBuffer_PeekLastWritten(RingBuffer* ringBuffer)
{
    if (RingBuffer_IsEmpty(ringBuffer)) return 0;
    
    uint16_t wIndex = ringBuffer->WriteIndex - 1;
    if (wIndex >= ringBuffer->Length) wIndex = ringBuffer->Length - 1;
    
    return ringBuffer->Buffer[wIndex];
}

uint16_t RingBuffer_getLength(RingBuffer* ringBuffer)
{
    if (ringBuffer->ReadIndex > ringBuffer->WriteIndex)
    {
        return ringBuffer->Length - (ringBuffer->ReadIndex - ringBuffer->WriteIndex);
    }
    
    return ringBuffer->WriteIndex - ringBuffer->ReadIndex;
}

inline uint8_t* RingBuffer_getReadPtr(RingBuffer* ringBuffer)
{
    return &ringBuffer->Buffer[ringBuffer->ReadIndex];
}

inline void RingBuffer_AdjustReadIndex(RingBuffer* ringBuffer, uint16_t bytesRead)
{
    ringBuffer->ReadIndex += bytesRead;
}

inline uint8_t RingBuffer_IsEmpty(RingBuffer* ringBuffer)
{
    return ringBuffer->ReadIndex == ringBuffer->WriteIndex;
}

/* [] END OF FILE */
