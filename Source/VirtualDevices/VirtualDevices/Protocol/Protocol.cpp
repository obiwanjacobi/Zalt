#include "MessageHeader.h"

MessageStatus MakeMessageStatus(enum libusb_transfer_status status) {
	return (MessageStatus)status;
}
