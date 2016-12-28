#include "Io.h"


bool_t StreamReader_TryReadByte(Stream* stream, uint8_t* outByte)
{
    return Stream_Read(stream, outByte, 1) == 0 ? false : true;
}

uint8_t GetByte(Stream* stream)
{
    uint8_t b = 0;
	while(b == 0) {
        Stream_Read(stream, &b, 1);
    }
    return b;
}

uint16_t StreamReader_ReadLine(Stream* stream, uint8_t* buffer, uint16_t capacity)
{
    uint16_t index = 0;
    char b = GetByte(stream);
    // skip any left-over new line chars
    while (b == NewLineChar || b == CarriageReturnChar) {
        b = GetByte(stream);
    }

    // read non-new-line chars and put in buffer
    while ((b != NewLineChar || b != CarriageReturnChar) &&
           (index < capacity)) {
        buffer[index] = b;
        index += 1;
        b = GetByte(stream);
    }

    return index;
}
