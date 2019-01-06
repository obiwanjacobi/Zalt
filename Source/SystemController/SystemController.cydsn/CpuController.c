#include "CpuController.h"

#define CPUMODE_MASK        ((1 << 5) | (1 << 6))
#define CPUDIVIDER_MASK     (4 + 8 + 16)

void CpuController_Init()
{
    CyPins_ClearPin(ExtBus_CpuRst);
    CyPins_SetPin(ExtBus_CpuClk);
    CyPins_SetPin(ExtBus_CpuWait);
    
    CpuController_SetClockDivider(4);
    CpuController_SetClockMode(CPUMODE_NORMAL_FAST);
    
    CPUCLK_SLOW_Start();
    CPUCLK_FAST_Start();
}

void CpuController_Reset(uint8_t active)
{
    if (active == 0)        
        CyPins_SetPin(ExtBus_CpuRst);
    else
        CyPins_ClearPin(ExtBus_CpuRst);
}

uint8_t CpuController_IsResetActive()
{
    return CyPins_ReadPin(ExtBus_CpuRst) == 0;
}

void CpuController_SetClockMode(uint8_t mode)
{
    uint8_t reg = SysCtrlReg_Read();
    reg &= ~CPUMODE_MASK;
    reg |= mode;
    SysCtrlReg_Write(reg);
}

uint8_t CpuController_GetClockMode()
{
    uint8_t reg = SysCtrlReg_Read();
    return (reg & CPUMODE_MASK);
}

void CpuController_SetClockDivider(uint8_t divider)
{
    divider = divider & 0x07;   // 3 bits
    
    uint8_t reg = SysCtrlReg_Read();
    reg &= ~CPUDIVIDER_MASK;
    reg |= (divider << 2);
    SysCtrlReg_Write(reg);
}

uint8_t CpuController_GetClockDivider()
{
    uint8_t reg = SysCtrlReg_Read();
    return (reg & CPUDIVIDER_MASK) >> 2;
}

void CpuController_PulseClock(uint16_t numberOfPulses)
{
    if (CpuController_GetClockMode() != CPUMODE_STEP) return;
    
    uint16_t i;
    for(i = 0; i < numberOfPulses; i++)
    {
        CyPins_SetPin(ExtBus_CpuClk);
        CyDelay(20);
        CyPins_ClearPin(ExtBus_CpuClk);
        CyDelay(20);
    }
}

uint8_t CpuController_WaitCycles(uint16_t numberOfCycles)
{
    uint8_t clkMode = CpuController_GetClockMode();
    
    if (clkMode & CPUMODE_NORMAL_FAST)
    {
        CyDelayCycles(CpuController_GetClockDivider() * numberOfCycles * CPUCLK_FAST_GetDividerRegister());
    }
    else if (clkMode & CPUMODE_NORMAL_SLOW)
    {
        CyDelayCycles(CpuController_GetClockDivider() * numberOfCycles * CPUCLK_SLOW_GetDividerRegister());
    }
    else
    {
        CyDelayCycles(CpuController_GetClockDivider() * numberOfCycles * 2);
    }
    
    return 1;
}

uint8_t CpuController_IsCpuHalted()
{
    return CyPins_ReadPin(ExtBus_CpuHalt) == 0;
}

/* [] END OF FILE */
