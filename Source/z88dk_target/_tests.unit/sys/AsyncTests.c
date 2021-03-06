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

    mu_assert(async.Result == asyncResult_None, "Result not initialized");
    mu_assert(async.State == 0, "State not initialized");
    mu_assert_success();
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
        mu_assert(result == asyncResult_Pending, "did not report Pending");
    }

    // one last call
    result = testAsyncFn_WaitUntil(&async);
    mu_assert(result == asyncResult_Completed, "did not report Completed");
    mu_assert_success();
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
        mu_assert(result == asyncResult_Pending, "did not report Pending");
    }

    // one last call
    result = testAsyncFn_YieldUntil(&async);
    mu_assert(result == asyncResult_Completed, "did not report Completed");
    mu_assert_success();
    return NULL;
}

static const char *Async_IsCompleted_IsPending_test()
{
    AsyncThis async;
    Async_Construct(&async);

    for (int n = 0; n < ASYNC_COUNT; n++)
    {
        testAsyncFn_YieldUntil(&async);
        mu_assert(Async_IsPending(&async), "did not report Pending");
    }

    // one last call
    testAsyncFn_YieldUntil(&async);
    mu_assert(Async_IsCompleted(&async), "did not report Completed");
    mu_assert_success();
    return NULL;
}

static const char *Async_testSuite()
{
    Error_Set(S_OK);

    mu_run_test(Async_Construct_test);
    mu_run_test(Async_Fn_WaitUntil_test);
    mu_run_test(Async_Fn_YieldUntil_test);
    mu_run_test(Async_IsCompleted_IsPending_test);
    return NULL;
}