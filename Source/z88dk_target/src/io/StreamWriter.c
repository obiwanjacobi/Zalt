#include "Io.h"

uint16_t StreamWriter_WriteLine(Stream* stream, const uint8_t* source, uint16_t length)
{
    uint16_t written = 0;
    if (stream == NULL) { Error_Set(E_NULLPTR); return 0; }
    if (source == NULL) { Error_Set(E_ARGNULLOREMPTY); return 0; }
    if (length == 0) { Error_Set(E_ARGNOTINRANGE); return 0; }

    written = Stream_Write(stream, source, length);
    while(written < length) {
        written += Stream_Write(stream, &source[written], length - written);
    }

    written += Stream_Write(stream, EndOfLine, 2);
    return written;
}
