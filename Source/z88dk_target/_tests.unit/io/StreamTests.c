#include "minunit.h"

#include "../src/io/Stream.h"
#include "Io.h"
#include "Sys.h"

#define Stream_size sizeof(Stream)

static const char *Stream_Construct_test()
{
    Stream *stream = Stream_Construct(Stream_size);
    mu_assert(stream != NULL, "no stream allocated");
    return NULL;
}

static const char *Stream_Open_test()
{
    Stream *stream = Stream_Open("con", streamFlags_CanRead);
    mu_assert(stream != NULL, "no stream allocated");
    return NULL;
}

static const char *Stream_OpenClose_test()
{
    Stream *stream = Stream_Open("con", streamFlags_CanRead);
    Stream_Close(stream);
    mu_assert(stream != NULL, "no stream allocated");
    return NULL;
}

static const char *Stream_testSuite()
{
    StreamProvider_Construct();

    mu_run_test(Stream_Construct_test);
    mu_run_test(Stream_Open_test);
    mu_run_test(Stream_OpenClose_test);
    return NULL;
}