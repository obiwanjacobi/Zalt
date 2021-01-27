#include "Thread.h"
#include "Debug.h"
#include <stdint.h>
#include <stdlib.h>
#include "myZ80.h"

// Error Flags
#define IDEERR_BADBLOCK         (1 << 7)
#define IDEERR_DATAERROR        (1 << 6)
#define IDEERR_SECTORNOTFOUND   (1 << 4)
#define IDEERR_COMMANDABORTED   (1 << 2)
#define IDEERR_CALIBERR         (1 << 1)

// Status Flags
#define IDESTAT_BUSY            (1 << 7)
#define IDESTAT_READY           (1 << 6)
#define IDESTAT_WRITEFAULT      (1 << 5)
#define IDESTAT_SEEKCOMPLETE    (1 << 4)
#define IDESTAT_DATAREQUEST     (1 << 3)
#define IDESTAT_DATACORRECTED   (1 << 2)
#define IDESTAT_INDEX           (1 << 1)
#define IDESTAT_ERROR           (1 << 0)

// LBA block size in bytes
#define IDE_LOGICAL_BLOCK_SIZE   512

#define IdeIOAddress    0xF0

// IDE registers
#define IdeReg_Data             IdeIOAddress
#define IdeReg_Error_Features   (IdeIOAddress | 1)
#define IdeReg_SectorCount      (IdeIOAddress | 2)
#define IdeReg_LBA0_7           (IdeIOAddress | 3)
#define IdeReg_LBA8_15          (IdeIOAddress | 4)
#define IdeReg_LBA16_23         (IdeIOAddress | 5)
#define IdeReg_LBA24_27         (IdeIOAddress | 6)
#define IdeReg_Status_Command   (IdeIOAddress | 7)

// Register IdeCmd_LBA24_27 extra flags
#define IdeDevice_Default      (1 << 7) | (1 << 5)
#define IdeDevice_LBA          (1 << 6)     // CHS=0, LBA=1
#define IdeDevice_Slave        (1 << 4)     // Master=0, Slave=1

// IDE commands
#define IdeCmd_ReadSector   0x20
#define IdeCmd_GetId        0xEC

// Test IDE Status values
#define IdeStatus_IsBusy(stat)          (stat & IDESTAT_BUSY)
#define IdeStatus_IsDeviceReady(stat)   ((stat & IDESTAT_READY) && !(stat & IDESTAT_BUSY))
#define IdeStatus_IsDataReady(stat)     ((stat & IDESTAT_DATAREQUEST) && !(stat & IDESTAT_BUSY))
#define IdeStatus_IsError(stat)         (stat & IDESTAT_ERROR)

typedef struct
{
    uint8_t buffer[IDE_LOGICAL_BLOCK_SIZE];
    
} DriveInfo;

//------------------------------------------------------

void Ide_Command(uint8_t command)
{
    __asm__("ld hl,2");
    __asm__("add hl,sp");               // skip over return address on stack
    __asm__("ld a,(hl)");
    __asm__("ld b, 1");                 // non-zero Hi IO byte, to not let the System Controller pick this up.
    __asm__("ld c, $F7");               // $F7 = IO address for command register
    __asm__("out (c), a");
    __asm__("ld hl, 0");                // no return value
}

uint8_t Ide_GetStatus()
{
    __asm__("ld b, 1");                 // non-zero Hi IO byte, to not let the System Controller pick this up.
    __asm__("ld c, $F7");               // $F7 = IO address for status register
    __asm__("in a, (c)");
    __asm__("ld l, a");                // retval in l
}

uint8_t Ide_GetError()
{
    __asm__("ld b, 1");                 // non-zero Hi IO byte, to not let the System Controller pick this up.
    __asm__("ld c, $F1");               // $F1 = IO address for error register
    __asm__("in a, (c)");
    __asm__("ld l, a");                // retval in l
}

uint8_t Ide_ReadDataByte()
{
    __asm__("ld b, 1");                 // non-zero Hi IO byte, to not let the System Controller pick this up.
    __asm__("ld c, $F0");               // $F0 = IO address for data register
    __asm__("in a, (c)");
    __asm__("ld l, a");                // retval in l    
}

bool_t Ide_IsError()
{
    uint8_t stat = Ide_GetStatus();
    return IdeStatus_IsError(stat);
}

bool_t Ide_IsDeviceReady()
{
    uint8_t stat = Ide_GetStatus();
    return IdeStatus_IsDeviceReady(stat);
}

bool_t Ide_IsBusy()
{
    uint8_t stat = Ide_GetStatus();
    return IdeStatus_IsBusy(stat);
}

bool_t Ide_WaitForNotBusy()
{
    uint8_t stat = Ide_GetStatus();
    while(IdeStatus_IsBusy(stat))
    {
        if (IdeStatus_IsError(stat))
        {
            dLog("Error while waiting for not Busy - ");
            return false;
        }
        z80_delay_ms(1);
        stat = Ide_GetStatus();
    }
    return true;
}

bool_t Ide_WaitForDeviceReady()
{
    uint8_t stat = Ide_GetStatus();
    while(!IdeStatus_IsDeviceReady(stat))
    {
        if (IdeStatus_IsError(stat))
        {
            dLog("Error while waiting for Device Ready - ");
            return false;
        }
        z80_delay_ms(1);
        stat = Ide_GetStatus();
    }
    return true;
}

bool_t Ide_IsDataReady()
{
    uint8_t stat = Ide_GetStatus();
    return IdeStatus_IsDataReady(stat);
}

bool_t Ide_WaitForDataReady()
{
    uint8_t stat = Ide_GetStatus();
    while (!IdeStatus_IsDataReady(stat))
    {
        if (IdeStatus_IsError(stat))
        {
            dLog("Error while waiting for Data Ready - ");
            return false;
        }
        z80_delay_ms(1);
        stat = Ide_GetStatus();
    }
    return true;
}

bool_t Ide_Init()
{
    if (!Ide_WaitForNotBusy())
        return false;

    // select Logical Block Address (LBA) mode
    // - set Master drive (device0)
    // - set hi bits of LBA address to default
    //Ide_Out(IdeReg_LBA24_27, IdeDevice_Default | IdeDevice_LBA);
    //Ide_Out(IdeReg_SectorCount, 1);

    __asm__("ld b, 1");                 // non-zero Hi IO byte, to not let the System Controller pick this up.
    __asm__("ld a, $E0");               // IdeDevice_Default | IdeDevice_LBA
    __asm__("ld c, $F6");               // $F6 = IdeReg_LBA24_27
    __asm__("out (c), a");

    if (!Ide_WaitForDeviceReady())
        return false;

    __asm__("ld b, 1");                 // non-zero Hi IO byte, to not let the System Controller pick this up.
    __asm__("ld a, $01");
    __asm__("ld c, $F2");               // $F2 = IdeReg_SectorCount
    __asm__("out (c), a");

    __asm__("xor a");               // a = 0
    __asm__("ld c, $F3");               // $F3 = IdeReg_LBA00_07
    __asm__("out (c), a");
    __asm__("ld c, $F4");               // $F4 = IdeReg_LBA08_15
    __asm__("out (c), a");
    __asm__("ld c, $F5");               // $F5 = IdeReg_LBA16_23
    __asm__("out (c), a");

    return Ide_IsError() == false;
}

bool_t Ide_ReadBlock(DriveInfo* target, uint8_t command)
{
    int i;
    if (Ide_WaitForNotBusy() == false)
        return false;

    Ide_Command(command);
    
    if (Ide_WaitForDataReady() == false)
        return false;

    for(i = 0; i < 512; i += 2)
    {
        // fail-safe (also resets INTRQ)
        // if (!Ide_IsDataReady())
        //     return false;
        
        dLog(".");
        uint8_t lsb = Ide_ReadDataByte();
        target->buffer[i] = lsb;
        uint8_t msb = Ide_ReadDataByte();
        target->buffer[i + 1] = msb;
    }
    return true;
}

bool_t Ide_GetInfo(DriveInfo* target)
{
    return Ide_ReadBlock(target, IdeCmd_GetId);
}

bool_t Ide_Read(DriveInfo* target)
{
    return Ide_ReadBlock(target, IdeCmd_ReadSector);
}

DriveInfo driveInfo;

void main(void)
{
    char8_t buf[16];
    buf[0] = 0;

    Thread_Construct();
    dLog("IDE: ");

    // uint8_t b = Ide_ReadDataByte();
    // utoa(b, buf, 16);
    // dLog(buf);
    // dLog(" - ");
    // b = Ide_ReadDataByte();
    // utoa(b, buf, 16);
    // dLog(buf);

    // while(Ide_IsBusy())
    // {
    //     dLog(".");
    //     z80_delay_ms(1);
    // }

    // while (!Ide_IsDeviceReady())
    // {
    //     dLog(".");
    //     z80_delay_ms(1);
    // }

    if (Ide_Init() == false)
    {
        uint8_t err = Ide_GetError();
        utoa(err, buf, 16);

        dLog(" -Error Init (hex): ");
        dLog(buf);
        return;
    }

    if (Ide_Read(&driveInfo) == false)
    {
        uint8_t err = Ide_GetError();
        utoa(err, buf, 16);

        dLog(" -Error GetInfo (hex): ");
        dLog(buf);
        return;
    }

    dLog(" -Done.");
}
