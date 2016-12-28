#include "Stream.h"
#include "ConsoleStreamProvider.h"
#include <string.h>

const StreamFlags streamFlags_CanSeek = 0x01;
const StreamFlags streamFlags_CanRead = 0x02;
const StreamFlags streamFlags_CanWrite = 0x04;
const StreamFlags streamAccess_Read = 0x10;
const StreamFlags streamAccess_Write = 0x20;
const StreamFlags streamTransport_Block = 0x80;

static StreamProvider* ConsoleStreamProvider;

result_t StreamProvider_Construct()
{
	ConsoleStreamProvider = ConsoleStreamProvider_Construct(Thread_Alloc(ConsoleStreamProvider_size));
	return ConsoleStreamProvider == NULL ? E_NULLPTR : S_OK;
}

Stream* Stream_Construct(uint16_t length)
{
	Stream* stream = Thread_Alloc(length);
	memset(stream, 0, length);
	return stream;
}

void Stream_Destruct(Stream* stream)
{
	Thread_Free(stream);
}

Stream* Stream_Open(const char* location, StreamFlags access)
{
	result_t result = S_OK;
	Stream* stream = NULL;
	uint16_t size = 0;

    // TODO: parse location into parts

	// call providers CanProvide with protocol
	size = ConsoleStreamProvider->fnCanProvide(location);
	if (size == 0) { Error_Set(E_NOTSUPPORTED); return NULL; }
	
	// create stream for provider
	stream = Stream_Construct(size);
	stream ->StreamProvider = ConsoleStreamProvider;
	result = ConsoleStreamProvider->fnTryOpenStream(location, access, stream);
	if (Failed(result)) { Error_Set(result); Stream_Destruct(stream); return NULL; }
	return stream;
}

result_t Stream_Close(Stream* stream)
{
	if (stream == NULL) return E_NULLPTR;
	if (stream->StreamProvider == NULL) return E_NOTINITIALIZED;

	if (stream->StreamProvider->fnTryCloseStream != NULL) {
		return stream->StreamProvider->fnTryCloseStream(stream);
	}

	Stream_Destruct(stream);
	return S_OK;
}

uint16_t Stream_Read(Stream* stream, uint8_t* buffer, uint16_t capacity)
{
	AsyncResult* result;
	if (stream == NULL) { Error_Set(E_NULLPTR); return 0; }
	if (stream->StreamProvider == NULL) { Error_Set(E_NOTINITIALIZED); return 0; }
	if (stream->StreamProvider->fnBeginReadStream == NULL) { Error_Set(E_NOTSUPPORTED); return 0; }

	result = stream->StreamProvider->fnBeginReadStream(stream, buffer, capacity);
	if (result == NULL) { return 0; }

	return stream->StreamProvider->fnEndReadStream(stream, result);
}

uint16_t Stream_Write(Stream* stream, const uint8_t* buffer, uint16_t length)
{
	AsyncResult* result;
	if (length == 0) return 0;
	if (stream == NULL) { Error_Set(E_NULLPTR); return 0; }
	if (stream->StreamProvider == NULL) { Error_Set(E_NOTINITIALIZED); return 0; }
	if (stream->StreamProvider->fnBeginWriteStream == NULL) { Error_Set(E_NOTSUPPORTED); return 0; }

	result = stream->StreamProvider->fnBeginWriteStream(stream, buffer, length);
	if (result == NULL) { return 0; }

	return stream->StreamProvider->fnEndWriteStream(stream, result);
}
