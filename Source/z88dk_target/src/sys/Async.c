#include "Async.h"
#include "Debug.h"

const uint8_t AsyncThis_size = (uint8_t)sizeof(AsyncThis);

// void Async_Construct(AsyncThis* async)
void FastCall(Async_Construct__fast(AsyncThis *async))
{
    dGuardErr(async == NULL, E_NULLPTR);
    async->Result = asyncResult_None;
    async->State = 0;
}

// bool_t Async_IsCompleted(AsyncThis* async)
bool_t FastCall(Async_IsCompleted__fast(AsyncThis *async))
{
    dGuardErrVal(async == NULL, E_NULLPTR, false);
    return async->Result == asyncResult_Completed;
}

// bool_t Async_IsError(AsyncThis* async)
bool_t FastCall(Async_IsError__fast(AsyncThis *async))
{
    dGuardErrVal(async == NULL, E_NULLPTR, false);
    return async->Result == asyncResult_Error;
}

// bool_t Async_IsPending(AsyncThis* async)
bool_t FastCall(Async_IsPending__fast(AsyncThis *async))
{
    dGuardErrVal(async == NULL, E_NULLPTR, false);
    return async->Result == asyncResult_Pending;
}
