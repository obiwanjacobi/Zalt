#ifndef __MemoryManager_H__
#define __MemoryManager_H__

#include "Sys.h"

// unique memory page id in 1MB address space (0-255)
typedef uint8_t MemoryPageId;
// memory page index into 64kB CPU address space (0-15)
typedef uint8_t MemoryPageIndex;
// memory bank id (the value in the memory map latch: 0-255)
typedef uint8_t MemoryBankId;

#define MaxCpuMemoryPageCount 16
#define BiosCpuMemoryPageCount 1
// bank page count is 16 minus reserved/fixed bios pages
#define MemoryBankPageCount MaxCpuMemoryPageCount - BiosCpuMemoryPageCount

typedef enum
{
    pageNone,     // does not exist
    pageReserved, // page used by system
    pageFound

} MemoryPageFlags;

typedef struct
{
    MemoryBankId BankId;
    // we still alloc a spot for all pages, so you can use MemoryPageIndex to index the array
    // (only 1 or 2 bytes lost)
    MemoryPageId Pages[MaxCpuMemoryPageCount];

} MemoryBank;

#define MemoryBank_size sizeof(MemoryBank)

// global init
void MemoryManager_Init();

/// Reads the current memory bank page data into 'memory'.
/// capacity must be at least MemoryBank_size.
MemoryBank *MemoryManager_Bank_Get(ptr_t memory, uint8_t capacity);

/// Activates the bank and returns the id for it.
/// A return value of 0 indicates an error.
MemoryBankId MemoryManager_Bank_Push(MemoryBank *bank);

/// deactivates the bankId (and all others the came after it?)
result_t MemoryManager_Bank_Pop(MemoryBankId bankId);

// returns the page index (0-15) the address is in
MemoryPageIndex MemoryManager_Page_IndexFromAddress(ptr_t address);

// returns the page id (0-255) the address is in
MemoryPageId MemoryManager_Page_IdFromAddress(ptr_t address);

// returns the page flags for the specified page id
MemoryPageFlags MemoryManager_Page_Flags(MemoryPageId pageId);

// returns a ptr to the first byte of the page (in cpu memory)
ptr_t MemoryManager_Page_BasePtr(MemoryPageIndex pageIndex);

//
// extern in asm
//

// get pages of current selected bank
extern MemoryPageId FastAPI(MemoryManager_Page_At__fast(MemoryPageIndex pageIndex));
#define MemoryManager_Page_At(p) MemoryManager_Page_At__fast(p)

// set pages of current selected bank
#ifdef __SCCZ80
extern void API(MemoryManager_Page_SetAt__callee(MemoryPageIndex pageIndex, MemoryPageId pageId));
#define MemoryManager_Page_SetAt(p1, p2) MemoryManager_Page_SetAt__callee(p1, p2)
#else
extern void MemoryManager_Page_SetAt(MemoryPageIndex pageIndex, MemoryPageId pageId);
#endif

// operational bank
extern MemoryBankId MemoryManager_Bank_Selected();
extern void FastAPI(MemoryManager_Bank_Select__fast(MemoryBankId bankId));
#define MemoryManager_Bank_Select(p) MemoryManager_Bank_Select__fast(p)

// IO bank
extern MemoryBankId MemoryManager_Bank_Id();
extern void FastAPI(MemoryManager_Bank_SetId__fast(MemoryBankId bankId));
#define MemoryManager_Bank_SetId(p) MemoryManager_Bank_SetId__fast(p)

#endif //__MemoryManager_H__
