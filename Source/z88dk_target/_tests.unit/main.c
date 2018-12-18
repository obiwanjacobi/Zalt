/* file minunit_example.c */

#include "minunit.h"
#include <stdio.h>

#include "Zalt_stubs.c"
#include "z88dk_stubs.c"

// test files
#include "sys/AsyncTests.c"

int tests_run = 0;

static const char *all_tests()
{
    mu_run_test(Async_testSuite);
    return 0;
}

RUN_TESTS(all_tests);
