#include "Io.h"


uint16_t StreamWriter_Write(Stream* stream, const uint8_t* source, uint16_t length)
{
    uint16_t written = 0;
    if (stream == NULL) { Error_Set(E_NULLPTR); return 0; }
    if (source == NULL) { Error_Set(E_ARGNULLOREMPTY); return 0; }
    if (length == 0) { Error_Set(E_ARGNOTINRANGE); return 0; }

    written = Stream_Write(stream, source, length);
    if (written == 0) return 0;

    while(written < length) {
        uint16_t part = Stream_Write(stream, &source[written], length - written);
        if (part == 0) return written;      // error in stream
        written += part;
    }
    return written;
}

uint16_t StreamWriter_WriteLine(Stream* stream, const uint8_t* source, uint16_t length)
{
    uint16_t written = StreamWriter_Write(stream, source, length);
    written += StreamWriter_Write(stream, EndOfLine, 2);
    return written;
}
