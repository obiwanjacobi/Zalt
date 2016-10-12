#ifndef __SYSTEMTERMINAL_H__
#define __SYSTEMTERMINAL_H__

#include <project.h>
#include "RingBuffer.h"
    
typedef struct 
{
    RingBuffer RxBuffer;
    RingBuffer TxBuffer;    
    
} SystemTerminal;

// initailizes and starts the system terminal
void SystemTerminal_Start(SystemTerminal* sysTerminal);
// pumps incoming data to command mechanism
uint8_t SystemTerminal_Send(SystemTerminal* sysTerminal);
// spools buffered output over serial connection
uint8_t SystemTerminal_Receive(SystemTerminal* sysTerminal);

typedef uint8_t (ReceiveCallback)(void* ctx, uint8_t data);
uint8_t SystemTerminal_ReceiveBlob(void* ctx, ReceiveCallback fnCallback);

// read one line
uint8_t SystemTerminal_Read(SystemTerminal* sysTerminal);
// write content of buffer
uint8_t SystemTerminal_Write(SystemTerminal* sysTerminal, const uint8_t* buffer, uint16_t length);

// write a string
inline uint8_t SystemTerminal_WriteText(SystemTerminal* sysTerminal, const char* text);

#endif

/* [] END OF FILE */
