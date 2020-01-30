#include "Debugger.h"
#include "InterruptController.h"
#include "InterruptProcessor.h"
#include "BusController.h"
#include "CpuController.h"

#include "stdlib.h"
#include "stdio.h"

/* Interaction between Debugger and the Z80
 * 
 * Z80 initiates a debug interaction:
 *
 *  - Z80 issues a HALT instruction and the Halt signal goes low (active) on the Z80.
 *  - Debugger has an interrupt on the Halt signal an the OnHaltInterrupt handler executes.
 *  - Debugger disables all (maskable) interrupts that can be issued to the Z80.
 *      We don't want the HALT instruction to continue because of a maskable interrupt.
 *  - The Debugger triggers an NMI signal (active low) to execute the NMI interrupt handler in the Z80 bios.
 *  - There the Z80 code communicates with the PSoC Debugger using the debug IO port.
 *  
 *  - Z80=>Debugger: what do you want me to do?/are we debugging? (NMI could be trigger by something else.)
 *      Debugger=>Z80: give me the debug status
 *      Z80=>Debugger: debug status
 *  Breakpoint:
 *      Debugger=>Z80: dump regs
 *  - Z80=>Debugger: dump all register values.
 *      Debugger=>Z80: ack/nack for each reg value received
 *      Debugger=>Console: print register values.
 *  - Debugger=>Z80: paused/sleep
 *      Z80: HALT (again)
 *      Debugger=>Console: "paused at breakpoint"
 *      <user> issues commands in console
 *  Sleep:
 *      Debugger=>Z80: continue to sleep
 *  Program End:
 *      Debugger=>Console: "Program Finished"
 *      <user> issues commands in console
 *
 * Thats it for now.
 */

typedef enum
{
    DebugCommand_None,
    DebugCommand_Pause,
    DebugCommand_DumpRegisters,
    DebugCommand_GetStatus,
    
} DebugCommand;

typedef enum
{
    RemoteDebugStatus_None,
    RemoteDebugStatus_Breakpoint,
    RemoteDebugStatus_Sleep,
    RemoteDebugStatus_UnhandledInterrupt,
    RemoteDebugStatus_IllegalTrap,
    RemoteDebugStatus_ProgramFinished = 0xFF
    
} RemoteDebugStatus;

typedef enum 
{
    DebugRegister_None,
    DebugRegister_F, 
    DebugRegister_A, 
    DebugRegister_C, 
    DebugRegister_B,
    DebugRegister_E, 
    DebugRegister_D, 
    DebugRegister_L, 
    DebugRegister_H, 
    DebugRegister_IXl, 
    DebugRegister_IXh, 
    DebugRegister_IYl, 
    DebugRegister_IYh,
    DebugRegister_SPl, 
    DebugRegister_SPh,
    DebugRegister_PCl,
    DebugRegister_PCh,
    DebugRegister_F2, 
    DebugRegister_A2, 
    DebugRegister_C2, 
    DebugRegister_B2, 
    DebugRegister_E2, 
    DebugRegister_D2, 
    DebugRegister_L2,
    DebugRegister_H2,
    DebugRegister_Last
    
} DebugRegister;

typedef enum
{
    DebugState_None,
    DebugState_Handshake,
    DebugState_GetStatus,
    DebugState_GetRegisters,
    DebugState_ReceivingRegisters,
    DebugState_PrintRegisters,
    DebugState_Pause,
    
} DebugState;

typedef struct 
{
    uint16_t AF;
    uint16_t BC;
    uint16_t DE;
    uint16_t HL;
    uint16_t IX;
    uint16_t IY;
    uint16_t SP;
    uint16_t PC;
    uint16_t AF2;
    uint16_t BC2;
    uint16_t DE2;
    uint16_t HL2;
    
} CpuRegisters;

static DebugState DebuggerState;
static RemoteDebugStatus RemoteDebuggerStatus;
static DebugRegister DebuggerRegState;
static CpuRegisters DebugCpuRegisters;

void Debugger_Init()
{
    DebuggerState = DebugState_None;
    DebuggerRegState = DebugRegister_None;
    memset(&DebugCpuRegisters, 0, sizeof(DebugCpuRegisters));
    
    InterruptController_SetNmi(false);
    ISR_HALT_StartEx(Debugger_ISR_OnHaltInterrupt);
}

// returns very quick (M1-cycle)
void Debugger_PulseNMI()
{
    // pulse NMI
    InterruptController_SetNmi(true);
    // wait for next M1 cycle (NMI-ack)
    while(ReadNotPin(ExtBus_CpuM1) != Active);
    InterruptController_SetNmi(false);
}

// waits until HALT is released
void Debugger_ReleaseCpuHalt()
{
    // pulse NMI
    InterruptController_SetNmi(true);
    // wait for halt to become inactive
    while(ReadNotPin(ExtBus_CpuHalt) == Active);
    InterruptController_SetNmi(false);
}

void Debugger_RemoteBreak()
{
    if (CpuController_IsResetActive() || BusController_IsAcquiring()) return;
    
    InterruptProcessor_Enable(false);
    
    DebuggerState = DebugState_Pause;
    DebuggerRegState = DebugRegister_None;
    
    Debugger_PulseNMI();
}

void Debugger_RemoteContinue()
{
    if (DebuggerState != DebugState_None)
    {
        DebuggerState = DebugState_None;
        Debugger_ReleaseCpuHalt();
    }
}

void Debugger_ReportRegisters()
{
    if (CpuController_IsResetActive() || BusController_IsAcquiring()) return;
    
    if (DebuggerState == DebugState_None)
    {
        InterruptProcessor_Enable(false);
    }
    
    DebuggerState = DebugState_GetRegisters;
    DebuggerRegState = DebugRegister_None;

    Debugger_PulseNMI();
}

void Debugger_ISR_OnHaltInterrupt()
{
    if (CpuController_IsResetActive() || BusController_IsAcquiring()) return;
    
    // halt can also trigger during a debug session
    if (DebuggerState == DebugState_None)
    {
        InterruptProcessor_Enable(false);
    
        DebuggerState = DebugState_Handshake;
        DebuggerRegState = DebugRegister_None;
    
        Debugger_ReleaseCpuHalt();
    }
}

void Debugger_FormatRegister16(char* buffer, const char* reg, uint16_t value)
{
    sprintf(buffer, "%s=%04Xh ", reg, value);
}

// Z80 flag masks
#define flagS 1 << 7
#define flagZ 1 << 6
// #define flagH 1 << 4
#define flagPV 1 << 2
#define flagN 1 << 1
#define flagC 1 << 0

void Debugger_FormatFlags(char* buffer, uint16_t value)
{
    buffer[0] = 0;
    
    bool_t z = ((value & flagZ) > 0);
    bool_t c = ((value & flagC) > 0);
    // bool_t h = ((value & flagH) > 0);
    bool_t pv = ((value & flagPV) > 0);
    bool_t n = ((value & flagN) > 0);
    bool_t s = ((value & flagS) > 0);
    
    if (!z) strcat(buffer, "N");
    strcat(buffer, "Z,");
    
    if (!c) strcat(buffer, "N");
    strcat(buffer, "C,");
    
    if (s) strcat(buffer, "-,"); else strcat(buffer, "+,");
    if (pv) strcat(buffer, "O/E,"); else strcat(buffer, "NO/O,");
    if (n) strcat(buffer, "[Add]"); else strcat(buffer, "[Sub]");
}


static const char* NewLine = "\r\n";

void Debugger_PrintRegisterValues()
{    
    SysTerminal_PutString(NewLine);
    
    char buffer[16];
    Debugger_FormatFlags(buffer, DebugCpuRegisters.AF);
    SysTerminal_PutString(buffer);
    SysTerminal_PutString(NewLine);
    
    Debugger_FormatRegister16(buffer, "AF ", DebugCpuRegisters.AF);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "BC ", DebugCpuRegisters.BC);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "DE ", DebugCpuRegisters.DE);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "HL ", DebugCpuRegisters.HL);
    SysTerminal_PutString(buffer);
    SysTerminal_PutString(NewLine);
    
    Debugger_FormatRegister16(buffer, "AF'", DebugCpuRegisters.AF2);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "BC'", DebugCpuRegisters.BC2);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "DE'", DebugCpuRegisters.DE2);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "HL'", DebugCpuRegisters.HL2);
    SysTerminal_PutString(buffer);
    SysTerminal_PutString(NewLine);
    
    Debugger_FormatRegister16(buffer, "IX ", DebugCpuRegisters.IX);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "IY ", DebugCpuRegisters.IY);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "SP ", DebugCpuRegisters.SP);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "PC ", DebugCpuRegisters.PC);
    SysTerminal_PutString(buffer);
    SysTerminal_PutString(NewLine);
}

void Debugger_PrintStatus()
{
    switch(RemoteDebuggerStatus)
    {
        case RemoteDebugStatus_Breakpoint:
            SysTerminal_PutString("breakpoint");
            break;
            
        case RemoteDebugStatus_IllegalTrap:
            SysTerminal_PutString("illegal opcode execution ($FF)");
            break;
            
        case RemoteDebugStatus_ProgramFinished:
            SysTerminal_PutString("program finished");
            break;

        case RemoteDebugStatus_UnhandledInterrupt:
            SysTerminal_PutString("unhandled interrupt");
            break;
        
        default:
        case RemoteDebugStatus_Sleep:
            break;
    }
}

static DebugState _messageShown = 0;

void Debugger_Print()
{
    switch(DebuggerState)
    {
        case DebugState_PrintRegisters:
            Debugger_PrintRegisterValues();
            DebuggerState = DebugState_Pause;
            break;
        
        case DebugState_Pause:
            if (_messageShown != DebugState_Pause)
            {
                SysTerminal_PutString(NewLine);
                SysTerminal_PutString("- CPU Paused: ");
                Debugger_PrintStatus();
                SysTerminal_PutString(NewLine);
                _messageShown = DebugState_Pause;
            }
            break;
            
        case DebugState_None:
            if (_messageShown != DebugState_None)
            {
                SysTerminal_PutString("- CPU running");
                SysTerminal_PutString(NewLine);
                _messageShown = DebugState_None;
            }
            break;
        
        default:
            break;
    }
}

#define MakeMsb(b) b << 8

// returns true when done
bool_t Debugger_ReceiveRegisters(uint8_t data)
{
    switch(DebuggerRegState)
    {
        case DebugRegister_F:
            DebugCpuRegisters.AF = data;
            break;
        case DebugRegister_A:
            DebugCpuRegisters.AF |= MakeMsb(data);
            break;
        case DebugRegister_C:
            DebugCpuRegisters.BC = data;
            break;
        case DebugRegister_B:
            DebugCpuRegisters.BC |= MakeMsb(data);
            break;
        case DebugRegister_E:
            DebugCpuRegisters.DE = data;
            break;
        case DebugRegister_D:
            DebugCpuRegisters.DE |= MakeMsb(data);
            break;
        case DebugRegister_L:
            DebugCpuRegisters.HL = data;
            break;
        case DebugRegister_H:
            DebugCpuRegisters.HL |= MakeMsb(data);
            break;
        case DebugRegister_IXl:
            DebugCpuRegisters.IX = data;
            break;
        case DebugRegister_IXh:
            DebugCpuRegisters.IX |= MakeMsb(data);
            break;
        case DebugRegister_IYl:
            DebugCpuRegisters.IY = data;
            break;
        case DebugRegister_IYh:
            DebugCpuRegisters.IY |= MakeMsb(data);
            break;
        case DebugRegister_SPl:
            DebugCpuRegisters.SP = data;
            break;
        case DebugRegister_SPh:
            DebugCpuRegisters.SP |= MakeMsb(data);
            break;
        case DebugRegister_PCl:
            DebugCpuRegisters.PC = data;
            break;
        case DebugRegister_PCh:
            DebugCpuRegisters.PC |= MakeMsb(data);
            break;
        case DebugRegister_F2:
            DebugCpuRegisters.AF2 = data;
            break;
        case DebugRegister_A2:
            DebugCpuRegisters.AF2 |= MakeMsb(data);
            break;
        case DebugRegister_C2:
            DebugCpuRegisters.BC2 = data;
            break;
        case DebugRegister_B2:
            DebugCpuRegisters.BC2 |= MakeMsb(data);
            break;
        case DebugRegister_E2:
            DebugCpuRegisters.DE2 = data;
            break;
        case DebugRegister_D2:
            DebugCpuRegisters.DE2 |= MakeMsb(data);
            break;
        case DebugRegister_L2:
            DebugCpuRegisters.HL2 = data;
            break;
        case DebugRegister_H2:
            DebugCpuRegisters.HL2 |= MakeMsb(data);
            
            DebuggerRegState = DebugRegister_None;
            return true;    // last
            
        default:
            DebuggerRegState = DebugRegister_None;
            return false;    // recover...
    }
        
    // next register (part)
    DebuggerRegState++;
    
    return false;
}

void DetermineNextState()
{
    switch(RemoteDebuggerStatus)
    {
        case RemoteDebugStatus_Breakpoint:
            DebuggerState = DebugState_GetRegisters;
            break;
        case RemoteDebugStatus_IllegalTrap:
            DebuggerState = DebugState_Pause;
            break;
        case RemoteDebugStatus_ProgramFinished:
            DebuggerState = DebugState_Pause;
            break;
        case RemoteDebugStatus_Sleep:
            DebuggerState = DebugState_Pause;
            break;
        default:
        case RemoteDebugStatus_None:
            DebuggerState = DebugState_None;
            break;
    }
}

uint8_t Debugger_IO_OnInput()
{
    uint8_t data = DebugCommand_Pause;
    
    switch(DebuggerState)
    {
        case DebugState_Handshake:
            data = DebugCommand_GetStatus;
            DebuggerState = DebugState_GetStatus;
            break;
        
        case DebugState_GetRegisters:
            data = DebugCommand_DumpRegisters;
            // next up: receive register values
            DebuggerState = DebugState_ReceivingRegisters;
            DebuggerRegState = DebugRegister_None;
            DebuggerRegState++;
            break;
                
        case DebugState_None:
            data = DebugCommand_None;
            InterruptProcessor_Enable(true);
            break;
            
        default:
            // data = DebugCommand_Pause;
            break;
    }
    
    return data;
}

void Debugger_IO_OnOutput(uint8 data)
{
    switch(DebuggerState)
    {
        case DebugState_GetStatus:
            RemoteDebuggerStatus = data;
            DetermineNextState();
            break;
        case DebugState_ReceivingRegisters:
            if (Debugger_ReceiveRegisters(data))
                DebuggerState = DebugState_PrintRegisters;
            break;
        
        default:
            break;
    }
}


/* [] END OF FILE */
