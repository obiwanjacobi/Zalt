#include "minunit.h"
#include <stdio.h>

#include "Zalt_stubs.c"
#include "z88dk_stubs.c"

// test files
#include "io/StreamTests.c"
#include "sys/AsyncTests.c"
#include "sys/ErrorTests.c"
#include "sys/HeapTests.c"
#include "sys/StringTests.c"
#include "sys/ThreadTests.c"

int tests_run = 0;

static const char *all_tests()
{
    // sys
    mu_run_test_suite(Async_testSuite);
    mu_run_test_suite(Error_testSuite);
    mu_run_test_suite(String_testSuite);
    mu_run_test_suite(Heap_testSuite);
    mu_run_test_suite(Thread_testSuite);
    // io
    mu_run_test_suite(Stream_testSuite);

    return NULL;
}

RUN_TESTS(all_tests);
