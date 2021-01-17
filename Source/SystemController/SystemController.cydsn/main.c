
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

void init()
{
    SerialTerminal_Start(&g_serialTerminal);
    BusController_Init();
    CpuController_Init();
    IOProcessor_Init();
    MemoryManager_Init();
    InterruptProcessor_Init();
    KeyBoard_Init();
    Debugger_Init();
}

//DriveInfo driveInfo;
//volatile uint8_t err = 0;

int main()
{
    CyGlobalIntEnable; /* Enable global interrupts. */
    
    init();
    
//    BusController_Acquire();
//    if (!IdeController_Init() ||
//        !IdeController_GetInfo(&driveInfo))
//    {
//        err = IdeController_GetError();
//    }
//    BusController_Release();
    
    //UsbProcessor_Start();
    
    // echo back that the system is ready but halted.
    SerialTerminal_WriteLine("Ready (Suspended).");
    SerialTerminal_WritePrompt();
    
//    uint8_t haltMessageDisplayed = 0;
    
    for(;;)
    {
        //UsbProcessor_Receive();
        Debugger_Print();
        
        if (g_serialTerminal.IsActive)
        {
            // pump incoming data to handlers
            SerialTerminal_ReceiveCommand(&g_serialTerminal);
        }
        
        // temp
//        if (ReadNotPin(ExtBus_CpuHalt) == Active)
//        {
//            if (haltMessageDisplayed == 0)
//            {
//                SerialTerminal_WriteLine(NULL);
//                SerialTerminal_WriteLine("- CPU Paused.");
//                haltMessageDisplayed = 1;
//                
//                // when cpu is halted reactivate the terminal
//                if (g_serialTerminal.IsActive == 0)
//                {
//                    // reset cpu and related sysctrl hardware state
//                    CpuController_Reset(1);
//                    IOProcessor_ReleaseCpuWait();
//                    
//                    g_serialTerminal.IsActive = 1;
//                }
//            }
//        }
//        else
//        {
//            if (haltMessageDisplayed && 
//                CpuController_IsResetActive() == 0)
//            {
//                SerialTerminal_WriteLine("- CPU Continued.");
//            }
//            haltMessageDisplayed = 0;
//        }
    }
}

/* [] END OF FILE */
