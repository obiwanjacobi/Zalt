#pragma once

#include "Message.h"

#include<iostream>
#include <memory>
using namespace std;

enum class MessageStatus {
	// same order as libusb_transfer_status
	Completed,
	Error,
	Timedout,
	Cancelled,
	Stalled,
	DeviceLost,
	Overflow,

	// extra
	Pending,
	Received,
};

MessageStatus MakeMessageStatus(enum libusb_transfer_status status);

typedef void(*MessageHandler)(Message* msg, MessageStatus status, void* userData);


class MessageHeader
{
public:
	MessageHandler Handler;
	void* UserData;

	// default 0 => no timeout
	unsigned int Timeout;

	Message Message;

	static unique_ptr<MessageHeader> New(MessageHandler handler, Devices devId, uint8_t type) {
		unique_ptr<MessageHeader> msgHdr = make_unique<MessageHeader>();
		msgHdr->Handler = handler;
		msgHdr->Timeout = 0;
		msgHdr->Message.DevId = (uint8_t)devId;
		msgHdr->Message.Type = type;

		return msgHdr;
	}
};

