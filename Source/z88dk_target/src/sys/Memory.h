#ifndef __Memory_H__
#define __Memory_H__

#include "Types.h"

// memory allocation data maintained in bios (asm)
typedef struct {
	// length of allocated memory in bytes (uint8_t)
	uint32_t Capacity;
	// allocation, memory and access flags
	uint16_t Flags;
	// memory admin info
	void* Reserved;
	// page index when locked (for fixed memory)
	uint8_t	Page;
	// ptr to the start of the actual memory
	void* Buffer;
} Memory;


typedef enum {
	None = 		0,
	Read = 		0x01,
	Write = 	0x02,
	Execute = 	0x04,
	
} AccessFlags;

typedef enum {
	None = 			0,
	FixedLocation = 0x10,
	Pinned = 		0x20
	
} AllocationFlags;

typedef enum {
	None,	// unused/free
	System,
	Stack,
	Heap,
	Data,
	Program,
	Resource,
	
} MemoryUsage


// combines all flags
uint16_t Memory_MakeFlags(AccessFlags access, AllocationFlags allocation, MemoryUsage usage);

// allocates max 64k of memory
handle_t Memory_Alloc16(uint16_t flags, uint16_t capacity, uint8_t pageIndex);

// allocates max 1MB of memory
handle_t Memory_Alloc24(uint16_t flags, uint32_t capacity, uint8_t pageIndex);

// releases onwership of memory (by handle)
void Memory_Free(handle_t memory);

// releases ownership of memory (any ptr in allocated block)
void Memory_FreePtr(void* memory);

// Retrieves all memory info
Memory* Memory_GetInfo(handle_t memory);

// retrieves access to memory (by handle)
AccessFlags Memory_GetAccess(handle_t memory);

// retrieves access to memory (any ptr in allocated block)
AccessFlags Memory_GetAccessPtr(void* memory);

// locks memory into active region and returns pointer
void* Memory_Pin(handle_t memory, uint8_t pageIndex);

// releases lock on memory - keep ownership
void Memory_Unpin(handle_t memory);

//(any ptr in allocated block)
void Memory_UnpinPtr(void* memory);

#endif //__Memory_H__