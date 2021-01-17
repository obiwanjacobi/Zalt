#include "IOProcessor.h"
#include "BusController.h"
#include "CpuController.h"
#include "SerialTerminal.h"
#include "MemoryManager.h"
#include "IoAddresses.h"
#include "Debugger.h"
// devices
#include "KeyBoard.h"

#include <stdlib.h>

// global instance for ISR
static IOInfo g_isrData;
static uint8_t testData;

void IOProcessor_Init()
{
    testData = 0;
    g_isrData.Address = 0;
    g_isrData.Data = 0;
    g_isrData.Mode = 0;
    
    IOProcessor_ReleaseCpuWait();
    Z80Ctrl_ISR_IO_StartEx(IOProcessor_ISR_OnIOInterrupt);
}

void IOProcessor_ReleaseCpuWait()
{
    // pulse bit 0 of ctrl reg to release wait state
    Z80Ctrl_WaitCtrlReg_Write(1);
    Z80Ctrl_WaitCtrlReg_Write(0);
}

void IOProcessor_ISR_OnIOInterrupt()
{
    if (CpuController_IsResetActive() || BusController_IsAcquiring()) return;
    
    // see MODE_Xxx flags
    g_isrData.Mode = MODE_IO;    // always io
    if (ReadNotPin(ExtBus_Rd))
        g_isrData.Mode |= MODE_READ;
    if (ReadNotPin(ExtBus_Wr))
        g_isrData.Mode |= MODE_WRITE;
                    
    g_isrData.Address = RegLsbA_Read();
    
    uint8_t mode = MODE_IO|MODE_READ;
    if ((g_isrData.Mode & mode) == mode)
        IOProcessor_InputDispatch(&g_isrData);
    
    mode = MODE_IO|MODE_WRITE;
    if ((g_isrData.Mode & mode) == mode)
    {
        g_isrData.Data = RegInD_Read();
        IOProcessor_OutputDispatch(&g_isrData);
    }
    
    IOProcessor_ReleaseCpuWait();
}

void IOProcessor_OutputDispatch(IOInfo* ioInfo)
{
    switch(ioInfo->Address)
    {
        case IO_DEBUGGER:
            Debugger_IO_OnOutput(ioInfo->Data);
            break;
        case IO_TEST_LOOP:
            testData = ioInfo->Data;
            break;
        case IO_Terminal:
            SysTerminal_PutChar(ioInfo->Data);
            break;
        case IO_Serial:
            SysTerminal_PutChar(ioInfo->Data);
            break;
            
        default:
            SerialTerminal_WriteFormat("Unhandled OUT address: %04X\r\n", ioInfo->Address);
            break;
    }
}

void IOProcessor_InputDispatch(IOInfo* ioInfo)
{
    uint8_t data = 0;
    
    switch(ioInfo->Address)
    {
        case IO_DEBUGGER:
            data = Debugger_IO_OnInput();
            break;
        case IO_TEST_LOOP:
            data = testData;
            break;
        case IO_Terminal:
            data = SysTerminal_GetChar();
            break;
        case IO_Serial:
            data = KeyBoard_GetKey();
            break;
        default:
            SerialTerminal_WriteFormat("Unhandled IN address: %04X\r\n", ioInfo->Address);
            break;
    }
    
    // The Z80 Controller (design component) takes care of data bus direction
    D_Write(data);
}

/* [] END OF FILE */
