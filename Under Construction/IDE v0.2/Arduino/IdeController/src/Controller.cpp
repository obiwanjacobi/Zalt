#include "Controller.h"
#include <Arduino.h>

// DMA
uint16_t Controller::WriteToExternalMemory(const uint8_t* buffer, uint16_t length)
{
    Z80Bus bus;
    Z80DMA dma(_bufferAddress, _bufferLength);
    return dma.WriteMemory(buffer, length);
}
uint16_t Controller::ReadFromExternalMemory(uint8_t* buffer, uint16_t length)
{
    Z80Bus bus;
    Z80DMA dma(_bufferAddress, _bufferLength);
    return dma.ReadMemory(buffer, length);
}

void Controller::OnRegisterWrite()
{
    // read data from Z80 OUT instruction
    _bufferAddress &= 0xFF00;
    _bufferAddress |= PINA;
}

void Controller::OnRegisterRead()
{
    // write data to Z80 IN instruction
    DDRA = 0xFF;
    PORTA = _bufferAddress & 0x00FF;
}

void Controller::ReleaseWaitIO()
{
    Z80_RegEnableIO(false);
    // wait for RegRd/RegWr inactive
    while (PIND & 0x03) {}
    Z80_RegEnableIO(true);
    // set to input/hi-Z
    DDRA = 0;
}