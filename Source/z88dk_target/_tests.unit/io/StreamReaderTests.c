#include "minunit.h"

#include "../src/io/ConsoleStreamProvider.h"
#include "../src/io/Io.h"
#include "../src/sys/Sys.h"

#define Stream_size sizeof(Stream)

static const char *StreamReader_TryReadByte_test_Empty()
{
    Stream *stream = Stream_Open(ConsoleProtocol, streamFlags_CanRead);
    mu_assert_success();

    uint8_t data = 42;
    bool_t result = StreamReader_TryReadByte(stream, &data);

    mu_assert(result == false, "result not false");
    mu_assert(data == 42, "data was touched");
    mu_assert_success();
    return NULL;
}

static const char *StreamReader_TryReadByte_test_OneByte()
{
    Stream *stream = Stream_Open(ConsoleProtocol, streamFlags_CanRead);
    mu_assert_success();
    ((ConsoleStream *)stream)->InputBuffer[0] = 42;

    uint8_t data = 0;
    bool_t result = StreamReader_TryReadByte(stream, &data);

    mu_assert(result == true, "result not true");
    mu_assert(data == 42, "data not read");
    mu_assert_success();
    return NULL;
}

static const char *StreamReader_testSuite()
{
    Error_Set(S_OK);

    mu_run_test(StreamReader_TryReadByte_test_Empty);
    mu_run_test(StreamReader_TryReadByte_test_OneByte);
    return NULL;
}