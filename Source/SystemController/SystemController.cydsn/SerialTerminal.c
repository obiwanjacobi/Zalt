#include "SerialTerminal.h"
#include "CommandParser.h"
#include "CommandHandler.h"

#include <stdlib.h>
#include <stdio.h>

#define SerialTerminal_RxBufferSize 40

static uint8_t g_rxBuffer[SerialTerminal_RxBufferSize];

void SerialTerminal_WritePrompt()
{
    SerialTerminal_Write(">> ");
}

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
            if (CommandParser_IsNewLine(data))
            {
                while (!RingBuffer_IsEmpty(&serialTerminal->RxBuffer))
                {
                    TerminalCommand cmd;
                    if (CommandParser_BuildCommand(&cmd, &serialTerminal->RxBuffer))
                    {
                        SerialTerminal_WriteLine(NULL);
                        CommandHandler_DispatchCommand(serialTerminal, &cmd);
                        SerialTerminal_WritePrompt();
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
                        SerialTerminal_WritePrompt();
                    }
                }
            }
            else
            {
                RingBuffer_WriteByte(&serialTerminal->RxBuffer, data);
                // echo back
                SysTerminal_WriteTxData(data);
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

static const char* NewLine = "\r\n";

void SerialTerminal_WriteLine(const char8* text)
{
    if (text != NULL)
        SysTerminal_PutString(text);
        
    SysTerminal_PutString(NewLine);
}

void SerialTerminal_WriteUint16(uint16_t value, uint8_t radix)
{
    char buffer[20];
    itoa(value, buffer, radix);
    SysTerminal_PutString(buffer);
}

void SerialTerminal_WriteFormat(const char* format, uint16_t value)
{
    if (format == NULL || format[0] == 0) return;
    
    char txt[20];
    sprintf(txt, format, value);
    SysTerminal_PutString(txt);
}

void SerialTerminal_WriteArrayFormat(const char* format, uint8_t *buffer, uint16_t length)
{
    if (format == NULL || format[0] == 0) return;
    if (buffer == NULL) return;
    if (length == 0) return;
    
    char txt[5];
    uint8_t rowCount = 0;
    for(uint16_t i = 0; i < length; i++)
    {
        if (rowCount == 8)
        {
            SysTerminal_PutString("   ");
        }
        
        if (rowCount == 16)
        {
            SysTerminal_PutString(NewLine);
            rowCount = 0;
        }
        
        sprintf(txt, format, buffer[i]);
        SysTerminal_PutString(txt);
        SysTerminal_PutString(" ");
        
        rowCount++;
    }
}

/* [] END OF FILE */
