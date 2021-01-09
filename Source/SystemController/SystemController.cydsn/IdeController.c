#include "IdeController.h"
#include "IOController.h"

#define IdeIOAddress    0x00F0

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
#define IdeDevice_CHS_LBA      (1 << 6)     // CHS=0, LBA=1
#define IdeDevice_Select       (1 << 4)     // Master=0, Slave=1

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

void IdeController_Init()
{
    uint32_t count = 0;
    while (!IdeController_IsReady()) 
    {
        uint8_t err = IdeController_GetError();
        CyDelay(err);
        count++;
        
        if (count > 10)
            break;
    }
    
    //IdeController_IsReady();
    // select Logical Block Address (LBA) mode (reset hi bits of LBA address)
    //IOController_Output(IdeIOAddress | IdeReg_LBA24_27, IdeDevice_Default | IdeDevice_CHS_LBA);
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
