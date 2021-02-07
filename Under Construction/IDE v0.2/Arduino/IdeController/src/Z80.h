#ifndef __Z80_H__
#define __Z80_H__

#include <stdint.h>

// low level IO
void Z80_BusReq(bool active);
bool Z80_BusAck();

void Z80_InitRegIO();
void Z80_RegEnableIO(bool enable);

// ctor will take control of Z80 bus
// dtor will release Z80 bus
class Z80Bus
{
public:
    Z80Bus();
    ~Z80Bus();

    static void Init();
};

// Z80Bus must be acquired!
// ctor will activate XRAM
// dtor will deactivate XRAM
class Z80DMA
{
public:
    // external Z80 memory buffer-start address and length
    Z80DMA(uint16_t bufferAddress, uint16_t bufferLength);
    ~Z80DMA();

    uint16_t BufferAddress() const { return _bufferAddress; }
    uint16_t BufferLength() const { return _bufferLength; }

    // reads from external Z80 memory into buffer
    uint16_t ReadMemory(uint8_t* buffer, uint16_t length);
    // writes from buffer into external Z80 memory
    uint16_t WriteMemory(const uint8_t* buffer, uint16_t length);

    static void Init();

private:
    uint16_t _bufferAddress;
    uint16_t _bufferLength;
};

#endif  //__Z80_H__