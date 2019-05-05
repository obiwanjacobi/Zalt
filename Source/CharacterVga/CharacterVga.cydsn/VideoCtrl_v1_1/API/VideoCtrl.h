#include <cytypes.h>
#include <cyfitter.h>
#include <CyLib.h>

#if !defined(`$INSTANCE_NAME`_H)
#define `$INSTANCE_NAME`_H

// Don't adjust the existing resolution parameters definitions
// used in main.c so this updated version is compatible with the previous one.
#define `$INSTANCE_NAME`_H_RES `$HorizVisibleArea`
#define `$INSTANCE_NAME`_V_RES `$VertVisibleArea`

// Instead make a new VIS definition for the UDB configuration
// The API will use these defines internally to set the UDBs
// Use the parameters as unsigned values.
// Adjust the visible parameters by dividing them by 8 minus 1 since it's 0 based
// This is done so we can fit them into the 8 bit single buffer FIFO
#define `$INSTANCE_NAME`_H_VIS ((`$HorizVisibleArea`u>>3u)-1u)
#define `$INSTANCE_NAME`_V_VIS ((`$VertVisibleArea`u>>3u)-1u)
// The rest will fit in the 8 bits registers/FIFOs so just adjust them to be 0 based.
#define `$INSTANCE_NAME`_H_FP  (`$HorizFrontPorch`u-1u)
#define `$INSTANCE_NAME`_H_SP  (`$HorizSyncPulse`u-1u)
#define `$INSTANCE_NAME`_H_BP  (`$HorizBackPorch`u-1u)
#define `$INSTANCE_NAME`_V_FP  (`$VertFrontPorch`u-1u)
#define `$INSTANCE_NAME`_V_SP  (`$VertSyncPulse`u-1u)
#define `$INSTANCE_NAME`_V_BP  (`$VertBackPorch`u-1u)

// We don't need these ones yet.
//#define `$INSTANCE_NAME`_H_DMA `$HorizDMAAdjust`
//#define `$INSTANCE_NAME`_H_PP `$HorizPulsePositive`
//#define `$INSTANCE_NAME`_V_PP `$VertPulsePositive`

// Define the Horizontal and Vertical access to the UDB various registers and FIFOs
// Add defines to access them both directly or as a pointer
// All of these are in cyfitter.h but we want to give them a more comprehensive name.

// Define the access to the UDB Auxiliary Control Register needed to set the FIFOs in single buffer mode
#define `$INSTANCE_NAME`_H_DP_AUX_CTL_REG   (*(reg8 *) `$INSTANCE_NAME`_HorizDP_u0__DP_AUX_CTL_REG)
#define `$INSTANCE_NAME`_H_DP_AUX_CTL_PTR   ( (reg8 *) `$INSTANCE_NAME`_HorizDP_u0__DP_AUX_CTL_REG)
#define `$INSTANCE_NAME`_V_DP_AUX_CTL_REG   (*(reg8 *) `$INSTANCE_NAME`_VertDP_u0__DP_AUX_CTL_REG)
#define `$INSTANCE_NAME`_V_DP_AUX_CTL_PTR   ( (reg8 *) `$INSTANCE_NAME`_VertDP_u0__DP_AUX_CTL_REG)

// Define access to the Front Porch, Sync Pulse, Back Porch and Visible.
// So they match where our ALU expects those to be at as stated in our Verilog implementation.
//    localparam EXEC_LOAD_FP   = 3'd1;   // Load FP into D0
//    localparam EXEC_LOAD_SYNC = 3'd2;   // Load Sync into D1
//    localparam EXEC_LOAD_BP   = 3'd3;   // Load BP into F0
//    localparam EXEC_LOAD_VIS  = 3'd4;   // Load Vis into F1
#define `$INSTANCE_NAME`_H_FP_REG           (*(reg8 *) `$INSTANCE_NAME`_HorizDP_u0__D0_REG)
#define `$INSTANCE_NAME`_H_FP_PTR           ( (reg8 *) `$INSTANCE_NAME`_HorizDP_u0__D0_REG)
#define `$INSTANCE_NAME`_H_SP_REG           (*(reg8 *) `$INSTANCE_NAME`_HorizDP_u0__D1_REG)
#define `$INSTANCE_NAME`_H_SP_PTR           ( (reg8 *) `$INSTANCE_NAME`_HorizDP_u0__D1_REG)
#define `$INSTANCE_NAME`_H_BP_REG           (*(reg8 *) `$INSTANCE_NAME`_HorizDP_u0__F0_REG)
#define `$INSTANCE_NAME`_H_BP_PTR           ( (reg8 *) `$INSTANCE_NAME`_HorizDP_u0__F0_REG)
#define `$INSTANCE_NAME`_H_VIS_REG          (*(reg8 *) `$INSTANCE_NAME`_HorizDP_u0__F1_REG)
#define `$INSTANCE_NAME`_H_VIS_PTR          ( (reg8 *) `$INSTANCE_NAME`_HorizDP_u0__F1_REG)
#define `$INSTANCE_NAME`_V_FP_REG           (*(reg8 *) `$INSTANCE_NAME`_VertDP_u0__D0_REG)
#define `$INSTANCE_NAME`_V_FP_PTR           ( (reg8 *) `$INSTANCE_NAME`_VertDP_u0__D0_REG)
#define `$INSTANCE_NAME`_V_SP_REG           (*(reg8 *) `$INSTANCE_NAME`_VertDP_u0__D1_REG)
#define `$INSTANCE_NAME`_V_SP_PTR           ( (reg8 *) `$INSTANCE_NAME`_VertDP_u0__D1_REG)
#define `$INSTANCE_NAME`_V_BP_REG           (*(reg8 *) `$INSTANCE_NAME`_VertDP_u0__F0_REG)
#define `$INSTANCE_NAME`_V_BP_PTR           ( (reg8 *) `$INSTANCE_NAME`_VertDP_u0__F0_REG)
#define `$INSTANCE_NAME`_V_VIS_REG          (*(reg8 *) `$INSTANCE_NAME`_VertDP_u0__F1_REG)
#define `$INSTANCE_NAME`_V_VIS_PTR          ( (reg8 *) `$INSTANCE_NAME`_VertDP_u0__F1_REG)

// Function Prototype to Initialze the UDBs
// We will follow the convention of using _Init as other components do
// And make it PSoC3 compatible (for Keil)
void  `$INSTANCE_NAME`_Init(void) `=ReentrantKeil($INSTANCE_NAME . "_Init")`;

#endif