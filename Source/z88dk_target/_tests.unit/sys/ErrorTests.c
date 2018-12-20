#include "minunit.h"

#include "../src/sys/Error.h"
#include "../src/sys/Sys.h"

static const char *Error_SetGet_test()
{
    Error_Set(E_NULLPTR);
    mu_assert(Error_Get() == E_NULLPTR, "Set/Get Error failed");
    return NULL;
}

static const char *Error_Succeeded_test()
{
    mu_assert(Succeeded(S_OK), "Succeeded (OK) failed");
    mu_assert(Succeeded(S_FALSE), "Succeeded (False) failed");
    mu_assert(Succeeded(S_WITHINFO), "Succeeded (WithInfo) failed");
    mu_assert(!Succeeded(E_NULLPTR), "Not Succeeded failed");
    return NULL;
}

static const char *Error_Failed_test()
{
    mu_assert(Failed(E_NULLPTR), "Failed failed");
    mu_assert(!Failed(S_OK), "Not Failed (OK) failed");
    mu_assert(!Failed(S_FALSE), "Not Failed (False) failed");
    return NULL;
}

static const char *Error_testSuite()
{
    mu_run_test(Error_Succeeded_test);
    mu_run_test(Error_Failed_test);
    mu_run_test(Error_SetGet_test);
    return NULL;
}