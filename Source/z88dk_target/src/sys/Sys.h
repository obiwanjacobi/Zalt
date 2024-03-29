#ifndef __SYS_H__
#define __SYS_H__

#include "Error.h"
#include "Types.h"
#include "api.h"

//
// Heap
//

struct _heap;
typedef struct _heap Heap;

/// Allocates length bytes from the heap
void *Heap_Alloc(Heap *heap, uint16_t length);
/// Frees allocated memory for reuse.
void Heap_Free(Heap *heap, void *memory);

//
// Thread
//

struct _thread;
typedef struct _thread Thread;

/// returns current executing thread.
Thread *Thread_GetCurrent();
/// Retrieves thread owned heap.
// Heap* Thread_GetHeap(Thread* thread);
Heap *FastCall(Thread_GetHeap__fast(Thread *thread));
#define Thread_GetHeap(p) Thread_GetHeap__fast(p)

/// Allocates from the current thread heap.
// ptr_t Thread_Alloc(uint16_t length);
ptr_t FastCall(Thread_Alloc__fast(uint16_t length));
#define Thread_Alloc(p) Thread_Alloc__fast(p)

/// Frees to the current thread heap.
// void Thread_Free(ptr_t memory);
void FastCall(Thread_Free__fast(void *memory));
#define Thread_Free(p) Thread_Free__fast(p)

//
// Async
//

struct _asyncThis;
typedef struct _asyncThis AsyncThis;
extern const uint8_t AsyncThis_size;

enum _asyncResult
{
    asyncResult_None,
    asyncResult_Pending,
    asyncResult_Completed,
    asyncResult_Error,
};
typedef enum _asyncResult Async_Result;

/// initializes the AsyncThis struct.
// void Async_Construct(AsyncThis* async);
void FastCall(Async_Construct__fast(AsyncThis *async));
#define Async_Construct(p) Async_Construct__fast(p)

/// indicates if the async operation has completed.
// bool_t Async_IsCompleted(AsyncThis* async);
bool_t FastCall(Async_IsCompleted__fast(AsyncThis *async));
#define Async_IsCompleted(p) Async_IsCompleted__fast(p)

/// indicates if the async operation has an error.
// bool_t Async_IsError(AsyncThis* async);
bool_t FastCall(Async_IsError__fast(AsyncThis *async));
#define Async_IsError(p) Async_IsError__fast(p)

/// indicates if the async operation is still running.
// bool_t Async_IsPending(AsyncThis* async);
bool_t FastCall(Async_IsPending__fast(AsyncThis *async));
#define Async_IsPending(p) Async_IsPending__fast(p)

/// indicates if the async operation is done either success or error.
// bool_t Async_IsDone(AsyncThis* async);
#define Async_IsDone(p) (Async_IsCompleted__fast(p) || Async_IsError__fast(p))

/**
 * Usage example:
 * Async_Function(<fn-name>)
 * {
 *   Async_WaitUntil(async, <condition>);
 * }
 * Async_EndFn()
 *
 * Async Function delcaration:
 * Async_Result <fn-name>(AsyncThis* async) {}
 */

#define Async_Declaration(name) Async_Result name(AsyncThis *async);

#define Async_DeclarationWithParameters(name, parameters) Async_Result name(AsyncThis *async, parameters);

/** MACRO: Declare an async function 'name'.
 *  \return Returns an indication if the task has yielded (pending) or simply exited (completed).
 */
#define Async_Function(name) Async_Result name(AsyncThis *async) Async_Scope()

/** MACRO: Declare an async function 'name' with parameters.
 *  \return Returns an indication if the task has yielded (pending) or simply exited (completed).
 */
#define Async_FunctionWithParams(name, parameters) Async_Result name(AsyncThis *async, parameters) Async_Scope()

/** MACRO: start an async scope inside a function.
 */
#define Async_Scope()           \
    {                           \
        bool_t _yield_ = false; \
        switch (async->State)   \
        {                       \
        case 0:

/** MACRO: ends an async scope inside a function (completed).
 */
#define Async_End()                        \
    }                                      \
    async->State = 0;                      \
    async->Result = asyncResult_Completed; \
    }

/** MACRO: Declare the end of the async function.
 *  Exits the async function (completed).
 */
#define Async_EndFn()                      \
    }                                      \
    async->State = 0;                      \
    async->Result = asyncResult_Completed; \
    return async->Result;                  \
    }

/** MACRO: Exits the async function immediately.
 *  \return Returns error from the async function.
 */
#define Async_Abort()                  \
    async->State = 0;                  \
    async->Result = asyncResult_Error; \
    return async->Result;

/** MACRO: Exits the async function immediately.
 *  \return Returns completed from the async function.
 */
#define Async_Return()                     \
    async->State = 0;                      \
    async->Result = asyncResult_Completed; \
    return async->Result;

//
// clang-format off
//

/** Asynchronously waits for the expression to become true.
 *  The expression is evaluated before the async function is exited (pending).
 */
#define Async_WaitUntil(expression)    \
    async->State = __LINE__; case __LINE__:  \
    if (!(expression)) {                      \
        async->Result = asyncResult_Pending; \
        return async->Result;                \
    }

/** MACRO: Yields from the async function until the expression evaluates to true.
 *  The async function is yielded (exited) first and on reentry is the expression evaluated.
 *  \return Returns pending from the async function.
 */
#define Async_YieldUntil(expression)   \
    _yield_ = true;                           \
    async->State = __LINE__; case __LINE__:  \
    if (_yield_ || !(expression)) {           \
        async->Result = asyncResult_Pending; \
        return async->Result;                \
    }

/** MACRO: Yields from the async function.
 *  The async function is yielded (exited) first and on reentry is the procedure resumed.
 *  \return Returns false from the async function.
 */
#define Async_Yield()                         \
    _yield_ = true;                           \
    async->State = __LINE__; case __LINE__:         \
    if (_yield_) {                            \
        async->Result = asyncResult_Pending; \
        return async->Result;                \
    }


//
// clang-format on
//

//
// String
//

/// Copies the string from source to dest but never more than capacity bytes (incl. NULL).
uint16_t String_Copy(const char8_t *source, char8_t *buffer, uint16_t capacity);

/// Compares strx to stry for max length characters and returns a signed integer result.
int16_t String_Compare(const char8_t *strx, const char8_t *stry, uint16_t length);
int16_t String_CompareExact(const char8_t *strx, const char8_t *stry, uint16_t length);

/// Returns the number of character (excl. NULL).
uint16_t String_GetLength(const char8_t *source, uint16_t capacity);

//
// Relative Pointer
//

typedef uint16_t relptr_t;

/// Constructs a relative ptr based on the passed regular ptr. Returns relative ptr value.
relptr_t RelativePtr_Construct(relptr_t *relPtr, ptr_t ptr);
/// Returns a regular ptr for the relative ptr.
ptr_t RelativePtr_ToPointer__fast(relptr_t *relPtr);
#define RelativePtr_ToPointer(p) RelativePtr_ToPointer__fast(p)

#endif //__SYS_H__
