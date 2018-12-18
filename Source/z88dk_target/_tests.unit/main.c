#include "minunit.h"
#include <stdio.h>

#include "Zalt_stubs.c"
#include "z88dk_stubs.c"

// test files
#include "Sys/ErrorTests.c"
#include "sys/AsyncTests.c"

int tests_run = 0;

static const char *all_tests()
{
    mu_run_test_suite(Async_testSuite);
    mu_run_test_suite(Error_testSuite);
    return NULL;
}

RUN_TESTS(all_tests);
