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
    // word 0
    uint16_t Flags;  // (#6 set=>non-removable, #7 set=>removable)
    uint16_t LogicalCylinderCount;          // Number of logical cylinders
    uint16_t _reserved01;
    uint16_t LogicalHeadsCount;             // Number of logical heads
    uint16_t _reserved02[2];
    uint16_t LogicalSectorsPerTrackCount;   // Number of logical sectors per logical track
    uint16_t _reserved03[3];
    // word 10
    uint16_t SerialNumber[10];
    // word 20
    uint16_t _reserved04[2];
    uint16_t LongCommandDataByteCount;      // Number of vendor specific bytes avail on READ/WRITE LONG cmds
    char FirmwareRevision[8];               // Firmware revision (8 ASCII characters)
    char ModelNumber[40];                   // Model number (40 ASCII characters)
    uint16_t MaxSectorTransferCount;        // 7-0 00h=READ/WRITE MULTIPLE commands not implemented
                                            // 01h-FFh = Maximum number of sectors that can be transferred per interrupt
                                            // on READ MULTIPLEand WRITE MULTIPLE commands (15-8 Vendor specific)
    uint16_t _reserverd05;
    uint16_t Capabilities;                  /* 15-14 Reserved
                                            F 13 1=Standby timer values as specified in this standardare supported
                                                 0=Standby timer values are vendor specific
                                            R 12 Reserved (for advanced PIO mode support)
                                            F 11 1=IORDY supported
                                            F    0=IORDY may be supported
                                            F 10 1=IORDY can be disabled
                                            F 9 1=LBA supported
                                            F 8 1=DMA supported
                                            X 7-0 Vendor specific
                                            */
    // word 50
    uint16_t _reserverd06;
    
    // TODO
    
    uint16_t AdvancedPio;                   // Reserved (for advanced PIO mode support)
    // word 71
    uint16_t _reserved[184];
} DriveInfo;

typedef union
{
    uint8_t buffer[IDE_LOGICAL_BLOCK_SIZE];
    DriveInfo DriveInfo;
    
} DriveBlock;

bool_t IdeController_Init();
bool_t IdeController_GetInfo(DriveBlock* target);

uint8_t IdeController_GetError();

bool_t IdeController_WaitForNotBusy();
bool_t IdeController_WaitForDeviceReady();
bool_t IdeController_WaitForDataReady();
bool_t IdeController_IsDeviceReady();
bool_t IdeController_IsDataReady();
bool_t IdeController_IsError();

#endif //__IDECONTROLLER_H__

/* [] END OF FILE */
