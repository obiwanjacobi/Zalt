#include "KeyBoard.h"
#include "InterruptProcessor.h"
#include "RingBuffer.h"

#define MAX_KEY_BUFFER_SIZE 10
static uint8_t KeyBuffer[MAX_KEY_BUFFER_SIZE];
static RingBuffer Keys;

void KeyBoard_Init()
{
    RingBuffer_Init(&Keys, KeyBuffer, MAX_KEY_BUFFER_SIZE);
}

void KeyBoard_Handle(Message* message)
{
    switch(message->Type)
    {
        case KEYBOARD_INPUTKEY:
            KeyBoard_SetKey(message->KeyboardInput.Key);
            break;
    }
}

bool_t KeyBoard_SetKey(uint8_t key)
{
    if (RingBuffer_IsFull(&Keys)) return false;
    
    RingBuffer_WriteByte(&Keys, key);
    KeyBoard_Signal();
    return true;
}

uint8_t KeyBoard_GetKey()
{
    if (RingBuffer_IsEmpty(&Keys)) return 0;
    
    return RingBuffer_ReadByte(&Keys);
}

bool_t KeyBoard_Signal()
{
    return InterruptProcesor_Interrupt(INTERRUPT_VECTOR_KEYBOARD);
}


/* [] END OF FILE */
