#ifndef __SYS_H__
#define __SYS_H__

#include "Types.h"
#include "Error.h"


//
// Heap
//

struct _heap;
typedef struct _heap Heap;

/// Allocates length bytes from the heap
void* Heap_Alloc(Heap* heap, uint16_t length);
/// Frees allocated memory for reuse.
void Heap_Free(Heap* heap, void* memory);


//
// Thread
//

struct _thread;
typedef struct _thread Thread;

/// returns current executing thread.
Thread* Thread_GetCurrent();
/// Retrieves thread owned heap.
Heap* Thread_GetHeap(Thread* thread);


//
// Memory
//

/// Allocates from the current thread heap.
void* Thread_Alloc(uint16_t length);
/// Frees to the current thread heap.
void Thread_Free(void* memory);


//
// Async
//

struct _asyncResult;
typedef struct _asyncResult AsyncResult;
extern const uint8_t AsyncResult_size;

typedef uint8_t AsyncState;
extern const AsyncState asyncState_None;
extern const AsyncState asyncState_Pending;
extern const AsyncState asyncState_Completed;
extern const AsyncState asyncState_CompletedSync;

/// indicates if that async operation has completed.
bool_t Async_IsComplete(AsyncResult* asyncResult);
/// Suspends execution until the operation is completed.
bool_t Async_Wait(AsyncResult* asyncResult);


//
// String
//

/// Copies the string from source to dest but never more than capacity bytes (incl. NULL).
uint16_t String_Copy(const char* source, char* buffer, uint16_t capacity);
/// Compares strx to stry for max capacity characters and returns a signed integer result.
int16_t String_Compare(const char* strx, const char* stry, uint16_t capacity);
/// Returns the number of character (excl. NULL).
uint16_t String_GetLength(const char* source, uint16_t capacity);

#endif  //__SYS_H__