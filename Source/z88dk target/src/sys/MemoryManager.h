#ifndef __MemoryManager_H__
#define __MemoryManager_H__

#include "../Types.h"

// stores unique page id (bank-id|page-index)
typedef uint8_t		MemoryPageId;

// bankIndex into max 16 64k banks. pageIndex into max 16 4k pages.
MemoryPageId MemoryManager_MakePageId(uint8_t bankIndex, uint8_t pageIndex);


// allocated during bios memory test
typedef struct
{
	// the page id (source is the in 1MB memory address space)
	MemoryPageId	SourceId;
	
	struct MemoryPage* Next;
	struct MemoryPage* Previous;
	
	// init/stack/heap/data/prog etc.
	uint16_t	Flags;
	
} MemoryPage;

// a list of memory pages that are atomic
typedef struct
{
	MemoryPageId	TargetId;
	MemoryPage*		Page;
	
	struct MemoryEntry* 	Next;
	
} MemoryEntry;

void MemoryManager_Init();

typedef enum
{
	Boundary,
	Test
	
} MemoryManager_ScanFlags;

// flags for boundary scan or test each memory location
void MemoryManager_Scan(MemoryManager_ScanFlags flags);




#endif	//__MemoryManager_H__