#include "Async.h"

const uint8_t AsyncThis_size = sizeof(AsyncThis);

//bool_t Async_Construct(AsyncThis* async)
void FastCall(Async_Construct__fast(AsyncThis *async))
{
    async->_result = asyncResult_None;
    async->_state = 0;
}

//bool_t Async_IsComplete(AsyncThis* async)
bool_t FastCall(Async_IsComplete__fast(AsyncThis *async))
{
    return async->_state == asyncResult_Completed || async->_state == asyncResult_Error;
}

//bool_t Async_Wait(AsyncThis* async)
bool_t FastCall(Async_Wait__fast(AsyncThis *async))
{
    async;
    return true;
}