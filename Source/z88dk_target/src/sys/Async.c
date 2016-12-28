#include "Async.h"

const AsyncState asyncState_None = 0x00;
const AsyncState asyncState_Pending = 0x01;
const AsyncState asyncState_Completed = 0x02;
const AsyncState asyncState_CompletedSync = 0x0A;

const uint8_t AsyncResult_size = sizeof(AsyncResult);

bool_t Async_IsComplete(AsyncResult* asyncResult)
{
    return ((asyncResult->State & asyncState_Completed) != 0) ? true : false;
}

bool_t Async_Wait(AsyncResult* asyncResult)
{
    asyncResult;
    return true;
}
