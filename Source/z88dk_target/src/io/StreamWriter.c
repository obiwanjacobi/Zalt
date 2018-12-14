#include "../sys/Debug.h"
#include "Io.h"

uint16_t StreamWriter_Write(Stream *stream, const char_t *source, uint16_t length)
{
    uint16_t written = 0;
    dGuardErrVal(stream == NULL, E_NULLPTR, 0);
    dGuardErrVal(source == NULL, E_ARGNULLOREMPTY, 0);
    dGuardErrVal(length == 0, E_ARGNOTINRANGE, 0);

    while (written < length)
    {
        uint16_t part = Stream_Write(stream, &source[written], length - written);
        if (part == 0) return written; // error in stream
        written += part;
    }
    return written;
}

uint16_t StreamWriter_WriteLine(Stream *stream, const char_t *source, uint16_t length)
{
    uint16_t written = StreamWriter_Write(stream, source, length);
    written += StreamWriter_Write(stream, &NewLineChar, 1);
    return written;
}
