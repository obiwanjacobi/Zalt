#include "minunit.h"

#include "Error.h"
#include "Sys.h"

static const char *Error_SetGet_test()
{
    Error_Set(E_NULLPTR);
    mu_assert(Error_Get() == E_NULLPTR, "Set/Get Error failed");
    return NULL;
}

static const char *Error_testSuite()
{
    mu_run_test(Error_SetGet_test);
    return NULL;
}