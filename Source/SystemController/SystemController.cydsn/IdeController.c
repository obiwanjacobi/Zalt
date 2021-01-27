#include "IdeController.h"
#include "IOController.h"

#define IdeIOAddress    0x01F0

#define IdeReg_Data             0
#define IdeReg_Error_Features   1
#define IdeReg_SectorCount      2
#define IdeReg_LBA00_07         3
#define IdeReg_LBA08_15         4
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
#define IdeStatus_IsBusy(stat)          (stat & IDESTAT_BUSY)
#define IdeStatus_IsDeviceReady(stat)   ((stat & IDESTAT_READY) && !(stat & IDESTAT_BUSY))
#define IdeStatus_IsDataReady(stat)     ((stat & IDESTAT_DATAREQUEST) && !(stat & IDESTAT_BUSY))
#define IdeStatus_IsError(stat)         (stat & IDESTAT_ERROR)

void IdeController_Command(uint8_t command)
{
    IOController_Output(IdeIOAddress | IdeReg_Status_Command, command);
}

uint8_t IdeController_GetStatus()
{
    return IOController_Input(IdeIOAddress | IdeReg_Status_Command);
}

uint8_t IdeController_GetError()
{
    return IOController_Input(IdeIOAddress | IdeReg_Error_Features);
}

uint8_t IdeController_ReadDataByte()
{
    return IOController_Input(IdeIOAddress | IdeReg_Data);
}

bool_t IdeController_Init()
{
    if (!IdeController_WaitForNotBusy())
        return false;
    
    // select Logical Block Address (LBA) mode
    // - set Master drive (device0)
    // - set hi bits of LBA address to default
    IOController_Output(IdeIOAddress | IdeReg_LBA24_27, IdeDevice_Default | IdeDevice_LBA);
    
    if (!IdeController_WaitForDeviceReady())
        return false;
    
    IOController_Output(IdeIOAddress | IdeReg_SectorCount, 1);
    IOController_Output(IdeIOAddress | IdeReg_LBA00_07, 0);
    IOController_Output(IdeIOAddress | IdeReg_LBA08_15, 0);
    IOController_Output(IdeIOAddress | IdeReg_LBA16_23, 0);
    
    return !IdeController_IsError();
}

bool_t IdeController_GetInfo(DriveBlock* target)
{
    if (!IdeController_WaitForNotBusy())
        return false;
    
    IdeController_Command(IdeCmd_GetId);

    for( int i = 0; i < 512; i += 2)
    {
        if (!IdeController_WaitForDataReady())
            return false;
        
        uint8_t lsb = IdeController_ReadDataByte();
        target->buffer[i] = lsb;
        uint8_t msb = IdeController_ReadDataByte();
        target->buffer[i + 1] = msb;
    }
    
    return true;
}

bool_t IdeController_WaitForNotBusy()
{
    uint8_t stat = IdeController_GetStatus();
    while (IdeStatus_IsBusy(stat))
    {
        if (IdeStatus_IsError(stat))
            return false;
        
        CyDelay(1);
        stat = IdeController_GetStatus();
    }
    return true;
}

bool_t IdeController_WaitForDeviceReady()
{
    uint8_t stat = IdeController_GetStatus();
    while (!IdeStatus_IsDeviceReady(stat)) 
    {
        if (IdeStatus_IsError(stat))
            return false;
        
        CyDelay(1);
        stat = IdeController_GetStatus();
    }
    return true;
}

bool_t IdeController_WaitForDataReady()
{
    uint8_t stat = IdeController_GetStatus();
    while (!IdeStatus_IsDataReady(stat)) 
    {
        if (IdeStatus_IsError(stat))
            return false;
        
        CyDelay(1);
        stat = IdeController_GetStatus();
    }
    return true;
}

bool_t IdeController_IsDeviceReady()
{
    uint8_t stat = IdeController_GetStatus();
    return IdeStatus_IsDeviceReady(stat);
}

bool_t IdeController_IsDataReady()
{
    uint8_t stat = IdeController_GetStatus();
    return IdeStatus_IsDataReady(stat);
}

bool_t IdeController_IsError()
{
    uint8_t stat = IdeController_GetStatus();
    return IdeStatus_IsError(stat);
}

/* [] END OF FILE */
