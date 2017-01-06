#ifndef __SYS_H__
#define __SYS_H__

#include "Types.h"
#include "Error.h"
#include "Debug.h"
#include "api.h"


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
//Heap* Thread_GetHeap(Thread* thread);
Heap* FastCall(Thread_GetHeap__fast(Thread* thread));
#define Thread_GetHeap(p) Thread_GetHeap__fast(p)


//
// Memory
//

/// Allocates from the current thread heap.
//void* Thread_Alloc(uint16_t length);
void* FastCall(Thread_Alloc__fast(uint16_t length));
#define Thread_Alloc(p) Thread_Alloc__fast(p)

/// Frees to the current thread heap.
//void Thread_Free(void* memory);
void FastCall(Thread_Free__fast(void* memory));
#define Thread_Free(p) Thread_Free__fast(p)


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
//bool_t Async_IsComplete(AsyncResult* asyncResult);
bool_t FastCall(Async_IsComplete__fast(AsyncResult* asyncResult));
#define Async_IsComplete(p) Async_IsComplete__fast(p)

/// Suspends execution until the operation is completed.
//bool_t Async_Wait(AsyncResult* asyncResult);
bool_t FastCall(Async_Wait__fast(AsyncResult* asyncResult));
#define Async_Wait(p) Async_Wait__fast(p)


//
// String
//

/// Copies the string from source to dest but never more than capacity bytes (incl. NULL).
uint16_t String_Copy(const char* source, char* buffer, uint16_t capacity);

/// Compares strx to stry for max capacity characters and returns a signed integer result.
int16_t String_Compare(const char* strx, const char* stry, uint16_t capacity);
int16_t String_CompareExact(const char* strx, const char* stry, uint16_t capacity);

/// Returns the number of character (excl. NULL).
uint16_t String_GetLength(const char* source, uint16_t capacity);


#endif  //__SYS_H__