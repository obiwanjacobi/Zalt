#include "Thread.h"
#include "Debug.h"
#include <stdint.h>

//#define __Z80
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

#define IdeIOAddress    0x00F0

// IDE registers
#define IdeReg_Data             0
#define IdeReg_Error_Features   1
#define IdeReg_SectorCount      2
#define IdeReg_LBA0_7           3
#define IdeReg_LBA8_15          4
#define IdeReg_LBA16_23         5
#define IdeReg_LBA24_27         6
#define IdeReg_Status_Command   7

// Register IdeCmd_LBA24_27 extra flags
#define IdeDevice_Default      (1 << 7) | (1 << 5)
#define IdeDevice_LBA          (1 << 6)     // CHS=0, LBA=1
#define IdeDevice_Slave        (1 << 4)     // Master=0, Slave=1

// IDE commands
#define IdeCmd_GetId    0xEC

// Test IDE Status values
#define IdeStatus_IsDeviceReady(stat)   ((stat & IDESTAT_READY) && !(stat & IDESTAT_BUSY))
#define IdeStatus_IsDataReady(stat)     ((stat & IDESTAT_DATAREQUEST) && !(stat & IDESTAT_BUSY))
#define IdeStatus_IsError(stat)         (stat & IDESTAT_ERROR)

typedef struct
{
    uint8_t buffer[IDE_LOGICAL_BLOCK_SIZE];
    
} DriveInfo;

//------------------------------------------------------

void Ide_Out(uint8_t register, uint8_t data)
{
    z80_outp(register | IdeIOAddress, data);
}

uint8_t Ide_In(uint8_t register)
{
    return z80_inp(register | IdeIOAddress);
}

void Ide_Command(uint8_t command)
{
    Ide_Out(IdeReg_Status_Command, command);
}

uint8_t Ide_GetStatus()
{
    return Ide_In(IdeReg_Status_Command);
}

bool_t Ide_IsError()
{
    uint8_t stat = Ide_GetStatus();
    return IdeStatus_IsError(stat);
}

uint8_t Ide_GetError()
{
    return Ide_In(IdeReg_Error_Features);
}

uint8_t Ide_ReadDataByte()
{
    return Ide_In(IdeReg_Data);
}

bool_t Ide_WaitForDeviceReady()
{
    uint8_t stat = Ide_GetStatus();
    while(!IdeStatus_IsDeviceReady(stat))
    {
        if (IdeStatus_IsError(stat))
            return false;

        z80_delay_ms(1);
        stat = Ide_GetStatus();
    }
    return true;
}

bool_t Ide_WaitForDataReady()
{
    uint8_t stat = Ide_GetStatus();
    while (!IdeStatus_IsDataReady(stat)) 
    {
        if (IdeStatus_IsError(stat))
            return false;
        
        z80_delay_ms(1);
        stat = Ide_GetStatus();
    }
    return true;
}

bool_t Ide_Init()
{
    if (!Ide_WaitForDeviceReady())
        return false;
    
    // select Logical Block Address (LBA) mode
    // - set Master drive (device0)
    // - set hi bits of LBA address to default
    Ide_Out(IdeReg_LBA24_27, IdeDevice_Default | IdeDevice_LBA);
    Ide_Out(IdeReg_SectorCount, 1);
    return !Ide_IsError();
}

bool_t Ide_GetInfo(DriveInfo* target)
{
    if (!Ide_WaitForDeviceReady())
        return false;
    
    Ide_Command(IdeCmd_GetId);
    
    if (!Ide_WaitForDataReady())
        return false;
        
    for( int i = 0; i < 512; i += 2)
    {
        uint8_t lsb = Ide_ReadDataByte();
        target->buffer[i] = lsb;
        uint8_t msb = Ide_ReadDataByte();
        target->buffer[i + 1] = msb;
    }
    
    return true;
}

DriveInfo driveInfo;

void main(void)
{
    Thread_Construct();
    if (!Ide_Init() ||
        Ide_GetStatus(&driveInfo))
    {
        uint8_t err = Ide_GetError();
    }
    dLog("Done");
}
