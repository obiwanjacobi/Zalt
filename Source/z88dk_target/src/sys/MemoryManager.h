#ifndef __MemoryManager_H__
#define __MemoryManager_H__

#include "MemoryFar.h"
#include "Sys.h"

// unique memory page id in 1MB address space (0-255)
typedef uint8_t MemoryPageId;
// memory page index into 64kB CPU address space (0-15)
typedef uint8_t MemoryPageIndex;
// memory bank id (the value in the memory map latch: 0-255)
typedef uint8_t MemoryBankId;

extern const MemoryPageIndex InvalidPageIndex;

#define MaxCpuMemoryPageCount 16
#define BiosCpuMemoryPageCount 1
// bank page count is 16 minus reserved/fixed bios pages
#define MemoryBankPageCount MaxCpuMemoryPageCount - BiosCpuMemoryPageCount

typedef enum
{
    MemoryAccess_None = 0, // locked - no access
    MemoryAccess_Read = 1,
    MemoryAccess_Write = 2,
    MemoryAccess_ReadWrite = 3,
    MemoryAccess_Execute = 4,
    MemoryAccess_ReadExecute = 5,

} MemoryAccess;

typedef enum
{
    MemoryUsage_None, // unused/free
    MemoryUsage_System,
    MemoryUsage_Stack,
    MemoryUsage_Heap,
    MemoryUsage_Data,
    MemoryUsage_Program,
    MemoryUsage_Resource,
    MemoryUsage_Cache,

} MemoryUsage;

typedef enum
{
    MemoryStatus_None,   // no physical memory there
    MemoryStatus_Active, // memory available (movable)
    MemoryStatus_Pinned, // currently pinned in cpu space (page index)
    MemoryStatus_Fixed,  // fixed at current cpu index

} MemoryStatus;

// Access: Bit 0-2
// Usage: Bit 3-5
// Status: Bit 6-7
typedef uint8_t MemoryPageFlags;

#define MemoryPageFlags_Access(flags) (flags & 0x07)
#define MemoryPageFlags_Usage(flags) ((flags >> 3) & 0x07)
#define MemoryPageFlags_Status(flags) ((flags >> 6) & 0x03)

#define MemoryPageFlags_HasAccess(flags, access) (flags & access)
#define MemoryPageFlags_HasUsage(flags, usage) (flags & (usage << 3))
#define MemoryPageFlags_HasStatus(flags, status) (flags & (status << 6))

MemoryPageFlags MakePageFlags(MemoryAccess access, MemoryUsage usage, MemoryStatus status);
// #define MakePageFlags(access, usage, status) (access) | (usage << 3) | (status << 6)

typedef struct
{
    MemoryBankId BankId;
    // we alloc a spot for all pages, so you can use MemoryPageIndex to index the array
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

/// deactivates the bankId (and all others the came after it!)
result_t MemoryManager_Bank_Pop(MemoryBankId bankId);

// returns the page flags for the specified page id
MemoryPageFlags MemoryManager_Page_Flags(MemoryPageId pageId);

// lays claim on page
MemoryPageId MemoryManager_Page_Alloc(MemoryPageFlags flags, uint16_t capacity);

// releases ownership of page(s) (by handle)
void MemoryManager_Page_Free(MemoryPageId pageId);

// locks memory into active region and returns pointer
ptr_t MemoryManager_Page_Pin(MemoryPageId pageId, MemoryPageIndex pageIndex);

// releases lock on memory - keep ownership
void MemoryManager_Page_Unpin(MemoryPageId pageId);

// makes a regular pointer from a far ptr (pin memory before use!)
ptr_t FastCall(MemoryManager_FarPtr_ToPointer__fast(farptr_t farPtr));
#define MemoryManager_FarPtr_ToPointer(p) MemoryManager_FarPtr_ToPointer__fast(p)

//
// extern in asm
//

// returns a ptr to the first byte of the page (in cpu memory)
extern ptr_t MemoryManager_Page_BasePtr__fast(MemoryPageIndex pageIndex);
#define MemoryManager_Page_BasePtr(p) MemoryManager_Page_BasePtr__fast(p)

// returns the page index (0-15) the address is in
extern MemoryPageIndex MemoryManager_Page_IndexFromAddress__fast(ptr_t address);
#define MemoryManager_Page_IndexFromAddress(p) MemoryManager_Page_IndexFromAddress__fast(p)

// returns the page id (0-255) the address is in
extern MemoryPageId MemoryManager_Page_IdFromAddress__fast(ptr_t address);
#define MemoryManager_Page_IdFromAddress(p) MemoryManager_Page_IdFromAddress__fast(p)

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

// far ptr
extern farptr_t FastAPI(MemoryManager_FarPtr_Construct__fast(ptr_t ptr));
#define MemoryManager_FarPtr_Construct(p) MemoryManager_FarPtr_Construct__fast(p)

#endif //__MemoryManager_H__
