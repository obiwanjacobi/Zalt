#ifndef __CPUCONTROLLER_H__
#define __CPUCONTROLLER_H__
    
#include <project.h>

void CpuController_Reset(uint8_t active);
inline uint8_t CpuController_IsResetActive();

#define CPUMODE_NORMAL_SLOW (1<<5)
#define CPUMODE_NORMAL_FAST ((1<<5)|(1<<6))
#define CPUMODE_STEP        0

void CpuController_Init();

void CpuController_SetClockMode(uint8_t mode);
uint8_t CpuController_GetClockMode();
void CpuController_SetClockDivider(uint8_t divider);
uint8_t CpuController_GetClockDivider();
void CpuController_PulseClock(uint16_t numberOfPulses);

uint8_t CpuController_WaitCycles(uint16_t numberOfCycles);

inline uint8_t CpuController_IsCpuHalted();

#endif //__CPUCONTROLLER_H__

/* [] END OF FILE */
