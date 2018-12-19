#include "minunit.h"

#include "Sys.h"
#include "Thread.h"

static const char *Thread_Alloc_test()
{
    void *mem = Thread_Alloc(10);
    mu_assert_success();
    Thread_Free(mem);

    mu_assert(mem != NULL, "no mem");
    mu_assert_success();
    return NULL;
}

static const char *Thread_testSuite()
{
    Error_Set(S_OK);
    Thread_Construct();

    mu_run_test(Thread_Alloc_test);
    return NULL;
}