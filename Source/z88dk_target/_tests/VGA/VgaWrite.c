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

void SwitchToVideoBankAt(MemoryPageIndex pageIndex)
{
    MemoryBankId bank = MemoryManager_Bank_Selected();
    MemoryManager_Bank_SetId(bank);
    MemoryManager_Page_SetAt(pageIndex, 0x3F);
}

// MemoryManager_Page_BasePtr
#define VideoAddress_start ((uint8_t*)0xA000)
#define VideoAddress_end ((uint8_t*)0xB000)
#define VideoWidth 512

void FillVideoPage(uint8_t data)
{
    uint16_t i;
    uint8_t* videoAddress = VideoAddress_start;
    
    for (i = 0; i < 0xFFF; i++)
    {
        *videoAddress = data;
        videoAddress++;
    }
}

void main(void)
{
    uint8_t d = 0;

    Thread_Construct();
    SwitchToVideoBankAt(10);
    
    WriteControlReg(0b00101010);
    
    while(true)
    {
        FillVideoPage(d);
        d++;
    }
}
