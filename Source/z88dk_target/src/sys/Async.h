#ifndef __ASYNC_H__
#define __ASYNC_H__

#include "Sys.h"

struct _asyncThis
{
    uint16_t _state;
    Async_Result _result;
};

#endif //__ASYNC_H__