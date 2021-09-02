/*-----------------------------------------------------------------------
/   Copied from cfc_avr from examples:
/  Low level disk interface module include file   (C)ChaN, 2016
/-----------------------------------------------------------------------*/

#ifndef _IDE_DEFINED
#define _IDE_DEFINED

#include "..\diskio.h"

#ifdef __cplusplus
extern "C" {
#endif

/*---------------------------------------*/
/* Prototypes for disk control functions */

DSTATUS ide_disk_initialize (void);
DSTATUS ide_disk_status (void);
DRESULT ide_disk_read (BYTE* buff, LBA_t sector, UINT count);
DRESULT ide_disk_write (const BYTE* buff, LBA_t sector, UINT count);
DRESULT ide_disk_ioctl (BYTE cmd, void* buff);
void ide_disk_timerproc (void);

#ifdef __cplusplus
}
#endif

#endif  // _IDE_DEFINED
