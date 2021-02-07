#ifndef __CONTROLLER_H__
#define __CONTROLLER_H__

#include "Z80.h"

class Controller
{
public:
    Controller()
        : _bufferAddress(0), _bufferLength(0)
    { }

    static void Init()
    {
        Z80_InitRegIO();
        Z80Bus::Init();
        Z80DMA::Init();
    }

    // DMA
    uint16_t WriteToExternalMemory(const uint8_t* buffer, uint16_t length);
    uint16_t ReadFromExternalMemory(uint8_t* buffer, uint16_t length);

    // Controller Registers
    void OnRegisterWrite();
    void OnRegisterRead();
    void ReleaseWaitIO();

    uint16_t BufferAddress() const { return _bufferAddress; }
    void BufferAddress(uint16_t bufferAddress) { _bufferAddress = bufferAddress; }

    uint16_t BufferLength() const { return _bufferLength; }
    void BufferLength(uint16_t bufferLength) { _bufferLength = bufferLength; }

private:
    uint16_t _bufferAddress;
    uint16_t _bufferLength;
};

#endif  //__CONTROLLER_H__
