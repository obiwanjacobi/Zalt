#include "UsbEndPoint.h"
#include "Usb.h"
#include "Protocol\MessageHeader.h"

void UsbEndPoint::Callback(struct libusb_transfer* transfer)
{
	((UsbEndPoint*)transfer->user_data)->onCallback();
}

UsbEndPoint::UsbEndPoint(Usb* usb, EndPointId id)
	: QObject(usb)
{
	_busy = false;
	_usb = usb;
	_transfer = libusb_alloc_transfer(0);
	_transfer->type = LIBUSB_TRANSFER_TYPE_BULK;
	_transfer->endpoint = id;
	_transfer->user_data = this;
	_transfer->callback = (libusb_transfer_cb_fn)UsbEndPoint::Callback;
}

UsbEndPoint::~UsbEndPoint()
{
	libusb_free_transfer(_transfer);
}

void UsbEndPoint::onCallback()
{
	switch (_transfer->status)
	{
	case LIBUSB_TRANSFER_COMPLETED:
		onCompleted(_transfer->actual_length);
		break;
	default:
		onError(_transfer->status);
		break;
	}
}

bool UsbEndPoint::initialize(libusb_device_handle* handle)
{
	_transfer->dev_handle = handle;
	return libusb_claim_interface(handle, 0);
}

bool UsbEndPoint::submit(MessageHeader* msgHeader)
{
	if (_busy) return false;

	_transfer->timeout = msgHeader->Timeout;
	_transfer->buffer = (unsigned char*)&msgHeader->Message;
	_transfer->length = sizeof(Message); //+msgHeader->Message.Length;

	_busy = true;
	return libusb_submit_transfer(_transfer) == 0;
}