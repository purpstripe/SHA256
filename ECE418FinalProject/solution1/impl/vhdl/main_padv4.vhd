-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_padv4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    messageBlocks_address0 : OUT STD_LOGIC_VECTOR (16 downto 0);
    messageBlocks_ce0 : OUT STD_LOGIC;
    messageBlocks_we0 : OUT STD_LOGIC;
    messageBlocks_d0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (24 downto 0) );
end;


architecture behav of main_padv4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv64_18 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000011000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv5_11 : STD_LOGIC_VECTOR (4 downto 0) := "10001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv25_1 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000001";
    constant ap_const_lv17_200 : STD_LOGIC_VECTOR (16 downto 0) := "00000001000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal select_ln207_fu_149_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal select_ln207_reg_217 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal add_ln224_fu_173_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln224_reg_222 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_start : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_done : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_idle : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_ready : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sizeNeeded_out : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sizeNeeded_out_ap_vld : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_p_cond_out : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_p_cond_out_ap_vld : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sub_ln203_out : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sub_ln203_out_ap_vld : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_start : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_done : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_idle : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_ready : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_address0 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_ce0 : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_we0 : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_d0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_start : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_done : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_idle : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_ready : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_address0 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_ce0 : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_we0 : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_d0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_start : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_done : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_idle : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_ready : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_address0 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_ce0 : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_we0 : STD_LOGIC;
    signal grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_d0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal p_cond_loc_fu_44 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln203_loc_fu_40 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_start_reg : STD_LOGIC := '0';
    signal grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal zext_ln226_fu_194_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal trunc_ln207_1_fu_115_p4 : STD_LOGIC_VECTOR (22 downto 0);
    signal zext_ln207_fu_125_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal trunc_ln207_2_fu_135_p4 : STD_LOGIC_VECTOR (22 downto 0);
    signal sub_ln207_fu_129_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal zext_ln207_1_fu_145_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal trunc_ln224_1_fu_161_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_19_cast_fu_165_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal trunc_ln224_fu_157_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal sext_ln207_fu_180_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal add_ln226_fu_189_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_block_state2_on_subcall_done : BOOLEAN;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component main_padv4_Pipeline_VITIS_LOOP_203_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        sizeNeeded_out : OUT STD_LOGIC_VECTOR (31 downto 0);
        sizeNeeded_out_ap_vld : OUT STD_LOGIC;
        p_cond_out : OUT STD_LOGIC_VECTOR (0 downto 0);
        p_cond_out_ap_vld : OUT STD_LOGIC;
        sub_ln203_out : OUT STD_LOGIC_VECTOR (31 downto 0);
        sub_ln203_out_ap_vld : OUT STD_LOGIC );
    end component;


    component main_padv4_Pipeline_VITIS_LOOP_209_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        messageBlocks_address0 : OUT STD_LOGIC_VECTOR (16 downto 0);
        messageBlocks_ce0 : OUT STD_LOGIC;
        messageBlocks_we0 : OUT STD_LOGIC;
        messageBlocks_d0 : OUT STD_LOGIC_VECTOR (4 downto 0) );
    end component;


    component main_padv4_Pipeline_VITIS_LOOP_215_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        messageBlocks_address0 : OUT STD_LOGIC_VECTOR (16 downto 0);
        messageBlocks_ce0 : OUT STD_LOGIC;
        messageBlocks_we0 : OUT STD_LOGIC;
        messageBlocks_d0 : OUT STD_LOGIC_VECTOR (4 downto 0) );
    end component;


    component main_padv4_Pipeline_VITIS_LOOP_223_4 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        add_ln224 : IN STD_LOGIC_VECTOR (16 downto 0);
        messageBlocks_address0 : OUT STD_LOGIC_VECTOR (16 downto 0);
        messageBlocks_ce0 : OUT STD_LOGIC;
        messageBlocks_we0 : OUT STD_LOGIC;
        messageBlocks_d0 : OUT STD_LOGIC_VECTOR (4 downto 0) );
    end component;



begin
    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76 : component main_padv4_Pipeline_VITIS_LOOP_203_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_start,
        ap_done => grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_done,
        ap_idle => grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_idle,
        ap_ready => grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_ready,
        sizeNeeded_out => grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sizeNeeded_out,
        sizeNeeded_out_ap_vld => grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sizeNeeded_out_ap_vld,
        p_cond_out => grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_p_cond_out,
        p_cond_out_ap_vld => grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_p_cond_out_ap_vld,
        sub_ln203_out => grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sub_ln203_out,
        sub_ln203_out_ap_vld => grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sub_ln203_out_ap_vld);

    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83 : component main_padv4_Pipeline_VITIS_LOOP_209_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_start,
        ap_done => grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_done,
        ap_idle => grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_idle,
        ap_ready => grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_ready,
        messageBlocks_address0 => grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_address0,
        messageBlocks_ce0 => grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_ce0,
        messageBlocks_we0 => grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_we0,
        messageBlocks_d0 => grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_d0);

    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91 : component main_padv4_Pipeline_VITIS_LOOP_215_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_start,
        ap_done => grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_done,
        ap_idle => grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_idle,
        ap_ready => grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_ready,
        messageBlocks_address0 => grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_address0,
        messageBlocks_ce0 => grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_ce0,
        messageBlocks_we0 => grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_we0,
        messageBlocks_d0 => grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_d0);

    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97 : component main_padv4_Pipeline_VITIS_LOOP_223_4
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_start,
        ap_done => grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_done,
        ap_idle => grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_idle,
        ap_ready => grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_ready,
        add_ln224 => add_ln224_reg_222,
        messageBlocks_address0 => grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_address0,
        messageBlocks_ce0 => grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_ce0,
        messageBlocks_we0 => grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_we0,
        messageBlocks_d0 => grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_d0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_ready = ap_const_logic_1)) then 
                    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_ready = ap_const_logic_1)) then 
                    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_ready = ap_const_logic_1)) then 
                    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_ready = ap_const_logic_1)) then 
                    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                add_ln224_reg_222 <= add_ln224_fu_173_p2;
                select_ln207_reg_217 <= select_ln207_fu_149_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_p_cond_out_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                p_cond_loc_fu_44 <= grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_p_cond_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sub_ln203_out_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                sub_ln203_loc_fu_40 <= grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sub_ln203_out;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_done, grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_done, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state7, ap_block_state2_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    add_ln224_fu_173_p2 <= std_logic_vector(unsigned(tmp_19_cast_fu_165_p3) + unsigned(trunc_ln224_fu_157_p1));
    add_ln226_fu_189_p2 <= std_logic_vector(unsigned(add_ln224_reg_222) + unsigned(ap_const_lv17_200));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(ap_block_state2_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state2_on_subcall_done)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;

    ap_ST_fsm_state5_blk_assign_proc : process(grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_done)
    begin
        if ((grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state5_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state5_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state6_blk <= ap_const_logic_0;

    ap_ST_fsm_state7_blk_assign_proc : process(grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_done)
    begin
        if ((grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state7_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state7_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state8_blk <= ap_const_logic_0;

    ap_block_state2_on_subcall_done_assign_proc : process(grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_done, grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_done)
    begin
                ap_block_state2_on_subcall_done <= ((grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_done = ap_const_logic_0) or (grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_done = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= std_logic_vector(signed(sext_ln207_fu_180_p1) + signed(ap_const_lv25_1));
    grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_start <= grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_ap_start_reg;
    grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_start <= grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_ap_start_reg;
    grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_start <= grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_ap_start_reg;
    grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_start <= grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_ap_start_reg;

    messageBlocks_address0_assign_proc : process(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_address0, grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_address0, grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_address0, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state7, ap_CS_fsm_state3, zext_ln226_fu_194_p1, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            messageBlocks_address0 <= zext_ln226_fu_194_p1(17 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            messageBlocks_address0 <= ap_const_lv64_18(17 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            messageBlocks_address0 <= grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            messageBlocks_address0 <= grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            messageBlocks_address0 <= grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_address0;
        else 
            messageBlocks_address0 <= "XXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    messageBlocks_ce0_assign_proc : process(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_ce0, grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_ce0, grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_ce0, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state7, ap_CS_fsm_state3, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            messageBlocks_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            messageBlocks_ce0 <= grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            messageBlocks_ce0 <= grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            messageBlocks_ce0 <= grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_ce0;
        else 
            messageBlocks_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    messageBlocks_d0_assign_proc : process(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_d0, grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_d0, grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_d0, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state7, ap_CS_fsm_state3, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            messageBlocks_d0 <= ap_const_lv5_0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            messageBlocks_d0 <= ap_const_lv5_11;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            messageBlocks_d0 <= grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_d0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            messageBlocks_d0 <= grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_d0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            messageBlocks_d0 <= grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_d0;
        else 
            messageBlocks_d0 <= "XXXXX";
        end if; 
    end process;


    messageBlocks_we0_assign_proc : process(grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_we0, grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_we0, grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_we0, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state7, ap_CS_fsm_state3, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            messageBlocks_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            messageBlocks_we0 <= grp_padv4_Pipeline_VITIS_LOOP_223_4_fu_97_messageBlocks_we0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            messageBlocks_we0 <= grp_padv4_Pipeline_VITIS_LOOP_215_3_fu_91_messageBlocks_we0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            messageBlocks_we0 <= grp_padv4_Pipeline_VITIS_LOOP_209_2_fu_83_messageBlocks_we0;
        else 
            messageBlocks_we0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln207_fu_149_p3 <= 
        sub_ln207_fu_129_p2 when (p_cond_loc_fu_44(0) = '1') else 
        zext_ln207_1_fu_145_p1;
        sext_ln207_fu_180_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(select_ln207_reg_217),25));

    sub_ln207_fu_129_p2 <= std_logic_vector(unsigned(ap_const_lv24_0) - unsigned(zext_ln207_fu_125_p1));
    tmp_19_cast_fu_165_p3 <= (trunc_ln224_1_fu_161_p1 & ap_const_lv9_0);
    trunc_ln207_1_fu_115_p4 <= sub_ln203_loc_fu_40(31 downto 9);
    trunc_ln207_2_fu_135_p4 <= grp_padv4_Pipeline_VITIS_LOOP_203_1_fu_76_sizeNeeded_out(31 downto 9);
    trunc_ln224_1_fu_161_p1 <= select_ln207_fu_149_p3(8 - 1 downto 0);
    trunc_ln224_fu_157_p1 <= select_ln207_fu_149_p3(17 - 1 downto 0);
    zext_ln207_1_fu_145_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln207_2_fu_135_p4),24));
    zext_ln207_fu_125_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln207_1_fu_115_p4),24));
    zext_ln226_fu_194_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln226_fu_189_p2),64));
end behav;
