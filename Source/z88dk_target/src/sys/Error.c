#include "Error.h"
#include "Sys.h"
#include "Thread.h"

void Error_Set(result_t error)
//void FastAPI(Error_Set__fast(result_t error))
{
    Thread_GetCurrent()->LastError = error;
}

result_t Error_Get()
{
    return Thread_GetCurrent()->LastError;
}
