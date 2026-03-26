#include "Stream.h"

void Stream_Construct(Stream *s, uint8_t *buf, uint8_t size)
{
    s->buf    = buf;
    s->mask   = size - 1;   /* e.g. 32-1 = 0x1F  ->  index & 0x1F = fast modulo */
    s->head   = 0;
    s->tail   = 0;
    s->count  = 0;
    s->closed = false;
}

bool_t Stream_CanWrite(Stream *s)
{
    return s->count <= s->mask;   /* count < size (mask = size-1) */
}

void Stream_Write(Stream *s, uint8_t byte)
{
    s->buf[s->head] = byte;
    s->head = (s->head + 1) & s->mask;
    s->count++;
}

void Stream_Close(Stream *s)
{
    s->closed = true;
}

bool_t Stream_CanRead(Stream *s)
{
    return s->count > 0;
}

uint8_t Stream_Read(Stream *s)
{
    uint8_t byte = s->buf[s->tail];
    s->tail = (s->tail + 1) & s->mask;
    s->count--;
    return byte;
}

bool_t Stream_IsDone(Stream *s)
{
    return s->closed && s->count == 0;
}
