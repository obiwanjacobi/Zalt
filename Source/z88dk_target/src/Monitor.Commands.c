#include "RingBuffer.h"
#include "sys/Sys.h"
#include "io/Io.h"

// sorted alpabetacilay
static char* Commands[] = {
    "dump",
    "reg",
    "setreg",
    "quit",
    NULL
};

void PrintLogo(Stream* stream)
{
    
}

bool_t Dispatch(RingBuffer* inputBuffer)
{
    while(!RingBuffer_IsEmpty(inputBuffer)) {
        uint8_t i;
        char c = RingBuffer_Read(inputBuffer);

        for(i = 0; ;i++) {

        }

    }

    return true;
}