#include "minunit.h"

#include "Sys.h"

#define capacity 14
const char8_t *expected = "Hello World!";
const char8_t *test = "Hello World!";

static const char *String_Copy_test_FullStringCopied()
{
    const uint16_t length = 12; // strlen
    char8_t buffer[capacity];

    uint16_t result = String_Copy(expected, buffer, capacity);

    mu_assert(result == length, "result");
    mu_assert(buffer[0] == 'H', "first char");
    mu_assert(buffer[11] == '!', "last char");
    mu_assert(buffer[12] == 0, "null termination");
    mu_assert_success();
    return NULL;
}

static const char *String_Copy_test_PartStringCopied()
{
    const uint16_t length = 8;
    char8_t buffer[capacity];
    buffer[7] = ' ';

    uint16_t result = String_Copy(expected, buffer, length);

    mu_assert(result == length, "result");
    mu_assert(buffer[0] == 'H', "first char");
    mu_assert(buffer[6] == 'W', "last char");
    mu_assert(buffer[7] == 0, "null termination");
    mu_assert_success();
    return NULL;
}

static const char *String_Compare_test_Smaller()
{
    const char8_t *test = "Hellp World!";

    int16_t result = String_Compare(expected, test, 0);

    mu_assert(result < 0, "not smaller");
    mu_assert_success();
    return NULL;
}

static const char *String_Compare_test_Bigger()
{
    const char8_t *test = "Helln World!";

    int16_t result = String_Compare(expected, test, 0);

    mu_assert(result > 0, "not bigger");
    mu_assert_success();
    return NULL;
}

static const char *String_Compare_test_NoLength()
{
    int16_t result = String_Compare(expected, test, 0);

    mu_assert(result == 0, "not equal");
    mu_assert_success();
    return NULL;
}

static const char *String_Compare_test_FullLength()
{
    int16_t result = String_Compare(expected, test, 12);

    mu_assert(result == 0, "not equal");
    mu_assert_success();
    return NULL;
}

static const char *String_Compare_test_MoreLength()
{
    int16_t result = String_Compare(expected, test, 20);

    mu_assert(result == 0, "not equal");
    mu_assert_success();
    return NULL;
}

static const char *String_Compare_test_PartLength()
{
    int16_t result = String_Compare(expected, test, 8);

    mu_assert(result == 0, "not equal");
    mu_assert_success();
    return NULL;
}

static const char *String_Compare_test_PartLengthNoCase()
{
    const char8_t *test = "hello world!";
    int16_t result = String_Compare(expected, test, 8);

    mu_assert(result == 0, "not equal");
    mu_assert_success();
    return NULL;
}

static const char *String_CompareExact_test_PartLengthNoCase()
{
    const char8_t *test = "hello world!";
    int16_t result = String_CompareExact(expected, test, 8);

    mu_assert(result != 0, "equal");
    mu_assert_success();
    return NULL;
}

static const char *String_CompareExact_test_PartLengthCase()
{
    int16_t result = String_CompareExact(expected, test, 8);

    mu_assert(result == 0, "not equal");
    mu_assert_success();
    return NULL;
}

static const char *String_GetLength_test()
{
    int16_t result = String_GetLength(expected, 13);

    mu_assert(result == 12, "length");
    mu_assert_success();
    return NULL;
}

static const char *String_GetLength_test_NoCapacity()
{
    int16_t result = String_GetLength(expected, 0);

    mu_assert(result == 12, "length");
    mu_assert_success();
    return NULL;
}

static const char *String_GetLength_test_CapacityTooSmall()
{
    int16_t result = String_GetLength(expected, 10);

    mu_assert(result == 10, "length");
    mu_assert_success();
    return NULL;
}

// -------------------------------------

static const char *String_testSuite()
{
    Error_Set(S_OK);
    mu_run_test(String_Copy_test_FullStringCopied);
    mu_run_test(String_Copy_test_PartStringCopied);
    mu_run_test(String_Compare_test_Smaller);
    mu_run_test(String_Compare_test_Bigger);
    mu_run_test(String_Compare_test_NoLength);
    mu_run_test(String_Compare_test_FullLength);
    mu_run_test(String_Compare_test_MoreLength);
    mu_run_test(String_Compare_test_PartLength);
    mu_run_test(String_Compare_test_PartLengthNoCase);
    mu_run_test(String_CompareExact_test_PartLengthNoCase);
    mu_run_test(String_CompareExact_test_PartLengthCase);
    mu_run_test(String_GetLength_test);
    mu_run_test(String_GetLength_test_NoCapacity);
    mu_run_test(String_GetLength_test_CapacityTooSmall);
    return NULL;
}