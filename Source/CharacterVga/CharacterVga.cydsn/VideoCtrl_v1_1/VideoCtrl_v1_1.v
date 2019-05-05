
//`#start header` -- edit after this line, do not edit this line
// ========================================
//
// Copyright YOUR COMPANY, THE YEAR
// All Rights Reserved
// UNPUBLISHED, LICENSED SOFTWARE.
//
// CONFIDENTIAL AND PROPRIETARY INFORMATION
// WHICH IS THE PROPERTY OF your company.
//
// ========================================
`include "cypress.v"
//`#end` -- edit above this line, do not edit this line
// Generated on 05/04/2019 at 16:59
// Component: VideoCtrl_v1_1
module VideoCtrl_v1_1 (
	output  blank_n,
	output  hsync,
	output [9:0] line_cnt,
	output  line_dma,
	output  vsync,
	input   clock,
	input   reset
);
	parameter HorizBackPorch = 88;
	parameter HorizDMAAdjust = 16;
	parameter HorizFrontPorch = 40;
	parameter HorizPulsePositive = 1;
	parameter HorizSyncPulse = 128;
	parameter HorizVisibleArea = 800;
	parameter VertBackPorch = 23;
	parameter VertFrontPorch = 1;
	parameter VertPulsePositive = 1;
	parameter VertSyncPulse = 4;
	parameter VertVisibleArea = 600;

//`#start body` -- edit after this line, do not edit this line

    localparam DMA_COUNT = 7'd72;

    // Horizontal and Vertical states for Finate State Machine (FSM).
    localparam STATE_FP   = 4'd0;
    localparam STATE_SYNC = 4'd1;
    localparam STATE_BP   = 4'd2;
    localparam STATE_VIS  = 4'd3;
    localparam STATE_VIS1 = 4'd4;
    localparam STATE_VIS2 = 4'd5;
    localparam STATE_VIS3 = 4'd6;
    localparam STATE_VIS4 = 4'd7;
    localparam STATE_VIS5 = 4'd8;
    localparam STATE_VIS6 = 4'd9;
    localparam STATE_VIS7 = 4'd10;
    
    // Horizontal and Vertical ALU instruction addresses
    localparam EXEC_NOP       = 3'd0;   // Pass
    localparam EXEC_LOAD_FP   = 3'd1;   // Load FP into D0
    localparam EXEC_LOAD_SYNC = 3'd2;   // Load Sync into D1
    localparam EXEC_LOAD_BP   = 3'd3;   // Load BP into F0
    localparam EXEC_LOAD_VIS  = 3'd4;   // Load Vis into F1
    localparam EXEC_DEC_A0    = 3'd5;   // Decrement A0
    localparam EXEC_DEC_A1    = 3'd6;   // Decrement A1
 
    // Horizontal and Vertical state registers.
    reg [3:0] h_state_r;
    reg [3:0] v_state_r;

    // These signals will let us know if A0 or A1 have reached 0 after
    // executing the horizontal or vertical datapaths.
    wire h_count_z0;
    wire h_count_z1;
    wire v_count_z0;
    wire v_count_z1;
    
    // ALU instruction address to execute for the Horizonatal and Vertical FSM.
    reg [2:0] h_cs_addr;
    reg [2:0] v_cs_addr;

    // Total line count output register to make it accessible to native code, this will only show the last visible line.
    reg [9:0] line_cnt_r;

    // The Horizontal FSM controls when the Vertical FSM can proceed with the next state
    // by controling the line counter using this register.
    reg newline_r;
    
    // We need enable our udb clock
    wire udb_clock;
    cy_psoc3_udb_clock_enable_v1_0 #(.sync_mode (`TRUE)) udb_clock_sync
    (
        .clock_in (clock),
        .enable (1'b1),
        .clock_out (udb_clock)
    );
    
    // Count7 wires to control when line_dma will fire up.
    wire c7_reset;
    wire c7_en;
    wire [6:0] c7_cnt;
    wire c7_tc;

    // Horizontal section
    always@(posedge udb_clock)
    begin
        if(reset)
        begin
            // Initialize horizontal set to VIS7
            // Since h_count_z1 is 0 it will execute EXEC_LOAD_FP and go to STATE_FP
            h_state_r <= STATE_VIS7;
//            c7_reset <= 1'b1;
//            c7_cnt <= 7'd0;
//            c7_en <=1'b0;
//            c7_tc <=1'b0;
        end
        else
        begin
            // Horizontal FSM
            case (h_state_r)
                STATE_FP:
                begin
                    // Check if we are still within the Horizontal Front Porch
                    // FP uses D0 to hold the value and A0 as the current countdown.
                    if (h_count_z0)
                    begin
                        // If we reached the end of the Front Porch.
                        // Jump into the Sync State.
                        h_state_r <= STATE_SYNC;
                    end
                end
                STATE_SYNC:
                begin
                    // Check if we are still within the Horizontal Sync Pulse
                    // Sync Pulse uses D1 to hold the value and A1 as the current countdown.
                    if (h_count_z1)
                    begin
                        // If we reached the end of the Sync Pulse.
                        // Jump into the Back Porch State.
                        h_state_r <= STATE_BP;
                        // Start our count7 to trigger line_dma
                    end
                end
                STATE_BP:
                begin
                    // Check if we are still within the Horizontal Back Porch
                    // BP uses F0 to hold the value and A0 as the current counter.
                    if (h_count_z0)
                    begin
                        // If we reached the end of the Back Porch.
                        // Jump into the Visible State.
                        h_state_r <= STATE_VIS;
                    end
                end
                // Go through 8 clocks before checking if we are done.
                STATE_VIS:
                begin
                    h_state_r <= STATE_VIS1;
                end
                STATE_VIS1:
                    h_state_r <= STATE_VIS2;
                STATE_VIS2:
                    h_state_r <= STATE_VIS3;
                STATE_VIS3:
                    h_state_r <= STATE_VIS4;
                STATE_VIS4:
                    h_state_r <= STATE_VIS5;
                STATE_VIS5:
                    h_state_r <= STATE_VIS6;
                STATE_VIS6:
                    h_state_r <= STATE_VIS7;
                STATE_VIS7:
                begin
                    // Check if we are still within the Horizontal Visible state
                    // Visible Area uses F1 to hold the value and A1 as the current counter.
                    if (h_count_z1)
                    begin
                        // If we reached the end of the Visible state.
                        // Reset the counter and jump into the Front Porch State.
                        h_state_r <= STATE_FP;
                    end
                end
                default:
                begin
                    // We should never end up here.
                    // Set initial state set to VIS7
                    // Since h_count_z1 is 0 it will execute EXEC_LOAD_FP and go to STATE_FP
                    h_state_r <= STATE_VIS7;
                end
            endcase
        end
        // Enable/Dissable Vertical FSM if we transitioned
        // from STATE_VIS7 to STATE_FP then enable the Vertical FSM
        // that happens when we are in STATE_FP and A0 has reached 0 so h_count_z1 is still true.
        newline_r <= (h_state_r == STATE_FP)&h_count_z1;
        // Use a count7 instance for the HorizDMAAdjust triggered when we start the STATE_BP
//        c7_reset <= (h_state_r == STATE_BP)&h_count_z1;
//        c7_en <= (h_state_r == STATE_BP);
    end
    
    // blocking horizontal section
    // We can't combined blocking and non blocking assigments
    always@(posedge udb_clock)
    begin
        case(h_state_r)
            STATE_FP:
            begin
                // If A0 reached 0
                if (h_count_z0)
                begin
                    // Instruct ALU to load Sync
                    h_cs_addr = EXEC_LOAD_SYNC;
                end
                else
                begin
                    // Otherwise just decrement A0
                    h_cs_addr = EXEC_DEC_A0;
                end
            end
            STATE_SYNC:
            begin
                // If A1 reached 0
                if (h_count_z1)
                begin
                    // Instruct ALU to load the Back Porch
                    h_cs_addr = EXEC_LOAD_BP;
                end
                else
                begin
                    // Otherwise just decrement A1
                    h_cs_addr = EXEC_DEC_A1;
                end
            end
            STATE_BP:
            begin
                // If A1 reached 0
                if (h_count_z0)
                begin
                    // Instruct ALU to load the Visible count
                    h_cs_addr = EXEC_LOAD_VIS;
                end
                else
                begin
                    // Otherwise just decrement A0
                    h_cs_addr = EXEC_DEC_A0;
                end
            end
            STATE_VIS7:
            begin
                // If A1 reached 0
                if (h_count_z1)
                begin
                    // Instruct ALU to load the Front Porch
                    h_cs_addr = EXEC_LOAD_FP;
                end
                else
                begin
                    // Otherwise just decrement A1
                    h_cs_addr = EXEC_DEC_A1;
                end
            end
            default:
            begin
                // In all other cases, do a No Operation
                h_cs_addr = EXEC_NOP;
            end
        endcase
    end

    // Count7 instance to trigger our line_dma
    wire [6:0]count;
    wire tc;
    cy_psoc3_count7 #(.cy_period(DMA_COUNT)) Simple
    (
        /*  input             */  .clock(udb_clock),
        /*  input             */  .reset(c7_reset),
        /*  input             */  .load(1'b0),
        /*  input             */  .enable(c7_en),
        /*  output  [06:00]   */  .count(c7_cnt),
        /*  output            */  .tc(c7_tc)
    );

    // Vertical section
    always@(posedge udb_clock)
    begin
        if(reset)
        begin
            // Initialize vertical state set to VIS7
            // Since v_count_z1 is 0 it will execute EXEC_LOAD_FP and go to STATE_FP
            v_state_r <= STATE_VIS7;
        end
        else
        begin
            // newline is only active once per Horizontal line
            if (newline_r)
            begin
                // Deal with the line counter register here, only increment it
                // if we are on the vertical visible state, otherwise reset it to zero
                if (v_state_r == STATE_VIS)
                    line_cnt_r <= line_cnt_r+10'd1;
                else
                    line_cnt_r <= 10'd0;
                // Vertical FSM
                case (v_state_r)
                    STATE_FP:
                    begin
                        // Check if we are still within the Vertical Front Porch
                        // FP uses D0 to hold the value and A0 as the current countdown.
                        if (v_count_z0)
                        begin
                            // If we reached the end of the Front Porch.
                            // Jump into the Sync State.
                            v_state_r <= STATE_SYNC;
                        end
                    end
                    STATE_SYNC:
                    begin
                        // Check if we are still within the Vertical Sync Pulse
                        // Sync Pulse uses D1 to hold the value and A1 as the current countdown.
                        if (v_count_z1)
                        begin
                            // If we reached the end of the Sync Pulse.
                            // Jump into the Back Porch State.
                            v_state_r <= STATE_BP;
                        end
                    end
                    STATE_BP:
                    begin
                        // Check if we are still within the Vertical Back Porch
                        // BP uses F0 to hold the value and A0 as the current counter.
                        if (v_count_z0)
                        begin
                            // If we reached the end of the Back Porch.
                            // Jump into the Visible State.
                            v_state_r <= STATE_VIS;
                        end
                    end
                    // Go through 8 clocks before checking if we are done.
                    STATE_VIS:
                        v_state_r <= STATE_VIS1;
                    STATE_VIS1:
                        v_state_r <= STATE_VIS2;
                    STATE_VIS2:
                        v_state_r <= STATE_VIS3;
                    STATE_VIS3:
                        v_state_r <= STATE_VIS4;
                    STATE_VIS4:
                        v_state_r <= STATE_VIS5;
                    STATE_VIS5:
                        v_state_r <= STATE_VIS6;
                    STATE_VIS6:
                        v_state_r <= STATE_VIS7;
                    STATE_VIS7:
                    begin
                        // Check if we are still within the Vertical Visible state
                        // Visible Area uses F1 to hold the value and A1 as the current counter.
                        if (v_count_z1)
                        begin
                            // If we reached the end of the Visible state.
                            // Reset the counter and jump into the Front Porch State.
                            v_state_r <= STATE_FP;
                        end
                    end
                    default:
                    begin
                        // We should never end up here.
                        // Set initial state set to VIS7
                        // Since v_count_z1 is 0 it will execute EXEC_LOAD_FP and go to STATE_FP
                        v_state_r <= STATE_VIS7;
                    end
                endcase
            end
        end
    end
    
    // blocking vertical section
    // We can't combined blocking and non blocking assigments
    always@(posedge udb_clock)
    begin
        if (newline_r)
        case(h_state_r)
            STATE_FP:
            begin
                // If A0 reached 0
                if (v_count_z0)
                begin
                    // Instruct ALU to load Sync
                    v_cs_addr = EXEC_LOAD_SYNC;
                end
                else
                begin
                    // Otherwise just decrement A0
                    v_cs_addr = EXEC_DEC_A0;
                end
            end
            STATE_SYNC:
            begin
                // If A1 reached 0
                if (v_count_z1)
                begin
                    // Instruct ALU to load the Back Porch
                    v_cs_addr = EXEC_LOAD_BP;
                end
                else
                begin
                    // Otherwise just decrement A1
                    v_cs_addr = EXEC_DEC_A1;
                end
            end
            STATE_BP:
            begin
                // If A1 reached 0
                if (v_count_z0)
                begin
                    // Instruct ALU to load the Visible count
                    v_cs_addr = EXEC_LOAD_VIS;
                end
                else
                begin
                    // Otherwise just decrement A0
                    v_cs_addr = EXEC_DEC_A0;
                end
            end
            STATE_VIS7:
            begin
                // If A1 reached 0
                if (v_count_z1)
                begin
                    // Instruct ALU to load the Front Porch
                    v_cs_addr = EXEC_LOAD_FP;
                end
                else
                begin
                    // Otherwise just decrement A1
                    v_cs_addr = EXEC_DEC_A1;
                end
            end
            default:
            begin
                // In all other cases, do a No Operation
                v_cs_addr = EXEC_NOP;
            end
        endcase
        else
        begin
            // If we are not processing a newline, do nothing.
            v_cs_addr = EXEC_NOP;
        end
    end
    
    //
    // Assign the current registers to the actual outputs
    //
    // Horizontal and Vertical Blanking are only off in Visible state, blank signal has negative logic (0 blanking, 1 non-blanking)
    assign blank_n = (h_state_r == STATE_VIS) & (v_state_r == STATE_VIS);
    
    // hsync will be low or high during the horizontal synch pulse state depending on the HorizPulsePositive value.
    //       If pulse positive is true the hsync will be low (zero) when not active, otherwise it will be high (one) when  not active.
    assign hsync = (h_state_r == STATE_SYNC)?HorizPulsePositive: ~HorizPulsePositive;
    
    // vsync will be low or high during the vertical synch pulse state depending on the VertPulsePositive value.
    //       If pulse positive is true the vsync will be low (zero) when not active, otherwise it will be high (one) when  not active.
    assign vsync = (v_state_r == STATE_SYNC)?VertPulsePositive: ~VertPulsePositive;
    
    // line_cnt will allow the module to know what current visible line needs to be fetched.
    assign line_cnt = line_cnt_r;
    
    // line_dma will go high when we need to fetch another line, vertical blank state will be checked so no dma is requested on non visible lines.
    assign line_dma = c7_tc&(v_state_r == STATE_VIS);

    assign c7_reset = (h_state_r == STATE_BP)&h_count_z1;
    assign c7_en = (h_state_r == STATE_BP);

cy_psoc3_dp8 #(.cy_dpconfig_a(
{
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC_NONE, `CS_A1_SRC_NONE,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM0: NOP*/
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC___D0, `CS_A1_SRC_NONE,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM1: LOAD_FP*/
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC_NONE, `CS_A1_SRC___D1,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM2: LOAD_SYNC*/
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC___F0, `CS_A1_SRC_NONE,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM3: LOAD_BP*/
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC_NONE, `CS_A1_SRC___F1,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM4: LOAD_VIS*/
    `CS_ALU_OP__DEC, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC__ALU, `CS_A1_SRC_NONE,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM5: DEC_A0*/
    `CS_ALU_OP__DEC, `CS_SRCA_A1, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC_NONE, `CS_A1_SRC__ALU,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM6: DEC_A1*/
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC_NONE, `CS_A1_SRC_NONE,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM7: */
    8'hFF, 8'h00,  /*CFG9: */
    8'hFF, 8'hFF,  /*CFG11-10: */
    `SC_CMPB_A1_D1, `SC_CMPA_A1_D1, `SC_CI_B_ARITH,
    `SC_CI_A_ARITH, `SC_C1_MASK_DSBL, `SC_C0_MASK_DSBL,
    `SC_A_MASK_DSBL, `SC_DEF_SI_0, `SC_SI_B_DEFSI,
    `SC_SI_A_DEFSI, /*CFG13-12: */
    `SC_A0_SRC_ACC, `SC_SHIFT_SL, 1'h0,
    1'h0, `SC_FIFO1_BUS, `SC_FIFO0_BUS,
    `SC_MSB_DSBL, `SC_MSB_BIT0, `SC_MSB_NOCHN,
    `SC_FB_NOCHN, `SC_CMP1_NOCHN,
    `SC_CMP0_NOCHN, /*CFG15-14: */
    10'h00, `SC_FIFO_CLK__DP,`SC_FIFO_CAP_AX,
    `SC_FIFO_LEVEL,`SC_FIFO__SYNC,`SC_EXTCRC_DSBL,
    `SC_WRK16CAT_DSBL /*CFG17-16: */
}
)) HorizDP(
        /*  input                   */  .reset(1'b0),
        /*  input                   */  .clk(udb_clock),
        /*  input   [02:00]         */  .cs_addr(h_cs_addr),
        /*  input                   */  .route_si(1'b0),
        /*  input                   */  .route_ci(1'b0),
        /*  input                   */  .f0_load(1'b0),
        /*  input                   */  .f1_load(1'b0),
        /*  input                   */  .d0_load(1'b0),
        /*  input                   */  .d1_load(1'b0),
        /*  output                  */  .ce0(),
        /*  output                  */  .cl0(),
        /*  output                  */  .z0(h_count_z0),
        /*  output                  */  .ff0(),
        /*  output                  */  .ce1(),
        /*  output                  */  .cl1(),
        /*  output                  */  .z1(h_count_z1),
        /*  output                  */  .ff1(),
        /*  output                  */  .ov_msb(),
        /*  output                  */  .co_msb(),
        /*  output                  */  .cmsb(),
        /*  output                  */  .so(),
        /*  output                  */  .f0_bus_stat(),
        /*  output                  */  .f0_blk_stat(),
        /*  output                  */  .f1_bus_stat(),
        /*  output                  */  .f1_blk_stat()
);
cy_psoc3_dp8 #(.cy_dpconfig_a(
{
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC_NONE, `CS_A1_SRC_NONE,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM0: NOP*/
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC___D0, `CS_A1_SRC_NONE,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM1: LOAD_FP*/
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC_NONE, `CS_A1_SRC___D1,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM2: LOAD_SYNC*/
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC___F0, `CS_A1_SRC_NONE,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM3: LOAD_BP*/
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC_NONE, `CS_A1_SRC___F1,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM4: LOAD_VIS*/
    `CS_ALU_OP__DEC, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC__ALU, `CS_A1_SRC_NONE,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM5: DEC_A0*/
    `CS_ALU_OP__DEC, `CS_SRCA_A1, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC_NONE, `CS_A1_SRC__ALU,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM6: DEC_A1*/
    `CS_ALU_OP_PASS, `CS_SRCA_A0, `CS_SRCB_D0,
    `CS_SHFT_OP_PASS, `CS_A0_SRC_NONE, `CS_A1_SRC_NONE,
    `CS_FEEDBACK_DSBL, `CS_CI_SEL_CFGA, `CS_SI_SEL_CFGA,
    `CS_CMP_SEL_CFGA, /*CFGRAM7: */
    8'hFF, 8'h00,  /*CFG9: */
    8'hFF, 8'hFF,  /*CFG11-10: */
    `SC_CMPB_A1_D1, `SC_CMPA_A1_D1, `SC_CI_B_ARITH,
    `SC_CI_A_ARITH, `SC_C1_MASK_DSBL, `SC_C0_MASK_DSBL,
    `SC_A_MASK_DSBL, `SC_DEF_SI_0, `SC_SI_B_DEFSI,
    `SC_SI_A_DEFSI, /*CFG13-12: */
    `SC_A0_SRC_ACC, `SC_SHIFT_SL, 1'h0,
    1'h0, `SC_FIFO1_BUS, `SC_FIFO0_BUS,
    `SC_MSB_DSBL, `SC_MSB_BIT0, `SC_MSB_NOCHN,
    `SC_FB_NOCHN, `SC_CMP1_NOCHN,
    `SC_CMP0_NOCHN, /*CFG15-14: */
    10'h00, `SC_FIFO_CLK__DP,`SC_FIFO_CAP_AX,
    `SC_FIFO_LEVEL,`SC_FIFO__SYNC,`SC_EXTCRC_DSBL,
    `SC_WRK16CAT_DSBL /*CFG17-16: */
}
)) VertDP(
        /*  input                   */  .reset(1'b0),
        /*  input                   */  .clk(udb_clock),
        /*  input   [02:00]         */  .cs_addr(v_cs_addr),
        /*  input                   */  .route_si(1'b0),
        /*  input                   */  .route_ci(1'b0),
        /*  input                   */  .f0_load(1'b0),
        /*  input                   */  .f1_load(1'b0),
        /*  input                   */  .d0_load(1'b0),
        /*  input                   */  .d1_load(1'b0),
        /*  output                  */  .ce0(),
        /*  output                  */  .cl0(),
        /*  output                  */  .z0(v_count_z0),
        /*  output                  */  .ff0(),
        /*  output                  */  .ce1(),
        /*  output                  */  .cl1(),
        /*  output                  */  .z1(v_count_z1),
        /*  output                  */  .ff1(),
        /*  output                  */  .ov_msb(),
        /*  output                  */  .co_msb(),
        /*  output                  */  .cmsb(),
        /*  output                  */  .so(),
        /*  output                  */  .f0_bus_stat(),
        /*  output                  */  .f0_blk_stat(),
        /*  output                  */  .f1_bus_stat(),
        /*  output                  */  .f1_blk_stat()
);
//`#end` -- edit above this line, do not edit this line
endmodule
//`#start footer` -- edit after this line, do not edit this line
//`#end` -- edit above this line, do not edit this line

