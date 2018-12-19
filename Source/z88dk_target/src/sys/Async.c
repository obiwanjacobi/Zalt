#include "Async.h"

const uint8_t AsyncThis_size = sizeof(AsyncThis);

// bool_t Async_Construct(AsyncThis* async)
void FastCall(Async_Construct__fast(AsyncThis *async))
{
    dGuardErr(async == NULL, E_NULLPTR);
    async->_result = asyncResult_None;
    async->_state = 0;
}

// bool_t Async_IsCompleted(AsyncThis* async)
bool_t FastCall(Async_IsCompleted__fast(AsyncThis *async))
{
    dGuardErrVal(async == NULL, E_NULLPTR, false);
    return async->_result == asyncResult_Completed;
}

// bool_t Async_IsError(AsyncThis* async)
bool_t FastCall(Async_IsError__fast(AsyncThis *async))
{
    dGuardErrVal(async == NULL, E_NULLPTR, false);
    return async->_result == asyncResult_Error;
}

// bool_t Async_IsPending(AsyncThis* async)
bool_t FastCall(Async_IsPending__fast(AsyncThis *async))
{
    dGuardErrVal(async == NULL, E_NULLPTR, false);
    return async->_result == asyncResult_Pending;
}
