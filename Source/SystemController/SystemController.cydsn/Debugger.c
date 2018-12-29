#include "Debugger.h"
#include "InterruptController.h"
#include "InterruptProcessor.h"
#include "BusController.h"
#include "CpuController.h"

#include "stdlib.h"
#include "stdio.h"

/* Interaction between Debugger and the Z80
 * 
 *  - Z80 issues a HALT instruction and the Halt signal goes low (active) on the Z80.
 *  - Debugger has an interrupt on the Halt signal an the OnHaltInterrupt handler executes.
 *  - Debugger disables all (maskable) interrupts that can be issued to the Z80.
 *      We don't want the HALT instruction to continue because of a maskable interrupt.
 *  - The current address of the HALT instruction is read and checked against known bios addresses.
 *      Otherwise it is a program debug break point.
 *  - The Debugger triggers an NMI signal (active low) to execute the NMI interrupt handler in the Z80 bios.
 *  - There the Z80 code communicates with the PSoC Debugger using the debug IO port.
 *  
 *  - Z80=>Debugger: are we debugging? NMI could be trigger by something else.
 *      Debugger=>Z80: true/false
 *      Debugger=>Console: "Debugpoint at <address>"
 *  - Z80=>Debugger: dump all register values.
 *      Debugger=>Z80: ack/nack
 *      Debugger=>Console: print register values.
 *  
 * Thats it for now.
 */

typedef enum
{
    DebugCommand_None,
    DebugCommand_Pause,
    DebugCommand_DumpRegisters,
    
} DebugCommand;

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
    DebugState_ReceiveRegisters,
    DebugState_PrintRegisters,
    DebugState_Pause,
    
} DebugState;

typedef struct 
{
    uint16_t    AF;
    uint16_t    BC;
    uint16_t    DE;
    uint16_t    HL;
    uint16_t    IX;
    uint16_t    IY;
    uint16_t    SP;
    uint16_t    PC;
    uint16_t    AF2;
    uint16_t    BC2;
    uint16_t    DE2;
    uint16_t    HL2;
    
} CpuRegisters;

static DebugState DebuggerState;
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

void Debugger_RemoteBreak()
{
    if (CpuController_IsResetActive() || BusController_IsAcquired()) return;
    
    InterruptProcessor_Enable(false);
    
    DebuggerState = DebugState_Pause;
    DebuggerRegState = DebugRegister_None;
    
    // pulse NMI
    InterruptController_SetNmi(true);
    // wait for next M1 cycle (NMI-ack)
    while(CyPins_ReadPin(ExtBus_CpuM1) != 0);
    InterruptController_SetNmi(false);
}

void Debugger_RemoteContinue()
{
    DebuggerState = DebugState_None;
}

void Debugger_ReleaseCpuHalt()
{
    // pulse NMI
    InterruptController_SetNmi(true);
    // wait for halt to become inactive
    while(CyPins_ReadPin(ExtBus_CpuHalt) == 0);
    InterruptController_SetNmi(false);
}

void Debugger_ISR_OnHaltInterrupt()
{
    if (CpuController_IsResetActive() || BusController_IsAcquired()) return;
    
    InterruptProcessor_Enable(false);
    
    DebuggerState = DebugState_Handshake;
    DebuggerRegState = DebugRegister_None;
    
    Debugger_ReleaseCpuHalt();
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
    if (DebuggerState != DebugState_PrintRegisters) return;
    DebuggerState = DebugState_None;
    
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
    
    Debugger_FormatRegister16(buffer, "IX ", DebugCpuRegisters.IX);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "IY ", DebugCpuRegisters.IY);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "SP ", DebugCpuRegisters.SP);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "PC ", DebugCpuRegisters.PC);
    SysTerminal_PutString(buffer);
    SysTerminal_PutString(NewLine);
    
//    Debugger_FormatFlags(buffer, DebugCpuRegisters.AF2);
//    SysTerminal_PutString(buffer);
//    SysTerminal_PutString(NewLine);
    Debugger_FormatRegister16(buffer, "AF'", DebugCpuRegisters.AF2);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "BC'", DebugCpuRegisters.BC2);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "DE'", DebugCpuRegisters.DE2);
    SysTerminal_PutString(buffer);
    Debugger_FormatRegister16(buffer, "HL'", DebugCpuRegisters.HL2);
    SysTerminal_PutString(buffer);
    SysTerminal_PutString(NewLine);
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
            
            DebuggerState = DebugState_None;
            DebuggerRegState = DebugRegister_None;
            return true;    // last
            
        default:
            DebuggerState = DebugState_None;
            DebuggerRegState = DebugRegister_None;
            return false;    // recover...
    }
        
    // next register (part)
    DebuggerRegState++;
    
    return false;
}

uint8_t Debugger_IO_OnInput()
{
    uint8_t data = DebugCommand_None;
    
    switch(DebuggerState)
    {
        case DebugState_Handshake:
            data = DebugCommand_DumpRegisters;
            // next up: receive register values
            DebuggerState = DebugState_ReceiveRegisters;
            DebuggerRegState = DebugRegister_None;
            DebuggerRegState++;
            break;
        
        case DebugState_Pause:
            data = DebugCommand_Pause;
            break;
        
        case DebugState_None:
            InterruptProcessor_Enable(true);
            break;
            
        default:
            break;
    }
    
    return data;
}

void Debugger_IO_OnOutput(uint8 data)
{
    switch(DebuggerState)
    {
        case DebugState_ReceiveRegisters:
            if (Debugger_ReceiveRegisters(data))
            {
                DebuggerState = DebugState_PrintRegisters;
                InterruptProcessor_Enable(true);
            }
            break;
            
        default:
            break;
    }
}


/* [] END OF FILE */
