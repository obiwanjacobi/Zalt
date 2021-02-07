
#include <project.h>
#include "SerialTerminal.h"
#include "BusController.h"
#include "CpuController.h"
#include "MemoryController.h"
#include "MemoryManager.h"
#include "IOProcessor.h"
#include "InterruptProcessor.h"
#include "Debugger.h"
// devices
#include "UsbProcessor.h"
#include "KeyBoard.h"
#include "IdeController.h"

static SerialTerminal g_serialTerminal;

void Init()
{
    SerialTerminal_Start(&g_serialTerminal);
    BusController_Init();
    CpuController_Init();
    IOProcessor_Init();
    InterruptProcessor_Init();
}

void InitWithInterrupts()
{
    MemoryManager_Init();
    KeyBoard_Init();
    Debugger_Init();
}

uint8_t _haltMessageDisplayed = 0;
void Debug_DisplayHaltInfo()
{
    if (ReadNotPin(ExtBus_CpuHalt) == Active)
    {
        if (_haltMessageDisplayed == 0)
        {
            SerialTerminal_WriteLine(NULL);
            SerialTerminal_WriteLine("- CPU Paused.");
            _haltMessageDisplayed = 1;
            
            // when cpu is halted reactivate the terminal
            if (g_serialTerminal.IsActive == 0)
            {
                // reset cpu and related sysctrl hardware state
                CpuController_Reset(1);
                IOProcessor_ReleaseCpuWait();
                
                g_serialTerminal.IsActive = 1;
            }
        }
    }
    else
    {
        if (_haltMessageDisplayed && 
            CpuController_IsResetActive() == false)
        {
            SerialTerminal_WriteLine("- CPU Continued.");
        }
        _haltMessageDisplayed = 0;
    }
}

void Test_Ide()
{
    DriveBlock logicalBlock;
    
    if (BusController_Acquire()) return;
    
    if (!IdeController_Init() ||
        !IdeController_GetInfo(&logicalBlock))
    {
        uint8_t err = IdeController_GetError();
        SerialTerminal_WriteFormat("IDE Error: %02X", err);
        SerialTerminal_WriteLine(NULL);
    }
    else
    {
        SerialTerminal_WriteLine(logicalBlock.DriveInfo.ModelNumber);
    }
    BusController_Release();
}

int main()
{
    Init();
    CyGlobalIntEnable; /* Enable global interrupts. */
    InitWithInterrupts();
    
    //UsbProcessor_Start();
    
    // echo back that the system is ready but halted.
    SerialTerminal_WriteLine("Ready (Suspended).");
    SerialTerminal_WritePrompt();
    
    
    for(;;)
    {
        //UsbProcessor_Receive();
        //Debugger_Print();
        
        if (g_serialTerminal.IsActive)
        {
            // pump incoming data to handlers
            SerialTerminal_ReceiveCommand(&g_serialTerminal);
        }
        
        //Debug_DisplayHaltInfo();
    }
}

/* [] END OF FILE */
