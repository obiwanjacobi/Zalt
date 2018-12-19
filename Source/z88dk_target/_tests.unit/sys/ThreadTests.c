#include "minunit.h"

#include "Sys.h"
#include "Thread.h"

static const char *Thread_Alloc_test()
{
    void *mem = Thread_Alloc(10);
    Thread_Free(mem);

    mu_assert(mem != NULL, "no mem");
    return NULL;
}

static const char *Thread_testSuite()
{
    Thread_Construct();

    mu_run_test(Thread_Alloc_test);
    return NULL;
}