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
#include "KeyBoard.h"

static SerialTerminal g_serialTerminal;

int main()
{
    CpuController_Init();
    BusController_Init();
    MemoryManager_Init();
    IOProcessor_Init();
    InterruptProcessor_Init();
    Debugger_Init();
    
    SerialTerminal_Start(&g_serialTerminal);
    
    CyGlobalIntEnable; /* Enable global interrupts. */
    
    // echo back that the system is ready but halted.
    SerialTerminal_WriteLine("Ready (Suspended).");
    
    //uint8_t haltMessageDisplayed = 0;
    
    for(;;)
    {
        Debugger_PrintRegisterValues();
        
        if (g_serialTerminal.IsActive)
        {
            // pump incoming data to handlers
            SerialTerminal_ReceiveCommand(&g_serialTerminal);
        }
        else
        {
            // todo: check for buffer full
            // Z80 is not reading them quick enough
            
            if(SysTerminal_GetRxBufferSize() > 0)
                KeyBoard_Signal();
        }
        
        // temp
        /*if (CyPins_ReadPin(ExtBus_CpuHalt) == 0)
        {
            if (haltMessageDisplayed == 0)
            {
                SerialTerminal_WriteLine(NULL);
                SerialTerminal_WriteLine("- CPU Paused.");
                haltMessageDisplayed = 1;
                
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
            if (haltMessageDisplayed && 
                CpuController_IsResetActive() == 0)
            {
                SerialTerminal_WriteLine("- CPU Continued.");
            }
            haltMessageDisplayed = 0;
        }*/
    }
}

/* [] END OF FILE */
