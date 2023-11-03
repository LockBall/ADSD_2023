-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "11/03/2023 00:51:42"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA_86 IS
    PORT (
	max10_clk1_50 : IN std_logic;
	key : IN std_logic_vector(0 DOWNTO 0);
	vga_vs : OUT std_logic;
	vga_hs : OUT std_logic;
	vga_r : OUT std_logic_vector(3 DOWNTO 0);
	vga_g : OUT std_logic_vector(3 DOWNTO 0);
	vga_b : OUT std_logic_vector(3 DOWNTO 0)
	);
END VGA_86;

-- Design Ports Information
-- vga_vs	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_hs	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[3]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- key[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- max10_clk1_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VGA_86 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_max10_clk1_50 : std_logic;
SIGNAL ww_key : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_vga_vs : std_logic;
SIGNAL ww_vga_hs : std_logic;
SIGNAL ww_vga_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_40_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_40_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \max10_clk1_50~input_o\ : std_logic;
SIGNAL \clock_40_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_86_image|v_count[0]~10_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[3]~17\ : std_logic;
SIGNAL \VGA_86_image|v_count[4]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[0]~11_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[0]~12\ : std_logic;
SIGNAL \VGA_86_image|h_count[1]~13_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[1]~14\ : std_logic;
SIGNAL \VGA_86_image|h_count[2]~15_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[2]~16\ : std_logic;
SIGNAL \VGA_86_image|h_count[3]~17_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[3]~18\ : std_logic;
SIGNAL \VGA_86_image|h_count[4]~19_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[4]~20\ : std_logic;
SIGNAL \VGA_86_image|h_count[5]~21_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[5]~22\ : std_logic;
SIGNAL \VGA_86_image|h_count[6]~23_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[6]~24\ : std_logic;
SIGNAL \VGA_86_image|h_count[7]~25_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[7]~26\ : std_logic;
SIGNAL \VGA_86_image|h_count[8]~27_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[8]~28\ : std_logic;
SIGNAL \VGA_86_image|h_count[9]~29_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[9]~30\ : std_logic;
SIGNAL \VGA_86_image|h_count[10]~31_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~20_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[9]~31_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[4]~19\ : std_logic;
SIGNAL \VGA_86_image|v_count[5]~20_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[5]~21\ : std_logic;
SIGNAL \VGA_86_image|v_count[6]~22_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[6]~23\ : std_logic;
SIGNAL \VGA_86_image|v_count[7]~24_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[7]~25\ : std_logic;
SIGNAL \VGA_86_image|v_count[8]~26_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[8]~27\ : std_logic;
SIGNAL \VGA_86_image|v_count[9]~28_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[9]~30_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[0]~11\ : std_logic;
SIGNAL \VGA_86_image|v_count[1]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[1]~13\ : std_logic;
SIGNAL \VGA_86_image|v_count[2]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[2]~15\ : std_logic;
SIGNAL \VGA_86_image|v_count[3]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~15_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~16_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan5~0_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~17_combout\ : std_logic;
SIGNAL \VGA_86_image|v_sync_1~q\ : std_logic;
SIGNAL \VGA_86_image|v_sync_2~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|v_sync_2~q\ : std_logic;
SIGNAL \VGA_86_image|v_sync_out~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|v_sync_out~q\ : std_logic;
SIGNAL \VGA_86_image|process_1~18_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~3_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~23_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~19_combout\ : std_logic;
SIGNAL \VGA_86_image|h_sync_1~q\ : std_logic;
SIGNAL \VGA_86_image|h_sync_2~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|h_sync_2~q\ : std_logic;
SIGNAL \VGA_86_image|h_sync_out~q\ : std_logic;
SIGNAL \VGA_86_image|LessThan5~1_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~21_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~22_combout\ : std_logic;
SIGNAL \VGA_86_image|blank_1~q\ : std_logic;
SIGNAL \VGA_86_image|blank_2~q\ : std_logic;
SIGNAL \VGA_86_image|Add5~0_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~1\ : std_logic;
SIGNAL \VGA_86_image|Add5~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~3\ : std_logic;
SIGNAL \VGA_86_image|Add5~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~5\ : std_logic;
SIGNAL \VGA_86_image|Add5~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~7\ : std_logic;
SIGNAL \VGA_86_image|Add5~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~9\ : std_logic;
SIGNAL \VGA_86_image|Add5~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~11\ : std_logic;
SIGNAL \VGA_86_image|Add5~12_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~13\ : std_logic;
SIGNAL \VGA_86_image|Add5~14_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~15\ : std_logic;
SIGNAL \VGA_86_image|Add5~16_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~17\ : std_logic;
SIGNAL \VGA_86_image|Add5~18_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~19\ : std_logic;
SIGNAL \VGA_86_image|Add5~20_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~21\ : std_logic;
SIGNAL \VGA_86_image|Add5~22_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~23\ : std_logic;
SIGNAL \VGA_86_image|Add5~24_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~25\ : std_logic;
SIGNAL \VGA_86_image|Add5~26_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~27\ : std_logic;
SIGNAL \VGA_86_image|Add5~28_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~29\ : std_logic;
SIGNAL \VGA_86_image|Add5~30_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~31\ : std_logic;
SIGNAL \VGA_86_image|Add5~32_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~33\ : std_logic;
SIGNAL \VGA_86_image|Add5~34_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~35\ : std_logic;
SIGNAL \VGA_86_image|Add5~36_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~37\ : std_logic;
SIGNAL \VGA_86_image|Add5~38_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~39\ : std_logic;
SIGNAL \VGA_86_image|Add5~40_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~7_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~41\ : std_logic;
SIGNAL \VGA_86_image|Add5~42_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~43\ : std_logic;
SIGNAL \VGA_86_image|Add5~44_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~45\ : std_logic;
SIGNAL \VGA_86_image|Add5~46_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~47\ : std_logic;
SIGNAL \VGA_86_image|Add5~48_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~49\ : std_logic;
SIGNAL \VGA_86_image|Add5~50_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~51\ : std_logic;
SIGNAL \VGA_86_image|Add5~52_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~53\ : std_logic;
SIGNAL \VGA_86_image|Add5~54_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~55\ : std_logic;
SIGNAL \VGA_86_image|Add5~56_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~7_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~57\ : std_logic;
SIGNAL \VGA_86_image|Add5~58_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~59\ : std_logic;
SIGNAL \VGA_86_image|Add5~60_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~9_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals_count[0]~2_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals_count[1]~3_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals_count[2]~4_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals_count[1]~5_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals_count[3]~6_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals_count[0]~2_combout\ : std_logic;
SIGNAL \VGA_86_image|b_vals_count[3]~4_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals_count~3_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals_count[0]~4_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals_count[0]~5_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals_count[1]~6_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals_count[2]~8_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals_count[2]~7_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals_count[3]~9_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals_count~0_combout\ : std_logic;
SIGNAL \VGA_86_image|b_vals_count[0]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|b_vals_count[0]~1_combout\ : std_logic;
SIGNAL \VGA_86_image|b_vals_count[1]~2_combout\ : std_logic;
SIGNAL \VGA_86_image|b_vals_count[2]~3_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals_count~1_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals_count~0_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals_count[0]~1_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals~0_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[0]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals~1_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[1]~1_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals~2_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[2]~2_combout\ : std_logic;
SIGNAL \VGA_86_image|r_vals~3_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[3]~3_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals~0_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals~1_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals~2_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|g_vals~3_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|b_vals~0_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[0]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|b_vals~1_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[1]~1_combout\ : std_logic;
SIGNAL \VGA_86_image|b_vals~2_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[2]~2_combout\ : std_logic;
SIGNAL \VGA_86_image|b_vals~3_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[3]~3_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_86_image|h_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_86_image|b_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|r_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|g_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|b_vals\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|r_vals\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|g_vals\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|r_vals_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|g_vals_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|b_vals_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|color_shift_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_key[0]~input_o\ : std_logic;
SIGNAL \VGA_86_image|ALT_INV_blank_2~q\ : std_logic;
SIGNAL \VGA_86_image|ALT_INV_b_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|ALT_INV_r_out\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_max10_clk1_50 <= max10_clk1_50;
ww_key <= key;
vga_vs <= ww_vga_vs;
vga_hs <= ww_vga_hs;
vga_r <= ww_vga_r;
vga_g <= ww_vga_g;
vga_b <= ww_vga_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_40_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \max10_clk1_50~input_o\);

\clock_40_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \clock_40_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\clock_40_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \clock_40_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\clock_40_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \clock_40_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\clock_40_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \clock_40_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\clock_40_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \clock_40_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_key[0]~input_o\ <= NOT \key[0]~input_o\;
\VGA_86_image|ALT_INV_blank_2~q\ <= NOT \VGA_86_image|blank_2~q\;
\VGA_86_image|ALT_INV_b_out\(3) <= NOT \VGA_86_image|b_out\(3);
\VGA_86_image|ALT_INV_b_out\(2) <= NOT \VGA_86_image|b_out\(2);
\VGA_86_image|ALT_INV_b_out\(1) <= NOT \VGA_86_image|b_out\(1);
\VGA_86_image|ALT_INV_b_out\(0) <= NOT \VGA_86_image|b_out\(0);
\VGA_86_image|ALT_INV_r_out\(3) <= NOT \VGA_86_image|r_out\(3);
\VGA_86_image|ALT_INV_r_out\(2) <= NOT \VGA_86_image|r_out\(2);
\VGA_86_image|ALT_INV_r_out\(1) <= NOT \VGA_86_image|r_out\(1);
\VGA_86_image|ALT_INV_r_out\(0) <= NOT \VGA_86_image|r_out\(0);

-- Location: LCCOMB_X44_Y42_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y13_N9
\vga_vs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|v_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vga_vs);

-- Location: IOOBUF_X0_Y18_N2
\vga_hs~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|h_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vga_hs);

-- Location: IOOBUF_X18_Y0_N30
\vga_r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|ALT_INV_r_out\(0),
	devoe => ww_devoe,
	o => ww_vga_r(0));

-- Location: IOOBUF_X0_Y12_N9
\vga_r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|ALT_INV_r_out\(1),
	devoe => ww_devoe,
	o => ww_vga_r(1));

-- Location: IOOBUF_X16_Y0_N16
\vga_r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|ALT_INV_r_out\(2),
	devoe => ww_devoe,
	o => ww_vga_r(2));

-- Location: IOOBUF_X16_Y0_N23
\vga_r[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|ALT_INV_r_out\(3),
	devoe => ww_devoe,
	o => ww_vga_r(3));

-- Location: IOOBUF_X0_Y9_N2
\vga_g[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|g_out\(0),
	devoe => ww_devoe,
	o => ww_vga_g(0));

-- Location: IOOBUF_X0_Y15_N9
\vga_g[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|g_out\(1),
	devoe => ww_devoe,
	o => ww_vga_g(1));

-- Location: IOOBUF_X0_Y3_N9
\vga_g[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|g_out\(2),
	devoe => ww_devoe,
	o => ww_vga_g(2));

-- Location: IOOBUF_X0_Y3_N2
\vga_g[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|g_out\(3),
	devoe => ww_devoe,
	o => ww_vga_g(3));

-- Location: IOOBUF_X0_Y13_N2
\vga_b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|ALT_INV_b_out\(0),
	devoe => ww_devoe,
	o => ww_vga_b(0));

-- Location: IOOBUF_X0_Y15_N2
\vga_b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|ALT_INV_b_out\(1),
	devoe => ww_devoe,
	o => ww_vga_b(1));

-- Location: IOOBUF_X0_Y23_N2
\vga_b[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|ALT_INV_b_out\(2),
	devoe => ww_devoe,
	o => ww_vga_b(2));

-- Location: IOOBUF_X0_Y18_N9
\vga_b[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|ALT_INV_b_out\(3),
	devoe => ww_devoe,
	o => ww_vga_b(3));

-- Location: IOIBUF_X46_Y54_N29
\key[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\max10_clk1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_max10_clk1_50,
	o => \max10_clk1_50~input_o\);

-- Location: PLL_1
\clock_40_inst|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 8,
	c0_initial => 1,
	c0_low => 7,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 4,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_key[0]~input_o\,
	fbin => \clock_40_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \clock_40_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \clock_40_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \clock_40_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y18_N6
\VGA_86_image|v_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[0]~10_combout\ = \VGA_86_image|v_count\(0) $ (VCC)
-- \VGA_86_image|v_count[0]~11\ = CARRY(\VGA_86_image|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(0),
	datad => VCC,
	combout => \VGA_86_image|v_count[0]~10_combout\,
	cout => \VGA_86_image|v_count[0]~11\);

-- Location: LCCOMB_X7_Y18_N12
\VGA_86_image|v_count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[3]~16_combout\ = (\VGA_86_image|v_count\(3) & (!\VGA_86_image|v_count[2]~15\)) # (!\VGA_86_image|v_count\(3) & ((\VGA_86_image|v_count[2]~15\) # (GND)))
-- \VGA_86_image|v_count[3]~17\ = CARRY((!\VGA_86_image|v_count[2]~15\) # (!\VGA_86_image|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(3),
	datad => VCC,
	cin => \VGA_86_image|v_count[2]~15\,
	combout => \VGA_86_image|v_count[3]~16_combout\,
	cout => \VGA_86_image|v_count[3]~17\);

-- Location: LCCOMB_X7_Y18_N14
\VGA_86_image|v_count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[4]~18_combout\ = (\VGA_86_image|v_count\(4) & (\VGA_86_image|v_count[3]~17\ $ (GND))) # (!\VGA_86_image|v_count\(4) & (!\VGA_86_image|v_count[3]~17\ & VCC))
-- \VGA_86_image|v_count[4]~19\ = CARRY((\VGA_86_image|v_count\(4) & !\VGA_86_image|v_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(4),
	datad => VCC,
	cin => \VGA_86_image|v_count[3]~17\,
	combout => \VGA_86_image|v_count[4]~18_combout\,
	cout => \VGA_86_image|v_count[4]~19\);

-- Location: LCCOMB_X9_Y18_N0
\VGA_86_image|h_count[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[0]~11_combout\ = \VGA_86_image|h_count\(0) $ (VCC)
-- \VGA_86_image|h_count[0]~12\ = CARRY(\VGA_86_image|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(0),
	datad => VCC,
	combout => \VGA_86_image|h_count[0]~11_combout\,
	cout => \VGA_86_image|h_count[0]~12\);

-- Location: FF_X9_Y18_N1
\VGA_86_image|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[0]~11_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(0));

-- Location: LCCOMB_X9_Y18_N2
\VGA_86_image|h_count[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[1]~13_combout\ = (\VGA_86_image|h_count\(1) & (!\VGA_86_image|h_count[0]~12\)) # (!\VGA_86_image|h_count\(1) & ((\VGA_86_image|h_count[0]~12\) # (GND)))
-- \VGA_86_image|h_count[1]~14\ = CARRY((!\VGA_86_image|h_count[0]~12\) # (!\VGA_86_image|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(1),
	datad => VCC,
	cin => \VGA_86_image|h_count[0]~12\,
	combout => \VGA_86_image|h_count[1]~13_combout\,
	cout => \VGA_86_image|h_count[1]~14\);

-- Location: FF_X9_Y18_N3
\VGA_86_image|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[1]~13_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(1));

-- Location: LCCOMB_X9_Y18_N4
\VGA_86_image|h_count[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[2]~15_combout\ = (\VGA_86_image|h_count\(2) & (\VGA_86_image|h_count[1]~14\ $ (GND))) # (!\VGA_86_image|h_count\(2) & (!\VGA_86_image|h_count[1]~14\ & VCC))
-- \VGA_86_image|h_count[2]~16\ = CARRY((\VGA_86_image|h_count\(2) & !\VGA_86_image|h_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(2),
	datad => VCC,
	cin => \VGA_86_image|h_count[1]~14\,
	combout => \VGA_86_image|h_count[2]~15_combout\,
	cout => \VGA_86_image|h_count[2]~16\);

-- Location: FF_X9_Y18_N5
\VGA_86_image|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[2]~15_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(2));

-- Location: LCCOMB_X9_Y18_N6
\VGA_86_image|h_count[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[3]~17_combout\ = (\VGA_86_image|h_count\(3) & (!\VGA_86_image|h_count[2]~16\)) # (!\VGA_86_image|h_count\(3) & ((\VGA_86_image|h_count[2]~16\) # (GND)))
-- \VGA_86_image|h_count[3]~18\ = CARRY((!\VGA_86_image|h_count[2]~16\) # (!\VGA_86_image|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(3),
	datad => VCC,
	cin => \VGA_86_image|h_count[2]~16\,
	combout => \VGA_86_image|h_count[3]~17_combout\,
	cout => \VGA_86_image|h_count[3]~18\);

-- Location: FF_X9_Y18_N7
\VGA_86_image|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[3]~17_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(3));

-- Location: LCCOMB_X9_Y18_N8
\VGA_86_image|h_count[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[4]~19_combout\ = (\VGA_86_image|h_count\(4) & (\VGA_86_image|h_count[3]~18\ $ (GND))) # (!\VGA_86_image|h_count\(4) & (!\VGA_86_image|h_count[3]~18\ & VCC))
-- \VGA_86_image|h_count[4]~20\ = CARRY((\VGA_86_image|h_count\(4) & !\VGA_86_image|h_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(4),
	datad => VCC,
	cin => \VGA_86_image|h_count[3]~18\,
	combout => \VGA_86_image|h_count[4]~19_combout\,
	cout => \VGA_86_image|h_count[4]~20\);

-- Location: FF_X9_Y18_N9
\VGA_86_image|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[4]~19_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(4));

-- Location: LCCOMB_X9_Y18_N24
\VGA_86_image|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal0~0_combout\ = (((!\VGA_86_image|h_count\(1)) # (!\VGA_86_image|h_count\(2))) # (!\VGA_86_image|h_count\(4))) # (!\VGA_86_image|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(3),
	datab => \VGA_86_image|h_count\(4),
	datac => \VGA_86_image|h_count\(2),
	datad => \VGA_86_image|h_count\(1),
	combout => \VGA_86_image|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y18_N10
\VGA_86_image|h_count[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[5]~21_combout\ = (\VGA_86_image|h_count\(5) & (!\VGA_86_image|h_count[4]~20\)) # (!\VGA_86_image|h_count\(5) & ((\VGA_86_image|h_count[4]~20\) # (GND)))
-- \VGA_86_image|h_count[5]~22\ = CARRY((!\VGA_86_image|h_count[4]~20\) # (!\VGA_86_image|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(5),
	datad => VCC,
	cin => \VGA_86_image|h_count[4]~20\,
	combout => \VGA_86_image|h_count[5]~21_combout\,
	cout => \VGA_86_image|h_count[5]~22\);

-- Location: FF_X9_Y18_N11
\VGA_86_image|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[5]~21_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(5));

-- Location: LCCOMB_X9_Y18_N12
\VGA_86_image|h_count[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[6]~23_combout\ = (\VGA_86_image|h_count\(6) & (\VGA_86_image|h_count[5]~22\ $ (GND))) # (!\VGA_86_image|h_count\(6) & (!\VGA_86_image|h_count[5]~22\ & VCC))
-- \VGA_86_image|h_count[6]~24\ = CARRY((\VGA_86_image|h_count\(6) & !\VGA_86_image|h_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(6),
	datad => VCC,
	cin => \VGA_86_image|h_count[5]~22\,
	combout => \VGA_86_image|h_count[6]~23_combout\,
	cout => \VGA_86_image|h_count[6]~24\);

-- Location: FF_X9_Y18_N13
\VGA_86_image|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[6]~23_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(6));

-- Location: LCCOMB_X9_Y18_N14
\VGA_86_image|h_count[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[7]~25_combout\ = (\VGA_86_image|h_count\(7) & (!\VGA_86_image|h_count[6]~24\)) # (!\VGA_86_image|h_count\(7) & ((\VGA_86_image|h_count[6]~24\) # (GND)))
-- \VGA_86_image|h_count[7]~26\ = CARRY((!\VGA_86_image|h_count[6]~24\) # (!\VGA_86_image|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(7),
	datad => VCC,
	cin => \VGA_86_image|h_count[6]~24\,
	combout => \VGA_86_image|h_count[7]~25_combout\,
	cout => \VGA_86_image|h_count[7]~26\);

-- Location: FF_X9_Y18_N15
\VGA_86_image|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[7]~25_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(7));

-- Location: LCCOMB_X9_Y18_N16
\VGA_86_image|h_count[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[8]~27_combout\ = (\VGA_86_image|h_count\(8) & (\VGA_86_image|h_count[7]~26\ $ (GND))) # (!\VGA_86_image|h_count\(8) & (!\VGA_86_image|h_count[7]~26\ & VCC))
-- \VGA_86_image|h_count[8]~28\ = CARRY((\VGA_86_image|h_count\(8) & !\VGA_86_image|h_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(8),
	datad => VCC,
	cin => \VGA_86_image|h_count[7]~26\,
	combout => \VGA_86_image|h_count[8]~27_combout\,
	cout => \VGA_86_image|h_count[8]~28\);

-- Location: FF_X9_Y18_N17
\VGA_86_image|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[8]~27_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(8));

-- Location: LCCOMB_X9_Y18_N18
\VGA_86_image|h_count[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[9]~29_combout\ = (\VGA_86_image|h_count\(9) & (!\VGA_86_image|h_count[8]~28\)) # (!\VGA_86_image|h_count\(9) & ((\VGA_86_image|h_count[8]~28\) # (GND)))
-- \VGA_86_image|h_count[9]~30\ = CARRY((!\VGA_86_image|h_count[8]~28\) # (!\VGA_86_image|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(9),
	datad => VCC,
	cin => \VGA_86_image|h_count[8]~28\,
	combout => \VGA_86_image|h_count[9]~29_combout\,
	cout => \VGA_86_image|h_count[9]~30\);

-- Location: FF_X9_Y18_N19
\VGA_86_image|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[9]~29_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(9));

-- Location: LCCOMB_X9_Y18_N20
\VGA_86_image|h_count[10]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[10]~31_combout\ = \VGA_86_image|h_count[9]~30\ $ (!\VGA_86_image|h_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|h_count\(10),
	cin => \VGA_86_image|h_count[9]~30\,
	combout => \VGA_86_image|h_count[10]~31_combout\);

-- Location: FF_X9_Y18_N21
\VGA_86_image|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[10]~31_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(10));

-- Location: LCCOMB_X8_Y18_N10
\VGA_86_image|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal0~1_combout\ = (\VGA_86_image|Equal0~0_combout\) # ((\VGA_86_image|h_count\(9)) # ((\VGA_86_image|h_count\(8)) # (!\VGA_86_image|h_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal0~0_combout\,
	datab => \VGA_86_image|h_count\(9),
	datac => \VGA_86_image|h_count\(10),
	datad => \VGA_86_image|h_count\(8),
	combout => \VGA_86_image|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y18_N26
\VGA_86_image|process_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~20_combout\ = (!\VGA_86_image|h_count\(6) & (!\VGA_86_image|h_count\(7) & !\VGA_86_image|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(6),
	datac => \VGA_86_image|h_count\(7),
	datad => \VGA_86_image|h_count\(5),
	combout => \VGA_86_image|process_1~20_combout\);

-- Location: LCCOMB_X8_Y18_N12
\VGA_86_image|v_count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[9]~31_combout\ = ((!\VGA_86_image|Equal0~1_combout\ & (\VGA_86_image|process_1~20_combout\ & \VGA_86_image|h_count\(0)))) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal0~1_combout\,
	datab => \VGA_86_image|process_1~20_combout\,
	datac => \VGA_86_image|h_count\(0),
	datad => \key[0]~input_o\,
	combout => \VGA_86_image|v_count[9]~31_combout\);

-- Location: FF_X7_Y18_N15
\VGA_86_image|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[4]~18_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(4));

-- Location: LCCOMB_X7_Y18_N16
\VGA_86_image|v_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[5]~20_combout\ = (\VGA_86_image|v_count\(5) & (!\VGA_86_image|v_count[4]~19\)) # (!\VGA_86_image|v_count\(5) & ((\VGA_86_image|v_count[4]~19\) # (GND)))
-- \VGA_86_image|v_count[5]~21\ = CARRY((!\VGA_86_image|v_count[4]~19\) # (!\VGA_86_image|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(5),
	datad => VCC,
	cin => \VGA_86_image|v_count[4]~19\,
	combout => \VGA_86_image|v_count[5]~20_combout\,
	cout => \VGA_86_image|v_count[5]~21\);

-- Location: FF_X7_Y18_N17
\VGA_86_image|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[5]~20_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(5));

-- Location: LCCOMB_X7_Y18_N18
\VGA_86_image|v_count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[6]~22_combout\ = (\VGA_86_image|v_count\(6) & (\VGA_86_image|v_count[5]~21\ $ (GND))) # (!\VGA_86_image|v_count\(6) & (!\VGA_86_image|v_count[5]~21\ & VCC))
-- \VGA_86_image|v_count[6]~23\ = CARRY((\VGA_86_image|v_count\(6) & !\VGA_86_image|v_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(6),
	datad => VCC,
	cin => \VGA_86_image|v_count[5]~21\,
	combout => \VGA_86_image|v_count[6]~22_combout\,
	cout => \VGA_86_image|v_count[6]~23\);

-- Location: FF_X7_Y18_N19
\VGA_86_image|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[6]~22_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(6));

-- Location: LCCOMB_X7_Y18_N20
\VGA_86_image|v_count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[7]~24_combout\ = (\VGA_86_image|v_count\(7) & (!\VGA_86_image|v_count[6]~23\)) # (!\VGA_86_image|v_count\(7) & ((\VGA_86_image|v_count[6]~23\) # (GND)))
-- \VGA_86_image|v_count[7]~25\ = CARRY((!\VGA_86_image|v_count[6]~23\) # (!\VGA_86_image|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(7),
	datad => VCC,
	cin => \VGA_86_image|v_count[6]~23\,
	combout => \VGA_86_image|v_count[7]~24_combout\,
	cout => \VGA_86_image|v_count[7]~25\);

-- Location: FF_X7_Y18_N21
\VGA_86_image|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[7]~24_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(7));

-- Location: LCCOMB_X7_Y18_N22
\VGA_86_image|v_count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[8]~26_combout\ = (\VGA_86_image|v_count\(8) & (\VGA_86_image|v_count[7]~25\ $ (GND))) # (!\VGA_86_image|v_count\(8) & (!\VGA_86_image|v_count[7]~25\ & VCC))
-- \VGA_86_image|v_count[8]~27\ = CARRY((\VGA_86_image|v_count\(8) & !\VGA_86_image|v_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(8),
	datad => VCC,
	cin => \VGA_86_image|v_count[7]~25\,
	combout => \VGA_86_image|v_count[8]~26_combout\,
	cout => \VGA_86_image|v_count[8]~27\);

-- Location: FF_X7_Y18_N23
\VGA_86_image|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[8]~26_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(8));

-- Location: LCCOMB_X7_Y18_N24
\VGA_86_image|v_count[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[9]~28_combout\ = \VGA_86_image|v_count[8]~27\ $ (\VGA_86_image|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|v_count\(9),
	cin => \VGA_86_image|v_count[8]~27\,
	combout => \VGA_86_image|v_count[9]~28_combout\);

-- Location: FF_X7_Y18_N25
\VGA_86_image|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[9]~28_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(9));

-- Location: LCCOMB_X8_Y18_N22
\VGA_86_image|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal1~2_combout\ = (!\VGA_86_image|v_count\(9)) # (!\VGA_86_image|v_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(6),
	datad => \VGA_86_image|v_count\(9),
	combout => \VGA_86_image|Equal1~2_combout\);

-- Location: LCCOMB_X7_Y18_N28
\VGA_86_image|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal1~1_combout\ = (\VGA_86_image|v_count\(3)) # (((\VGA_86_image|v_count\(2)) # (!\VGA_86_image|v_count\(4))) # (!\VGA_86_image|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(3),
	datab => \VGA_86_image|v_count\(5),
	datac => \VGA_86_image|v_count\(4),
	datad => \VGA_86_image|v_count\(2),
	combout => \VGA_86_image|Equal1~1_combout\);

-- Location: LCCOMB_X7_Y18_N26
\VGA_86_image|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal1~0_combout\ = (((\VGA_86_image|v_count\(8)) # (\VGA_86_image|v_count\(7))) # (!\VGA_86_image|v_count\(1))) # (!\VGA_86_image|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(0),
	datab => \VGA_86_image|v_count\(1),
	datac => \VGA_86_image|v_count\(8),
	datad => \VGA_86_image|v_count\(7),
	combout => \VGA_86_image|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y18_N0
\VGA_86_image|v_count[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[9]~30_combout\ = ((!\VGA_86_image|Equal1~2_combout\ & (!\VGA_86_image|Equal1~1_combout\ & !\VGA_86_image|Equal1~0_combout\))) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal1~2_combout\,
	datab => \VGA_86_image|Equal1~1_combout\,
	datac => \VGA_86_image|Equal1~0_combout\,
	datad => \key[0]~input_o\,
	combout => \VGA_86_image|v_count[9]~30_combout\);

-- Location: FF_X7_Y18_N7
\VGA_86_image|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[0]~10_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(0));

-- Location: LCCOMB_X7_Y18_N8
\VGA_86_image|v_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[1]~12_combout\ = (\VGA_86_image|v_count\(1) & (!\VGA_86_image|v_count[0]~11\)) # (!\VGA_86_image|v_count\(1) & ((\VGA_86_image|v_count[0]~11\) # (GND)))
-- \VGA_86_image|v_count[1]~13\ = CARRY((!\VGA_86_image|v_count[0]~11\) # (!\VGA_86_image|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(1),
	datad => VCC,
	cin => \VGA_86_image|v_count[0]~11\,
	combout => \VGA_86_image|v_count[1]~12_combout\,
	cout => \VGA_86_image|v_count[1]~13\);

-- Location: FF_X7_Y18_N9
\VGA_86_image|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[1]~12_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(1));

-- Location: LCCOMB_X7_Y18_N10
\VGA_86_image|v_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[2]~14_combout\ = (\VGA_86_image|v_count\(2) & (\VGA_86_image|v_count[1]~13\ $ (GND))) # (!\VGA_86_image|v_count\(2) & (!\VGA_86_image|v_count[1]~13\ & VCC))
-- \VGA_86_image|v_count[2]~15\ = CARRY((\VGA_86_image|v_count\(2) & !\VGA_86_image|v_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(2),
	datad => VCC,
	cin => \VGA_86_image|v_count[1]~13\,
	combout => \VGA_86_image|v_count[2]~14_combout\,
	cout => \VGA_86_image|v_count[2]~15\);

-- Location: FF_X7_Y18_N11
\VGA_86_image|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[2]~14_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(2));

-- Location: FF_X7_Y18_N13
\VGA_86_image|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[3]~16_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(3));

-- Location: LCCOMB_X7_Y18_N0
\VGA_86_image|process_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~15_combout\ = (\VGA_86_image|v_count\(2)) # ((\VGA_86_image|v_count\(1)) # (\VGA_86_image|v_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(2),
	datac => \VGA_86_image|v_count\(1),
	datad => \VGA_86_image|v_count\(0),
	combout => \VGA_86_image|process_1~15_combout\);

-- Location: LCCOMB_X7_Y18_N2
\VGA_86_image|process_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~16_combout\ = (\VGA_86_image|v_count\(5)) # ((\VGA_86_image|v_count\(3) & (\VGA_86_image|v_count\(4) & \VGA_86_image|process_1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(3),
	datab => \VGA_86_image|v_count\(5),
	datac => \VGA_86_image|v_count\(4),
	datad => \VGA_86_image|process_1~15_combout\,
	combout => \VGA_86_image|process_1~16_combout\);

-- Location: LCCOMB_X7_Y18_N4
\VGA_86_image|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan5~0_combout\ = (!\VGA_86_image|v_count\(8) & !\VGA_86_image|v_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|v_count\(8),
	datad => \VGA_86_image|v_count\(7),
	combout => \VGA_86_image|LessThan5~0_combout\);

-- Location: LCCOMB_X8_Y18_N24
\VGA_86_image|process_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~17_combout\ = ((\VGA_86_image|LessThan5~0_combout\ & ((!\VGA_86_image|v_count\(6)) # (!\VGA_86_image|process_1~16_combout\)))) # (!\VGA_86_image|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~16_combout\,
	datab => \VGA_86_image|v_count\(6),
	datac => \VGA_86_image|LessThan5~0_combout\,
	datad => \VGA_86_image|v_count\(9),
	combout => \VGA_86_image|process_1~17_combout\);

-- Location: FF_X8_Y18_N25
\VGA_86_image|v_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|process_1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_sync_1~q\);

-- Location: LCCOMB_X8_Y18_N28
\VGA_86_image|v_sync_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_sync_2~feeder_combout\ = \VGA_86_image|v_sync_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|v_sync_1~q\,
	combout => \VGA_86_image|v_sync_2~feeder_combout\);

-- Location: FF_X8_Y18_N29
\VGA_86_image|v_sync_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_sync_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_sync_2~q\);

-- Location: LCCOMB_X8_Y18_N16
\VGA_86_image|v_sync_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_sync_out~feeder_combout\ = \VGA_86_image|v_sync_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|v_sync_2~q\,
	combout => \VGA_86_image|v_sync_out~feeder_combout\);

-- Location: FF_X8_Y18_N17
\VGA_86_image|v_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_sync_out~q\);

-- Location: LCCOMB_X8_Y18_N2
\VGA_86_image|process_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~18_combout\ = ((\VGA_86_image|h_count\(10)) # (!\VGA_86_image|h_count\(8))) # (!\VGA_86_image|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(9),
	datac => \VGA_86_image|h_count\(10),
	datad => \VGA_86_image|h_count\(8),
	combout => \VGA_86_image|process_1~18_combout\);

-- Location: LCCOMB_X9_Y18_N30
\VGA_86_image|process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~3_combout\ = (\VGA_86_image|h_count\(0)) # ((\VGA_86_image|h_count\(2)) # ((\VGA_86_image|h_count\(1)) # (!\VGA_86_image|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(0),
	datab => \VGA_86_image|h_count\(2),
	datac => \VGA_86_image|h_count\(7),
	datad => \VGA_86_image|h_count\(1),
	combout => \VGA_86_image|process_1~3_combout\);

-- Location: LCCOMB_X9_Y18_N28
\VGA_86_image|process_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~23_combout\ = (\VGA_86_image|h_count\(5)) # ((\VGA_86_image|h_count\(4)) # ((\VGA_86_image|process_1~3_combout\ & \VGA_86_image|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(5),
	datab => \VGA_86_image|h_count\(4),
	datac => \VGA_86_image|process_1~3_combout\,
	datad => \VGA_86_image|h_count\(3),
	combout => \VGA_86_image|process_1~23_combout\);

-- Location: LCCOMB_X9_Y18_N22
\VGA_86_image|process_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~19_combout\ = (!\VGA_86_image|process_1~18_combout\ & (\VGA_86_image|h_count\(7) $ (((\VGA_86_image|process_1~23_combout\ & \VGA_86_image|h_count\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~18_combout\,
	datab => \VGA_86_image|process_1~23_combout\,
	datac => \VGA_86_image|h_count\(7),
	datad => \VGA_86_image|h_count\(6),
	combout => \VGA_86_image|process_1~19_combout\);

-- Location: FF_X9_Y18_N23
\VGA_86_image|h_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|process_1~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_sync_1~q\);

-- Location: LCCOMB_X8_Y18_N14
\VGA_86_image|h_sync_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_sync_2~feeder_combout\ = \VGA_86_image|h_sync_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|h_sync_1~q\,
	combout => \VGA_86_image|h_sync_2~feeder_combout\);

-- Location: FF_X8_Y18_N15
\VGA_86_image|h_sync_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_sync_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_sync_2~q\);

-- Location: FF_X8_Y18_N27
\VGA_86_image|h_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_86_image|h_sync_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_sync_out~q\);

-- Location: LCCOMB_X7_Y18_N30
\VGA_86_image|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan5~1_combout\ = ((!\VGA_86_image|v_count\(5) & ((!\VGA_86_image|v_count\(4)) # (!\VGA_86_image|v_count\(3))))) # (!\VGA_86_image|v_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(3),
	datab => \VGA_86_image|v_count\(5),
	datac => \VGA_86_image|v_count\(4),
	datad => \VGA_86_image|v_count\(6),
	combout => \VGA_86_image|LessThan5~1_combout\);

-- Location: LCCOMB_X8_Y18_N6
\VGA_86_image|process_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~21_combout\ = (!\VGA_86_image|h_count\(10) & (((\VGA_86_image|LessThan5~1_combout\ & \VGA_86_image|LessThan5~0_combout\)) # (!\VGA_86_image|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(10),
	datab => \VGA_86_image|LessThan5~1_combout\,
	datac => \VGA_86_image|LessThan5~0_combout\,
	datad => \VGA_86_image|v_count\(9),
	combout => \VGA_86_image|process_1~21_combout\);

-- Location: LCCOMB_X8_Y18_N20
\VGA_86_image|process_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~22_combout\ = ((\VGA_86_image|h_count\(9) & (!\VGA_86_image|process_1~20_combout\ & \VGA_86_image|h_count\(8)))) # (!\VGA_86_image|process_1~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~21_combout\,
	datab => \VGA_86_image|h_count\(9),
	datac => \VGA_86_image|process_1~20_combout\,
	datad => \VGA_86_image|h_count\(8),
	combout => \VGA_86_image|process_1~22_combout\);

-- Location: FF_X8_Y18_N21
\VGA_86_image|blank_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|process_1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|blank_1~q\);

-- Location: FF_X7_Y12_N17
\VGA_86_image|blank_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_86_image|blank_1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|blank_2~q\);

-- Location: LCCOMB_X7_Y12_N2
\VGA_86_image|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~0_combout\ = \VGA_86_image|color_shift_count\(0) $ (VCC)
-- \VGA_86_image|Add5~1\ = CARRY(\VGA_86_image|color_shift_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(0),
	datad => VCC,
	combout => \VGA_86_image|Add5~0_combout\,
	cout => \VGA_86_image|Add5~1\);

-- Location: LCCOMB_X4_Y12_N16
\VGA_86_image|color_shift_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~1_combout\ = (!\VGA_86_image|Equal2~9_combout\ & \VGA_86_image|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal2~9_combout\,
	datad => \VGA_86_image|Add5~0_combout\,
	combout => \VGA_86_image|color_shift_count~1_combout\);

-- Location: FF_X4_Y12_N17
\VGA_86_image|color_shift_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~1_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(0));

-- Location: LCCOMB_X7_Y12_N4
\VGA_86_image|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~2_combout\ = (\VGA_86_image|color_shift_count\(1) & (!\VGA_86_image|Add5~1\)) # (!\VGA_86_image|color_shift_count\(1) & ((\VGA_86_image|Add5~1\) # (GND)))
-- \VGA_86_image|Add5~3\ = CARRY((!\VGA_86_image|Add5~1\) # (!\VGA_86_image|color_shift_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(1),
	datad => VCC,
	cin => \VGA_86_image|Add5~1\,
	combout => \VGA_86_image|Add5~2_combout\,
	cout => \VGA_86_image|Add5~3\);

-- Location: FF_X7_Y12_N5
\VGA_86_image|color_shift_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~2_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(1));

-- Location: LCCOMB_X7_Y12_N6
\VGA_86_image|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~4_combout\ = (\VGA_86_image|color_shift_count\(2) & (\VGA_86_image|Add5~3\ $ (GND))) # (!\VGA_86_image|color_shift_count\(2) & (!\VGA_86_image|Add5~3\ & VCC))
-- \VGA_86_image|Add5~5\ = CARRY((\VGA_86_image|color_shift_count\(2) & !\VGA_86_image|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(2),
	datad => VCC,
	cin => \VGA_86_image|Add5~3\,
	combout => \VGA_86_image|Add5~4_combout\,
	cout => \VGA_86_image|Add5~5\);

-- Location: FF_X7_Y12_N7
\VGA_86_image|color_shift_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~4_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(2));

-- Location: LCCOMB_X7_Y12_N8
\VGA_86_image|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~6_combout\ = (\VGA_86_image|color_shift_count\(3) & (!\VGA_86_image|Add5~5\)) # (!\VGA_86_image|color_shift_count\(3) & ((\VGA_86_image|Add5~5\) # (GND)))
-- \VGA_86_image|Add5~7\ = CARRY((!\VGA_86_image|Add5~5\) # (!\VGA_86_image|color_shift_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(3),
	datad => VCC,
	cin => \VGA_86_image|Add5~5\,
	combout => \VGA_86_image|Add5~6_combout\,
	cout => \VGA_86_image|Add5~7\);

-- Location: FF_X7_Y12_N9
\VGA_86_image|color_shift_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~6_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(3));

-- Location: LCCOMB_X7_Y12_N10
\VGA_86_image|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~8_combout\ = (\VGA_86_image|color_shift_count\(4) & (\VGA_86_image|Add5~7\ $ (GND))) # (!\VGA_86_image|color_shift_count\(4) & (!\VGA_86_image|Add5~7\ & VCC))
-- \VGA_86_image|Add5~9\ = CARRY((\VGA_86_image|color_shift_count\(4) & !\VGA_86_image|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(4),
	datad => VCC,
	cin => \VGA_86_image|Add5~7\,
	combout => \VGA_86_image|Add5~8_combout\,
	cout => \VGA_86_image|Add5~9\);

-- Location: FF_X7_Y12_N11
\VGA_86_image|color_shift_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~8_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(4));

-- Location: LCCOMB_X7_Y12_N12
\VGA_86_image|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~10_combout\ = (\VGA_86_image|color_shift_count\(5) & (!\VGA_86_image|Add5~9\)) # (!\VGA_86_image|color_shift_count\(5) & ((\VGA_86_image|Add5~9\) # (GND)))
-- \VGA_86_image|Add5~11\ = CARRY((!\VGA_86_image|Add5~9\) # (!\VGA_86_image|color_shift_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(5),
	datad => VCC,
	cin => \VGA_86_image|Add5~9\,
	combout => \VGA_86_image|Add5~10_combout\,
	cout => \VGA_86_image|Add5~11\);

-- Location: FF_X7_Y12_N13
\VGA_86_image|color_shift_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~10_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(5));

-- Location: LCCOMB_X7_Y12_N14
\VGA_86_image|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~12_combout\ = (\VGA_86_image|color_shift_count\(6) & (\VGA_86_image|Add5~11\ $ (GND))) # (!\VGA_86_image|color_shift_count\(6) & (!\VGA_86_image|Add5~11\ & VCC))
-- \VGA_86_image|Add5~13\ = CARRY((\VGA_86_image|color_shift_count\(6) & !\VGA_86_image|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(6),
	datad => VCC,
	cin => \VGA_86_image|Add5~11\,
	combout => \VGA_86_image|Add5~12_combout\,
	cout => \VGA_86_image|Add5~13\);

-- Location: FF_X7_Y12_N15
\VGA_86_image|color_shift_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~12_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(6));

-- Location: LCCOMB_X7_Y12_N16
\VGA_86_image|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~14_combout\ = (\VGA_86_image|color_shift_count\(7) & (!\VGA_86_image|Add5~13\)) # (!\VGA_86_image|color_shift_count\(7) & ((\VGA_86_image|Add5~13\) # (GND)))
-- \VGA_86_image|Add5~15\ = CARRY((!\VGA_86_image|Add5~13\) # (!\VGA_86_image|color_shift_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(7),
	datad => VCC,
	cin => \VGA_86_image|Add5~13\,
	combout => \VGA_86_image|Add5~14_combout\,
	cout => \VGA_86_image|Add5~15\);

-- Location: LCCOMB_X6_Y12_N12
\VGA_86_image|color_shift_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~0_combout\ = (!\VGA_86_image|Equal2~9_combout\ & \VGA_86_image|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal2~9_combout\,
	datad => \VGA_86_image|Add5~14_combout\,
	combout => \VGA_86_image|color_shift_count~0_combout\);

-- Location: FF_X6_Y12_N13
\VGA_86_image|color_shift_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~0_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(7));

-- Location: LCCOMB_X7_Y12_N18
\VGA_86_image|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~16_combout\ = (\VGA_86_image|color_shift_count\(8) & (\VGA_86_image|Add5~15\ $ (GND))) # (!\VGA_86_image|color_shift_count\(8) & (!\VGA_86_image|Add5~15\ & VCC))
-- \VGA_86_image|Add5~17\ = CARRY((\VGA_86_image|color_shift_count\(8) & !\VGA_86_image|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(8),
	datad => VCC,
	cin => \VGA_86_image|Add5~15\,
	combout => \VGA_86_image|Add5~16_combout\,
	cout => \VGA_86_image|Add5~17\);

-- Location: FF_X7_Y12_N19
\VGA_86_image|color_shift_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~16_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(8));

-- Location: LCCOMB_X7_Y12_N20
\VGA_86_image|Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~18_combout\ = (\VGA_86_image|color_shift_count\(9) & (!\VGA_86_image|Add5~17\)) # (!\VGA_86_image|color_shift_count\(9) & ((\VGA_86_image|Add5~17\) # (GND)))
-- \VGA_86_image|Add5~19\ = CARRY((!\VGA_86_image|Add5~17\) # (!\VGA_86_image|color_shift_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(9),
	datad => VCC,
	cin => \VGA_86_image|Add5~17\,
	combout => \VGA_86_image|Add5~18_combout\,
	cout => \VGA_86_image|Add5~19\);

-- Location: LCCOMB_X6_Y12_N6
\VGA_86_image|color_shift_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~2_combout\ = (\VGA_86_image|Add5~18_combout\ & !\VGA_86_image|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add5~18_combout\,
	datad => \VGA_86_image|Equal2~9_combout\,
	combout => \VGA_86_image|color_shift_count~2_combout\);

-- Location: FF_X6_Y12_N7
\VGA_86_image|color_shift_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~2_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(9));

-- Location: LCCOMB_X7_Y12_N22
\VGA_86_image|Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~20_combout\ = (\VGA_86_image|color_shift_count\(10) & (\VGA_86_image|Add5~19\ $ (GND))) # (!\VGA_86_image|color_shift_count\(10) & (!\VGA_86_image|Add5~19\ & VCC))
-- \VGA_86_image|Add5~21\ = CARRY((\VGA_86_image|color_shift_count\(10) & !\VGA_86_image|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(10),
	datad => VCC,
	cin => \VGA_86_image|Add5~19\,
	combout => \VGA_86_image|Add5~20_combout\,
	cout => \VGA_86_image|Add5~21\);

-- Location: LCCOMB_X6_Y12_N24
\VGA_86_image|color_shift_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~3_combout\ = (!\VGA_86_image|Equal2~9_combout\ & \VGA_86_image|Add5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal2~9_combout\,
	datad => \VGA_86_image|Add5~20_combout\,
	combout => \VGA_86_image|color_shift_count~3_combout\);

-- Location: FF_X6_Y12_N25
\VGA_86_image|color_shift_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~3_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(10));

-- Location: LCCOMB_X7_Y12_N24
\VGA_86_image|Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~22_combout\ = (\VGA_86_image|color_shift_count\(11) & (!\VGA_86_image|Add5~21\)) # (!\VGA_86_image|color_shift_count\(11) & ((\VGA_86_image|Add5~21\) # (GND)))
-- \VGA_86_image|Add5~23\ = CARRY((!\VGA_86_image|Add5~21\) # (!\VGA_86_image|color_shift_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(11),
	datad => VCC,
	cin => \VGA_86_image|Add5~21\,
	combout => \VGA_86_image|Add5~22_combout\,
	cout => \VGA_86_image|Add5~23\);

-- Location: FF_X7_Y12_N25
\VGA_86_image|color_shift_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~22_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(11));

-- Location: LCCOMB_X7_Y12_N26
\VGA_86_image|Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~24_combout\ = (\VGA_86_image|color_shift_count\(12) & (\VGA_86_image|Add5~23\ $ (GND))) # (!\VGA_86_image|color_shift_count\(12) & (!\VGA_86_image|Add5~23\ & VCC))
-- \VGA_86_image|Add5~25\ = CARRY((\VGA_86_image|color_shift_count\(12) & !\VGA_86_image|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(12),
	datad => VCC,
	cin => \VGA_86_image|Add5~23\,
	combout => \VGA_86_image|Add5~24_combout\,
	cout => \VGA_86_image|Add5~25\);

-- Location: LCCOMB_X6_Y11_N10
\VGA_86_image|color_shift_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~4_combout\ = (!\VGA_86_image|Equal2~9_combout\ & \VGA_86_image|Add5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal2~9_combout\,
	datad => \VGA_86_image|Add5~24_combout\,
	combout => \VGA_86_image|color_shift_count~4_combout\);

-- Location: FF_X6_Y11_N11
\VGA_86_image|color_shift_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~4_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(12));

-- Location: LCCOMB_X7_Y12_N28
\VGA_86_image|Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~26_combout\ = (\VGA_86_image|color_shift_count\(13) & (!\VGA_86_image|Add5~25\)) # (!\VGA_86_image|color_shift_count\(13) & ((\VGA_86_image|Add5~25\) # (GND)))
-- \VGA_86_image|Add5~27\ = CARRY((!\VGA_86_image|Add5~25\) # (!\VGA_86_image|color_shift_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(13),
	datad => VCC,
	cin => \VGA_86_image|Add5~25\,
	combout => \VGA_86_image|Add5~26_combout\,
	cout => \VGA_86_image|Add5~27\);

-- Location: FF_X7_Y12_N29
\VGA_86_image|color_shift_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~26_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(13));

-- Location: LCCOMB_X7_Y12_N30
\VGA_86_image|Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~28_combout\ = (\VGA_86_image|color_shift_count\(14) & (\VGA_86_image|Add5~27\ $ (GND))) # (!\VGA_86_image|color_shift_count\(14) & (!\VGA_86_image|Add5~27\ & VCC))
-- \VGA_86_image|Add5~29\ = CARRY((\VGA_86_image|color_shift_count\(14) & !\VGA_86_image|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(14),
	datad => VCC,
	cin => \VGA_86_image|Add5~27\,
	combout => \VGA_86_image|Add5~28_combout\,
	cout => \VGA_86_image|Add5~29\);

-- Location: FF_X7_Y12_N31
\VGA_86_image|color_shift_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~28_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(14));

-- Location: LCCOMB_X7_Y11_N0
\VGA_86_image|Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~30_combout\ = (\VGA_86_image|color_shift_count\(15) & (!\VGA_86_image|Add5~29\)) # (!\VGA_86_image|color_shift_count\(15) & ((\VGA_86_image|Add5~29\) # (GND)))
-- \VGA_86_image|Add5~31\ = CARRY((!\VGA_86_image|Add5~29\) # (!\VGA_86_image|color_shift_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(15),
	datad => VCC,
	cin => \VGA_86_image|Add5~29\,
	combout => \VGA_86_image|Add5~30_combout\,
	cout => \VGA_86_image|Add5~31\);

-- Location: LCCOMB_X6_Y11_N12
\VGA_86_image|color_shift_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~5_combout\ = (\VGA_86_image|Add5~30_combout\ & !\VGA_86_image|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add5~30_combout\,
	datad => \VGA_86_image|Equal2~9_combout\,
	combout => \VGA_86_image|color_shift_count~5_combout\);

-- Location: FF_X6_Y11_N13
\VGA_86_image|color_shift_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~5_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(15));

-- Location: LCCOMB_X7_Y11_N2
\VGA_86_image|Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~32_combout\ = (\VGA_86_image|color_shift_count\(16) & (\VGA_86_image|Add5~31\ $ (GND))) # (!\VGA_86_image|color_shift_count\(16) & (!\VGA_86_image|Add5~31\ & VCC))
-- \VGA_86_image|Add5~33\ = CARRY((\VGA_86_image|color_shift_count\(16) & !\VGA_86_image|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(16),
	datad => VCC,
	cin => \VGA_86_image|Add5~31\,
	combout => \VGA_86_image|Add5~32_combout\,
	cout => \VGA_86_image|Add5~33\);

-- Location: FF_X7_Y11_N3
\VGA_86_image|color_shift_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~32_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(16));

-- Location: LCCOMB_X7_Y11_N4
\VGA_86_image|Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~34_combout\ = (\VGA_86_image|color_shift_count\(17) & (!\VGA_86_image|Add5~33\)) # (!\VGA_86_image|color_shift_count\(17) & ((\VGA_86_image|Add5~33\) # (GND)))
-- \VGA_86_image|Add5~35\ = CARRY((!\VGA_86_image|Add5~33\) # (!\VGA_86_image|color_shift_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(17),
	datad => VCC,
	cin => \VGA_86_image|Add5~33\,
	combout => \VGA_86_image|Add5~34_combout\,
	cout => \VGA_86_image|Add5~35\);

-- Location: FF_X7_Y11_N5
\VGA_86_image|color_shift_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~34_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(17));

-- Location: LCCOMB_X7_Y11_N6
\VGA_86_image|Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~36_combout\ = (\VGA_86_image|color_shift_count\(18) & (\VGA_86_image|Add5~35\ $ (GND))) # (!\VGA_86_image|color_shift_count\(18) & (!\VGA_86_image|Add5~35\ & VCC))
-- \VGA_86_image|Add5~37\ = CARRY((\VGA_86_image|color_shift_count\(18) & !\VGA_86_image|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(18),
	datad => VCC,
	cin => \VGA_86_image|Add5~35\,
	combout => \VGA_86_image|Add5~36_combout\,
	cout => \VGA_86_image|Add5~37\);

-- Location: FF_X7_Y11_N7
\VGA_86_image|color_shift_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~36_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(18));

-- Location: LCCOMB_X7_Y11_N8
\VGA_86_image|Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~38_combout\ = (\VGA_86_image|color_shift_count\(19) & (!\VGA_86_image|Add5~37\)) # (!\VGA_86_image|color_shift_count\(19) & ((\VGA_86_image|Add5~37\) # (GND)))
-- \VGA_86_image|Add5~39\ = CARRY((!\VGA_86_image|Add5~37\) # (!\VGA_86_image|color_shift_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(19),
	datad => VCC,
	cin => \VGA_86_image|Add5~37\,
	combout => \VGA_86_image|Add5~38_combout\,
	cout => \VGA_86_image|Add5~39\);

-- Location: LCCOMB_X6_Y11_N26
\VGA_86_image|color_shift_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~6_combout\ = (\VGA_86_image|Add5~38_combout\ & !\VGA_86_image|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add5~38_combout\,
	datad => \VGA_86_image|Equal2~9_combout\,
	combout => \VGA_86_image|color_shift_count~6_combout\);

-- Location: FF_X6_Y11_N27
\VGA_86_image|color_shift_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~6_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(19));

-- Location: LCCOMB_X7_Y11_N10
\VGA_86_image|Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~40_combout\ = (\VGA_86_image|color_shift_count\(20) & (\VGA_86_image|Add5~39\ $ (GND))) # (!\VGA_86_image|color_shift_count\(20) & (!\VGA_86_image|Add5~39\ & VCC))
-- \VGA_86_image|Add5~41\ = CARRY((\VGA_86_image|color_shift_count\(20) & !\VGA_86_image|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(20),
	datad => VCC,
	cin => \VGA_86_image|Add5~39\,
	combout => \VGA_86_image|Add5~40_combout\,
	cout => \VGA_86_image|Add5~41\);

-- Location: LCCOMB_X6_Y11_N6
\VGA_86_image|color_shift_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~7_combout\ = (\VGA_86_image|Add5~40_combout\ & !\VGA_86_image|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add5~40_combout\,
	datad => \VGA_86_image|Equal2~9_combout\,
	combout => \VGA_86_image|color_shift_count~7_combout\);

-- Location: FF_X6_Y11_N7
\VGA_86_image|color_shift_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~7_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(20));

-- Location: LCCOMB_X7_Y11_N12
\VGA_86_image|Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~42_combout\ = (\VGA_86_image|color_shift_count\(21) & (!\VGA_86_image|Add5~41\)) # (!\VGA_86_image|color_shift_count\(21) & ((\VGA_86_image|Add5~41\) # (GND)))
-- \VGA_86_image|Add5~43\ = CARRY((!\VGA_86_image|Add5~41\) # (!\VGA_86_image|color_shift_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(21),
	datad => VCC,
	cin => \VGA_86_image|Add5~41\,
	combout => \VGA_86_image|Add5~42_combout\,
	cout => \VGA_86_image|Add5~43\);

-- Location: FF_X7_Y11_N13
\VGA_86_image|color_shift_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~42_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(21));

-- Location: LCCOMB_X7_Y11_N14
\VGA_86_image|Add5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~44_combout\ = (\VGA_86_image|color_shift_count\(22) & (\VGA_86_image|Add5~43\ $ (GND))) # (!\VGA_86_image|color_shift_count\(22) & (!\VGA_86_image|Add5~43\ & VCC))
-- \VGA_86_image|Add5~45\ = CARRY((\VGA_86_image|color_shift_count\(22) & !\VGA_86_image|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(22),
	datad => VCC,
	cin => \VGA_86_image|Add5~43\,
	combout => \VGA_86_image|Add5~44_combout\,
	cout => \VGA_86_image|Add5~45\);

-- Location: FF_X7_Y11_N15
\VGA_86_image|color_shift_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~44_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(22));

-- Location: LCCOMB_X7_Y11_N16
\VGA_86_image|Add5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~46_combout\ = (\VGA_86_image|color_shift_count\(23) & (!\VGA_86_image|Add5~45\)) # (!\VGA_86_image|color_shift_count\(23) & ((\VGA_86_image|Add5~45\) # (GND)))
-- \VGA_86_image|Add5~47\ = CARRY((!\VGA_86_image|Add5~45\) # (!\VGA_86_image|color_shift_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(23),
	datad => VCC,
	cin => \VGA_86_image|Add5~45\,
	combout => \VGA_86_image|Add5~46_combout\,
	cout => \VGA_86_image|Add5~47\);

-- Location: LCCOMB_X6_Y11_N16
\VGA_86_image|color_shift_count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~8_combout\ = (!\VGA_86_image|Equal2~9_combout\ & \VGA_86_image|Add5~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal2~9_combout\,
	datad => \VGA_86_image|Add5~46_combout\,
	combout => \VGA_86_image|color_shift_count~8_combout\);

-- Location: FF_X6_Y11_N17
\VGA_86_image|color_shift_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~8_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(23));

-- Location: LCCOMB_X7_Y11_N18
\VGA_86_image|Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~48_combout\ = (\VGA_86_image|color_shift_count\(24) & (\VGA_86_image|Add5~47\ $ (GND))) # (!\VGA_86_image|color_shift_count\(24) & (!\VGA_86_image|Add5~47\ & VCC))
-- \VGA_86_image|Add5~49\ = CARRY((\VGA_86_image|color_shift_count\(24) & !\VGA_86_image|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(24),
	datad => VCC,
	cin => \VGA_86_image|Add5~47\,
	combout => \VGA_86_image|Add5~48_combout\,
	cout => \VGA_86_image|Add5~49\);

-- Location: FF_X7_Y11_N19
\VGA_86_image|color_shift_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~48_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(24));

-- Location: LCCOMB_X7_Y11_N20
\VGA_86_image|Add5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~50_combout\ = (\VGA_86_image|color_shift_count\(25) & (!\VGA_86_image|Add5~49\)) # (!\VGA_86_image|color_shift_count\(25) & ((\VGA_86_image|Add5~49\) # (GND)))
-- \VGA_86_image|Add5~51\ = CARRY((!\VGA_86_image|Add5~49\) # (!\VGA_86_image|color_shift_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(25),
	datad => VCC,
	cin => \VGA_86_image|Add5~49\,
	combout => \VGA_86_image|Add5~50_combout\,
	cout => \VGA_86_image|Add5~51\);

-- Location: FF_X7_Y11_N21
\VGA_86_image|color_shift_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~50_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(25));

-- Location: LCCOMB_X7_Y11_N22
\VGA_86_image|Add5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~52_combout\ = (\VGA_86_image|color_shift_count\(26) & (\VGA_86_image|Add5~51\ $ (GND))) # (!\VGA_86_image|color_shift_count\(26) & (!\VGA_86_image|Add5~51\ & VCC))
-- \VGA_86_image|Add5~53\ = CARRY((\VGA_86_image|color_shift_count\(26) & !\VGA_86_image|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(26),
	datad => VCC,
	cin => \VGA_86_image|Add5~51\,
	combout => \VGA_86_image|Add5~52_combout\,
	cout => \VGA_86_image|Add5~53\);

-- Location: FF_X7_Y11_N23
\VGA_86_image|color_shift_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~52_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(26));

-- Location: LCCOMB_X7_Y11_N24
\VGA_86_image|Add5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~54_combout\ = (\VGA_86_image|color_shift_count\(27) & (!\VGA_86_image|Add5~53\)) # (!\VGA_86_image|color_shift_count\(27) & ((\VGA_86_image|Add5~53\) # (GND)))
-- \VGA_86_image|Add5~55\ = CARRY((!\VGA_86_image|Add5~53\) # (!\VGA_86_image|color_shift_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(27),
	datad => VCC,
	cin => \VGA_86_image|Add5~53\,
	combout => \VGA_86_image|Add5~54_combout\,
	cout => \VGA_86_image|Add5~55\);

-- Location: FF_X7_Y11_N25
\VGA_86_image|color_shift_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~54_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(27));

-- Location: LCCOMB_X7_Y11_N26
\VGA_86_image|Add5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~56_combout\ = (\VGA_86_image|color_shift_count\(28) & (\VGA_86_image|Add5~55\ $ (GND))) # (!\VGA_86_image|color_shift_count\(28) & (!\VGA_86_image|Add5~55\ & VCC))
-- \VGA_86_image|Add5~57\ = CARRY((\VGA_86_image|color_shift_count\(28) & !\VGA_86_image|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(28),
	datad => VCC,
	cin => \VGA_86_image|Add5~55\,
	combout => \VGA_86_image|Add5~56_combout\,
	cout => \VGA_86_image|Add5~57\);

-- Location: FF_X7_Y11_N27
\VGA_86_image|color_shift_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~56_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(28));

-- Location: LCCOMB_X6_Y11_N28
\VGA_86_image|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~7_combout\ = (!\VGA_86_image|color_shift_count\(25) & (!\VGA_86_image|color_shift_count\(27) & (!\VGA_86_image|color_shift_count\(26) & !\VGA_86_image|color_shift_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(25),
	datab => \VGA_86_image|color_shift_count\(27),
	datac => \VGA_86_image|color_shift_count\(26),
	datad => \VGA_86_image|color_shift_count\(24),
	combout => \VGA_86_image|Equal2~7_combout\);

-- Location: LCCOMB_X7_Y11_N28
\VGA_86_image|Add5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~58_combout\ = (\VGA_86_image|color_shift_count\(29) & (!\VGA_86_image|Add5~57\)) # (!\VGA_86_image|color_shift_count\(29) & ((\VGA_86_image|Add5~57\) # (GND)))
-- \VGA_86_image|Add5~59\ = CARRY((!\VGA_86_image|Add5~57\) # (!\VGA_86_image|color_shift_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(29),
	datad => VCC,
	cin => \VGA_86_image|Add5~57\,
	combout => \VGA_86_image|Add5~58_combout\,
	cout => \VGA_86_image|Add5~59\);

-- Location: FF_X7_Y11_N29
\VGA_86_image|color_shift_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~58_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(29));

-- Location: LCCOMB_X7_Y11_N30
\VGA_86_image|Add5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~60_combout\ = \VGA_86_image|color_shift_count\(30) $ (!\VGA_86_image|Add5~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(30),
	cin => \VGA_86_image|Add5~59\,
	combout => \VGA_86_image|Add5~60_combout\);

-- Location: FF_X7_Y11_N31
\VGA_86_image|color_shift_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add5~60_combout\,
	ena => \VGA_86_image|ALT_INV_blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(30));

-- Location: LCCOMB_X6_Y11_N22
\VGA_86_image|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~8_combout\ = (!\VGA_86_image|color_shift_count\(28) & (\VGA_86_image|Equal2~7_combout\ & (!\VGA_86_image|color_shift_count\(30) & !\VGA_86_image|color_shift_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(28),
	datab => \VGA_86_image|Equal2~7_combout\,
	datac => \VGA_86_image|color_shift_count\(30),
	datad => \VGA_86_image|color_shift_count\(29),
	combout => \VGA_86_image|Equal2~8_combout\);

-- Location: LCCOMB_X6_Y11_N18
\VGA_86_image|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~6_combout\ = (\VGA_86_image|color_shift_count\(23) & (!\VGA_86_image|color_shift_count\(22) & (!\VGA_86_image|color_shift_count\(21) & \VGA_86_image|color_shift_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(23),
	datab => \VGA_86_image|color_shift_count\(22),
	datac => \VGA_86_image|color_shift_count\(21),
	datad => \VGA_86_image|color_shift_count\(20),
	combout => \VGA_86_image|Equal2~6_combout\);

-- Location: LCCOMB_X6_Y12_N10
\VGA_86_image|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~2_combout\ = (\VGA_86_image|color_shift_count\(9) & (!\VGA_86_image|color_shift_count\(11) & (\VGA_86_image|color_shift_count\(10) & !\VGA_86_image|color_shift_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(9),
	datab => \VGA_86_image|color_shift_count\(11),
	datac => \VGA_86_image|color_shift_count\(10),
	datad => \VGA_86_image|color_shift_count\(8),
	combout => \VGA_86_image|Equal2~2_combout\);

-- Location: LCCOMB_X7_Y12_N0
\VGA_86_image|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~0_combout\ = (\VGA_86_image|color_shift_count\(7) & (!\VGA_86_image|color_shift_count\(5) & (!\VGA_86_image|color_shift_count\(6) & !\VGA_86_image|color_shift_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(7),
	datab => \VGA_86_image|color_shift_count\(5),
	datac => \VGA_86_image|color_shift_count\(6),
	datad => \VGA_86_image|color_shift_count\(4),
	combout => \VGA_86_image|Equal2~0_combout\);

-- Location: LCCOMB_X6_Y11_N30
\VGA_86_image|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~3_combout\ = (\VGA_86_image|color_shift_count\(12) & (!\VGA_86_image|color_shift_count\(13) & (!\VGA_86_image|color_shift_count\(14) & \VGA_86_image|color_shift_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(12),
	datab => \VGA_86_image|color_shift_count\(13),
	datac => \VGA_86_image|color_shift_count\(14),
	datad => \VGA_86_image|color_shift_count\(15),
	combout => \VGA_86_image|Equal2~3_combout\);

-- Location: LCCOMB_X8_Y12_N8
\VGA_86_image|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~1_combout\ = (!\VGA_86_image|color_shift_count\(0) & (!\VGA_86_image|color_shift_count\(2) & (!\VGA_86_image|color_shift_count\(1) & !\VGA_86_image|color_shift_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(0),
	datab => \VGA_86_image|color_shift_count\(2),
	datac => \VGA_86_image|color_shift_count\(1),
	datad => \VGA_86_image|color_shift_count\(3),
	combout => \VGA_86_image|Equal2~1_combout\);

-- Location: LCCOMB_X6_Y11_N8
\VGA_86_image|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~4_combout\ = (\VGA_86_image|Equal2~2_combout\ & (\VGA_86_image|Equal2~0_combout\ & (\VGA_86_image|Equal2~3_combout\ & \VGA_86_image|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal2~2_combout\,
	datab => \VGA_86_image|Equal2~0_combout\,
	datac => \VGA_86_image|Equal2~3_combout\,
	datad => \VGA_86_image|Equal2~1_combout\,
	combout => \VGA_86_image|Equal2~4_combout\);

-- Location: LCCOMB_X6_Y11_N20
\VGA_86_image|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~5_combout\ = (!\VGA_86_image|color_shift_count\(18) & (!\VGA_86_image|color_shift_count\(17) & (\VGA_86_image|color_shift_count\(19) & !\VGA_86_image|color_shift_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(18),
	datab => \VGA_86_image|color_shift_count\(17),
	datac => \VGA_86_image|color_shift_count\(19),
	datad => \VGA_86_image|color_shift_count\(16),
	combout => \VGA_86_image|Equal2~5_combout\);

-- Location: LCCOMB_X6_Y11_N0
\VGA_86_image|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~9_combout\ = (\VGA_86_image|Equal2~8_combout\ & (\VGA_86_image|Equal2~6_combout\ & (\VGA_86_image|Equal2~4_combout\ & \VGA_86_image|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal2~8_combout\,
	datab => \VGA_86_image|Equal2~6_combout\,
	datac => \VGA_86_image|Equal2~4_combout\,
	datad => \VGA_86_image|Equal2~5_combout\,
	combout => \VGA_86_image|Equal2~9_combout\);

-- Location: LCCOMB_X6_Y12_N28
\VGA_86_image|r_vals_count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals_count[0]~2_combout\ = (!\VGA_86_image|blank_2~q\ & (\VGA_86_image|Equal2~9_combout\ & \VGA_86_image|r_vals_count~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|Equal2~9_combout\,
	datac => \VGA_86_image|r_vals_count~0_combout\,
	combout => \VGA_86_image|r_vals_count[0]~2_combout\);

-- Location: LCCOMB_X6_Y12_N4
\VGA_86_image|r_vals_count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals_count[1]~3_combout\ = \VGA_86_image|r_vals_count\(1) $ (((\VGA_86_image|r_vals_count[0]~2_combout\ & \VGA_86_image|r_vals_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|r_vals_count[0]~2_combout\,
	datac => \VGA_86_image|r_vals_count\(1),
	datad => \VGA_86_image|r_vals_count\(0),
	combout => \VGA_86_image|r_vals_count[1]~3_combout\);

-- Location: FF_X6_Y12_N5
\VGA_86_image|r_vals_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_vals_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_vals_count\(1));

-- Location: LCCOMB_X6_Y12_N30
\VGA_86_image|r_vals_count[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals_count[2]~4_combout\ = \VGA_86_image|r_vals_count\(2) $ (((\VGA_86_image|r_vals_count[0]~2_combout\ & (\VGA_86_image|r_vals_count\(1) & \VGA_86_image|r_vals_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|r_vals_count[0]~2_combout\,
	datab => \VGA_86_image|r_vals_count\(1),
	datac => \VGA_86_image|r_vals_count\(2),
	datad => \VGA_86_image|r_vals_count\(0),
	combout => \VGA_86_image|r_vals_count[2]~4_combout\);

-- Location: FF_X6_Y12_N31
\VGA_86_image|r_vals_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_vals_count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_vals_count\(2));

-- Location: LCCOMB_X6_Y12_N14
\VGA_86_image|r_vals_count[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals_count[1]~5_combout\ = (!\VGA_86_image|blank_2~q\ & (\VGA_86_image|Equal2~9_combout\ & (\VGA_86_image|r_vals_count~0_combout\ & \VGA_86_image|r_vals_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|Equal2~9_combout\,
	datac => \VGA_86_image|r_vals_count~0_combout\,
	datad => \VGA_86_image|r_vals_count\(0),
	combout => \VGA_86_image|r_vals_count[1]~5_combout\);

-- Location: LCCOMB_X6_Y12_N8
\VGA_86_image|r_vals_count[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals_count[3]~6_combout\ = \VGA_86_image|r_vals_count\(3) $ (((\VGA_86_image|r_vals_count\(2) & (\VGA_86_image|r_vals_count[1]~5_combout\ & \VGA_86_image|r_vals_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|r_vals_count\(2),
	datab => \VGA_86_image|r_vals_count[1]~5_combout\,
	datac => \VGA_86_image|r_vals_count\(3),
	datad => \VGA_86_image|r_vals_count\(1),
	combout => \VGA_86_image|r_vals_count[3]~6_combout\);

-- Location: FF_X6_Y12_N9
\VGA_86_image|r_vals_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_vals_count[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_vals_count\(3));

-- Location: LCCOMB_X6_Y12_N26
\VGA_86_image|g_vals_count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals_count[0]~2_combout\ = (\VGA_86_image|r_vals_count\(2) & (\VGA_86_image|r_vals_count\(3) & (\VGA_86_image|r_vals_count\(1) & \VGA_86_image|r_vals_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|r_vals_count\(2),
	datab => \VGA_86_image|r_vals_count\(3),
	datac => \VGA_86_image|r_vals_count\(1),
	datad => \VGA_86_image|r_vals_count\(0),
	combout => \VGA_86_image|g_vals_count[0]~2_combout\);

-- Location: LCCOMB_X1_Y11_N26
\VGA_86_image|b_vals_count[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_vals_count[3]~4_combout\ = \VGA_86_image|b_vals_count\(3) $ (((\VGA_86_image|g_vals_count~1_combout\ & \VGA_86_image|b_vals_count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|g_vals_count~1_combout\,
	datac => \VGA_86_image|b_vals_count\(3),
	datad => \VGA_86_image|b_vals_count[0]~0_combout\,
	combout => \VGA_86_image|b_vals_count[3]~4_combout\);

-- Location: FF_X1_Y11_N27
\VGA_86_image|b_vals_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_vals_count[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_vals_count\(3));

-- Location: LCCOMB_X1_Y11_N14
\VGA_86_image|g_vals_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals_count~3_combout\ = ((\VGA_86_image|b_vals_count\(3) & \VGA_86_image|g_vals_count~1_combout\)) # (!\VGA_86_image|g_vals_count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|b_vals_count\(3),
	datac => \VGA_86_image|g_vals_count~0_combout\,
	datad => \VGA_86_image|g_vals_count~1_combout\,
	combout => \VGA_86_image|g_vals_count~3_combout\);

-- Location: LCCOMB_X2_Y11_N16
\VGA_86_image|g_vals_count[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals_count[0]~4_combout\ = (\VGA_86_image|g_vals_count[0]~2_combout\ & (\VGA_86_image|g_vals_count~3_combout\ & (\VGA_86_image|Equal2~9_combout\ & !\VGA_86_image|blank_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|g_vals_count[0]~2_combout\,
	datab => \VGA_86_image|g_vals_count~3_combout\,
	datac => \VGA_86_image|Equal2~9_combout\,
	datad => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|g_vals_count[0]~4_combout\);

-- Location: LCCOMB_X2_Y11_N12
\VGA_86_image|g_vals_count[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals_count[0]~5_combout\ = \VGA_86_image|g_vals_count\(0) $ (\VGA_86_image|g_vals_count[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|g_vals_count\(0),
	datad => \VGA_86_image|g_vals_count[0]~4_combout\,
	combout => \VGA_86_image|g_vals_count[0]~5_combout\);

-- Location: FF_X2_Y11_N13
\VGA_86_image|g_vals_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_vals_count[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_vals_count\(0));

-- Location: LCCOMB_X2_Y11_N30
\VGA_86_image|g_vals_count[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals_count[1]~6_combout\ = \VGA_86_image|g_vals_count\(1) $ (((\VGA_86_image|g_vals_count[0]~4_combout\ & \VGA_86_image|g_vals_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|g_vals_count[0]~4_combout\,
	datac => \VGA_86_image|g_vals_count\(1),
	datad => \VGA_86_image|g_vals_count\(0),
	combout => \VGA_86_image|g_vals_count[1]~6_combout\);

-- Location: FF_X2_Y11_N31
\VGA_86_image|g_vals_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_vals_count[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_vals_count\(1));

-- Location: LCCOMB_X2_Y11_N18
\VGA_86_image|g_vals_count[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals_count[2]~8_combout\ = (\VGA_86_image|g_vals_count[0]~4_combout\ & (\VGA_86_image|g_vals_count\(1) & \VGA_86_image|g_vals_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|g_vals_count[0]~4_combout\,
	datac => \VGA_86_image|g_vals_count\(1),
	datad => \VGA_86_image|g_vals_count\(0),
	combout => \VGA_86_image|g_vals_count[2]~8_combout\);

-- Location: LCCOMB_X2_Y11_N0
\VGA_86_image|g_vals_count[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals_count[2]~7_combout\ = \VGA_86_image|g_vals_count\(2) $ (((\VGA_86_image|g_vals_count\(1) & (\VGA_86_image|g_vals_count[0]~4_combout\ & \VGA_86_image|g_vals_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|g_vals_count\(1),
	datab => \VGA_86_image|g_vals_count[0]~4_combout\,
	datac => \VGA_86_image|g_vals_count\(2),
	datad => \VGA_86_image|g_vals_count\(0),
	combout => \VGA_86_image|g_vals_count[2]~7_combout\);

-- Location: FF_X2_Y11_N1
\VGA_86_image|g_vals_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_vals_count[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_vals_count\(2));

-- Location: LCCOMB_X2_Y11_N26
\VGA_86_image|g_vals_count[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals_count[3]~9_combout\ = \VGA_86_image|g_vals_count\(3) $ (((\VGA_86_image|g_vals_count[2]~8_combout\ & \VGA_86_image|g_vals_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|g_vals_count[2]~8_combout\,
	datac => \VGA_86_image|g_vals_count\(3),
	datad => \VGA_86_image|g_vals_count\(2),
	combout => \VGA_86_image|g_vals_count[3]~9_combout\);

-- Location: FF_X2_Y11_N27
\VGA_86_image|g_vals_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_vals_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_vals_count\(3));

-- Location: LCCOMB_X2_Y11_N20
\VGA_86_image|g_vals_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals_count~0_combout\ = (\VGA_86_image|g_vals_count\(3) & (\VGA_86_image|g_vals_count\(2) & (\VGA_86_image|g_vals_count\(1) & \VGA_86_image|g_vals_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|g_vals_count\(3),
	datab => \VGA_86_image|g_vals_count\(2),
	datac => \VGA_86_image|g_vals_count\(1),
	datad => \VGA_86_image|g_vals_count\(0),
	combout => \VGA_86_image|g_vals_count~0_combout\);

-- Location: LCCOMB_X2_Y11_N28
\VGA_86_image|b_vals_count[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_vals_count[0]~0_combout\ = (\VGA_86_image|g_vals_count[0]~2_combout\ & (\VGA_86_image|g_vals_count~0_combout\ & (\VGA_86_image|Equal2~9_combout\ & !\VGA_86_image|blank_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|g_vals_count[0]~2_combout\,
	datab => \VGA_86_image|g_vals_count~0_combout\,
	datac => \VGA_86_image|Equal2~9_combout\,
	datad => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|b_vals_count[0]~0_combout\);

-- Location: LCCOMB_X1_Y11_N20
\VGA_86_image|b_vals_count[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_vals_count[0]~1_combout\ = \VGA_86_image|b_vals_count\(0) $ (\VGA_86_image|b_vals_count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|b_vals_count\(0),
	datad => \VGA_86_image|b_vals_count[0]~0_combout\,
	combout => \VGA_86_image|b_vals_count[0]~1_combout\);

-- Location: FF_X1_Y11_N21
\VGA_86_image|b_vals_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_vals_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_vals_count\(0));

-- Location: LCCOMB_X1_Y11_N22
\VGA_86_image|b_vals_count[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_vals_count[1]~2_combout\ = \VGA_86_image|b_vals_count\(1) $ (((\VGA_86_image|b_vals_count\(0) & \VGA_86_image|b_vals_count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|b_vals_count\(0),
	datac => \VGA_86_image|b_vals_count\(1),
	datad => \VGA_86_image|b_vals_count[0]~0_combout\,
	combout => \VGA_86_image|b_vals_count[1]~2_combout\);

-- Location: FF_X1_Y11_N23
\VGA_86_image|b_vals_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_vals_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_vals_count\(1));

-- Location: LCCOMB_X1_Y11_N24
\VGA_86_image|b_vals_count[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_vals_count[2]~3_combout\ = \VGA_86_image|b_vals_count\(2) $ (((\VGA_86_image|b_vals_count\(1) & (\VGA_86_image|b_vals_count\(0) & \VGA_86_image|b_vals_count[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|b_vals_count\(1),
	datab => \VGA_86_image|b_vals_count\(0),
	datac => \VGA_86_image|b_vals_count\(2),
	datad => \VGA_86_image|b_vals_count[0]~0_combout\,
	combout => \VGA_86_image|b_vals_count[2]~3_combout\);

-- Location: FF_X1_Y11_N25
\VGA_86_image|b_vals_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_vals_count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_vals_count\(2));

-- Location: LCCOMB_X1_Y11_N12
\VGA_86_image|g_vals_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals_count~1_combout\ = (\VGA_86_image|b_vals_count\(2) & (\VGA_86_image|b_vals_count\(1) & \VGA_86_image|b_vals_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|b_vals_count\(2),
	datac => \VGA_86_image|b_vals_count\(1),
	datad => \VGA_86_image|b_vals_count\(0),
	combout => \VGA_86_image|g_vals_count~1_combout\);

-- Location: LCCOMB_X2_Y11_N14
\VGA_86_image|r_vals_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals_count~0_combout\ = ((\VGA_86_image|g_vals_count~1_combout\ & (\VGA_86_image|g_vals_count~0_combout\ & \VGA_86_image|b_vals_count\(3)))) # (!\VGA_86_image|g_vals_count[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|g_vals_count~1_combout\,
	datab => \VGA_86_image|g_vals_count~0_combout\,
	datac => \VGA_86_image|b_vals_count\(3),
	datad => \VGA_86_image|g_vals_count[0]~2_combout\,
	combout => \VGA_86_image|r_vals_count~0_combout\);

-- Location: LCCOMB_X6_Y12_N18
\VGA_86_image|r_vals_count[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals_count[0]~1_combout\ = \VGA_86_image|r_vals_count\(0) $ (((!\VGA_86_image|blank_2~q\ & (\VGA_86_image|Equal2~9_combout\ & \VGA_86_image|r_vals_count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|Equal2~9_combout\,
	datac => \VGA_86_image|r_vals_count\(0),
	datad => \VGA_86_image|r_vals_count~0_combout\,
	combout => \VGA_86_image|r_vals_count[0]~1_combout\);

-- Location: FF_X6_Y12_N19
\VGA_86_image|r_vals_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_vals_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_vals_count\(0));

-- Location: LCCOMB_X6_Y12_N20
\VGA_86_image|r_vals~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals~0_combout\ = (\VGA_86_image|r_vals_count\(0) & !\VGA_86_image|blank_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|r_vals_count\(0),
	datac => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|r_vals~0_combout\);

-- Location: FF_X6_Y12_N21
\VGA_86_image|r_vals[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_vals~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_vals\(0));

-- Location: LCCOMB_X6_Y12_N16
\VGA_86_image|r_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[0]~0_combout\ = !\VGA_86_image|r_vals\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|r_vals\(0),
	combout => \VGA_86_image|r_out[0]~0_combout\);

-- Location: FF_X6_Y12_N17
\VGA_86_image|r_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(0));

-- Location: LCCOMB_X6_Y12_N22
\VGA_86_image|r_vals~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals~1_combout\ = (!\VGA_86_image|blank_2~q\ & \VGA_86_image|r_vals_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datac => \VGA_86_image|r_vals_count\(1),
	combout => \VGA_86_image|r_vals~1_combout\);

-- Location: FF_X6_Y12_N23
\VGA_86_image|r_vals[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_vals~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_vals\(1));

-- Location: LCCOMB_X6_Y12_N2
\VGA_86_image|r_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[1]~1_combout\ = !\VGA_86_image|r_vals\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|r_vals\(1),
	combout => \VGA_86_image|r_out[1]~1_combout\);

-- Location: FF_X6_Y12_N3
\VGA_86_image|r_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(1));

-- Location: LCCOMB_X6_Y12_N0
\VGA_86_image|r_vals~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals~2_combout\ = (!\VGA_86_image|blank_2~q\ & \VGA_86_image|r_vals_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datac => \VGA_86_image|r_vals_count\(2),
	combout => \VGA_86_image|r_vals~2_combout\);

-- Location: FF_X6_Y12_N1
\VGA_86_image|r_vals[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_vals~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_vals\(2));

-- Location: LCCOMB_X14_Y12_N8
\VGA_86_image|r_out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[2]~2_combout\ = !\VGA_86_image|r_vals\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|r_vals\(2),
	combout => \VGA_86_image|r_out[2]~2_combout\);

-- Location: FF_X14_Y12_N9
\VGA_86_image|r_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(2));

-- Location: LCCOMB_X6_Y11_N24
\VGA_86_image|r_vals~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_vals~3_combout\ = (!\VGA_86_image|blank_2~q\ & \VGA_86_image|r_vals_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|blank_2~q\,
	datad => \VGA_86_image|r_vals_count\(3),
	combout => \VGA_86_image|r_vals~3_combout\);

-- Location: FF_X6_Y11_N25
\VGA_86_image|r_vals[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_vals~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_vals\(3));

-- Location: LCCOMB_X13_Y11_N24
\VGA_86_image|r_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[3]~3_combout\ = !\VGA_86_image|r_vals\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|r_vals\(3),
	combout => \VGA_86_image|r_out[3]~3_combout\);

-- Location: FF_X13_Y11_N25
\VGA_86_image|r_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_out[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(3));

-- Location: LCCOMB_X1_Y11_N2
\VGA_86_image|g_vals~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals~0_combout\ = (\VGA_86_image|g_vals_count\(0) & !\VGA_86_image|blank_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|g_vals_count\(0),
	datac => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|g_vals~0_combout\);

-- Location: FF_X1_Y11_N3
\VGA_86_image|g_vals[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_vals~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_vals\(0));

-- Location: LCCOMB_X2_Y11_N8
\VGA_86_image|g_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[0]~feeder_combout\ = \VGA_86_image|g_vals\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|g_vals\(0),
	combout => \VGA_86_image|g_out[0]~feeder_combout\);

-- Location: FF_X2_Y11_N9
\VGA_86_image|g_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_out\(0));

-- Location: LCCOMB_X2_Y11_N6
\VGA_86_image|g_vals~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals~1_combout\ = (\VGA_86_image|g_vals_count\(1) & !\VGA_86_image|blank_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|g_vals_count\(1),
	datad => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|g_vals~1_combout\);

-- Location: FF_X2_Y11_N7
\VGA_86_image|g_vals[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_vals~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_vals\(1));

-- Location: LCCOMB_X2_Y11_N10
\VGA_86_image|g_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[1]~feeder_combout\ = \VGA_86_image|g_vals\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|g_vals\(1),
	combout => \VGA_86_image|g_out[1]~feeder_combout\);

-- Location: FF_X2_Y11_N11
\VGA_86_image|g_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_out\(1));

-- Location: LCCOMB_X2_Y11_N24
\VGA_86_image|g_vals~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals~2_combout\ = (\VGA_86_image|g_vals_count\(2) & !\VGA_86_image|blank_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|g_vals_count\(2),
	datad => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|g_vals~2_combout\);

-- Location: FF_X2_Y11_N25
\VGA_86_image|g_vals[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_vals~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_vals\(2));

-- Location: LCCOMB_X1_Y11_N16
\VGA_86_image|g_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[2]~feeder_combout\ = \VGA_86_image|g_vals\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|g_vals\(2),
	combout => \VGA_86_image|g_out[2]~feeder_combout\);

-- Location: FF_X1_Y11_N17
\VGA_86_image|g_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_out\(2));

-- Location: LCCOMB_X2_Y11_N2
\VGA_86_image|g_vals~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_vals~3_combout\ = (\VGA_86_image|g_vals_count\(3) & !\VGA_86_image|blank_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|g_vals_count\(3),
	datad => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|g_vals~3_combout\);

-- Location: FF_X2_Y11_N3
\VGA_86_image|g_vals[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_vals~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_vals\(3));

-- Location: LCCOMB_X2_Y11_N4
\VGA_86_image|g_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[3]~feeder_combout\ = \VGA_86_image|g_vals\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|g_vals\(3),
	combout => \VGA_86_image|g_out[3]~feeder_combout\);

-- Location: FF_X2_Y11_N5
\VGA_86_image|g_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_out\(3));

-- Location: LCCOMB_X1_Y11_N28
\VGA_86_image|b_vals~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_vals~0_combout\ = (!\VGA_86_image|blank_2~q\ & \VGA_86_image|b_vals_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|blank_2~q\,
	datad => \VGA_86_image|b_vals_count\(0),
	combout => \VGA_86_image|b_vals~0_combout\);

-- Location: FF_X1_Y11_N29
\VGA_86_image|b_vals[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_vals~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_vals\(0));

-- Location: LCCOMB_X1_Y11_N10
\VGA_86_image|b_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[0]~0_combout\ = !\VGA_86_image|b_vals\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|b_vals\(0),
	combout => \VGA_86_image|b_out[0]~0_combout\);

-- Location: FF_X1_Y11_N11
\VGA_86_image|b_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_out\(0));

-- Location: LCCOMB_X1_Y11_N30
\VGA_86_image|b_vals~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_vals~1_combout\ = (\VGA_86_image|b_vals_count\(1) & !\VGA_86_image|blank_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|b_vals_count\(1),
	datac => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|b_vals~1_combout\);

-- Location: FF_X1_Y11_N31
\VGA_86_image|b_vals[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_vals~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_vals\(1));

-- Location: LCCOMB_X1_Y11_N4
\VGA_86_image|b_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[1]~1_combout\ = !\VGA_86_image|b_vals\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|b_vals\(1),
	combout => \VGA_86_image|b_out[1]~1_combout\);

-- Location: FF_X1_Y11_N5
\VGA_86_image|b_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_out\(1));

-- Location: LCCOMB_X1_Y11_N8
\VGA_86_image|b_vals~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_vals~2_combout\ = (!\VGA_86_image|blank_2~q\ & \VGA_86_image|b_vals_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|blank_2~q\,
	datad => \VGA_86_image|b_vals_count\(2),
	combout => \VGA_86_image|b_vals~2_combout\);

-- Location: FF_X1_Y11_N9
\VGA_86_image|b_vals[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_vals~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_vals\(2));

-- Location: LCCOMB_X1_Y11_N6
\VGA_86_image|b_out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[2]~2_combout\ = !\VGA_86_image|b_vals\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|b_vals\(2),
	combout => \VGA_86_image|b_out[2]~2_combout\);

-- Location: FF_X1_Y11_N7
\VGA_86_image|b_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_out\(2));

-- Location: LCCOMB_X1_Y11_N18
\VGA_86_image|b_vals~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_vals~3_combout\ = (\VGA_86_image|b_vals_count\(3) & !\VGA_86_image|blank_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|b_vals_count\(3),
	datac => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|b_vals~3_combout\);

-- Location: FF_X1_Y11_N19
\VGA_86_image|b_vals[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_vals~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_vals\(3));

-- Location: LCCOMB_X1_Y11_N0
\VGA_86_image|b_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[3]~3_combout\ = !\VGA_86_image|b_vals\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|b_vals\(3),
	combout => \VGA_86_image|b_out[3]~3_combout\);

-- Location: FF_X1_Y11_N1
\VGA_86_image|b_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|b_out[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_out\(3));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


