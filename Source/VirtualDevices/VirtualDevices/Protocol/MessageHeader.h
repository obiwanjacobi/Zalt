#pragma once

#include "Message.h"

typedef void(*MessageHandler)(Message* msg, void* userData);

class MessageHeader
{
public:
	MessageHandler Handler;
	void* UserData;

	// default 0 => no timeout
	unsigned int Timeout;

	Message Message;

	static MessageHeader* New(MessageHandler handler, Devices devId, uint8_t type) {
		MessageHeader* msgHdr = (MessageHeader*)new uint8_t[sizeof(MessageHeader)];
		msgHdr->Handler = handler;
		msgHdr->Timeout = 0;
		msgHdr->Message.DevId = (uint8_t)devId;
		msgHdr->Message.Type = type;
		//msgHdr->Message.Length = length;
		return msgHdr;
	}
};

