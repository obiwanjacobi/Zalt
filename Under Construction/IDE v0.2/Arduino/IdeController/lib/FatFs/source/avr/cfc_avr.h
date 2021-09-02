/*-----------------------------------------------------------------------
/  Low level disk interface module include file   (C)ChaN, 2016
/-----------------------------------------------------------------------*/

#ifndef _CFC_DEFINED
#define _CFC_DEFINED

#include "diskio_avr.h"

#ifdef __cplusplus
extern "C" {
#endif

/*---------------------------------------*/
/* Prototypes for disk control functions */

DSTATUS cf_disk_initialize (void);
DSTATUS cf_disk_status (void);
DRESULT cf_disk_read (BYTE* buff, LBA_t sector, UINT count);
DRESULT cf_disk_write (const BYTE* buff, LBA_t sector, UINT count);
DRESULT cf_disk_ioctl (BYTE cmd, void* buff);
void cf_disk_timerproc (void);

#ifdef __cplusplus
}
#endif

#endif
