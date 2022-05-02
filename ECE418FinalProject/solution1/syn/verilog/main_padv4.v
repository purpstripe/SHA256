// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_padv4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        messageBlocks_address0,
        messageBlocks_ce0,
        messageBlocks_we0,
        messageBlocks_d0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [16:0] messageBlocks_address0;
output   messageBlocks_ce0;
output   messageBlocks_we0;
output  [4:0] messageBlocks_d0;
output  [24:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[16:0] messageBlocks_address0;
reg messageBlocks_ce0;
reg messageBlocks_we0;
reg[4:0] messageBlocks_d0;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [11:0] message5binary_address0;
reg    message5binary_ce0;
wire   [4:0] message5binary_q0;
wire  signed [23:0] select_ln207_fu_207_p3;
reg  signed [23:0] select_ln207_reg_423;
wire    ap_CS_fsm_state5;
wire   [24:0] blocksNeeded_fu_219_p2;
reg   [24:0] blocksNeeded_reg_429;
wire   [0:0] icmp_ln209_fu_225_p2;
reg   [0:0] icmp_ln209_reg_433;
wire   [30:0] trunc_ln209_fu_231_p1;
reg   [30:0] trunc_ln209_reg_437;
wire   [6:0] select_ln213_fu_284_p3;
reg   [6:0] select_ln213_reg_442;
wire    ap_CS_fsm_state6;
wire   [16:0] select_ln213_1_fu_320_p3;
reg   [16:0] select_ln213_1_reg_448;
wire   [16:0] add_ln224_fu_342_p2;
reg   [16:0] add_ln224_reg_453;
wire   [16:0] add_ln213_1_fu_368_p2;
reg   [16:0] add_ln213_1_reg_459;
wire    ap_CS_fsm_state7;
wire    grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_start;
wire    grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_done;
wire    grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_idle;
wire    grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_ready;
wire   [31:0] grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_strLength_out;
wire    grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_strLength_out_ap_vld;
wire   [31:0] grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_sizeNeeded_3_out;
wire    grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_sizeNeeded_3_out_ap_vld;
wire   [11:0] grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_message5binary_address0;
wire    grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_message5binary_ce0;
wire    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_start;
wire    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_done;
wire    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_idle;
wire    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_ready;
wire   [31:0] grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sizeNeeded_out;
wire    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sizeNeeded_out_ap_vld;
wire   [0:0] grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_p_cond_out;
wire    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_p_cond_out_ap_vld;
wire   [31:0] grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sub_ln203_out;
wire    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sub_ln203_out_ap_vld;
wire    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_start;
wire    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_done;
wire    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_idle;
wire    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_ready;
wire   [16:0] grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_address0;
wire    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_ce0;
wire    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_we0;
wire   [4:0] grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_d0;
wire   [11:0] grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_message5binary_address0;
wire    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_message5binary_ce0;
wire    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_start;
wire    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_done;
wire    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_idle;
wire    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_ready;
wire   [16:0] grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_address0;
wire    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_ce0;
wire    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_we0;
wire   [4:0] grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_d0;
wire    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_start;
wire    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_done;
wire    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_idle;
wire    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_ready;
wire   [16:0] grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_address0;
wire    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_ce0;
wire    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_we0;
wire   [4:0] grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_d0;
reg   [31:0] ap_phi_mux_iter_0_lcssa_phi_fu_107_p4;
reg   [31:0] iter_0_lcssa_reg_103;
reg    ap_block_state6_on_subcall_done;
reg    grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [31:0] sizeNeeded_3_loc_fu_72;
reg    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [0:0] p_cond_loc_fu_64;
reg   [31:0] sub_ln203_loc_fu_60;
reg    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_start_reg;
reg    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln213_2_fu_373_p1;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln226_fu_382_p1;
wire    ap_CS_fsm_state13;
wire   [22:0] trunc_ln207_1_fu_173_p4;
wire   [23:0] zext_ln207_fu_183_p1;
wire   [22:0] trunc_ln207_2_fu_193_p4;
wire   [23:0] sub_ln207_fu_187_p2;
wire   [23:0] zext_ln207_1_fu_203_p1;
wire  signed [24:0] sext_ln207_fu_215_p1;
wire   [15:0] trunc_ln213_1_fu_240_p1;
wire   [15:0] sub_ln213_fu_252_p2;
wire   [6:0] trunc_ln213_2_fu_258_p4;
wire   [0:0] tmp_fu_244_p3;
wire   [6:0] sub_ln213_1_fu_268_p2;
wire   [6:0] trunc_ln213_3_fu_274_p4;
wire   [8:0] trunc_ln213_fu_236_p1;
wire   [8:0] sub_ln213_2_fu_300_p2;
wire   [16:0] p_and_t3_cast_fu_306_p3;
wire   [16:0] sub_ln213_3_fu_314_p2;
wire   [16:0] p_and_f_cast_fu_292_p3;
wire   [7:0] trunc_ln224_1_fu_331_p1;
wire   [16:0] tmp_24_cast_fu_334_p3;
wire   [16:0] trunc_ln224_fu_328_p1;
wire   [15:0] tmp_s_fu_351_p3;
wire   [16:0] zext_ln213_1_fu_358_p1;
wire   [16:0] zext_ln213_fu_348_p1;
wire   [16:0] add_ln213_fu_362_p2;
wire   [16:0] add_ln226_fu_377_p2;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_start_reg = 1'b0;
#0 grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_start_reg = 1'b0;
#0 grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_start_reg = 1'b0;
#0 grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_start_reg = 1'b0;
#0 grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_start_reg = 1'b0;
end

main_padv4_message5binary_ROM_AUTO_1R #(
    .DataWidth( 5 ),
    .AddressRange( 2617 ),
    .AddressWidth( 12 ))
message5binary_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(message5binary_address0),
    .ce0(message5binary_ce0),
    .q0(message5binary_q0)
);

main_padv4_Pipeline_VITIS_LOOP_10_1 grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_start),
    .ap_done(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_done),
    .ap_idle(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_idle),
    .ap_ready(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_ready),
    .strLength_out(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_strLength_out),
    .strLength_out_ap_vld(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_strLength_out_ap_vld),
    .sizeNeeded_3_out(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_sizeNeeded_3_out),
    .sizeNeeded_3_out_ap_vld(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_sizeNeeded_3_out_ap_vld),
    .message5binary_address0(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_message5binary_address0),
    .message5binary_ce0(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_message5binary_ce0),
    .message5binary_q0(message5binary_q0)
);

main_padv4_Pipeline_VITIS_LOOP_203_1 grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_start),
    .ap_done(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_done),
    .ap_idle(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_idle),
    .ap_ready(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_ready),
    .sizeNeeded_3_reload(sizeNeeded_3_loc_fu_72),
    .sizeNeeded_out(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sizeNeeded_out),
    .sizeNeeded_out_ap_vld(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sizeNeeded_out_ap_vld),
    .p_cond_out(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_p_cond_out),
    .p_cond_out_ap_vld(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_p_cond_out_ap_vld),
    .sub_ln203_out(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sub_ln203_out),
    .sub_ln203_out_ap_vld(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sub_ln203_out_ap_vld)
);

main_padv4_Pipeline_VITIS_LOOP_209_2 grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_start),
    .ap_done(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_done),
    .ap_idle(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_idle),
    .ap_ready(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_ready),
    .trunc_ln1(trunc_ln209_reg_437),
    .messageBlocks_address0(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_address0),
    .messageBlocks_ce0(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_ce0),
    .messageBlocks_we0(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_we0),
    .messageBlocks_d0(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_d0),
    .message5binary_address0(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_message5binary_address0),
    .message5binary_ce0(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_message5binary_ce0),
    .message5binary_q0(message5binary_q0)
);

main_padv4_Pipeline_VITIS_LOOP_215_3 grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_start),
    .ap_done(grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_done),
    .ap_idle(grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_idle),
    .ap_ready(grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_ready),
    .iter_0_lcssa(iter_0_lcssa_reg_103),
    .messageBlocks_address0(grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_address0),
    .messageBlocks_ce0(grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_ce0),
    .messageBlocks_we0(grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_we0),
    .messageBlocks_d0(grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_d0)
);

main_padv4_Pipeline_VITIS_LOOP_223_4 grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_start),
    .ap_done(grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_done),
    .ap_idle(grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_idle),
    .ap_ready(grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_ready),
    .add_ln224(add_ln224_reg_453),
    .messageBlocks_address0(grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_address0),
    .messageBlocks_ce0(grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_ce0),
    .messageBlocks_we0(grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_we0),
    .messageBlocks_d0(grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_start_reg <= 1'b1;
        end else if ((grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_ready == 1'b1)) begin
            grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_start_reg <= 1'b1;
        end else if ((grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_ready == 1'b1)) begin
            grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln209_fu_225_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_start_reg <= 1'b1;
        end else if ((grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_ready == 1'b1)) begin
            grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_start_reg <= 1'b1;
        end else if ((grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_ready == 1'b1)) begin
            grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_start_reg <= 1'b1;
        end else if ((grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_ready == 1'b1)) begin
            grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln209_fu_225_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        iter_0_lcssa_reg_103 <= 32'd0;
    end else if (((icmp_ln209_reg_433 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        iter_0_lcssa_reg_103 <= grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_strLength_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln213_1_reg_459 <= add_ln213_1_fu_368_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln224_reg_453 <= add_ln224_fu_342_p2;
        select_ln213_1_reg_448 <= select_ln213_1_fu_320_p3;
        select_ln213_reg_442 <= select_ln213_fu_284_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        blocksNeeded_reg_429 <= blocksNeeded_fu_219_p2;
        icmp_ln209_reg_433 <= icmp_ln209_fu_225_p2;
        select_ln207_reg_423 <= select_ln207_fu_207_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_p_cond_out_ap_vld == 1'b1))) begin
        p_cond_loc_fu_64 <= grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_p_cond_out;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_sizeNeeded_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        sizeNeeded_3_loc_fu_72 <= grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_sizeNeeded_3_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sub_ln203_out_ap_vld == 1'b1))) begin
        sub_ln203_loc_fu_60 <= grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sub_ln203_out;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln209_fu_225_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        trunc_ln209_reg_437 <= trunc_ln209_fu_231_p1;
    end
end

always @ (*) begin
    if ((grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

assign ap_ST_fsm_state11_blk = 1'b0;

always @ (*) begin
    if ((grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end

assign ap_ST_fsm_state13_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state6_on_subcall_done)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln209_reg_433 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_phi_mux_iter_0_lcssa_phi_fu_107_p4 = grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_strLength_out;
    end else begin
        ap_phi_mux_iter_0_lcssa_phi_fu_107_p4 = iter_0_lcssa_reg_103;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln209_reg_433 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        message5binary_address0 = grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_message5binary_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        message5binary_address0 = grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_message5binary_address0;
    end else begin
        message5binary_address0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln209_reg_433 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        message5binary_ce0 = grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_message5binary_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        message5binary_ce0 = grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_message5binary_ce0;
    end else begin
        message5binary_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        messageBlocks_address0 = zext_ln226_fu_382_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        messageBlocks_address0 = zext_ln213_2_fu_373_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        messageBlocks_address0 = grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        messageBlocks_address0 = grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_address0;
    end else if (((icmp_ln209_reg_433 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        messageBlocks_address0 = grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_address0;
    end else begin
        messageBlocks_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        messageBlocks_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        messageBlocks_ce0 = grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        messageBlocks_ce0 = grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_ce0;
    end else if (((icmp_ln209_reg_433 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        messageBlocks_ce0 = grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_ce0;
    end else begin
        messageBlocks_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        messageBlocks_d0 = 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        messageBlocks_d0 = 5'd17;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        messageBlocks_d0 = grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        messageBlocks_d0 = grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_d0;
    end else if (((icmp_ln209_reg_433 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        messageBlocks_d0 = grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_d0;
    end else begin
        messageBlocks_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        messageBlocks_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        messageBlocks_we0 = grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_messageBlocks_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        messageBlocks_we0 = grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_messageBlocks_we0;
    end else if (((icmp_ln209_reg_433 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        messageBlocks_we0 = grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_messageBlocks_we0;
    end else begin
        messageBlocks_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln213_1_fu_368_p2 = (add_ln213_fu_362_p2 + select_ln213_1_reg_448);

assign add_ln213_fu_362_p2 = (zext_ln213_1_fu_358_p1 + zext_ln213_fu_348_p1);

assign add_ln224_fu_342_p2 = (tmp_24_cast_fu_334_p3 + trunc_ln224_fu_328_p1);

assign add_ln226_fu_377_p2 = (add_ln224_reg_453 + 17'd512);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state6_on_subcall_done = ((icmp_ln209_reg_433 == 1'd1) & (grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_done == 1'b0));
end

assign ap_return = blocksNeeded_reg_429;

assign blocksNeeded_fu_219_p2 = ($signed(sext_ln207_fu_215_p1) + $signed(25'd1));

assign grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_start = grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_ap_start_reg;

assign grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_start = grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_ap_start_reg;

assign grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_start = grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_131_ap_start_reg;

assign grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_start = grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_140_ap_start_reg;

assign grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_start = grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_148_ap_start_reg;

assign icmp_ln209_fu_225_p2 = (($signed(grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_strLength_out) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign p_and_f_cast_fu_292_p3 = {{8'd0}, {trunc_ln213_fu_236_p1}};

assign p_and_t3_cast_fu_306_p3 = {{8'd0}, {sub_ln213_2_fu_300_p2}};

assign select_ln207_fu_207_p3 = ((p_cond_loc_fu_64[0:0] == 1'b1) ? sub_ln207_fu_187_p2 : zext_ln207_1_fu_203_p1);

assign select_ln213_1_fu_320_p3 = ((tmp_fu_244_p3[0:0] == 1'b1) ? sub_ln213_3_fu_314_p2 : p_and_f_cast_fu_292_p3);

assign select_ln213_fu_284_p3 = ((tmp_fu_244_p3[0:0] == 1'b1) ? sub_ln213_1_fu_268_p2 : trunc_ln213_3_fu_274_p4);

assign sext_ln207_fu_215_p1 = select_ln207_fu_207_p3;

assign sub_ln207_fu_187_p2 = (24'd0 - zext_ln207_fu_183_p1);

assign sub_ln213_1_fu_268_p2 = (7'd0 - trunc_ln213_2_fu_258_p4);

assign sub_ln213_2_fu_300_p2 = (9'd0 - trunc_ln213_fu_236_p1);

assign sub_ln213_3_fu_314_p2 = (17'd0 - p_and_t3_cast_fu_306_p3);

assign sub_ln213_fu_252_p2 = (16'd0 - trunc_ln213_1_fu_240_p1);

assign tmp_24_cast_fu_334_p3 = {{trunc_ln224_1_fu_331_p1}, {9'd0}};

assign tmp_fu_244_p3 = ap_phi_mux_iter_0_lcssa_phi_fu_107_p4[32'd31];

assign tmp_s_fu_351_p3 = {{select_ln213_reg_442}, {9'd0}};

assign trunc_ln207_1_fu_173_p4 = {{sub_ln203_loc_fu_60[31:9]}};

assign trunc_ln207_2_fu_193_p4 = {{grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_123_sizeNeeded_out[31:9]}};

assign trunc_ln209_fu_231_p1 = grp_padv4_Pipeline_VITIS_LOOP_10_1_fu_115_strLength_out[30:0];

assign trunc_ln213_1_fu_240_p1 = ap_phi_mux_iter_0_lcssa_phi_fu_107_p4[15:0];

assign trunc_ln213_2_fu_258_p4 = {{sub_ln213_fu_252_p2[15:9]}};

assign trunc_ln213_3_fu_274_p4 = {{ap_phi_mux_iter_0_lcssa_phi_fu_107_p4[15:9]}};

assign trunc_ln213_fu_236_p1 = ap_phi_mux_iter_0_lcssa_phi_fu_107_p4[8:0];

assign trunc_ln224_1_fu_331_p1 = select_ln207_reg_423[7:0];

assign trunc_ln224_fu_328_p1 = select_ln207_reg_423[16:0];

assign zext_ln207_1_fu_203_p1 = trunc_ln207_2_fu_193_p4;

assign zext_ln207_fu_183_p1 = trunc_ln207_1_fu_173_p4;

assign zext_ln213_1_fu_358_p1 = tmp_s_fu_351_p3;

assign zext_ln213_2_fu_373_p1 = add_ln213_1_reg_459;

assign zext_ln213_fu_348_p1 = select_ln213_reg_442;

assign zext_ln226_fu_382_p1 = add_ln226_fu_377_p2;

endmodule //main_padv4