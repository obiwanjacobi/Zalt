#include "minunit.h"

#include "Async.h"
#include "Sys.h"

#define ASYNC_COUNT 10
static int _static_count = 0;

static bool_t AsyncCountCondition()
{
    _static_count++;
    return _static_count == ASYNC_COUNT;
}

Async_Function(testAsyncFn_WaitUntil)
{
    _static_count = 0;
    Async_WaitUntil(AsyncCountCondition());
}
Async_EndFn();

Async_Function(testAsyncFn_YieldUntil)
{
    _static_count = 0;
    Async_YieldUntil(AsyncCountCondition());
}
Async_EndFn();

static const char *Async_Construct_test()
{
    AsyncThis async;
    Async_Construct(&async);

    mu_assert(async._result == asyncResult_None, "_result not initialized");
    mu_assert(async._state == 0, "_state not initialized");
    return NULL;
}

static const char *Async_Fn_WaitUntil_test()
{
    AsyncThis async;
    Async_Construct(&async);

    Async_Result result;
    for (int n = 0; n < ASYNC_COUNT - 1; n++)
    {
        result = testAsyncFn_WaitUntil(&async);
        mu_assert(result == asyncResult_Pending, "testAsyncFn_WaitUntil did not report Pending");
    }

    // one last call
    result = testAsyncFn_WaitUntil(&async);
    mu_assert(result == asyncResult_Completed, "testAsyncFn_WaitUntil did not report Completed");
    return NULL;
}

static const char *Async_Fn_YieldUntil_test()
{
    AsyncThis async;
    Async_Construct(&async);

    Async_Result result;
    for (int n = 0; n < ASYNC_COUNT; n++)
    {
        result = testAsyncFn_YieldUntil(&async);
        mu_assert(result == asyncResult_Pending, "testAsyncFn_YieldUntil did not report Pending");
    }

    // one last call
    result = testAsyncFn_YieldUntil(&async);
    mu_assert(result == asyncResult_Completed, "testAsyncFn_YieldUntil did not report Completed");
    return NULL;
}

static const char *Async_testSuite()
{
    mu_run_test(Async_Construct_test);
    mu_run_test(Async_Fn_WaitUntil_test);
    mu_run_test(Async_Fn_YieldUntil_test);
    return NULL;
}