#include "Io.h"

#include <stdio.h>

//bool_t API(StreamReader_TryReadByte(Stream* stream, uint8_t* outByte))
bool_t StreamReader_TryReadByte(Stream* stream, uint8_t* outByte)
{
    return Stream_Read(stream, outByte, 1) == 0 ? false : true;
}

//#define GetByte(p) GetByte__fast(p)
//uint8_t FastAPI(GetByte__fast(Stream* stream))
uint8_t GetByte(Stream* stream)
{
    uint8_t b = 0;
	while(b == 0) {
        // TODO: check return value
        Stream_Read(stream, &b, 1);
    }
    return b;
}

//uint16_t API(StreamReader_ReadLine(Stream* stream, uint8_t* buffer, uint16_t capacity))
uint16_t StreamReader_ReadLine(Stream* stream, uint8_t* buffer, uint16_t capacity)
{
    uint16_t index = 0;
    uint8_t b = GetByte(stream);
    // skip any left-over new line chars
    while (b == NewLineChar || b == CarriageReturnChar) {
        b = GetByte(stream);
    }

    // read non-new-line chars and put in buffer
    while ((b != NewLineChar && b != CarriageReturnChar) &&
           (index < capacity)) {
        buffer[index] = b;
        index += 1;
        b = GetByte(stream);
    }

    return index;
}
