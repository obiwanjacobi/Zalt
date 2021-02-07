#include "Z80.h"
#include "Arduino.h"

/*
    Signal   | Direction | Mega
    ---------|-----------|------
    BUSRQ    | output    | PL7
    BUSACK   | input     | PL6
--------------------------------
    OE       | output    | PL5
    AD[0..7] | output*   | PA
    A[8..15] | output*   | PC
    ALE      | output*   | PG2
    RD       | output*   | PG1
    WR       | output*   | PG0
    MEMRQ    | output*   | PD7
---------------------------------
    EnableIO | output    | PD2
    RegRd    | input(+)  | PD1
    RegWr    | input(+)  | PD0

*) only when XRAM is active, otherwise inputs for hi-Z
+) Interrupt Pins

 */
// low memory addresses is for MCU internal RAM
// ATmega2560 = 0x2200
const uint16_t MinBufferAddress = 0x2200;

//
// Z80 IO
//

void Z80_BusReq(bool active)
{
    // active hi (driving transistor open collector)
    if (active)
        PORTL |= (1 << PL7);
    else
        PORTL &= ~(1 << PL7);
}

bool Z80_BusAck()
{
    // active low
    return !(PINL & (1 << PL6));
}

void Z80_OE(bool active)
{
    if (active)
        PORTL &= ~(1 << PL5);
    else
        PORTL |= (1 << PL5);
}

void Z80_MemReq(bool active)
{
    if (active)
    {
        DDRD |= (1 << PD7);   // mask off PD7 as output
        PORTD &= ~(1 << PD7);  // active low
    }
    else
    {
        // hi-Z
        DDRD &= ~(1 << PD7);   // mask off PD7 as input
    }
}

void Z80_XRAM(bool active)
{
    Z80_OE(active);
    Z80_MemReq(active);
    
    if (active)
        // enable xram (overrules port A & C and ALE, RD and WR signals)
        XMCRA = (1 << SRE);
    else
        XMCRA = 0;
}

void Z80_InitBus()
{
    // TODO: BusReq/BusAck
    uint8_t pld = DDRL;
    // BUSREQ
    pld |= (1 << PL7);  // output
    // BUSACK
    pld &= ~(1 << PL6); // input
    
    // set BusReq inactive
    PORTD &= ~(1 << PL7);
}

// Port A and C, PG0/PG1/PG2 (fixed XRAM interface)
// PD7 (output) for OE on address latch
void Z80_InitDMA()
{
    // port state when XRAM is not used
    // inputs for hi-Z
    DDRA = 0x00;
    DDRC = 0x00;
    DDRG &= 0xF8;   // mask off PG0..2 as input
    DDRD &= 0x7F;   // mask off PD7 as input
    DDRL |= (1 << PL5);  // PL5 as output
    
    // xram off (active low)
    Z80_XRAM(false);
}

void Z80_InitRegIO()
{
    // all input, except PD2
    DDRD = (1 << PD2);
    // set pin interrupts
    EICRA = 0x0F;   // trigger INT0 and INT1 on rising edge
    EIMSK = 0x03;     // enable INT0 and INT1
}

void Z80_RegEnableIO(bool enable)
{
    if (enable)
        PORTD = (1 << PD2);
    else
        PORTD = 0;
}

//
// Z80 Bus
//

bool Z80_WaitForBusAck(bool waitFor)
{
    bool busAck = Z80_BusAck();
    while (busAck != waitFor)
    {
        busAck = Z80_BusAck();
    }
    return true;
}

Z80Bus::Z80Bus()
{
    Z80_BusReq(true);
    Z80_WaitForBusAck(true);
}

Z80Bus::~Z80Bus()
{
    Z80_BusReq(false);
    Z80_WaitForBusAck(false);
}

void Z80Bus::Init()
{
    Z80_InitBus();
}

//
// Z80DMA
//

Z80DMA::Z80DMA(uint16_t bufferAddress, uint16_t bufferLength)
    : _bufferAddress(bufferAddress), _bufferLength(bufferLength)
{
    Z80_XRAM(true);
}

Z80DMA::~Z80DMA()
{
    Z80_XRAM(false);
}

uint16_t Z80DMA::ReadMemory(uint8_t* buffer, uint16_t length)
{
    if (_bufferAddress < MinBufferAddress || _bufferLength == 0 ||
        buffer == NULL || length == 0) return 0;

    uint16_t len = min(_bufferLength, length);
    memcpy(buffer, (const void *)_bufferAddress, len);
    return len;
}

uint16_t Z80DMA::WriteMemory(const uint8_t* buffer, uint16_t length)
{
    if (_bufferAddress < MinBufferAddress || _bufferLength == 0 ||
        buffer == NULL || length == 0) return 0;

    uint16_t len = min(_bufferLength, length);
    memcpy((void *)_bufferAddress, buffer, len);
    return len;
}

void Z80DMA::Init()
{
    Z80_InitDMA();
}
