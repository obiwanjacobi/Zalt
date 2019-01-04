#include "Error.h"
#include "Sys.h"
#include "Thread.h"

static const char8_t *UnknownError = "Unknown Error";
static const char8_t *SuccessMessages[] = {"OK / True", "False", "OK with Info"};

static const char8_t *ErrorMessages[] = {
    "E_NULLPTR: The first (this) function parameter was NULL.",
    "E_BUFFERFULL: The available space in the buffer has been used up.",
    "E_BUFFEROVERRUN: The available space in the buffer was exceeded.",
    "E_ARGNULLOREMPTY: A (non-this) function parameter was NULL or empty.",
    "E_ARGNOTINRANGE: The value of function parameter was not within the expected range.",
    "E_NOTIMPLEMENTED: The (interface) function is not implemented.",
    "E_NOTSUPPORTED: The (interface) function is not supported.",
    "E_NOTINITIALIZED: An Init or Construct method must first be called on the object.",
    "E_NOACCESS: Access is not permitted.",
    "E_OUTOFMEMORY: Available memory has been depleted.",
    "E_ALREADYOPEN: Calling the open function multiple times.",
    "E_NOTOWNED: Passing an object or handle that belongs to something else.",
};

// void Error_Set(result_t error)
void FastCall(Error_Set__fast(result_t error))
{
    Thread_GetCurrent()->LastError = error;
}

result_t Error_Get()
{
    return Thread_GetCurrent()->LastError;
}

const char8_t *Error_ToText__fast(result_t result)
{
    if (Failed(result))
    {
        return ErrorMessages[result - E_ERROR_BASE];
    }
    if (Succeeded(result))
    {
        return SuccessMessages[result];
    }
    return UnknownError;
}

const char8_t *Error_GetText()
{
    return Error_ToText(Error_Get());
}