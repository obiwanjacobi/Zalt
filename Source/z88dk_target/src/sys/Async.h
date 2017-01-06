#ifndef __ASYNC_H__
#define __ASYNC_H__

#include "Sys.h"

struct _asyncResult {
    AsyncState State;
};


//bool_t Async_IsComplete(AsyncResult* asyncResult);
bool_t FastCall(Async_IsComplete__fast(AsyncResult* asyncResult));
#define Async_IsComplete(p) Async_IsComplete__fast(p)


#endif  //__ASYNC_H__