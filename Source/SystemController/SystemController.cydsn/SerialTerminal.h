#ifndef __SERIALTERMINAL_H__
#define __SERIALTERMINAL_H__

#include <project.h>
#include "RingBuffer.h"
    
typedef struct 
{
    uint8_t IsActive;
    RingBuffer RxBuffer;
    
} SerialTerminal;

void SerialTerminal_Start(SerialTerminal* serialTerminal);

uint16_t SerialTerminal_ReceiveCommand(SerialTerminal* serialTerminal);

typedef uint8_t (ReceiveCallback)(void* ctx, uint8_t data);
uint16_t SerialTerminal_ReceiveBlob(void* ctx, ReceiveCallback fnCallback);

void SerialTerminal_WritePrompt();
void SerialTerminal_WriteUint16(uint16_t value, uint8_t radix);
void SerialTerminal_Write(const char8* text);
void SerialTerminal_WriteLine(const char8* text);
void SerialTerminal_WriteFormat(const char* format, uint16_t value);
void SerialTerminal_WriteArrayFormat(const char* format, uint8_t *buffer, uint16_t length, uint16_t address);

#endif//__SERIALTERMINAL_H__

/* [] END OF FILE */
