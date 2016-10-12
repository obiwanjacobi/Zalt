#include "SystemTerminal.h"
#include "SysTerminal.h"
#include "CommandParser.h"
#include "CommandHandler.h"

#define RX_BUFFER_SIZE  128
#define TX_BUFFER_SIZE  16

static uint8 g_rxBuffer[RX_BUFFER_SIZE];
static uint8 g_txBuffer[TX_BUFFER_SIZE];

void SystemTerminal_Init(SystemTerminal* sysTerminal)
{
    RingBuffer_Init(&sysTerminal->RxBuffer, g_rxBuffer, RX_BUFFER_SIZE);
    RingBuffer_Init(&sysTerminal->TxBuffer, g_txBuffer, TX_BUFFER_SIZE);
}

// public API

void SystemTerminal_Start(SystemTerminal* sysTerminal)
{
    SystemTerminal_Init(sysTerminal);
    
    SysTerminal_Start();
}

uint8_t SystemTerminal_Send(SystemTerminal* sysTerminal)
{
    uint8_t bytesWritten = 0;
    
    while (!RingBuffer_IsEmpty(&sysTerminal->TxBuffer))
    {
        uint8_t ch = RingBuffer_ReadByte(&sysTerminal->TxBuffer);
        SysTerminal_PutChar(ch);
        bytesWritten++;
    }
    
    return bytesWritten;
}

uint8_t SystemTerminal_Receive(SystemTerminal* sysTerminal)
{
    TerminalCommand cmd;
    uint8_t bytesRead = SystemTerminal_Read(sysTerminal);
        
    if (bytesRead > 0)
    {
        if (CommandParser_BuildCommand(&cmd, &sysTerminal->RxBuffer) > 0)
        {
            CommandHandler_DispatchCommand(sysTerminal, &cmd);
        }
    }
    
    return bytesRead;
}

uint8_t SystemTerminal_ReceiveBlob(void* ctx, ReceiveCallback fnCallback)
{
    uint8_t cnt = 0;

    while (1)
    {
        uint8_t rxData = SysTerminal_GetChar();
        
        if (rxData != 0x00)
        {
            cnt++;
            if (fnCallback(ctx, rxData) == 0) break;
        }
    }
    
    return cnt;
}

uint8_t SystemTerminal_Read(SystemTerminal* sysTerminal)
{
    uint8_t cnt = 0;

    while (1)
    {
        uint8_t rxData = SysTerminal_GetChar();
        
        if (rxData != 0x00)
        {
            // end of line
            if (rxData == '\n' || rxData == '\r') return cnt;
            
            cnt++;
            RingBuffer_WriteByte(&sysTerminal->RxBuffer, rxData);
        }
    }
    
    return cnt;
}

uint8_t SystemTerminal_Write(SystemTerminal* sysTerminal, const uint8_t* buffer, uint16_t length)
{
    uint8_t bytesWritten = 0;
    uint16_t i;
    
    for(i = 0; i < length; i++)
    {
        RingBuffer_WriteByte(&sysTerminal->TxBuffer, buffer[i]);
        bytesWritten++;
    }
    
    return bytesWritten;
}

inline uint8_t SystemTerminal_WriteText(SystemTerminal* sysTerminal, const char* text)
{
    return SystemTerminal_Write(sysTerminal, (const uint8_t*)text, strlen(text));
}
/* [] END OF FILE */
