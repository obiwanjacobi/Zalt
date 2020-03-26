#include "MemoryManager.h"
#include "Thread.h"
#include <stdint.h>

// $E0 controll register IO address
// $3F000 - $3FFFF  video memory page

void WriteControlReg(uint8_t value)
{
    __asm__("ld hl,2");
    __asm__("add hl,sp");               // skip over return address on stack
    __asm__("ld a,(hl)");
    __asm__("ld b, 1");                 // non-zero Hi IO byte, to not let the System Controller pick this up.
    __asm__("ld c, $E0");               // $E0 = IO address for control register
    __asm__("out (c), a");
    __asm__("ld hl, 0");                // no return value
}

MemoryBankId SwitchToVideoBankAt(MemoryPageIndex pageIndex)
{
    uint8_t buffer[MemoryBank_size];
    MemoryBank *bank = MemoryManager_Bank_Get(buffer, MemoryBank_size);
    
    bank->Pages[pageIndex] = 0x3F;
    return MemoryManager_Bank_Push(bank);
}

// MemoryManager_Page_BasePtr
#define VideoAddress_start 0xA000
#define VideoAddress_end 0xB000
#define VideoWidth 512

uint8_t* videoAddress;

void WriteVideoPage(uint8_t data)
{
    *videoAddress = data;
    videoAddress++;
    
    if (videoAddress >= VideoAddress_end)
        videoAddress = VideoAddress_start;
}

void FillVideoPage(uint8_t data)
{
    uint16_t i;
    for (i = 0; i < 0xFFF; i++)
    {
        WriteVideoPage(data);
    }
}

void main(void)
{
    uint8_t d = 0;

    Thread_Construct();
    videoAddress = VideoAddress_start;
    SwitchToVideoBankAt(10);
    
    WriteControlReg(0x00);
    
    while(true)
    {
        FillVideoPage(d);
        d++;
    }
}
