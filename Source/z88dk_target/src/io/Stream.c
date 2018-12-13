#include "Stream.h"
#include "ConsoleStreamProvider.h"
#include "../sys/Async.h"
#include <string.h>

static StreamProvider *ConsoleStreamProvider;

result_t StreamProvider_Construct()
{
	ConsoleStreamProvider = ConsoleStreamProvider_Construct(Thread_Alloc(ConsoleStreamProvider_size));
	return ConsoleStreamProvider == NULL ? E_NULLPTR : S_OK;
}

//Stream* Stream_Construct(uint16_t length)
#define Stream_Construct(p) Stream_Construct__fast(p)
Stream *FastAPI(Stream_Construct__fast(uint16_t length))
{
	Stream *stream = Thread_Alloc(length);
	memset(stream, 0, length);
	return stream;
}

#define Stream_Destruct(p) Thread_Free(p)

Stream *Stream_Open(const char *location, StreamFlags access)
{
	result_t result = S_OK;
	Stream *stream = NULL;
	uint16_t size = 0;
	AsyncThis async;

	// TODO: parse location into parts

	// call providers CanProvide with protocol
	size = ConsoleStreamProvider->fnCanProvide(location);
	if (size == 0)
	{
		Error_Set(E_NOTSUPPORTED);
		return NULL;
	}

	// create stream for provider
	stream = Stream_Construct(size);
	stream->StreamProvider = ConsoleStreamProvider;

	Async_Construct(&async);
	while (!Async_IsComplete(&async))
	{
		result = ConsoleStreamProvider->fnTryOpenStream(&async, location, access, stream);

		if (Failed(result))
		{
			Error_Set(result);
			Stream_Destruct(stream);
			return NULL;
		}
	}

	return stream;
}

//result_t Stream_Close(Stream* stream)
#define Stream_Close(p) Stream_Close__fast(p)
result_t FastAPI(Stream_Close__fast(Stream *stream))
{
	if (stream == NULL)
		return E_NULLPTR;
	if (stream->StreamProvider == NULL)
		return E_NOTINITIALIZED;

	if (stream->StreamProvider->fnTryCloseStream != NULL)
	{
		return stream->StreamProvider->fnTryCloseStream(stream);
	}

	Stream_Destruct(stream);
	return S_OK;
}

uint16_t Stream_Read(Stream *stream, uint8_t *buffer, uint16_t capacity)
{
	AsyncThis async;
	Async_Result result;

	if (stream == NULL)
	{
		Error_Set(E_NULLPTR);
		return 0;
	}
	if (stream->StreamProvider == NULL)
	{
		Error_Set(E_NOTINITIALIZED);
		return 0;
	}
	if (stream->StreamProvider->fnReadStream == NULL)
	{
		Error_Set(E_NOTSUPPORTED);
		return 0;
	}

	Async_Construct(&async);
	while (!Async_IsComplete(&async))
	{
		stream->StreamProvider->fnReadStream(&async, stream, buffer, capacity);
	}

	// TODO: get length!
	return 0;
}

uint16_t Stream_Write(Stream *stream, const uint8_t *buffer, uint16_t length)
{
	AsyncThis async;
	Async_Result *result;

	if (length == 0)
		return 0;
	if (stream == NULL)
	{
		Error_Set(E_NULLPTR);
		return 0;
	}
	if (stream->StreamProvider == NULL)
	{
		Error_Set(E_NOTINITIALIZED);
		return 0;
	}
	if (stream->StreamProvider->fnWriteStream == NULL)
	{
		Error_Set(E_NOTSUPPORTED);
		return 0;
	}

	Async_Construct(&async);
	while (!Async_IsComplete(&async))
	{
		stream->StreamProvider->fnWriteStream(&async, stream, buffer, length);
	}

	// TODO: get length!
	return 0;
}

bool_t Stream_HasFlags(const Stream *stream, StreamFlags flags)
{
	return (stream->Flags & flags) != 0 ? true : false;
}
