#ifndef __CONSOLESTREAMPROVIDER_H__
#define __CONSOLESTREAMPROVIDER_H__

#include "Stream.h"

extern const uint8_t ConsoleStreamProvider_size;

#define CONSOLESTREAM_BUFFERSIZE 5
struct _consoleStream
{
    union {
        Stream Stream;
    } base;

    // Console Specific
    uint8_t InputBuffer[CONSOLESTREAM_BUFFERSIZE];
};
typedef struct _consoleStream ConsoleStream;

// StreamProvider* ConsoleStreamProvider_Construct(void* memory);
#ifdef __SDCC
StreamProvider *FastCall(ConsoleStreamProvider_Construct__fast(void *memory));
#define ConsoleStreamProvider_Construct(p) ConsoleStreamProvider_Construct__fast(p)
#elif __SCCZ80
StreamProvider __FASTCALL__ *ConsoleStreamProvider_Construct__fast(void *memory);
#define ConsoleStreamProvider_Construct(p) ConsoleStreamProvider_Construct__fast(p)
#else
StreamProvider *ConsoleStreamProvider_Construct(void *memory);
#endif

#endif //__CONSOLESTREAMPROVIDER_H__