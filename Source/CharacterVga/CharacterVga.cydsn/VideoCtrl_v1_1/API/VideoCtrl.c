/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/

// Include the header of our instance, all the needed definitions will be there.
#include "`$INSTANCE_NAME`.h"  

// Initialize the component
void  `$INSTANCE_NAME`_Init(void) `=ReentrantKeil($INSTANCE_NAME . "_Init")`
{
	// Store the current interrupt state here.
    uint8 interruptState;

    // Set both the Horizontal and Vertical FIFOs (F0 & F1) in single buffer mode.
    // Pretty much this just stops the FIFOs from changing to the next entry
    // making it act just like a register.
    
    // Enter critical section
    interruptState = CyEnterCriticalSection();
    // Set the Count Start bit for both FIFOS (lower two bits)
    // On both the Horizontal and Vertical DataPaths.
    `$INSTANCE_NAME`_H_DP_AUX_CTL_REG |= (0x03);
    `$INSTANCE_NAME`_V_DP_AUX_CTL_REG |= (0x03);
    // Exit critical section
    CyExitCriticalSection(interruptState);
    
    // Setup all the UDB Data registers and FIFOS
    // For both the Horizontal and Vertical UDBs
    `$INSTANCE_NAME`_H_FP_REG  = `$INSTANCE_NAME`_H_FP;
    `$INSTANCE_NAME`_H_SP_REG  = `$INSTANCE_NAME`_H_SP;
    `$INSTANCE_NAME`_H_BP_REG  = `$INSTANCE_NAME`_H_BP;
    `$INSTANCE_NAME`_H_VIS_REG = `$INSTANCE_NAME`_H_VIS;
    `$INSTANCE_NAME`_V_FP_REG  = `$INSTANCE_NAME`_V_FP;
    `$INSTANCE_NAME`_V_SP_REG  = `$INSTANCE_NAME`_V_SP;
    `$INSTANCE_NAME`_V_BP_REG  = `$INSTANCE_NAME`_V_BP;
    `$INSTANCE_NAME`_V_VIS_REG = `$INSTANCE_NAME`_V_VIS;
}

/* [] END OF FILE */
