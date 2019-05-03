
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
// Generated on 12/21/2015 at 22:37
// Component: VideoCtrl_v1_0
module VideoCtrl_v1_0 (
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

    // Horizontal and Vertical states for Finate State Machine (FSM).
    localparam STATE_FP   = 2'd0;
    localparam STATE_SYNC = 2'd1;
    localparam STATE_BP   = 2'd2;
    localparam STATE_VIS  = 2'd3;
 
    // Horizontal and Vertical state registers.
    reg [1:0] h_state_r;
    reg [1:0] v_state_r;

    // Current Horizontal and Vertical counters.
    // These values count the pixels on each current state and don't carry the overall line or pixel count.
    reg [10:0] h_count_r;
    reg [9:0] v_count_r;

    // Total line count output register to make it accessible to native code, this will only show the last visible line.
    reg [9:0] line_cnt_r;

    // The Horizontal FSM controls when the Vertical FSM can proceed with the next state
    // by controling the line counter using this register.
    reg newline_r;
    
    // Horizontal section
    always@(posedge clock)
    begin
        // We need to see how we can force a reset even if the reset pin is wired to a digital constant of value 0
        // Maybe a _Start routine via the API could be used to initalize the module as well as the reset.
        // Otherwise make sure the state machine will eventually get to the right state no matter what the random initial values are.
        if(reset)
        begin
            // Initialize horizontal registers with initial state set to Front Porch
            h_state_r <= STATE_FP;
            h_count_r <= 11'd1;
            // Dissable Vertical FSM.
            newline_r <= 1'b0;
        end
        else
        begin
            // Horizontal FSM
            case (h_state_r)
                STATE_FP:
                begin
                    // Dissable Vertical FSM.
                    newline_r <= 1'b0;
                    // Check if we are still within the Horizontal Front Porch
                    if (h_count_r == HorizFrontPorch)
                    begin
                        // If we reached the end of the Front Porch.
                        // Reset the counter and jump into the Sync State.
                        h_count_r <= 11'd1;
                        h_state_r <= STATE_SYNC;
                    end
                    else
                    begin
                        // Increment the horizontal pixel count
                        h_count_r <= h_count_r + 11'd1;
                    end
                end
                STATE_SYNC:
                begin
                    // Dissable Vertical FSM.
                    newline_r <= 1'b0;
                    // Check if we are still within the Horizontal Sync Pulse
                    if (h_count_r == HorizSyncPulse)
                    begin
                        // If we reached the end of the Sync Pulse.
                        // Reset the counter and jump into the Back Porch State.
                        h_count_r <= 11'd1;
                        h_state_r <= STATE_BP;
                    end
                    else
                    begin
                        // Increment the horizontal pixel count
                        h_count_r <= h_count_r + 11'd1;
                    end
                end
                STATE_BP:
                begin
                    // Dissable Vertical FSM.
                    newline_r <= 1'b0;
                    // Check if we are still within the Horizontal Back Porch
                    if (h_count_r == HorizBackPorch)
                    begin
                        // If we reached the end of the Back Porch.
                        // Reset the counter and jump into the Visible State.
                        h_count_r <= 11'd1;
                        h_state_r <= STATE_VIS;
                    end
                    else
                    begin
                        // Increment the horizontal pixel count
                        h_count_r <= h_count_r + 11'd1;
                    end
                end
                STATE_VIS:
                begin
                    // Check if we are still within the Horizontal Visible state
                    if (h_count_r == HorizVisibleArea)
                    begin
                        // If we reached the end of the Visible state.
                        // Reset the counter and jump into the Front Porch State.
                        h_count_r <= 11'd1;
                        h_state_r <= STATE_FP;
                        // Enable Vertical FSM once per Horizontal line
                        newline_r <= 1'b1;
                    end
                    else
                    begin
                        // Increment the horizontal pixel count
                        h_count_r <= h_count_r + 11'd1;
                       // Dissable Vertical FSM.
                        newline_r <= 1'b0;
                    end
                end
                default:
                begin
                    // We should never end up here since our state machine is only two bits and we have 4 states covered.
                    // Set initial state set to Front Porch
                    h_state_r <= STATE_FP;
                end
            endcase
        end
    end

    // Vertical section
    always@(posedge clock)
    begin
        if(reset)
        begin
            // Initialize vertical registers with initial state set to Front Porch
            v_state_r <= STATE_FP;
            v_count_r <= 10'd1;
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
                        // Check if we are still within the Horizontal Front Porch
                        if (v_count_r == VertFrontPorch)
                        begin
                            // If we reached the end of the Front Porch.
                            // Reset the counter and jump into the Sync State.
                            v_count_r <= 10'd1;
                            v_state_r <= STATE_SYNC;
                        end
                        else
                        begin
                            v_count_r <= v_count_r+10'd1;
                        end
                    end
                    STATE_SYNC:
                    begin
                        // Check if we are still within the Vertical Sync Pulse
                        if (v_count_r == VertSyncPulse)
                        begin
                            // If we reached the end of the Sync Pulse.
                            // Reset the counter and jump into the Back Porch State.
                            v_count_r <= 10'd1;
                            v_state_r <= STATE_BP;
                        end
                        else
                        begin
                            v_count_r <= v_count_r+10'd1;
                        end
                    end
                    STATE_BP:
                    begin
                        // Check if we are still within the Vertical Back Porch
                        if (v_count_r == VertBackPorch)
                        begin
                            // If we reached the end of the Back Porch.
                            // Reset the counter and jump into the Visible State.
                            v_count_r <= 10'd1;
                            v_state_r <= STATE_VIS;
                        end
                        else
                        begin
                            v_count_r <= v_count_r+10'd1;
                        end
                    end
                    STATE_VIS:
                    begin
                        // Check if we are still within the Vertical Visible state
                        if (v_count_r == VertVisibleArea)
                        begin
                            // If we reached the end of the Visible state.
                            // Reset the counter and jump into the Front Porch State.
                            v_count_r <= 10'd1;
                            v_state_r <= STATE_FP;
                        end
                        else
                        begin
                            v_count_r <= v_count_r+10'd1;
                        end
                    end
                    default:
                    begin
                        // We should never end up here since our state machine is only two bits and we have 4 states covered.
                        // Just in case we add more bits to the state, reset the module as if a reset had occurred.
                        // Initialize vertical registers with initial state set to Front Porch
                        v_state_r <= STATE_FP;
                        v_count_r <= 10'd1;
                    end
                endcase
            end
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
    // HorizDMAAdjust should never exceed HorizBackPorch since line_dma would only be triggered during the Horizontal STATE_BP (Back Porch) state.
    assign line_dma = (h_state_r == STATE_BP)&(h_count_r+HorizDMAAdjust == HorizBackPorch)&(v_state_r == STATE_VIS);

//`#end` -- edit above this line, do not edit this line
endmodule
//`#start footer` -- edit after this line, do not edit this line
//`#end` -- edit above this line, do not edit this line
