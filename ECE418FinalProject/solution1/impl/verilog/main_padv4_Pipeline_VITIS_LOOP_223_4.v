// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_padv4_Pipeline_VITIS_LOOP_223_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        add_ln224,
        messageBlocks_address0,
        messageBlocks_ce0,
        messageBlocks_we0,
        messageBlocks_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [16:0] add_ln224;
output  [16:0] messageBlocks_address0;
output   messageBlocks_ce0;
output   messageBlocks_we0;
output  [4:0] messageBlocks_d0;

reg ap_idle;
reg messageBlocks_ce0;
reg messageBlocks_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln223_fu_79_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [6:0] messageLengthInBinary2_address0;
reg    messageLengthInBinary2_ce0;
wire   [4:0] messageLengthInBinary2_q0;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] kt_1_reg_136;
wire   [63:0] kt_cast3_fu_91_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln224_1_fu_119_p1;
reg   [6:0] kt_fu_34;
wire   [6:0] add_ln223_fu_85_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_kt_1;
wire   [6:0] xor_ln224_fu_101_p2;
wire  signed [8:0] sext_ln224_fu_106_p1;
wire   [16:0] zext_ln224_fu_110_p1;
wire   [16:0] add_ln224_1_fu_114_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

main_padv4_Pipeline_VITIS_LOOP_223_4_messageLengthInBinary2_ROM_AUTO_1R #(
    .DataWidth( 5 ),
    .AddressRange( 65 ),
    .AddressWidth( 7 ))
messageLengthInBinary2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(messageLengthInBinary2_address0),
    .ce0(messageLengthInBinary2_ce0),
    .q0(messageLengthInBinary2_q0)
);

main_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln223_fu_79_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            kt_fu_34 <= add_ln223_fu_85_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            kt_fu_34 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        kt_1_reg_136 <= ap_sig_allocacmp_kt_1;
    end
end

always @ (*) begin
    if (((icmp_ln223_fu_79_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kt_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_kt_1 = kt_fu_34;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        messageBlocks_ce0 = 1'b1;
    end else begin
        messageBlocks_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        messageBlocks_we0 = 1'b1;
    end else begin
        messageBlocks_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        messageLengthInBinary2_ce0 = 1'b1;
    end else begin
        messageLengthInBinary2_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln223_fu_85_p2 = (ap_sig_allocacmp_kt_1 + 7'd1);

assign add_ln224_1_fu_114_p2 = (add_ln224 + zext_ln224_fu_110_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln223_fu_79_p2 = ((ap_sig_allocacmp_kt_1 == 7'd64) ? 1'b1 : 1'b0);

assign kt_cast3_fu_91_p1 = ap_sig_allocacmp_kt_1;

assign messageBlocks_address0 = zext_ln224_1_fu_119_p1;

assign messageBlocks_d0 = messageLengthInBinary2_q0;

assign messageLengthInBinary2_address0 = kt_cast3_fu_91_p1;

assign sext_ln224_fu_106_p1 = $signed(xor_ln224_fu_101_p2);

assign xor_ln224_fu_101_p2 = (kt_1_reg_136 ^ 7'd64);

assign zext_ln224_1_fu_119_p1 = add_ln224_1_fu_114_p2;

assign zext_ln224_fu_110_p1 = $unsigned(sext_ln224_fu_106_p1);

endmodule //main_padv4_Pipeline_VITIS_LOOP_223_4
