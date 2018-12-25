#include "SerialTerminal.h"
#include "CommandParser.h"
#include "CommandHandler.h"

#include <stdio.h>

#define SerialTerminal_RxBufferSize 40

static uint8_t g_rxBuffer[SerialTerminal_RxBufferSize];

void SerialTerminal_Start(SerialTerminal* serialTerminal)
{
    serialTerminal->IsActive = 1;   // on by default
    
    RingBuffer_Init(&serialTerminal->RxBuffer, g_rxBuffer, SerialTerminal_RxBufferSize);
    SysTerminal_Start();
}

uint16_t  SerialTerminal_ReceiveCommand(SerialTerminal* serialTerminal)
{   
    uint16_t bytesRead = 0;
    
    while (SysTerminal_GetRxBufferSize() > 0)
    {
        uint8_t data = SysTerminal_GetChar();
        bytesRead++;
        
        if (data != 0)
        {
            if (CommandParser_ParseNewLine(data))
            {
                while (!RingBuffer_IsEmpty(&serialTerminal->RxBuffer))
                {
                    TerminalCommand cmd;
                    if (CommandParser_BuildCommand(&cmd, &serialTerminal->RxBuffer))
                    {
                        CommandHandler_DispatchCommand(serialTerminal, &cmd);
                    }
                    else
                    {
                        // report back error and empty buffer
                        SysTerminal_PutString((const char*)cmd.CommandLine);
                        uint16_t length = RingBuffer_getLength(&serialTerminal->RxBuffer);
                        uint8_t buffer[length + 1];
                        RingBuffer_Read(&serialTerminal->RxBuffer, buffer, length, 0);
                        buffer[length] = 0;
                        // target buffer may be shorter
                        SysTerminal_PutString((const char*)buffer);
                        SerialTerminal_WriteLine(" - Invalid Command.");
                    }
                }
            }
            else
            {
                RingBuffer_WriteByte(&serialTerminal->RxBuffer, data);
            }
        }
    }
    
    return bytesRead;
}


uint16_t SerialTerminal_ReceiveBlob(void* ctx, ReceiveCallback fnCallback)
{
    uint16_t cnt = 0;

    while (SysTerminal_GetRxBufferSize() > 0)
    {
        uint8_t rxData = SysTerminal_GetChar();
        
        cnt++;
        if (fnCallback(ctx, rxData) == 0) break;
    }
    
    return cnt;
}


void SerialTerminal_Write(const char8* text)
{
    if (text != NULL)
        SysTerminal_PutString(text);
}

void SerialTerminal_WriteLine(const char8* text)
{
    if (text != NULL)
        SysTerminal_PutString(text);
        
    SysTerminal_PutString("\r\n");
}

void SerialTerminal_WriteUint16(uint16_t value, uint8_t radix)
{
    char buffer[35];
    switch(radix)
    {
        case 10:
        sprintf(buffer, "%d", value);
        break;
        case 16:
        sprintf(buffer, "%Xh", value);
        break;
        
        default: 
        sprintf(buffer, "unsupported radix: %d", radix);
    }
    SysTerminal_PutString(buffer);
}
/* [] END OF FILE */
