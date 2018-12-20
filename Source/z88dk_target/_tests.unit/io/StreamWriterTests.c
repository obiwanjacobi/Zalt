#include "minunit.h"

#include "../src/io/ConsoleStreamProvider.h"
#include "../src/io/Io.h"
#include "../src/sys/Sys.h"

#define Stream_size sizeof(Stream)

static const char *StreamWriter_Write_test()
{
    Stream *stream = Stream_Open(ConsoleProtocol, streamFlags_CanWrite);
    mu_assert_success();

    uint8_t data[2] = {42, 21};
    uint16_t bytesWritten = StreamWriter_Write(stream, data, 2);

    mu_assert(bytesWritten == 2, "bytesWritten not 2");
    mu_assert_success();
    return NULL;
}

static const char *StreamWriter_Write_test_Long()
{
    Stream *stream = Stream_Open(ConsoleProtocol, streamFlags_CanWrite);
    mu_assert_success();

    uint8_t data[255];
    memset(&data, 42, 255);

    uint16_t bytesWritten = StreamWriter_Write(stream, data, 255);

    mu_assert(bytesWritten == 255, "bytesWritten not 255");
    mu_assert_success();
    return NULL;
}

static const char *StreamWriter_testSuite()
{
    Error_Set(S_OK);

    mu_run_test(StreamWriter_Write_test);
    mu_run_test(StreamWriter_Write_test_Long);
    return NULL;
}