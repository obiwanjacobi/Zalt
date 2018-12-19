#ifndef __ASYNC_H__
#define __ASYNC_H__

#include "Sys.h"

struct _asyncThis
{
    uint16_t State;
    Async_Result Result;
};

#endif //__ASYNC_H__