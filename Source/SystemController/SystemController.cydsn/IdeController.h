#ifndef __IDECONTROLLER_H__
#define __IDECONTROLLER_H__

#include "SystemController.h"

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

typedef struct
{
    uint8_t buffer[IDE_LOGICAL_BLOCK_SIZE];
    
} DriveInfo;


bool_t IdeController_Init();
bool_t IdeController_WaitForDeviceReady();
bool_t IdeController_WaitForDataReady();
bool_t IdeController_GetInfo(DriveInfo* target);

uint8_t IdeController_GetError();

bool_t IdeController_IsDeviceReady();
bool_t IdeController_IsDataReady();
bool_t IdeController_IsError();

#endif //__IDECONTROLLER_H__

/* [] END OF FILE */
