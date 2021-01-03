#include "IdeController.h"
#include "IOController.h"

#define IdeIOAddress    0x00F0

#define IdeCmd_Data             0
#define IdeCmd_Error_Features   1
#define IdeCmd_SectorCount      2
#define IdeCmd_LBA0_7           3
#define IdeCmd_LBA8_15          4
#define IdeCmd_LBA16_23         5
#define IdeCmd_LBA24_27         6
#define IdeCmd_Status_Command   7

// Register IdeCmd_LBA24_27 extra flags
#define IdeDevice_CHS_LBA      (1 << 6)     // CHS=0, LBA=1
#define IdeDevice_Select       (1 << 4)     // Device0=0, Device1=1

void IdeController_Command(uint8_t command)
{
    IOController_Output(IdeIOAddress | IdeCmd_Status_Command, command);
}

uint8_t IdeController_GetStatus()
{
    return IOController_Input(IdeIOAddress | IdeCmd_Status_Command);
}

void SpinWait()
{
    for (int i = 0; i < 9999; )
    {
        i++;
    }
}

void IdeController_Init()
{
    // select Logical Block Address (LBA) mode (reset hi bits of LBA address)
    IOController_Output(IdeIOAddress | IdeCmd_LBA24_27, IdeDevice_CHS_LBA);

    SpinWait();
    
    // two reads for 16-bits
    uint8_t lsb = IOController_Input(IdeIOAddress | IdeCmd_Data);
    uint8_t msb = IOController_Input(IdeIOAddress | IdeCmd_Data);
    
    SpinWait();
    
    // two writes for 16-bits
    IOController_Output(IdeIOAddress | IdeCmd_Data, lsb);
    IOController_Output(IdeIOAddress | IdeCmd_Data, msb);
}

uint16_t IdeController_GetInfo(uint8_t* buffer, uint16_t length)
{
    uint16_t bytesRead = 0;
    return bytesRead;
}

bool_t IdeController_IsReady()
{
    uint8_t stat = IdeController_GetStatus();
    return (stat & IDESTAT_READY) && !(stat & IDESTAT_BUSY);
}

bool_t IdeController_IsError()
{
    uint8_t stat = IdeController_GetStatus();
    return (stat & IDESTAT_ERROR);
}

/* [] END OF FILE */
