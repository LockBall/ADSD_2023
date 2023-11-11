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

-- DATE "11/11/2023 00:11:08"

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
SIGNAL \VGA_86_image|v_count[8]~27\ : std_logic;
SIGNAL \VGA_86_image|v_count[9]~28_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[0]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[0]~13\ : std_logic;
SIGNAL \VGA_86_image|h_count[1]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[1]~15\ : std_logic;
SIGNAL \VGA_86_image|h_count[2]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[2]~17\ : std_logic;
SIGNAL \VGA_86_image|h_count[3]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[3]~19\ : std_logic;
SIGNAL \VGA_86_image|h_count[4]~20_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[4]~21\ : std_logic;
SIGNAL \VGA_86_image|h_count[5]~22_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[5]~23\ : std_logic;
SIGNAL \VGA_86_image|h_count[6]~24_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[6]~25\ : std_logic;
SIGNAL \VGA_86_image|h_count[7]~26_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~22_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[7]~27\ : std_logic;
SIGNAL \VGA_86_image|h_count[8]~28_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[8]~29\ : std_logic;
SIGNAL \VGA_86_image|h_count[9]~30_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[9]~31\ : std_logic;
SIGNAL \VGA_86_image|h_count[10]~32_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[9]~11_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[4]~30_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[0]~11\ : std_logic;
SIGNAL \VGA_86_image|v_count[1]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[1]~13\ : std_logic;
SIGNAL \VGA_86_image|v_count[2]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[2]~15\ : std_logic;
SIGNAL \VGA_86_image|v_count[3]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[3]~17\ : std_logic;
SIGNAL \VGA_86_image|v_count[4]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[4]~19\ : std_logic;
SIGNAL \VGA_86_image|v_count[5]~20_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[5]~21\ : std_logic;
SIGNAL \VGA_86_image|v_count[6]~22_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[6]~23\ : std_logic;
SIGNAL \VGA_86_image|v_count[7]~24_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[7]~25\ : std_logic;
SIGNAL \VGA_86_image|v_count[8]~26_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan5~0_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~16_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~17_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~18_combout\ : std_logic;
SIGNAL \VGA_86_image|v_sync_1~q\ : std_logic;
SIGNAL \VGA_86_image|v_sync_2~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|v_sync_2~q\ : std_logic;
SIGNAL \VGA_86_image|v_sync_out~q\ : std_logic;
SIGNAL \VGA_86_image|process_1~3_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~25_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~19_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~20_combout\ : std_logic;
SIGNAL \VGA_86_image|h_sync_1~q\ : std_logic;
SIGNAL \VGA_86_image|h_sync_2~q\ : std_logic;
SIGNAL \VGA_86_image|h_sync_out~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|h_sync_out~q\ : std_logic;
SIGNAL \VGA_86_image|Add10~0_combout\ : std_logic;
SIGNAL \VGA_86_image|square_pos_count~1_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[2]~8_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[0]~28_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[1]~10_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[1]~11\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[2]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[2]~13\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[3]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[3]~15\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[4]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[4]~17\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[5]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[5]~19\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[6]~20_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[6]~21\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[7]~22_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[3]~26_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[7]~23\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[8]~24_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[8]~25\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[9]~26_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[3]~25_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[3]~27_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[3]~28_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~1\ : std_logic;
SIGNAL \VGA_86_image|Add4~3\ : std_logic;
SIGNAL \VGA_86_image|Add4~5\ : std_logic;
SIGNAL \VGA_86_image|Add4~7\ : std_logic;
SIGNAL \VGA_86_image|Add4~9\ : std_logic;
SIGNAL \VGA_86_image|Add4~11\ : std_logic;
SIGNAL \VGA_86_image|Add4~13\ : std_logic;
SIGNAL \VGA_86_image|Add4~14_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan5~1_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~23_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~24_combout\ : std_logic;
SIGNAL \VGA_86_image|blank_1~q\ : std_logic;
SIGNAL \VGA_86_image|blank_2~q\ : std_logic;
SIGNAL \VGA_86_image|Add4~12_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~0_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan8~1_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan8~3_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan8~5_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan8~7_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan8~9_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan8~11_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan8~13_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan8~15_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan8~16_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[3]~24_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~1\ : std_logic;
SIGNAL \VGA_86_image|Add10~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~3\ : std_logic;
SIGNAL \VGA_86_image|Add10~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~5\ : std_logic;
SIGNAL \VGA_86_image|Add10~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~7\ : std_logic;
SIGNAL \VGA_86_image|Add10~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~9\ : std_logic;
SIGNAL \VGA_86_image|Add10~10_combout\ : std_logic;
SIGNAL \VGA_86_image|square_pos_count~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~11\ : std_logic;
SIGNAL \VGA_86_image|Add10~12_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~13\ : std_logic;
SIGNAL \VGA_86_image|Add10~14_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~15\ : std_logic;
SIGNAL \VGA_86_image|Add10~16_combout\ : std_logic;
SIGNAL \VGA_86_image|square_pos_count~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~17\ : std_logic;
SIGNAL \VGA_86_image|Add10~18_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~19\ : std_logic;
SIGNAL \VGA_86_image|Add10~20_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~21\ : std_logic;
SIGNAL \VGA_86_image|Add10~22_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~23\ : std_logic;
SIGNAL \VGA_86_image|Add10~24_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~25\ : std_logic;
SIGNAL \VGA_86_image|Add10~26_combout\ : std_logic;
SIGNAL \VGA_86_image|square_pos_count~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~27\ : std_logic;
SIGNAL \VGA_86_image|Add10~28_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~29\ : std_logic;
SIGNAL \VGA_86_image|Add10~30_combout\ : std_logic;
SIGNAL \VGA_86_image|square_pos_count~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~31\ : std_logic;
SIGNAL \VGA_86_image|Add10~32_combout\ : std_logic;
SIGNAL \VGA_86_image|square_pos_count~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~33\ : std_logic;
SIGNAL \VGA_86_image|Add10~34_combout\ : std_logic;
SIGNAL \VGA_86_image|square_pos_count~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~35\ : std_logic;
SIGNAL \VGA_86_image|Add10~36_combout\ : std_logic;
SIGNAL \VGA_86_image|square_pos_count~7_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~37\ : std_logic;
SIGNAL \VGA_86_image|Add10~38_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~39\ : std_logic;
SIGNAL \VGA_86_image|Add10~40_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~41\ : std_logic;
SIGNAL \VGA_86_image|Add10~42_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~43\ : std_logic;
SIGNAL \VGA_86_image|Add10~44_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~45\ : std_logic;
SIGNAL \VGA_86_image|Add10~46_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~47\ : std_logic;
SIGNAL \VGA_86_image|Add10~48_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~49\ : std_logic;
SIGNAL \VGA_86_image|Add10~50_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~51\ : std_logic;
SIGNAL \VGA_86_image|Add10~52_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~53\ : std_logic;
SIGNAL \VGA_86_image|Add10~54_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~7_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~55\ : std_logic;
SIGNAL \VGA_86_image|Add10~56_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~57\ : std_logic;
SIGNAL \VGA_86_image|Add10~58_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~59\ : std_logic;
SIGNAL \VGA_86_image|Add10~60_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~9_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~21_combout\ : std_logic;
SIGNAL \VGA_86_image|square_h_pos[3]~9_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[1]~29_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[2]~9\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[3]~10_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[3]~11\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[4]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[4]~13\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[5]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[5]~15\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[6]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[6]~17\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[7]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[7]~19\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[8]~20_combout\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[8]~21\ : std_logic;
SIGNAL \VGA_86_image|square_v_pos[9]~22_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~1\ : std_logic;
SIGNAL \VGA_86_image|Add5~3\ : std_logic;
SIGNAL \VGA_86_image|Add5~5\ : std_logic;
SIGNAL \VGA_86_image|Add5~7\ : std_logic;
SIGNAL \VGA_86_image|Add5~9\ : std_logic;
SIGNAL \VGA_86_image|Add5~11\ : std_logic;
SIGNAL \VGA_86_image|Add5~12_combout\ : std_logic;
SIGNAL \VGA_86_image|Add2~1\ : std_logic;
SIGNAL \VGA_86_image|Add2~3\ : std_logic;
SIGNAL \VGA_86_image|Add2~5\ : std_logic;
SIGNAL \VGA_86_image|Add2~7\ : std_logic;
SIGNAL \VGA_86_image|Add2~9\ : std_logic;
SIGNAL \VGA_86_image|Add2~11\ : std_logic;
SIGNAL \VGA_86_image|Add2~13\ : std_logic;
SIGNAL \VGA_86_image|Add2~14_combout\ : std_logic;
SIGNAL \VGA_86_image|Add2~12_combout\ : std_logic;
SIGNAL \VGA_86_image|Add2~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add2~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add2~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add2~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add2~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add2~0_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~1_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~3_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~5_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~7_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~9_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~11_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~13_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~15_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~17_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~19_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan6~20_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~0_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan9~1_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan9~3_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan9~5_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan9~7_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan9~9_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan9~11_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan9~13_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan9~15_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan9~17_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan9~18_combout\ : std_logic;
SIGNAL \VGA_86_image|Add3~1\ : std_logic;
SIGNAL \VGA_86_image|Add3~3\ : std_logic;
SIGNAL \VGA_86_image|Add3~5\ : std_logic;
SIGNAL \VGA_86_image|Add3~7\ : std_logic;
SIGNAL \VGA_86_image|Add3~9\ : std_logic;
SIGNAL \VGA_86_image|Add3~11\ : std_logic;
SIGNAL \VGA_86_image|Add3~12_combout\ : std_logic;
SIGNAL \VGA_86_image|Add3~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add3~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add3~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add3~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add3~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add3~0_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~1_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~3_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~5_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~7_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~9_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~11_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~13_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~15_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~17_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~19_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan7~20_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~15_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~0_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~1\ : std_logic;
SIGNAL \VGA_86_image|Add7~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~3\ : std_logic;
SIGNAL \VGA_86_image|Add7~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~5\ : std_logic;
SIGNAL \VGA_86_image|Add7~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~7\ : std_logic;
SIGNAL \VGA_86_image|Add7~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~9\ : std_logic;
SIGNAL \VGA_86_image|Add7~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~11\ : std_logic;
SIGNAL \VGA_86_image|Add7~12_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~13\ : std_logic;
SIGNAL \VGA_86_image|Add7~14_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~15\ : std_logic;
SIGNAL \VGA_86_image|Add7~16_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~17\ : std_logic;
SIGNAL \VGA_86_image|Add7~18_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~19\ : std_logic;
SIGNAL \VGA_86_image|Add7~20_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~21\ : std_logic;
SIGNAL \VGA_86_image|Add7~22_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~23\ : std_logic;
SIGNAL \VGA_86_image|Add7~24_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~25\ : std_logic;
SIGNAL \VGA_86_image|Add7~26_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~27\ : std_logic;
SIGNAL \VGA_86_image|Add7~28_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~29\ : std_logic;
SIGNAL \VGA_86_image|Add7~30_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~31\ : std_logic;
SIGNAL \VGA_86_image|Add7~32_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~33\ : std_logic;
SIGNAL \VGA_86_image|Add7~34_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~35\ : std_logic;
SIGNAL \VGA_86_image|Add7~36_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~37\ : std_logic;
SIGNAL \VGA_86_image|Add7~38_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~39\ : std_logic;
SIGNAL \VGA_86_image|Add7~40_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~7_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~41\ : std_logic;
SIGNAL \VGA_86_image|Add7~42_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~43\ : std_logic;
SIGNAL \VGA_86_image|Add7~44_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~45\ : std_logic;
SIGNAL \VGA_86_image|Add7~46_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~47\ : std_logic;
SIGNAL \VGA_86_image|Add7~48_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~49\ : std_logic;
SIGNAL \VGA_86_image|Add7~50_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~51\ : std_logic;
SIGNAL \VGA_86_image|Add7~52_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~53\ : std_logic;
SIGNAL \VGA_86_image|Add7~54_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~55\ : std_logic;
SIGNAL \VGA_86_image|Add7~56_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~57\ : std_logic;
SIGNAL \VGA_86_image|Add7~58_combout\ : std_logic;
SIGNAL \VGA_86_image|Add7~59\ : std_logic;
SIGNAL \VGA_86_image|Add7~60_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~7_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~9_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[0]~34_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[1]~11_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[8]~27_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[1]~12\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[2]~13_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[2]~14\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[3]~15_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[3]~16\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[4]~17_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[4]~18\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[5]~19_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[5]~20\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[6]~21_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[6]~22\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[7]~23_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[7]~24\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[8]~25_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~0_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[0]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[8]~26\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[9]~28_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~1_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[9]~29\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[10]~30_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~2_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[10]~31\ : std_logic;
SIGNAL \VGA_86_image|rgb_count[11]~32_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~3_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~4_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[0]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~5_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~6_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~7_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~8_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[0]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~9_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[1]~1_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~10_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[2]~2_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~11_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[3]~3_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA_86_image|rgb_2\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA_86_image|rgb_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA_86_image|g_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|square_v_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|square_h_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|r_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|b_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|color_shift_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \VGA_86_image|square_pos_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_key[0]~input_o\ : std_logic;
SIGNAL \VGA_86_image|ALT_INV_b_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|ALT_INV_g_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA_86_image|ALT_INV_r_out\ : std_logic_vector(0 DOWNTO 0);

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
\VGA_86_image|ALT_INV_b_out\(3) <= NOT \VGA_86_image|b_out\(3);
\VGA_86_image|ALT_INV_b_out\(2) <= NOT \VGA_86_image|b_out\(2);
\VGA_86_image|ALT_INV_b_out\(1) <= NOT \VGA_86_image|b_out\(1);
\VGA_86_image|ALT_INV_b_out\(0) <= NOT \VGA_86_image|b_out\(0);
\VGA_86_image|ALT_INV_g_out\(0) <= NOT \VGA_86_image|g_out\(0);
\VGA_86_image|ALT_INV_r_out\(0) <= NOT \VGA_86_image|r_out\(0);

-- Location: LCCOMB_X44_Y44_N16
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
	i => \VGA_86_image|r_out\(1),
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
	i => \VGA_86_image|r_out\(2),
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
	i => \VGA_86_image|r_out\(3),
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
	i => \VGA_86_image|ALT_INV_g_out\(0),
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

-- Location: LCCOMB_X39_Y34_N6
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

-- Location: LCCOMB_X39_Y34_N22
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

-- Location: LCCOMB_X39_Y34_N24
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

-- Location: LCCOMB_X40_Y37_N0
\VGA_86_image|h_count[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[0]~12_combout\ = \VGA_86_image|h_count\(0) $ (VCC)
-- \VGA_86_image|h_count[0]~13\ = CARRY(\VGA_86_image|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(0),
	datad => VCC,
	combout => \VGA_86_image|h_count[0]~12_combout\,
	cout => \VGA_86_image|h_count[0]~13\);

-- Location: FF_X40_Y37_N1
\VGA_86_image|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[0]~12_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(0));

-- Location: LCCOMB_X40_Y37_N2
\VGA_86_image|h_count[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[1]~14_combout\ = (\VGA_86_image|h_count\(1) & (!\VGA_86_image|h_count[0]~13\)) # (!\VGA_86_image|h_count\(1) & ((\VGA_86_image|h_count[0]~13\) # (GND)))
-- \VGA_86_image|h_count[1]~15\ = CARRY((!\VGA_86_image|h_count[0]~13\) # (!\VGA_86_image|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(1),
	datad => VCC,
	cin => \VGA_86_image|h_count[0]~13\,
	combout => \VGA_86_image|h_count[1]~14_combout\,
	cout => \VGA_86_image|h_count[1]~15\);

-- Location: FF_X40_Y37_N3
\VGA_86_image|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[1]~14_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(1));

-- Location: LCCOMB_X40_Y37_N4
\VGA_86_image|h_count[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[2]~16_combout\ = (\VGA_86_image|h_count\(2) & (\VGA_86_image|h_count[1]~15\ $ (GND))) # (!\VGA_86_image|h_count\(2) & (!\VGA_86_image|h_count[1]~15\ & VCC))
-- \VGA_86_image|h_count[2]~17\ = CARRY((\VGA_86_image|h_count\(2) & !\VGA_86_image|h_count[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(2),
	datad => VCC,
	cin => \VGA_86_image|h_count[1]~15\,
	combout => \VGA_86_image|h_count[2]~16_combout\,
	cout => \VGA_86_image|h_count[2]~17\);

-- Location: FF_X40_Y37_N5
\VGA_86_image|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[2]~16_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(2));

-- Location: LCCOMB_X40_Y37_N6
\VGA_86_image|h_count[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[3]~18_combout\ = (\VGA_86_image|h_count\(3) & (!\VGA_86_image|h_count[2]~17\)) # (!\VGA_86_image|h_count\(3) & ((\VGA_86_image|h_count[2]~17\) # (GND)))
-- \VGA_86_image|h_count[3]~19\ = CARRY((!\VGA_86_image|h_count[2]~17\) # (!\VGA_86_image|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(3),
	datad => VCC,
	cin => \VGA_86_image|h_count[2]~17\,
	combout => \VGA_86_image|h_count[3]~18_combout\,
	cout => \VGA_86_image|h_count[3]~19\);

-- Location: FF_X40_Y37_N7
\VGA_86_image|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[3]~18_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(3));

-- Location: LCCOMB_X40_Y37_N8
\VGA_86_image|h_count[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[4]~20_combout\ = (\VGA_86_image|h_count\(4) & (\VGA_86_image|h_count[3]~19\ $ (GND))) # (!\VGA_86_image|h_count\(4) & (!\VGA_86_image|h_count[3]~19\ & VCC))
-- \VGA_86_image|h_count[4]~21\ = CARRY((\VGA_86_image|h_count\(4) & !\VGA_86_image|h_count[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(4),
	datad => VCC,
	cin => \VGA_86_image|h_count[3]~19\,
	combout => \VGA_86_image|h_count[4]~20_combout\,
	cout => \VGA_86_image|h_count[4]~21\);

-- Location: FF_X40_Y37_N9
\VGA_86_image|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[4]~20_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(4));

-- Location: LCCOMB_X40_Y37_N10
\VGA_86_image|h_count[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[5]~22_combout\ = (\VGA_86_image|h_count\(5) & (!\VGA_86_image|h_count[4]~21\)) # (!\VGA_86_image|h_count\(5) & ((\VGA_86_image|h_count[4]~21\) # (GND)))
-- \VGA_86_image|h_count[5]~23\ = CARRY((!\VGA_86_image|h_count[4]~21\) # (!\VGA_86_image|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(5),
	datad => VCC,
	cin => \VGA_86_image|h_count[4]~21\,
	combout => \VGA_86_image|h_count[5]~22_combout\,
	cout => \VGA_86_image|h_count[5]~23\);

-- Location: FF_X40_Y37_N11
\VGA_86_image|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[5]~22_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(5));

-- Location: LCCOMB_X40_Y37_N12
\VGA_86_image|h_count[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[6]~24_combout\ = (\VGA_86_image|h_count\(6) & (\VGA_86_image|h_count[5]~23\ $ (GND))) # (!\VGA_86_image|h_count\(6) & (!\VGA_86_image|h_count[5]~23\ & VCC))
-- \VGA_86_image|h_count[6]~25\ = CARRY((\VGA_86_image|h_count\(6) & !\VGA_86_image|h_count[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(6),
	datad => VCC,
	cin => \VGA_86_image|h_count[5]~23\,
	combout => \VGA_86_image|h_count[6]~24_combout\,
	cout => \VGA_86_image|h_count[6]~25\);

-- Location: FF_X40_Y37_N13
\VGA_86_image|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[6]~24_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(6));

-- Location: LCCOMB_X40_Y37_N14
\VGA_86_image|h_count[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[7]~26_combout\ = (\VGA_86_image|h_count\(7) & (!\VGA_86_image|h_count[6]~25\)) # (!\VGA_86_image|h_count\(7) & ((\VGA_86_image|h_count[6]~25\) # (GND)))
-- \VGA_86_image|h_count[7]~27\ = CARRY((!\VGA_86_image|h_count[6]~25\) # (!\VGA_86_image|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(7),
	datad => VCC,
	cin => \VGA_86_image|h_count[6]~25\,
	combout => \VGA_86_image|h_count[7]~26_combout\,
	cout => \VGA_86_image|h_count[7]~27\);

-- Location: FF_X40_Y37_N15
\VGA_86_image|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[7]~26_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(7));

-- Location: LCCOMB_X40_Y36_N4
\VGA_86_image|process_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~22_combout\ = (!\VGA_86_image|h_count\(7) & (!\VGA_86_image|h_count\(5) & !\VGA_86_image|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(7),
	datac => \VGA_86_image|h_count\(5),
	datad => \VGA_86_image|h_count\(6),
	combout => \VGA_86_image|process_1~22_combout\);

-- Location: LCCOMB_X40_Y37_N16
\VGA_86_image|h_count[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[8]~28_combout\ = (\VGA_86_image|h_count\(8) & (\VGA_86_image|h_count[7]~27\ $ (GND))) # (!\VGA_86_image|h_count\(8) & (!\VGA_86_image|h_count[7]~27\ & VCC))
-- \VGA_86_image|h_count[8]~29\ = CARRY((\VGA_86_image|h_count\(8) & !\VGA_86_image|h_count[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(8),
	datad => VCC,
	cin => \VGA_86_image|h_count[7]~27\,
	combout => \VGA_86_image|h_count[8]~28_combout\,
	cout => \VGA_86_image|h_count[8]~29\);

-- Location: FF_X40_Y37_N17
\VGA_86_image|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[8]~28_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(8));

-- Location: LCCOMB_X40_Y37_N18
\VGA_86_image|h_count[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[9]~30_combout\ = (\VGA_86_image|h_count\(9) & (!\VGA_86_image|h_count[8]~29\)) # (!\VGA_86_image|h_count\(9) & ((\VGA_86_image|h_count[8]~29\) # (GND)))
-- \VGA_86_image|h_count[9]~31\ = CARRY((!\VGA_86_image|h_count[8]~29\) # (!\VGA_86_image|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(9),
	datad => VCC,
	cin => \VGA_86_image|h_count[8]~29\,
	combout => \VGA_86_image|h_count[9]~30_combout\,
	cout => \VGA_86_image|h_count[9]~31\);

-- Location: FF_X40_Y37_N19
\VGA_86_image|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[9]~30_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(9));

-- Location: LCCOMB_X40_Y37_N20
\VGA_86_image|h_count[10]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[10]~32_combout\ = \VGA_86_image|h_count[9]~31\ $ (!\VGA_86_image|h_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|h_count\(10),
	cin => \VGA_86_image|h_count[9]~31\,
	combout => \VGA_86_image|h_count[10]~32_combout\);

-- Location: FF_X40_Y37_N21
\VGA_86_image|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_count[10]~32_combout\,
	sclr => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(10));

-- Location: LCCOMB_X40_Y37_N22
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

-- Location: LCCOMB_X40_Y37_N24
\VGA_86_image|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal0~1_combout\ = (\VGA_86_image|h_count\(9)) # (((\VGA_86_image|Equal0~0_combout\) # (\VGA_86_image|h_count\(8))) # (!\VGA_86_image|h_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(9),
	datab => \VGA_86_image|h_count\(10),
	datac => \VGA_86_image|Equal0~0_combout\,
	datad => \VGA_86_image|h_count\(8),
	combout => \VGA_86_image|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y37_N26
\VGA_86_image|h_count[9]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[9]~11_combout\ = ((\VGA_86_image|process_1~22_combout\ & (!\VGA_86_image|Equal0~1_combout\ & \VGA_86_image|h_count\(0)))) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~22_combout\,
	datab => \VGA_86_image|Equal0~1_combout\,
	datac => \key[0]~input_o\,
	datad => \VGA_86_image|h_count\(0),
	combout => \VGA_86_image|h_count[9]~11_combout\);

-- Location: FF_X39_Y34_N25
\VGA_86_image|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[9]~28_combout\,
	sclr => \VGA_86_image|v_count[4]~30_combout\,
	ena => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(9));

-- Location: LCCOMB_X39_Y34_N28
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

-- Location: LCCOMB_X39_Y34_N0
\VGA_86_image|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal1~0_combout\ = ((\VGA_86_image|v_count\(7)) # ((\VGA_86_image|v_count\(8)) # (!\VGA_86_image|v_count\(0)))) # (!\VGA_86_image|v_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(1),
	datab => \VGA_86_image|v_count\(7),
	datac => \VGA_86_image|v_count\(8),
	datad => \VGA_86_image|v_count\(0),
	combout => \VGA_86_image|Equal1~0_combout\);

-- Location: LCCOMB_X39_Y34_N2
\VGA_86_image|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal1~1_combout\ = (\VGA_86_image|v_count\(2)) # (((\VGA_86_image|v_count\(3)) # (!\VGA_86_image|v_count\(4))) # (!\VGA_86_image|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(2),
	datab => \VGA_86_image|v_count\(5),
	datac => \VGA_86_image|v_count\(4),
	datad => \VGA_86_image|v_count\(3),
	combout => \VGA_86_image|Equal1~1_combout\);

-- Location: LCCOMB_X39_Y34_N26
\VGA_86_image|v_count[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[4]~30_combout\ = ((!\VGA_86_image|Equal1~2_combout\ & (!\VGA_86_image|Equal1~0_combout\ & !\VGA_86_image|Equal1~1_combout\))) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal1~2_combout\,
	datab => \VGA_86_image|Equal1~0_combout\,
	datac => \key[0]~input_o\,
	datad => \VGA_86_image|Equal1~1_combout\,
	combout => \VGA_86_image|v_count[4]~30_combout\);

-- Location: FF_X39_Y34_N7
\VGA_86_image|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[0]~10_combout\,
	sclr => \VGA_86_image|v_count[4]~30_combout\,
	ena => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(0));

-- Location: LCCOMB_X39_Y34_N8
\VGA_86_image|v_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[1]~12_combout\ = (\VGA_86_image|v_count\(1) & (!\VGA_86_image|v_count[0]~11\)) # (!\VGA_86_image|v_count\(1) & ((\VGA_86_image|v_count[0]~11\) # (GND)))
-- \VGA_86_image|v_count[1]~13\ = CARRY((!\VGA_86_image|v_count[0]~11\) # (!\VGA_86_image|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(1),
	datad => VCC,
	cin => \VGA_86_image|v_count[0]~11\,
	combout => \VGA_86_image|v_count[1]~12_combout\,
	cout => \VGA_86_image|v_count[1]~13\);

-- Location: FF_X39_Y34_N9
\VGA_86_image|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[1]~12_combout\,
	sclr => \VGA_86_image|v_count[4]~30_combout\,
	ena => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(1));

-- Location: LCCOMB_X39_Y34_N10
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

-- Location: FF_X39_Y34_N11
\VGA_86_image|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[2]~14_combout\,
	sclr => \VGA_86_image|v_count[4]~30_combout\,
	ena => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(2));

-- Location: LCCOMB_X39_Y34_N12
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

-- Location: FF_X39_Y34_N13
\VGA_86_image|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[3]~16_combout\,
	sclr => \VGA_86_image|v_count[4]~30_combout\,
	ena => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(3));

-- Location: LCCOMB_X39_Y34_N14
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

-- Location: FF_X39_Y34_N15
\VGA_86_image|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[4]~18_combout\,
	sclr => \VGA_86_image|v_count[4]~30_combout\,
	ena => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(4));

-- Location: LCCOMB_X39_Y34_N16
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

-- Location: FF_X39_Y34_N17
\VGA_86_image|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[5]~20_combout\,
	sclr => \VGA_86_image|v_count[4]~30_combout\,
	ena => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(5));

-- Location: LCCOMB_X39_Y34_N18
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

-- Location: FF_X39_Y34_N19
\VGA_86_image|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[6]~22_combout\,
	sclr => \VGA_86_image|v_count[4]~30_combout\,
	ena => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(6));

-- Location: LCCOMB_X39_Y34_N20
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

-- Location: FF_X39_Y34_N21
\VGA_86_image|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[7]~24_combout\,
	sclr => \VGA_86_image|v_count[4]~30_combout\,
	ena => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(7));

-- Location: FF_X39_Y34_N23
\VGA_86_image|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|v_count[8]~26_combout\,
	sclr => \VGA_86_image|v_count[4]~30_combout\,
	ena => \VGA_86_image|h_count[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(8));

-- Location: LCCOMB_X38_Y35_N30
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

-- Location: LCCOMB_X38_Y35_N2
\VGA_86_image|process_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~16_combout\ = (\VGA_86_image|v_count\(2)) # ((\VGA_86_image|v_count\(1)) # (\VGA_86_image|v_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(2),
	datac => \VGA_86_image|v_count\(1),
	datad => \VGA_86_image|v_count\(0),
	combout => \VGA_86_image|process_1~16_combout\);

-- Location: LCCOMB_X38_Y35_N4
\VGA_86_image|process_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~17_combout\ = (\VGA_86_image|v_count\(5)) # ((\VGA_86_image|v_count\(3) & (\VGA_86_image|v_count\(4) & \VGA_86_image|process_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(5),
	datab => \VGA_86_image|v_count\(3),
	datac => \VGA_86_image|v_count\(4),
	datad => \VGA_86_image|process_1~16_combout\,
	combout => \VGA_86_image|process_1~17_combout\);

-- Location: LCCOMB_X38_Y35_N28
\VGA_86_image|process_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~18_combout\ = ((\VGA_86_image|LessThan5~0_combout\ & ((!\VGA_86_image|v_count\(6)) # (!\VGA_86_image|process_1~17_combout\)))) # (!\VGA_86_image|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|LessThan5~0_combout\,
	datab => \VGA_86_image|process_1~17_combout\,
	datac => \VGA_86_image|v_count\(9),
	datad => \VGA_86_image|v_count\(6),
	combout => \VGA_86_image|process_1~18_combout\);

-- Location: FF_X38_Y35_N29
\VGA_86_image|v_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|process_1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_sync_1~q\);

-- Location: LCCOMB_X38_Y35_N26
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

-- Location: FF_X38_Y35_N27
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

-- Location: FF_X38_Y35_N1
\VGA_86_image|v_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_86_image|v_sync_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_sync_out~q\);

-- Location: LCCOMB_X40_Y35_N28
\VGA_86_image|process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~3_combout\ = ((\VGA_86_image|h_count\(0)) # ((\VGA_86_image|h_count\(2)) # (\VGA_86_image|h_count\(1)))) # (!\VGA_86_image|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(7),
	datab => \VGA_86_image|h_count\(0),
	datac => \VGA_86_image|h_count\(2),
	datad => \VGA_86_image|h_count\(1),
	combout => \VGA_86_image|process_1~3_combout\);

-- Location: LCCOMB_X40_Y35_N26
\VGA_86_image|process_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~25_combout\ = (\VGA_86_image|h_count\(5)) # ((\VGA_86_image|h_count\(4)) # ((\VGA_86_image|h_count\(3) & \VGA_86_image|process_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(3),
	datab => \VGA_86_image|h_count\(5),
	datac => \VGA_86_image|process_1~3_combout\,
	datad => \VGA_86_image|h_count\(4),
	combout => \VGA_86_image|process_1~25_combout\);

-- Location: LCCOMB_X40_Y35_N2
\VGA_86_image|process_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~19_combout\ = (\VGA_86_image|h_count\(10)) # ((!\VGA_86_image|h_count\(9)) # (!\VGA_86_image|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(10),
	datac => \VGA_86_image|h_count\(8),
	datad => \VGA_86_image|h_count\(9),
	combout => \VGA_86_image|process_1~19_combout\);

-- Location: LCCOMB_X40_Y35_N0
\VGA_86_image|process_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~20_combout\ = (!\VGA_86_image|process_1~19_combout\ & (\VGA_86_image|h_count\(7) $ (((\VGA_86_image|process_1~25_combout\ & \VGA_86_image|h_count\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~25_combout\,
	datab => \VGA_86_image|h_count\(7),
	datac => \VGA_86_image|h_count\(6),
	datad => \VGA_86_image|process_1~19_combout\,
	combout => \VGA_86_image|process_1~20_combout\);

-- Location: FF_X40_Y35_N1
\VGA_86_image|h_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|process_1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_sync_1~q\);

-- Location: FF_X32_Y35_N11
\VGA_86_image|h_sync_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_86_image|h_sync_1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_sync_2~q\);

-- Location: LCCOMB_X32_Y35_N16
\VGA_86_image|h_sync_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_sync_out~feeder_combout\ = \VGA_86_image|h_sync_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|h_sync_2~q\,
	combout => \VGA_86_image|h_sync_out~feeder_combout\);

-- Location: FF_X32_Y35_N17
\VGA_86_image|h_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|h_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_sync_out~q\);

-- Location: LCCOMB_X39_Y38_N2
\VGA_86_image|Add10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~0_combout\ = \VGA_86_image|square_pos_count\(0) $ (VCC)
-- \VGA_86_image|Add10~1\ = CARRY(\VGA_86_image|square_pos_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(0),
	datad => VCC,
	combout => \VGA_86_image|Add10~0_combout\,
	cout => \VGA_86_image|Add10~1\);

-- Location: LCCOMB_X38_Y38_N2
\VGA_86_image|square_pos_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_pos_count~1_combout\ = (!\VGA_86_image|Equal3~9_combout\ & \VGA_86_image|Add10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Equal3~9_combout\,
	datad => \VGA_86_image|Add10~0_combout\,
	combout => \VGA_86_image|square_pos_count~1_combout\);

-- Location: LCCOMB_X36_Y35_N14
\VGA_86_image|square_v_pos[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[2]~8_combout\ = (\VGA_86_image|square_v_pos\(1) & (\VGA_86_image|square_v_pos\(2) $ (VCC))) # (!\VGA_86_image|square_v_pos\(1) & (\VGA_86_image|square_v_pos\(2) & VCC))
-- \VGA_86_image|square_v_pos[2]~9\ = CARRY((\VGA_86_image|square_v_pos\(1) & \VGA_86_image|square_v_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(1),
	datab => \VGA_86_image|square_v_pos\(2),
	datad => VCC,
	combout => \VGA_86_image|square_v_pos[2]~8_combout\,
	cout => \VGA_86_image|square_v_pos[2]~9\);

-- Location: LCCOMB_X40_Y36_N0
\VGA_86_image|square_h_pos[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[0]~28_combout\ = \VGA_86_image|square_h_pos[3]~9_combout\ $ (\VGA_86_image|square_h_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos[3]~9_combout\,
	datac => \VGA_86_image|square_h_pos\(0),
	combout => \VGA_86_image|square_h_pos[0]~28_combout\);

-- Location: FF_X40_Y36_N1
\VGA_86_image|square_h_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_h_pos[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_h_pos\(0));

-- Location: LCCOMB_X39_Y36_N14
\VGA_86_image|square_h_pos[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[1]~10_combout\ = (\VGA_86_image|square_h_pos\(1) & (\VGA_86_image|square_h_pos\(0) $ (VCC))) # (!\VGA_86_image|square_h_pos\(1) & (\VGA_86_image|square_h_pos\(0) & VCC))
-- \VGA_86_image|square_h_pos[1]~11\ = CARRY((\VGA_86_image|square_h_pos\(1) & \VGA_86_image|square_h_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(1),
	datab => \VGA_86_image|square_h_pos\(0),
	datad => VCC,
	combout => \VGA_86_image|square_h_pos[1]~10_combout\,
	cout => \VGA_86_image|square_h_pos[1]~11\);

-- Location: FF_X39_Y36_N15
\VGA_86_image|square_h_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_h_pos[1]~10_combout\,
	ena => \VGA_86_image|square_h_pos[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_h_pos\(1));

-- Location: LCCOMB_X39_Y36_N16
\VGA_86_image|square_h_pos[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[2]~12_combout\ = (\VGA_86_image|square_h_pos\(2) & (!\VGA_86_image|square_h_pos[1]~11\)) # (!\VGA_86_image|square_h_pos\(2) & ((\VGA_86_image|square_h_pos[1]~11\) # (GND)))
-- \VGA_86_image|square_h_pos[2]~13\ = CARRY((!\VGA_86_image|square_h_pos[1]~11\) # (!\VGA_86_image|square_h_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_h_pos\(2),
	datad => VCC,
	cin => \VGA_86_image|square_h_pos[1]~11\,
	combout => \VGA_86_image|square_h_pos[2]~12_combout\,
	cout => \VGA_86_image|square_h_pos[2]~13\);

-- Location: FF_X39_Y36_N17
\VGA_86_image|square_h_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_h_pos[2]~12_combout\,
	ena => \VGA_86_image|square_h_pos[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_h_pos\(2));

-- Location: LCCOMB_X39_Y36_N18
\VGA_86_image|square_h_pos[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[3]~14_combout\ = (\VGA_86_image|square_h_pos\(3) & (\VGA_86_image|square_h_pos[2]~13\ $ (GND))) # (!\VGA_86_image|square_h_pos\(3) & (!\VGA_86_image|square_h_pos[2]~13\ & VCC))
-- \VGA_86_image|square_h_pos[3]~15\ = CARRY((\VGA_86_image|square_h_pos\(3) & !\VGA_86_image|square_h_pos[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(3),
	datad => VCC,
	cin => \VGA_86_image|square_h_pos[2]~13\,
	combout => \VGA_86_image|square_h_pos[3]~14_combout\,
	cout => \VGA_86_image|square_h_pos[3]~15\);

-- Location: FF_X39_Y36_N19
\VGA_86_image|square_h_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_h_pos[3]~14_combout\,
	ena => \VGA_86_image|square_h_pos[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_h_pos\(3));

-- Location: LCCOMB_X39_Y36_N20
\VGA_86_image|square_h_pos[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[4]~16_combout\ = (\VGA_86_image|square_h_pos\(4) & (!\VGA_86_image|square_h_pos[3]~15\)) # (!\VGA_86_image|square_h_pos\(4) & ((\VGA_86_image|square_h_pos[3]~15\) # (GND)))
-- \VGA_86_image|square_h_pos[4]~17\ = CARRY((!\VGA_86_image|square_h_pos[3]~15\) # (!\VGA_86_image|square_h_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_h_pos\(4),
	datad => VCC,
	cin => \VGA_86_image|square_h_pos[3]~15\,
	combout => \VGA_86_image|square_h_pos[4]~16_combout\,
	cout => \VGA_86_image|square_h_pos[4]~17\);

-- Location: FF_X39_Y36_N21
\VGA_86_image|square_h_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_h_pos[4]~16_combout\,
	ena => \VGA_86_image|square_h_pos[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_h_pos\(4));

-- Location: LCCOMB_X39_Y36_N22
\VGA_86_image|square_h_pos[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[5]~18_combout\ = (\VGA_86_image|square_h_pos\(5) & (\VGA_86_image|square_h_pos[4]~17\ $ (GND))) # (!\VGA_86_image|square_h_pos\(5) & (!\VGA_86_image|square_h_pos[4]~17\ & VCC))
-- \VGA_86_image|square_h_pos[5]~19\ = CARRY((\VGA_86_image|square_h_pos\(5) & !\VGA_86_image|square_h_pos[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(5),
	datad => VCC,
	cin => \VGA_86_image|square_h_pos[4]~17\,
	combout => \VGA_86_image|square_h_pos[5]~18_combout\,
	cout => \VGA_86_image|square_h_pos[5]~19\);

-- Location: FF_X39_Y36_N23
\VGA_86_image|square_h_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_h_pos[5]~18_combout\,
	ena => \VGA_86_image|square_h_pos[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_h_pos\(5));

-- Location: LCCOMB_X39_Y36_N24
\VGA_86_image|square_h_pos[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[6]~20_combout\ = (\VGA_86_image|square_h_pos\(6) & (!\VGA_86_image|square_h_pos[5]~19\)) # (!\VGA_86_image|square_h_pos\(6) & ((\VGA_86_image|square_h_pos[5]~19\) # (GND)))
-- \VGA_86_image|square_h_pos[6]~21\ = CARRY((!\VGA_86_image|square_h_pos[5]~19\) # (!\VGA_86_image|square_h_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_h_pos\(6),
	datad => VCC,
	cin => \VGA_86_image|square_h_pos[5]~19\,
	combout => \VGA_86_image|square_h_pos[6]~20_combout\,
	cout => \VGA_86_image|square_h_pos[6]~21\);

-- Location: FF_X39_Y36_N25
\VGA_86_image|square_h_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_h_pos[6]~20_combout\,
	ena => \VGA_86_image|square_h_pos[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_h_pos\(6));

-- Location: LCCOMB_X39_Y36_N26
\VGA_86_image|square_h_pos[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[7]~22_combout\ = (\VGA_86_image|square_h_pos\(7) & (\VGA_86_image|square_h_pos[6]~21\ $ (GND))) # (!\VGA_86_image|square_h_pos\(7) & (!\VGA_86_image|square_h_pos[6]~21\ & VCC))
-- \VGA_86_image|square_h_pos[7]~23\ = CARRY((\VGA_86_image|square_h_pos\(7) & !\VGA_86_image|square_h_pos[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(7),
	datad => VCC,
	cin => \VGA_86_image|square_h_pos[6]~21\,
	combout => \VGA_86_image|square_h_pos[7]~22_combout\,
	cout => \VGA_86_image|square_h_pos[7]~23\);

-- Location: FF_X39_Y36_N27
\VGA_86_image|square_h_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_h_pos[7]~22_combout\,
	ena => \VGA_86_image|square_h_pos[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_h_pos\(7));

-- Location: LCCOMB_X39_Y35_N16
\VGA_86_image|square_v_pos[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[3]~26_combout\ = (!\VGA_86_image|square_h_pos\(6) & (\VGA_86_image|square_h_pos\(5) & (!\VGA_86_image|square_h_pos\(7) & !\VGA_86_image|square_h_pos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(6),
	datab => \VGA_86_image|square_h_pos\(5),
	datac => \VGA_86_image|square_h_pos\(7),
	datad => \VGA_86_image|square_h_pos\(4),
	combout => \VGA_86_image|square_v_pos[3]~26_combout\);

-- Location: LCCOMB_X39_Y36_N28
\VGA_86_image|square_h_pos[8]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[8]~24_combout\ = (\VGA_86_image|square_h_pos\(8) & (!\VGA_86_image|square_h_pos[7]~23\)) # (!\VGA_86_image|square_h_pos\(8) & ((\VGA_86_image|square_h_pos[7]~23\) # (GND)))
-- \VGA_86_image|square_h_pos[8]~25\ = CARRY((!\VGA_86_image|square_h_pos[7]~23\) # (!\VGA_86_image|square_h_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_h_pos\(8),
	datad => VCC,
	cin => \VGA_86_image|square_h_pos[7]~23\,
	combout => \VGA_86_image|square_h_pos[8]~24_combout\,
	cout => \VGA_86_image|square_h_pos[8]~25\);

-- Location: FF_X39_Y36_N29
\VGA_86_image|square_h_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_h_pos[8]~24_combout\,
	ena => \VGA_86_image|square_h_pos[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_h_pos\(8));

-- Location: LCCOMB_X39_Y36_N30
\VGA_86_image|square_h_pos[9]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[9]~26_combout\ = \VGA_86_image|square_h_pos\(9) $ (!\VGA_86_image|square_h_pos[8]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(9),
	cin => \VGA_86_image|square_h_pos[8]~25\,
	combout => \VGA_86_image|square_h_pos[9]~26_combout\);

-- Location: FF_X39_Y36_N31
\VGA_86_image|square_h_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_h_pos[9]~26_combout\,
	ena => \VGA_86_image|square_h_pos[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_h_pos\(9));

-- Location: LCCOMB_X40_Y36_N6
\VGA_86_image|square_v_pos[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[3]~25_combout\ = (!\VGA_86_image|square_h_pos\(1) & (!\VGA_86_image|square_h_pos\(3) & (!\VGA_86_image|square_h_pos\(2) & !\VGA_86_image|square_h_pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(1),
	datab => \VGA_86_image|square_h_pos\(3),
	datac => \VGA_86_image|square_h_pos\(2),
	datad => \VGA_86_image|square_h_pos\(0),
	combout => \VGA_86_image|square_v_pos[3]~25_combout\);

-- Location: LCCOMB_X40_Y36_N30
\VGA_86_image|square_v_pos[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[3]~27_combout\ = (\VGA_86_image|square_v_pos[3]~26_combout\ & (\VGA_86_image|square_h_pos\(8) & (\VGA_86_image|square_h_pos\(9) & \VGA_86_image|square_v_pos[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos[3]~26_combout\,
	datab => \VGA_86_image|square_h_pos\(8),
	datac => \VGA_86_image|square_h_pos\(9),
	datad => \VGA_86_image|square_v_pos[3]~25_combout\,
	combout => \VGA_86_image|square_v_pos[3]~27_combout\);

-- Location: LCCOMB_X36_Y35_N10
\VGA_86_image|square_v_pos[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[3]~28_combout\ = (\VGA_86_image|Equal3~9_combout\ & (\VGA_86_image|square_v_pos[3]~24_combout\ & \VGA_86_image|square_v_pos[3]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal3~9_combout\,
	datac => \VGA_86_image|square_v_pos[3]~24_combout\,
	datad => \VGA_86_image|square_v_pos[3]~27_combout\,
	combout => \VGA_86_image|square_v_pos[3]~28_combout\);

-- Location: FF_X36_Y35_N15
\VGA_86_image|square_v_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_v_pos[2]~8_combout\,
	ena => \VGA_86_image|square_v_pos[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_v_pos\(2));

-- Location: LCCOMB_X37_Y35_N12
\VGA_86_image|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~0_combout\ = (\VGA_86_image|square_v_pos\(2) & (\VGA_86_image|square_v_pos\(3) $ (VCC))) # (!\VGA_86_image|square_v_pos\(2) & (\VGA_86_image|square_v_pos\(3) & VCC))
-- \VGA_86_image|Add4~1\ = CARRY((\VGA_86_image|square_v_pos\(2) & \VGA_86_image|square_v_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(2),
	datab => \VGA_86_image|square_v_pos\(3),
	datad => VCC,
	combout => \VGA_86_image|Add4~0_combout\,
	cout => \VGA_86_image|Add4~1\);

-- Location: LCCOMB_X37_Y35_N14
\VGA_86_image|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~2_combout\ = (\VGA_86_image|square_v_pos\(4) & (!\VGA_86_image|Add4~1\)) # (!\VGA_86_image|square_v_pos\(4) & ((\VGA_86_image|Add4~1\) # (GND)))
-- \VGA_86_image|Add4~3\ = CARRY((!\VGA_86_image|Add4~1\) # (!\VGA_86_image|square_v_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(4),
	datad => VCC,
	cin => \VGA_86_image|Add4~1\,
	combout => \VGA_86_image|Add4~2_combout\,
	cout => \VGA_86_image|Add4~3\);

-- Location: LCCOMB_X37_Y35_N16
\VGA_86_image|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~4_combout\ = (\VGA_86_image|square_v_pos\(5) & ((GND) # (!\VGA_86_image|Add4~3\))) # (!\VGA_86_image|square_v_pos\(5) & (\VGA_86_image|Add4~3\ $ (GND)))
-- \VGA_86_image|Add4~5\ = CARRY((\VGA_86_image|square_v_pos\(5)) # (!\VGA_86_image|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(5),
	datad => VCC,
	cin => \VGA_86_image|Add4~3\,
	combout => \VGA_86_image|Add4~4_combout\,
	cout => \VGA_86_image|Add4~5\);

-- Location: LCCOMB_X37_Y35_N18
\VGA_86_image|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~6_combout\ = (\VGA_86_image|square_v_pos\(6) & (\VGA_86_image|Add4~5\ & VCC)) # (!\VGA_86_image|square_v_pos\(6) & (!\VGA_86_image|Add4~5\))
-- \VGA_86_image|Add4~7\ = CARRY((!\VGA_86_image|square_v_pos\(6) & !\VGA_86_image|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(6),
	datad => VCC,
	cin => \VGA_86_image|Add4~5\,
	combout => \VGA_86_image|Add4~6_combout\,
	cout => \VGA_86_image|Add4~7\);

-- Location: LCCOMB_X37_Y35_N20
\VGA_86_image|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~8_combout\ = (\VGA_86_image|square_v_pos\(7) & (\VGA_86_image|Add4~7\ $ (GND))) # (!\VGA_86_image|square_v_pos\(7) & (!\VGA_86_image|Add4~7\ & VCC))
-- \VGA_86_image|Add4~9\ = CARRY((\VGA_86_image|square_v_pos\(7) & !\VGA_86_image|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(7),
	datad => VCC,
	cin => \VGA_86_image|Add4~7\,
	combout => \VGA_86_image|Add4~8_combout\,
	cout => \VGA_86_image|Add4~9\);

-- Location: LCCOMB_X37_Y35_N22
\VGA_86_image|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~10_combout\ = (\VGA_86_image|square_v_pos\(8) & (!\VGA_86_image|Add4~9\)) # (!\VGA_86_image|square_v_pos\(8) & ((\VGA_86_image|Add4~9\) # (GND)))
-- \VGA_86_image|Add4~11\ = CARRY((!\VGA_86_image|Add4~9\) # (!\VGA_86_image|square_v_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(8),
	datad => VCC,
	cin => \VGA_86_image|Add4~9\,
	combout => \VGA_86_image|Add4~10_combout\,
	cout => \VGA_86_image|Add4~11\);

-- Location: LCCOMB_X37_Y35_N24
\VGA_86_image|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~12_combout\ = (\VGA_86_image|square_v_pos\(9) & (\VGA_86_image|Add4~11\ $ (GND))) # (!\VGA_86_image|square_v_pos\(9) & (!\VGA_86_image|Add4~11\ & VCC))
-- \VGA_86_image|Add4~13\ = CARRY((\VGA_86_image|square_v_pos\(9) & !\VGA_86_image|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(9),
	datad => VCC,
	cin => \VGA_86_image|Add4~11\,
	combout => \VGA_86_image|Add4~12_combout\,
	cout => \VGA_86_image|Add4~13\);

-- Location: LCCOMB_X37_Y35_N26
\VGA_86_image|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~14_combout\ = \VGA_86_image|Add4~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VGA_86_image|Add4~13\,
	combout => \VGA_86_image|Add4~14_combout\);

-- Location: LCCOMB_X39_Y34_N4
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

-- Location: LCCOMB_X40_Y37_N30
\VGA_86_image|process_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~23_combout\ = (!\VGA_86_image|h_count\(10) & (((\VGA_86_image|LessThan5~1_combout\ & \VGA_86_image|LessThan5~0_combout\)) # (!\VGA_86_image|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|LessThan5~1_combout\,
	datab => \VGA_86_image|LessThan5~0_combout\,
	datac => \VGA_86_image|v_count\(9),
	datad => \VGA_86_image|h_count\(10),
	combout => \VGA_86_image|process_1~23_combout\);

-- Location: LCCOMB_X40_Y37_N28
\VGA_86_image|process_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~24_combout\ = ((!\VGA_86_image|process_1~22_combout\ & (\VGA_86_image|h_count\(9) & \VGA_86_image|h_count\(8)))) # (!\VGA_86_image|process_1~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~22_combout\,
	datab => \VGA_86_image|h_count\(9),
	datac => \VGA_86_image|process_1~23_combout\,
	datad => \VGA_86_image|h_count\(8),
	combout => \VGA_86_image|process_1~24_combout\);

-- Location: FF_X40_Y37_N29
\VGA_86_image|blank_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|process_1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|blank_1~q\);

-- Location: FF_X38_Y34_N25
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

-- Location: LCCOMB_X38_Y34_N6
\VGA_86_image|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan8~1_cout\ = CARRY((\VGA_86_image|square_v_pos\(1) & !\VGA_86_image|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(1),
	datab => \VGA_86_image|v_count\(1),
	datad => VCC,
	cout => \VGA_86_image|LessThan8~1_cout\);

-- Location: LCCOMB_X38_Y34_N8
\VGA_86_image|LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan8~3_cout\ = CARRY((\VGA_86_image|square_v_pos\(2) & ((\VGA_86_image|v_count\(2)) # (!\VGA_86_image|LessThan8~1_cout\))) # (!\VGA_86_image|square_v_pos\(2) & (\VGA_86_image|v_count\(2) & !\VGA_86_image|LessThan8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(2),
	datab => \VGA_86_image|v_count\(2),
	datad => VCC,
	cin => \VGA_86_image|LessThan8~1_cout\,
	cout => \VGA_86_image|LessThan8~3_cout\);

-- Location: LCCOMB_X38_Y34_N10
\VGA_86_image|LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan8~5_cout\ = CARRY((\VGA_86_image|Add4~0_combout\ & ((!\VGA_86_image|LessThan8~3_cout\) # (!\VGA_86_image|v_count\(3)))) # (!\VGA_86_image|Add4~0_combout\ & (!\VGA_86_image|v_count\(3) & !\VGA_86_image|LessThan8~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~0_combout\,
	datab => \VGA_86_image|v_count\(3),
	datad => VCC,
	cin => \VGA_86_image|LessThan8~3_cout\,
	cout => \VGA_86_image|LessThan8~5_cout\);

-- Location: LCCOMB_X38_Y34_N12
\VGA_86_image|LessThan8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan8~7_cout\ = CARRY((\VGA_86_image|Add4~2_combout\ & (\VGA_86_image|v_count\(4) & !\VGA_86_image|LessThan8~5_cout\)) # (!\VGA_86_image|Add4~2_combout\ & ((\VGA_86_image|v_count\(4)) # (!\VGA_86_image|LessThan8~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~2_combout\,
	datab => \VGA_86_image|v_count\(4),
	datad => VCC,
	cin => \VGA_86_image|LessThan8~5_cout\,
	cout => \VGA_86_image|LessThan8~7_cout\);

-- Location: LCCOMB_X38_Y34_N14
\VGA_86_image|LessThan8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan8~9_cout\ = CARRY((\VGA_86_image|Add4~4_combout\ & ((!\VGA_86_image|LessThan8~7_cout\) # (!\VGA_86_image|v_count\(5)))) # (!\VGA_86_image|Add4~4_combout\ & (!\VGA_86_image|v_count\(5) & !\VGA_86_image|LessThan8~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~4_combout\,
	datab => \VGA_86_image|v_count\(5),
	datad => VCC,
	cin => \VGA_86_image|LessThan8~7_cout\,
	cout => \VGA_86_image|LessThan8~9_cout\);

-- Location: LCCOMB_X38_Y34_N16
\VGA_86_image|LessThan8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan8~11_cout\ = CARRY((\VGA_86_image|Add4~6_combout\ & (\VGA_86_image|v_count\(6) & !\VGA_86_image|LessThan8~9_cout\)) # (!\VGA_86_image|Add4~6_combout\ & ((\VGA_86_image|v_count\(6)) # (!\VGA_86_image|LessThan8~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~6_combout\,
	datab => \VGA_86_image|v_count\(6),
	datad => VCC,
	cin => \VGA_86_image|LessThan8~9_cout\,
	cout => \VGA_86_image|LessThan8~11_cout\);

-- Location: LCCOMB_X38_Y34_N18
\VGA_86_image|LessThan8~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan8~13_cout\ = CARRY((\VGA_86_image|v_count\(7) & (\VGA_86_image|Add4~8_combout\ & !\VGA_86_image|LessThan8~11_cout\)) # (!\VGA_86_image|v_count\(7) & ((\VGA_86_image|Add4~8_combout\) # (!\VGA_86_image|LessThan8~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(7),
	datab => \VGA_86_image|Add4~8_combout\,
	datad => VCC,
	cin => \VGA_86_image|LessThan8~11_cout\,
	cout => \VGA_86_image|LessThan8~13_cout\);

-- Location: LCCOMB_X38_Y34_N20
\VGA_86_image|LessThan8~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan8~15_cout\ = CARRY((\VGA_86_image|Add4~10_combout\ & (\VGA_86_image|v_count\(8) & !\VGA_86_image|LessThan8~13_cout\)) # (!\VGA_86_image|Add4~10_combout\ & ((\VGA_86_image|v_count\(8)) # (!\VGA_86_image|LessThan8~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~10_combout\,
	datab => \VGA_86_image|v_count\(8),
	datad => VCC,
	cin => \VGA_86_image|LessThan8~13_cout\,
	cout => \VGA_86_image|LessThan8~15_cout\);

-- Location: LCCOMB_X38_Y34_N22
\VGA_86_image|LessThan8~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan8~16_combout\ = (\VGA_86_image|Add4~12_combout\ & ((!\VGA_86_image|v_count\(9)) # (!\VGA_86_image|LessThan8~15_cout\))) # (!\VGA_86_image|Add4~12_combout\ & (!\VGA_86_image|LessThan8~15_cout\ & !\VGA_86_image|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Add4~12_combout\,
	datad => \VGA_86_image|v_count\(9),
	cin => \VGA_86_image|LessThan8~15_cout\,
	combout => \VGA_86_image|LessThan8~16_combout\);

-- Location: LCCOMB_X38_Y34_N24
\VGA_86_image|square_v_pos[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[3]~24_combout\ = (!\VGA_86_image|blank_2~q\ & (((\VGA_86_image|Add4~14_combout\) # (\VGA_86_image|LessThan8~16_combout\)) # (!\VGA_86_image|process_1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~15_combout\,
	datab => \VGA_86_image|Add4~14_combout\,
	datac => \VGA_86_image|blank_2~q\,
	datad => \VGA_86_image|LessThan8~16_combout\,
	combout => \VGA_86_image|square_v_pos[3]~24_combout\);

-- Location: FF_X38_Y38_N3
\VGA_86_image|square_pos_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_pos_count~1_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(0));

-- Location: LCCOMB_X39_Y38_N4
\VGA_86_image|Add10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~2_combout\ = (\VGA_86_image|square_pos_count\(1) & (!\VGA_86_image|Add10~1\)) # (!\VGA_86_image|square_pos_count\(1) & ((\VGA_86_image|Add10~1\) # (GND)))
-- \VGA_86_image|Add10~3\ = CARRY((!\VGA_86_image|Add10~1\) # (!\VGA_86_image|square_pos_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(1),
	datad => VCC,
	cin => \VGA_86_image|Add10~1\,
	combout => \VGA_86_image|Add10~2_combout\,
	cout => \VGA_86_image|Add10~3\);

-- Location: FF_X39_Y38_N5
\VGA_86_image|square_pos_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~2_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(1));

-- Location: LCCOMB_X39_Y38_N6
\VGA_86_image|Add10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~4_combout\ = (\VGA_86_image|square_pos_count\(2) & (\VGA_86_image|Add10~3\ $ (GND))) # (!\VGA_86_image|square_pos_count\(2) & (!\VGA_86_image|Add10~3\ & VCC))
-- \VGA_86_image|Add10~5\ = CARRY((\VGA_86_image|square_pos_count\(2) & !\VGA_86_image|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(2),
	datad => VCC,
	cin => \VGA_86_image|Add10~3\,
	combout => \VGA_86_image|Add10~4_combout\,
	cout => \VGA_86_image|Add10~5\);

-- Location: FF_X39_Y38_N7
\VGA_86_image|square_pos_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~4_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(2));

-- Location: LCCOMB_X39_Y38_N8
\VGA_86_image|Add10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~6_combout\ = (\VGA_86_image|square_pos_count\(3) & (!\VGA_86_image|Add10~5\)) # (!\VGA_86_image|square_pos_count\(3) & ((\VGA_86_image|Add10~5\) # (GND)))
-- \VGA_86_image|Add10~7\ = CARRY((!\VGA_86_image|Add10~5\) # (!\VGA_86_image|square_pos_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(3),
	datad => VCC,
	cin => \VGA_86_image|Add10~5\,
	combout => \VGA_86_image|Add10~6_combout\,
	cout => \VGA_86_image|Add10~7\);

-- Location: FF_X39_Y38_N9
\VGA_86_image|square_pos_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~6_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(3));

-- Location: LCCOMB_X39_Y38_N10
\VGA_86_image|Add10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~8_combout\ = (\VGA_86_image|square_pos_count\(4) & (\VGA_86_image|Add10~7\ $ (GND))) # (!\VGA_86_image|square_pos_count\(4) & (!\VGA_86_image|Add10~7\ & VCC))
-- \VGA_86_image|Add10~9\ = CARRY((\VGA_86_image|square_pos_count\(4) & !\VGA_86_image|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(4),
	datad => VCC,
	cin => \VGA_86_image|Add10~7\,
	combout => \VGA_86_image|Add10~8_combout\,
	cout => \VGA_86_image|Add10~9\);

-- Location: FF_X39_Y38_N11
\VGA_86_image|square_pos_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~8_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(4));

-- Location: LCCOMB_X39_Y38_N12
\VGA_86_image|Add10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~10_combout\ = (\VGA_86_image|square_pos_count\(5) & (!\VGA_86_image|Add10~9\)) # (!\VGA_86_image|square_pos_count\(5) & ((\VGA_86_image|Add10~9\) # (GND)))
-- \VGA_86_image|Add10~11\ = CARRY((!\VGA_86_image|Add10~9\) # (!\VGA_86_image|square_pos_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(5),
	datad => VCC,
	cin => \VGA_86_image|Add10~9\,
	combout => \VGA_86_image|Add10~10_combout\,
	cout => \VGA_86_image|Add10~11\);

-- Location: LCCOMB_X40_Y38_N8
\VGA_86_image|square_pos_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_pos_count~0_combout\ = (!\VGA_86_image|Equal3~9_combout\ & \VGA_86_image|Add10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Equal3~9_combout\,
	datad => \VGA_86_image|Add10~10_combout\,
	combout => \VGA_86_image|square_pos_count~0_combout\);

-- Location: FF_X40_Y38_N9
\VGA_86_image|square_pos_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_pos_count~0_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(5));

-- Location: LCCOMB_X39_Y38_N14
\VGA_86_image|Add10~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~12_combout\ = (\VGA_86_image|square_pos_count\(6) & (\VGA_86_image|Add10~11\ $ (GND))) # (!\VGA_86_image|square_pos_count\(6) & (!\VGA_86_image|Add10~11\ & VCC))
-- \VGA_86_image|Add10~13\ = CARRY((\VGA_86_image|square_pos_count\(6) & !\VGA_86_image|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(6),
	datad => VCC,
	cin => \VGA_86_image|Add10~11\,
	combout => \VGA_86_image|Add10~12_combout\,
	cout => \VGA_86_image|Add10~13\);

-- Location: FF_X39_Y38_N15
\VGA_86_image|square_pos_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~12_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(6));

-- Location: LCCOMB_X39_Y38_N16
\VGA_86_image|Add10~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~14_combout\ = (\VGA_86_image|square_pos_count\(7) & (!\VGA_86_image|Add10~13\)) # (!\VGA_86_image|square_pos_count\(7) & ((\VGA_86_image|Add10~13\) # (GND)))
-- \VGA_86_image|Add10~15\ = CARRY((!\VGA_86_image|Add10~13\) # (!\VGA_86_image|square_pos_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(7),
	datad => VCC,
	cin => \VGA_86_image|Add10~13\,
	combout => \VGA_86_image|Add10~14_combout\,
	cout => \VGA_86_image|Add10~15\);

-- Location: FF_X39_Y38_N17
\VGA_86_image|square_pos_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~14_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(7));

-- Location: LCCOMB_X39_Y38_N18
\VGA_86_image|Add10~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~16_combout\ = (\VGA_86_image|square_pos_count\(8) & (\VGA_86_image|Add10~15\ $ (GND))) # (!\VGA_86_image|square_pos_count\(8) & (!\VGA_86_image|Add10~15\ & VCC))
-- \VGA_86_image|Add10~17\ = CARRY((\VGA_86_image|square_pos_count\(8) & !\VGA_86_image|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(8),
	datad => VCC,
	cin => \VGA_86_image|Add10~15\,
	combout => \VGA_86_image|Add10~16_combout\,
	cout => \VGA_86_image|Add10~17\);

-- Location: LCCOMB_X40_Y38_N2
\VGA_86_image|square_pos_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_pos_count~2_combout\ = (!\VGA_86_image|Equal3~9_combout\ & \VGA_86_image|Add10~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Equal3~9_combout\,
	datad => \VGA_86_image|Add10~16_combout\,
	combout => \VGA_86_image|square_pos_count~2_combout\);

-- Location: FF_X40_Y38_N3
\VGA_86_image|square_pos_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_pos_count~2_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(8));

-- Location: LCCOMB_X39_Y38_N20
\VGA_86_image|Add10~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~18_combout\ = (\VGA_86_image|square_pos_count\(9) & (!\VGA_86_image|Add10~17\)) # (!\VGA_86_image|square_pos_count\(9) & ((\VGA_86_image|Add10~17\) # (GND)))
-- \VGA_86_image|Add10~19\ = CARRY((!\VGA_86_image|Add10~17\) # (!\VGA_86_image|square_pos_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(9),
	datad => VCC,
	cin => \VGA_86_image|Add10~17\,
	combout => \VGA_86_image|Add10~18_combout\,
	cout => \VGA_86_image|Add10~19\);

-- Location: FF_X39_Y38_N21
\VGA_86_image|square_pos_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~18_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(9));

-- Location: LCCOMB_X39_Y38_N22
\VGA_86_image|Add10~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~20_combout\ = (\VGA_86_image|square_pos_count\(10) & (\VGA_86_image|Add10~19\ $ (GND))) # (!\VGA_86_image|square_pos_count\(10) & (!\VGA_86_image|Add10~19\ & VCC))
-- \VGA_86_image|Add10~21\ = CARRY((\VGA_86_image|square_pos_count\(10) & !\VGA_86_image|Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(10),
	datad => VCC,
	cin => \VGA_86_image|Add10~19\,
	combout => \VGA_86_image|Add10~20_combout\,
	cout => \VGA_86_image|Add10~21\);

-- Location: FF_X39_Y38_N23
\VGA_86_image|square_pos_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~20_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(10));

-- Location: LCCOMB_X39_Y38_N24
\VGA_86_image|Add10~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~22_combout\ = (\VGA_86_image|square_pos_count\(11) & (!\VGA_86_image|Add10~21\)) # (!\VGA_86_image|square_pos_count\(11) & ((\VGA_86_image|Add10~21\) # (GND)))
-- \VGA_86_image|Add10~23\ = CARRY((!\VGA_86_image|Add10~21\) # (!\VGA_86_image|square_pos_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(11),
	datad => VCC,
	cin => \VGA_86_image|Add10~21\,
	combout => \VGA_86_image|Add10~22_combout\,
	cout => \VGA_86_image|Add10~23\);

-- Location: FF_X39_Y38_N25
\VGA_86_image|square_pos_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~22_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(11));

-- Location: LCCOMB_X39_Y38_N26
\VGA_86_image|Add10~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~24_combout\ = (\VGA_86_image|square_pos_count\(12) & (\VGA_86_image|Add10~23\ $ (GND))) # (!\VGA_86_image|square_pos_count\(12) & (!\VGA_86_image|Add10~23\ & VCC))
-- \VGA_86_image|Add10~25\ = CARRY((\VGA_86_image|square_pos_count\(12) & !\VGA_86_image|Add10~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(12),
	datad => VCC,
	cin => \VGA_86_image|Add10~23\,
	combout => \VGA_86_image|Add10~24_combout\,
	cout => \VGA_86_image|Add10~25\);

-- Location: FF_X39_Y38_N27
\VGA_86_image|square_pos_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~24_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(12));

-- Location: LCCOMB_X39_Y38_N28
\VGA_86_image|Add10~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~26_combout\ = (\VGA_86_image|square_pos_count\(13) & (!\VGA_86_image|Add10~25\)) # (!\VGA_86_image|square_pos_count\(13) & ((\VGA_86_image|Add10~25\) # (GND)))
-- \VGA_86_image|Add10~27\ = CARRY((!\VGA_86_image|Add10~25\) # (!\VGA_86_image|square_pos_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(13),
	datad => VCC,
	cin => \VGA_86_image|Add10~25\,
	combout => \VGA_86_image|Add10~26_combout\,
	cout => \VGA_86_image|Add10~27\);

-- Location: LCCOMB_X38_Y37_N0
\VGA_86_image|square_pos_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_pos_count~3_combout\ = (!\VGA_86_image|Equal3~9_combout\ & \VGA_86_image|Add10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal3~9_combout\,
	datad => \VGA_86_image|Add10~26_combout\,
	combout => \VGA_86_image|square_pos_count~3_combout\);

-- Location: FF_X38_Y37_N1
\VGA_86_image|square_pos_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_pos_count~3_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(13));

-- Location: LCCOMB_X39_Y38_N30
\VGA_86_image|Add10~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~28_combout\ = (\VGA_86_image|square_pos_count\(14) & (\VGA_86_image|Add10~27\ $ (GND))) # (!\VGA_86_image|square_pos_count\(14) & (!\VGA_86_image|Add10~27\ & VCC))
-- \VGA_86_image|Add10~29\ = CARRY((\VGA_86_image|square_pos_count\(14) & !\VGA_86_image|Add10~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(14),
	datad => VCC,
	cin => \VGA_86_image|Add10~27\,
	combout => \VGA_86_image|Add10~28_combout\,
	cout => \VGA_86_image|Add10~29\);

-- Location: FF_X39_Y38_N31
\VGA_86_image|square_pos_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~28_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(14));

-- Location: LCCOMB_X39_Y37_N0
\VGA_86_image|Add10~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~30_combout\ = (\VGA_86_image|square_pos_count\(15) & (!\VGA_86_image|Add10~29\)) # (!\VGA_86_image|square_pos_count\(15) & ((\VGA_86_image|Add10~29\) # (GND)))
-- \VGA_86_image|Add10~31\ = CARRY((!\VGA_86_image|Add10~29\) # (!\VGA_86_image|square_pos_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(15),
	datad => VCC,
	cin => \VGA_86_image|Add10~29\,
	combout => \VGA_86_image|Add10~30_combout\,
	cout => \VGA_86_image|Add10~31\);

-- Location: LCCOMB_X38_Y37_N26
\VGA_86_image|square_pos_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_pos_count~4_combout\ = (\VGA_86_image|Add10~30_combout\ & !\VGA_86_image|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add10~30_combout\,
	datad => \VGA_86_image|Equal3~9_combout\,
	combout => \VGA_86_image|square_pos_count~4_combout\);

-- Location: FF_X38_Y37_N27
\VGA_86_image|square_pos_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_pos_count~4_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(15));

-- Location: LCCOMB_X39_Y37_N2
\VGA_86_image|Add10~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~32_combout\ = (\VGA_86_image|square_pos_count\(16) & (\VGA_86_image|Add10~31\ $ (GND))) # (!\VGA_86_image|square_pos_count\(16) & (!\VGA_86_image|Add10~31\ & VCC))
-- \VGA_86_image|Add10~33\ = CARRY((\VGA_86_image|square_pos_count\(16) & !\VGA_86_image|Add10~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(16),
	datad => VCC,
	cin => \VGA_86_image|Add10~31\,
	combout => \VGA_86_image|Add10~32_combout\,
	cout => \VGA_86_image|Add10~33\);

-- Location: LCCOMB_X38_Y37_N12
\VGA_86_image|square_pos_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_pos_count~5_combout\ = (!\VGA_86_image|Equal3~9_combout\ & \VGA_86_image|Add10~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal3~9_combout\,
	datad => \VGA_86_image|Add10~32_combout\,
	combout => \VGA_86_image|square_pos_count~5_combout\);

-- Location: FF_X38_Y37_N13
\VGA_86_image|square_pos_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_pos_count~5_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(16));

-- Location: LCCOMB_X39_Y37_N4
\VGA_86_image|Add10~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~34_combout\ = (\VGA_86_image|square_pos_count\(17) & (!\VGA_86_image|Add10~33\)) # (!\VGA_86_image|square_pos_count\(17) & ((\VGA_86_image|Add10~33\) # (GND)))
-- \VGA_86_image|Add10~35\ = CARRY((!\VGA_86_image|Add10~33\) # (!\VGA_86_image|square_pos_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(17),
	datad => VCC,
	cin => \VGA_86_image|Add10~33\,
	combout => \VGA_86_image|Add10~34_combout\,
	cout => \VGA_86_image|Add10~35\);

-- Location: LCCOMB_X38_Y37_N6
\VGA_86_image|square_pos_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_pos_count~6_combout\ = (!\VGA_86_image|Equal3~9_combout\ & \VGA_86_image|Add10~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal3~9_combout\,
	datac => \VGA_86_image|Add10~34_combout\,
	combout => \VGA_86_image|square_pos_count~6_combout\);

-- Location: FF_X38_Y37_N7
\VGA_86_image|square_pos_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_pos_count~6_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(17));

-- Location: LCCOMB_X39_Y37_N6
\VGA_86_image|Add10~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~36_combout\ = (\VGA_86_image|square_pos_count\(18) & (\VGA_86_image|Add10~35\ $ (GND))) # (!\VGA_86_image|square_pos_count\(18) & (!\VGA_86_image|Add10~35\ & VCC))
-- \VGA_86_image|Add10~37\ = CARRY((\VGA_86_image|square_pos_count\(18) & !\VGA_86_image|Add10~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(18),
	datad => VCC,
	cin => \VGA_86_image|Add10~35\,
	combout => \VGA_86_image|Add10~36_combout\,
	cout => \VGA_86_image|Add10~37\);

-- Location: LCCOMB_X38_Y37_N16
\VGA_86_image|square_pos_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_pos_count~7_combout\ = (!\VGA_86_image|Equal3~9_combout\ & \VGA_86_image|Add10~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal3~9_combout\,
	datad => \VGA_86_image|Add10~36_combout\,
	combout => \VGA_86_image|square_pos_count~7_combout\);

-- Location: FF_X38_Y37_N17
\VGA_86_image|square_pos_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_pos_count~7_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(18));

-- Location: LCCOMB_X39_Y37_N8
\VGA_86_image|Add10~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~38_combout\ = (\VGA_86_image|square_pos_count\(19) & (!\VGA_86_image|Add10~37\)) # (!\VGA_86_image|square_pos_count\(19) & ((\VGA_86_image|Add10~37\) # (GND)))
-- \VGA_86_image|Add10~39\ = CARRY((!\VGA_86_image|Add10~37\) # (!\VGA_86_image|square_pos_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(19),
	datad => VCC,
	cin => \VGA_86_image|Add10~37\,
	combout => \VGA_86_image|Add10~38_combout\,
	cout => \VGA_86_image|Add10~39\);

-- Location: FF_X39_Y37_N9
\VGA_86_image|square_pos_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~38_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(19));

-- Location: LCCOMB_X38_Y37_N10
\VGA_86_image|Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~5_combout\ = (\VGA_86_image|square_pos_count\(17) & (\VGA_86_image|square_pos_count\(18) & (!\VGA_86_image|square_pos_count\(19) & \VGA_86_image|square_pos_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(17),
	datab => \VGA_86_image|square_pos_count\(18),
	datac => \VGA_86_image|square_pos_count\(19),
	datad => \VGA_86_image|square_pos_count\(16),
	combout => \VGA_86_image|Equal3~5_combout\);

-- Location: LCCOMB_X39_Y37_N10
\VGA_86_image|Add10~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~40_combout\ = (\VGA_86_image|square_pos_count\(20) & (\VGA_86_image|Add10~39\ $ (GND))) # (!\VGA_86_image|square_pos_count\(20) & (!\VGA_86_image|Add10~39\ & VCC))
-- \VGA_86_image|Add10~41\ = CARRY((\VGA_86_image|square_pos_count\(20) & !\VGA_86_image|Add10~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(20),
	datad => VCC,
	cin => \VGA_86_image|Add10~39\,
	combout => \VGA_86_image|Add10~40_combout\,
	cout => \VGA_86_image|Add10~41\);

-- Location: FF_X39_Y37_N11
\VGA_86_image|square_pos_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~40_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(20));

-- Location: LCCOMB_X39_Y37_N12
\VGA_86_image|Add10~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~42_combout\ = (\VGA_86_image|square_pos_count\(21) & (!\VGA_86_image|Add10~41\)) # (!\VGA_86_image|square_pos_count\(21) & ((\VGA_86_image|Add10~41\) # (GND)))
-- \VGA_86_image|Add10~43\ = CARRY((!\VGA_86_image|Add10~41\) # (!\VGA_86_image|square_pos_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(21),
	datad => VCC,
	cin => \VGA_86_image|Add10~41\,
	combout => \VGA_86_image|Add10~42_combout\,
	cout => \VGA_86_image|Add10~43\);

-- Location: FF_X39_Y37_N13
\VGA_86_image|square_pos_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~42_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(21));

-- Location: LCCOMB_X39_Y37_N14
\VGA_86_image|Add10~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~44_combout\ = (\VGA_86_image|square_pos_count\(22) & (\VGA_86_image|Add10~43\ $ (GND))) # (!\VGA_86_image|square_pos_count\(22) & (!\VGA_86_image|Add10~43\ & VCC))
-- \VGA_86_image|Add10~45\ = CARRY((\VGA_86_image|square_pos_count\(22) & !\VGA_86_image|Add10~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(22),
	datad => VCC,
	cin => \VGA_86_image|Add10~43\,
	combout => \VGA_86_image|Add10~44_combout\,
	cout => \VGA_86_image|Add10~45\);

-- Location: FF_X39_Y37_N15
\VGA_86_image|square_pos_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~44_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(22));

-- Location: LCCOMB_X39_Y37_N16
\VGA_86_image|Add10~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~46_combout\ = (\VGA_86_image|square_pos_count\(23) & (!\VGA_86_image|Add10~45\)) # (!\VGA_86_image|square_pos_count\(23) & ((\VGA_86_image|Add10~45\) # (GND)))
-- \VGA_86_image|Add10~47\ = CARRY((!\VGA_86_image|Add10~45\) # (!\VGA_86_image|square_pos_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(23),
	datad => VCC,
	cin => \VGA_86_image|Add10~45\,
	combout => \VGA_86_image|Add10~46_combout\,
	cout => \VGA_86_image|Add10~47\);

-- Location: FF_X39_Y37_N17
\VGA_86_image|square_pos_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~46_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(23));

-- Location: LCCOMB_X39_Y37_N18
\VGA_86_image|Add10~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~48_combout\ = (\VGA_86_image|square_pos_count\(24) & (\VGA_86_image|Add10~47\ $ (GND))) # (!\VGA_86_image|square_pos_count\(24) & (!\VGA_86_image|Add10~47\ & VCC))
-- \VGA_86_image|Add10~49\ = CARRY((\VGA_86_image|square_pos_count\(24) & !\VGA_86_image|Add10~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(24),
	datad => VCC,
	cin => \VGA_86_image|Add10~47\,
	combout => \VGA_86_image|Add10~48_combout\,
	cout => \VGA_86_image|Add10~49\);

-- Location: FF_X39_Y37_N19
\VGA_86_image|square_pos_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~48_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(24));

-- Location: LCCOMB_X39_Y37_N20
\VGA_86_image|Add10~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~50_combout\ = (\VGA_86_image|square_pos_count\(25) & (!\VGA_86_image|Add10~49\)) # (!\VGA_86_image|square_pos_count\(25) & ((\VGA_86_image|Add10~49\) # (GND)))
-- \VGA_86_image|Add10~51\ = CARRY((!\VGA_86_image|Add10~49\) # (!\VGA_86_image|square_pos_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(25),
	datad => VCC,
	cin => \VGA_86_image|Add10~49\,
	combout => \VGA_86_image|Add10~50_combout\,
	cout => \VGA_86_image|Add10~51\);

-- Location: FF_X39_Y37_N21
\VGA_86_image|square_pos_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~50_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(25));

-- Location: LCCOMB_X39_Y37_N22
\VGA_86_image|Add10~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~52_combout\ = (\VGA_86_image|square_pos_count\(26) & (\VGA_86_image|Add10~51\ $ (GND))) # (!\VGA_86_image|square_pos_count\(26) & (!\VGA_86_image|Add10~51\ & VCC))
-- \VGA_86_image|Add10~53\ = CARRY((\VGA_86_image|square_pos_count\(26) & !\VGA_86_image|Add10~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(26),
	datad => VCC,
	cin => \VGA_86_image|Add10~51\,
	combout => \VGA_86_image|Add10~52_combout\,
	cout => \VGA_86_image|Add10~53\);

-- Location: FF_X39_Y37_N23
\VGA_86_image|square_pos_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~52_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(26));

-- Location: LCCOMB_X39_Y37_N24
\VGA_86_image|Add10~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~54_combout\ = (\VGA_86_image|square_pos_count\(27) & (!\VGA_86_image|Add10~53\)) # (!\VGA_86_image|square_pos_count\(27) & ((\VGA_86_image|Add10~53\) # (GND)))
-- \VGA_86_image|Add10~55\ = CARRY((!\VGA_86_image|Add10~53\) # (!\VGA_86_image|square_pos_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(27),
	datad => VCC,
	cin => \VGA_86_image|Add10~53\,
	combout => \VGA_86_image|Add10~54_combout\,
	cout => \VGA_86_image|Add10~55\);

-- Location: FF_X39_Y37_N25
\VGA_86_image|square_pos_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~54_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(27));

-- Location: LCCOMB_X38_Y37_N22
\VGA_86_image|Equal3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~7_combout\ = (!\VGA_86_image|square_pos_count\(27) & (!\VGA_86_image|square_pos_count\(26) & (!\VGA_86_image|square_pos_count\(25) & !\VGA_86_image|square_pos_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(27),
	datab => \VGA_86_image|square_pos_count\(26),
	datac => \VGA_86_image|square_pos_count\(25),
	datad => \VGA_86_image|square_pos_count\(24),
	combout => \VGA_86_image|Equal3~7_combout\);

-- Location: LCCOMB_X39_Y37_N26
\VGA_86_image|Add10~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~56_combout\ = (\VGA_86_image|square_pos_count\(28) & (\VGA_86_image|Add10~55\ $ (GND))) # (!\VGA_86_image|square_pos_count\(28) & (!\VGA_86_image|Add10~55\ & VCC))
-- \VGA_86_image|Add10~57\ = CARRY((\VGA_86_image|square_pos_count\(28) & !\VGA_86_image|Add10~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(28),
	datad => VCC,
	cin => \VGA_86_image|Add10~55\,
	combout => \VGA_86_image|Add10~56_combout\,
	cout => \VGA_86_image|Add10~57\);

-- Location: FF_X39_Y37_N27
\VGA_86_image|square_pos_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~56_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(28));

-- Location: LCCOMB_X39_Y37_N28
\VGA_86_image|Add10~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~58_combout\ = (\VGA_86_image|square_pos_count\(29) & (!\VGA_86_image|Add10~57\)) # (!\VGA_86_image|square_pos_count\(29) & ((\VGA_86_image|Add10~57\) # (GND)))
-- \VGA_86_image|Add10~59\ = CARRY((!\VGA_86_image|Add10~57\) # (!\VGA_86_image|square_pos_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_pos_count\(29),
	datad => VCC,
	cin => \VGA_86_image|Add10~57\,
	combout => \VGA_86_image|Add10~58_combout\,
	cout => \VGA_86_image|Add10~59\);

-- Location: FF_X39_Y37_N29
\VGA_86_image|square_pos_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~58_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(29));

-- Location: LCCOMB_X39_Y37_N30
\VGA_86_image|Add10~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~60_combout\ = \VGA_86_image|square_pos_count\(30) $ (!\VGA_86_image|Add10~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(30),
	cin => \VGA_86_image|Add10~59\,
	combout => \VGA_86_image|Add10~60_combout\);

-- Location: FF_X39_Y37_N31
\VGA_86_image|square_pos_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add10~60_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_pos_count\(30));

-- Location: LCCOMB_X38_Y37_N24
\VGA_86_image|Equal3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~8_combout\ = (\VGA_86_image|Equal3~7_combout\ & (!\VGA_86_image|square_pos_count\(29) & (!\VGA_86_image|square_pos_count\(30) & !\VGA_86_image|square_pos_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal3~7_combout\,
	datab => \VGA_86_image|square_pos_count\(29),
	datac => \VGA_86_image|square_pos_count\(30),
	datad => \VGA_86_image|square_pos_count\(28),
	combout => \VGA_86_image|Equal3~8_combout\);

-- Location: LCCOMB_X38_Y38_N12
\VGA_86_image|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~1_combout\ = (\VGA_86_image|square_pos_count\(5) & (!\VGA_86_image|square_pos_count\(0) & (!\VGA_86_image|square_pos_count\(6) & !\VGA_86_image|square_pos_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(5),
	datab => \VGA_86_image|square_pos_count\(0),
	datac => \VGA_86_image|square_pos_count\(6),
	datad => \VGA_86_image|square_pos_count\(7),
	combout => \VGA_86_image|Equal3~1_combout\);

-- Location: LCCOMB_X38_Y38_N24
\VGA_86_image|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~0_combout\ = (!\VGA_86_image|square_pos_count\(2) & (!\VGA_86_image|square_pos_count\(3) & (!\VGA_86_image|square_pos_count\(4) & !\VGA_86_image|square_pos_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(2),
	datab => \VGA_86_image|square_pos_count\(3),
	datac => \VGA_86_image|square_pos_count\(4),
	datad => \VGA_86_image|square_pos_count\(1),
	combout => \VGA_86_image|Equal3~0_combout\);

-- Location: LCCOMB_X39_Y38_N0
\VGA_86_image|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~3_combout\ = (!\VGA_86_image|square_pos_count\(12) & (\VGA_86_image|square_pos_count\(15) & (!\VGA_86_image|square_pos_count\(14) & \VGA_86_image|square_pos_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(12),
	datab => \VGA_86_image|square_pos_count\(15),
	datac => \VGA_86_image|square_pos_count\(14),
	datad => \VGA_86_image|square_pos_count\(13),
	combout => \VGA_86_image|Equal3~3_combout\);

-- Location: LCCOMB_X40_Y38_N4
\VGA_86_image|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~2_combout\ = (!\VGA_86_image|square_pos_count\(9) & (!\VGA_86_image|square_pos_count\(10) & (!\VGA_86_image|square_pos_count\(11) & \VGA_86_image|square_pos_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(9),
	datab => \VGA_86_image|square_pos_count\(10),
	datac => \VGA_86_image|square_pos_count\(11),
	datad => \VGA_86_image|square_pos_count\(8),
	combout => \VGA_86_image|Equal3~2_combout\);

-- Location: LCCOMB_X38_Y38_N30
\VGA_86_image|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~4_combout\ = (\VGA_86_image|Equal3~1_combout\ & (\VGA_86_image|Equal3~0_combout\ & (\VGA_86_image|Equal3~3_combout\ & \VGA_86_image|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal3~1_combout\,
	datab => \VGA_86_image|Equal3~0_combout\,
	datac => \VGA_86_image|Equal3~3_combout\,
	datad => \VGA_86_image|Equal3~2_combout\,
	combout => \VGA_86_image|Equal3~4_combout\);

-- Location: LCCOMB_X38_Y37_N28
\VGA_86_image|Equal3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~6_combout\ = (!\VGA_86_image|square_pos_count\(22) & (!\VGA_86_image|square_pos_count\(21) & (!\VGA_86_image|square_pos_count\(20) & !\VGA_86_image|square_pos_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_pos_count\(22),
	datab => \VGA_86_image|square_pos_count\(21),
	datac => \VGA_86_image|square_pos_count\(20),
	datad => \VGA_86_image|square_pos_count\(23),
	combout => \VGA_86_image|Equal3~6_combout\);

-- Location: LCCOMB_X38_Y37_N18
\VGA_86_image|Equal3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~9_combout\ = (\VGA_86_image|Equal3~5_combout\ & (\VGA_86_image|Equal3~8_combout\ & (\VGA_86_image|Equal3~4_combout\ & \VGA_86_image|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal3~5_combout\,
	datab => \VGA_86_image|Equal3~8_combout\,
	datac => \VGA_86_image|Equal3~4_combout\,
	datad => \VGA_86_image|Equal3~6_combout\,
	combout => \VGA_86_image|Equal3~9_combout\);

-- Location: LCCOMB_X38_Y34_N26
\VGA_86_image|process_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~21_combout\ = (!\VGA_86_image|Add4~14_combout\ & !\VGA_86_image|LessThan8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Add4~14_combout\,
	datac => \VGA_86_image|LessThan8~16_combout\,
	combout => \VGA_86_image|process_1~21_combout\);

-- Location: LCCOMB_X37_Y34_N0
\VGA_86_image|square_h_pos[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_h_pos[3]~9_combout\ = (\VGA_86_image|Equal3~9_combout\ & (!\VGA_86_image|blank_2~q\ & ((!\VGA_86_image|process_1~15_combout\) # (!\VGA_86_image|process_1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal3~9_combout\,
	datab => \VGA_86_image|process_1~21_combout\,
	datac => \VGA_86_image|blank_2~q\,
	datad => \VGA_86_image|process_1~15_combout\,
	combout => \VGA_86_image|square_h_pos[3]~9_combout\);

-- Location: LCCOMB_X36_Y35_N0
\VGA_86_image|square_v_pos[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[1]~29_combout\ = \VGA_86_image|square_v_pos\(1) $ (((\VGA_86_image|square_h_pos[3]~9_combout\ & \VGA_86_image|square_v_pos[3]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_h_pos[3]~9_combout\,
	datac => \VGA_86_image|square_v_pos\(1),
	datad => \VGA_86_image|square_v_pos[3]~27_combout\,
	combout => \VGA_86_image|square_v_pos[1]~29_combout\);

-- Location: FF_X36_Y35_N1
\VGA_86_image|square_v_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_v_pos[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_v_pos\(1));

-- Location: LCCOMB_X36_Y35_N16
\VGA_86_image|square_v_pos[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[3]~10_combout\ = (\VGA_86_image|square_v_pos\(3) & (!\VGA_86_image|square_v_pos[2]~9\)) # (!\VGA_86_image|square_v_pos\(3) & ((\VGA_86_image|square_v_pos[2]~9\) # (GND)))
-- \VGA_86_image|square_v_pos[3]~11\ = CARRY((!\VGA_86_image|square_v_pos[2]~9\) # (!\VGA_86_image|square_v_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(3),
	datad => VCC,
	cin => \VGA_86_image|square_v_pos[2]~9\,
	combout => \VGA_86_image|square_v_pos[3]~10_combout\,
	cout => \VGA_86_image|square_v_pos[3]~11\);

-- Location: FF_X36_Y35_N17
\VGA_86_image|square_v_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_v_pos[3]~10_combout\,
	ena => \VGA_86_image|square_v_pos[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_v_pos\(3));

-- Location: LCCOMB_X36_Y35_N18
\VGA_86_image|square_v_pos[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[4]~12_combout\ = (\VGA_86_image|square_v_pos\(4) & ((GND) # (!\VGA_86_image|square_v_pos[3]~11\))) # (!\VGA_86_image|square_v_pos\(4) & (\VGA_86_image|square_v_pos[3]~11\ $ (GND)))
-- \VGA_86_image|square_v_pos[4]~13\ = CARRY((\VGA_86_image|square_v_pos\(4)) # (!\VGA_86_image|square_v_pos[3]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(4),
	datad => VCC,
	cin => \VGA_86_image|square_v_pos[3]~11\,
	combout => \VGA_86_image|square_v_pos[4]~12_combout\,
	cout => \VGA_86_image|square_v_pos[4]~13\);

-- Location: FF_X36_Y35_N19
\VGA_86_image|square_v_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_v_pos[4]~12_combout\,
	ena => \VGA_86_image|square_v_pos[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_v_pos\(4));

-- Location: LCCOMB_X36_Y35_N20
\VGA_86_image|square_v_pos[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[5]~14_combout\ = (\VGA_86_image|square_v_pos\(5) & (\VGA_86_image|square_v_pos[4]~13\ & VCC)) # (!\VGA_86_image|square_v_pos\(5) & (!\VGA_86_image|square_v_pos[4]~13\))
-- \VGA_86_image|square_v_pos[5]~15\ = CARRY((!\VGA_86_image|square_v_pos\(5) & !\VGA_86_image|square_v_pos[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(5),
	datad => VCC,
	cin => \VGA_86_image|square_v_pos[4]~13\,
	combout => \VGA_86_image|square_v_pos[5]~14_combout\,
	cout => \VGA_86_image|square_v_pos[5]~15\);

-- Location: FF_X36_Y35_N21
\VGA_86_image|square_v_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_v_pos[5]~14_combout\,
	ena => \VGA_86_image|square_v_pos[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_v_pos\(5));

-- Location: LCCOMB_X36_Y35_N22
\VGA_86_image|square_v_pos[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[6]~16_combout\ = (\VGA_86_image|square_v_pos\(6) & (\VGA_86_image|square_v_pos[5]~15\ $ (GND))) # (!\VGA_86_image|square_v_pos\(6) & (!\VGA_86_image|square_v_pos[5]~15\ & VCC))
-- \VGA_86_image|square_v_pos[6]~17\ = CARRY((\VGA_86_image|square_v_pos\(6) & !\VGA_86_image|square_v_pos[5]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(6),
	datad => VCC,
	cin => \VGA_86_image|square_v_pos[5]~15\,
	combout => \VGA_86_image|square_v_pos[6]~16_combout\,
	cout => \VGA_86_image|square_v_pos[6]~17\);

-- Location: FF_X36_Y35_N23
\VGA_86_image|square_v_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_v_pos[6]~16_combout\,
	ena => \VGA_86_image|square_v_pos[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_v_pos\(6));

-- Location: LCCOMB_X36_Y35_N24
\VGA_86_image|square_v_pos[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[7]~18_combout\ = (\VGA_86_image|square_v_pos\(7) & (!\VGA_86_image|square_v_pos[6]~17\)) # (!\VGA_86_image|square_v_pos\(7) & ((\VGA_86_image|square_v_pos[6]~17\) # (GND)))
-- \VGA_86_image|square_v_pos[7]~19\ = CARRY((!\VGA_86_image|square_v_pos[6]~17\) # (!\VGA_86_image|square_v_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(7),
	datad => VCC,
	cin => \VGA_86_image|square_v_pos[6]~17\,
	combout => \VGA_86_image|square_v_pos[7]~18_combout\,
	cout => \VGA_86_image|square_v_pos[7]~19\);

-- Location: FF_X36_Y35_N25
\VGA_86_image|square_v_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_v_pos[7]~18_combout\,
	ena => \VGA_86_image|square_v_pos[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_v_pos\(7));

-- Location: LCCOMB_X36_Y35_N26
\VGA_86_image|square_v_pos[8]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[8]~20_combout\ = (\VGA_86_image|square_v_pos\(8) & (\VGA_86_image|square_v_pos[7]~19\ $ (GND))) # (!\VGA_86_image|square_v_pos\(8) & (!\VGA_86_image|square_v_pos[7]~19\ & VCC))
-- \VGA_86_image|square_v_pos[8]~21\ = CARRY((\VGA_86_image|square_v_pos\(8) & !\VGA_86_image|square_v_pos[7]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(8),
	datad => VCC,
	cin => \VGA_86_image|square_v_pos[7]~19\,
	combout => \VGA_86_image|square_v_pos[8]~20_combout\,
	cout => \VGA_86_image|square_v_pos[8]~21\);

-- Location: FF_X36_Y35_N27
\VGA_86_image|square_v_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_v_pos[8]~20_combout\,
	ena => \VGA_86_image|square_v_pos[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_v_pos\(8));

-- Location: LCCOMB_X36_Y35_N28
\VGA_86_image|square_v_pos[9]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|square_v_pos[9]~22_combout\ = \VGA_86_image|square_v_pos[8]~21\ $ (\VGA_86_image|square_v_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|square_v_pos\(9),
	cin => \VGA_86_image|square_v_pos[8]~21\,
	combout => \VGA_86_image|square_v_pos[9]~22_combout\);

-- Location: FF_X36_Y35_N29
\VGA_86_image|square_v_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|square_v_pos[9]~22_combout\,
	ena => \VGA_86_image|square_v_pos[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|square_v_pos\(9));

-- Location: LCCOMB_X39_Y35_N18
\VGA_86_image|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~0_combout\ = (\VGA_86_image|square_v_pos\(3) & (\VGA_86_image|square_v_pos\(4) $ (VCC))) # (!\VGA_86_image|square_v_pos\(3) & (\VGA_86_image|square_v_pos\(4) & VCC))
-- \VGA_86_image|Add5~1\ = CARRY((\VGA_86_image|square_v_pos\(3) & \VGA_86_image|square_v_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(3),
	datab => \VGA_86_image|square_v_pos\(4),
	datad => VCC,
	combout => \VGA_86_image|Add5~0_combout\,
	cout => \VGA_86_image|Add5~1\);

-- Location: LCCOMB_X39_Y35_N20
\VGA_86_image|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~2_combout\ = (\VGA_86_image|square_v_pos\(5) & (!\VGA_86_image|Add5~1\)) # (!\VGA_86_image|square_v_pos\(5) & ((\VGA_86_image|Add5~1\) # (GND)))
-- \VGA_86_image|Add5~3\ = CARRY((!\VGA_86_image|Add5~1\) # (!\VGA_86_image|square_v_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(5),
	datad => VCC,
	cin => \VGA_86_image|Add5~1\,
	combout => \VGA_86_image|Add5~2_combout\,
	cout => \VGA_86_image|Add5~3\);

-- Location: LCCOMB_X39_Y35_N22
\VGA_86_image|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~4_combout\ = (\VGA_86_image|square_v_pos\(6) & ((GND) # (!\VGA_86_image|Add5~3\))) # (!\VGA_86_image|square_v_pos\(6) & (\VGA_86_image|Add5~3\ $ (GND)))
-- \VGA_86_image|Add5~5\ = CARRY((\VGA_86_image|square_v_pos\(6)) # (!\VGA_86_image|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(6),
	datad => VCC,
	cin => \VGA_86_image|Add5~3\,
	combout => \VGA_86_image|Add5~4_combout\,
	cout => \VGA_86_image|Add5~5\);

-- Location: LCCOMB_X39_Y35_N24
\VGA_86_image|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~6_combout\ = (\VGA_86_image|square_v_pos\(7) & (\VGA_86_image|Add5~5\ & VCC)) # (!\VGA_86_image|square_v_pos\(7) & (!\VGA_86_image|Add5~5\))
-- \VGA_86_image|Add5~7\ = CARRY((!\VGA_86_image|square_v_pos\(7) & !\VGA_86_image|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(7),
	datad => VCC,
	cin => \VGA_86_image|Add5~5\,
	combout => \VGA_86_image|Add5~6_combout\,
	cout => \VGA_86_image|Add5~7\);

-- Location: LCCOMB_X39_Y35_N26
\VGA_86_image|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~8_combout\ = (\VGA_86_image|square_v_pos\(8) & (\VGA_86_image|Add5~7\ $ (GND))) # (!\VGA_86_image|square_v_pos\(8) & (!\VGA_86_image|Add5~7\ & VCC))
-- \VGA_86_image|Add5~9\ = CARRY((\VGA_86_image|square_v_pos\(8) & !\VGA_86_image|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(8),
	datad => VCC,
	cin => \VGA_86_image|Add5~7\,
	combout => \VGA_86_image|Add5~8_combout\,
	cout => \VGA_86_image|Add5~9\);

-- Location: LCCOMB_X39_Y35_N28
\VGA_86_image|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~10_combout\ = (\VGA_86_image|square_v_pos\(9) & (!\VGA_86_image|Add5~9\)) # (!\VGA_86_image|square_v_pos\(9) & ((\VGA_86_image|Add5~9\) # (GND)))
-- \VGA_86_image|Add5~11\ = CARRY((!\VGA_86_image|Add5~9\) # (!\VGA_86_image|square_v_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_v_pos\(9),
	datad => VCC,
	cin => \VGA_86_image|Add5~9\,
	combout => \VGA_86_image|Add5~10_combout\,
	cout => \VGA_86_image|Add5~11\);

-- Location: LCCOMB_X39_Y35_N30
\VGA_86_image|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~12_combout\ = !\VGA_86_image|Add5~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VGA_86_image|Add5~11\,
	combout => \VGA_86_image|Add5~12_combout\);

-- Location: LCCOMB_X39_Y35_N0
\VGA_86_image|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add2~0_combout\ = (\VGA_86_image|square_h_pos\(3) & (\VGA_86_image|square_h_pos\(2) $ (VCC))) # (!\VGA_86_image|square_h_pos\(3) & (\VGA_86_image|square_h_pos\(2) & VCC))
-- \VGA_86_image|Add2~1\ = CARRY((\VGA_86_image|square_h_pos\(3) & \VGA_86_image|square_h_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(3),
	datab => \VGA_86_image|square_h_pos\(2),
	datad => VCC,
	combout => \VGA_86_image|Add2~0_combout\,
	cout => \VGA_86_image|Add2~1\);

-- Location: LCCOMB_X39_Y35_N2
\VGA_86_image|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add2~2_combout\ = (\VGA_86_image|square_h_pos\(4) & (!\VGA_86_image|Add2~1\)) # (!\VGA_86_image|square_h_pos\(4) & ((\VGA_86_image|Add2~1\) # (GND)))
-- \VGA_86_image|Add2~3\ = CARRY((!\VGA_86_image|Add2~1\) # (!\VGA_86_image|square_h_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(4),
	datad => VCC,
	cin => \VGA_86_image|Add2~1\,
	combout => \VGA_86_image|Add2~2_combout\,
	cout => \VGA_86_image|Add2~3\);

-- Location: LCCOMB_X39_Y35_N4
\VGA_86_image|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add2~4_combout\ = (\VGA_86_image|square_h_pos\(5) & ((GND) # (!\VGA_86_image|Add2~3\))) # (!\VGA_86_image|square_h_pos\(5) & (\VGA_86_image|Add2~3\ $ (GND)))
-- \VGA_86_image|Add2~5\ = CARRY((\VGA_86_image|square_h_pos\(5)) # (!\VGA_86_image|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_h_pos\(5),
	datad => VCC,
	cin => \VGA_86_image|Add2~3\,
	combout => \VGA_86_image|Add2~4_combout\,
	cout => \VGA_86_image|Add2~5\);

-- Location: LCCOMB_X39_Y35_N6
\VGA_86_image|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add2~6_combout\ = (\VGA_86_image|square_h_pos\(6) & (\VGA_86_image|Add2~5\ & VCC)) # (!\VGA_86_image|square_h_pos\(6) & (!\VGA_86_image|Add2~5\))
-- \VGA_86_image|Add2~7\ = CARRY((!\VGA_86_image|square_h_pos\(6) & !\VGA_86_image|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(6),
	datad => VCC,
	cin => \VGA_86_image|Add2~5\,
	combout => \VGA_86_image|Add2~6_combout\,
	cout => \VGA_86_image|Add2~7\);

-- Location: LCCOMB_X39_Y35_N8
\VGA_86_image|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add2~8_combout\ = (\VGA_86_image|square_h_pos\(7) & (\VGA_86_image|Add2~7\ $ (GND))) # (!\VGA_86_image|square_h_pos\(7) & (!\VGA_86_image|Add2~7\ & VCC))
-- \VGA_86_image|Add2~9\ = CARRY((\VGA_86_image|square_h_pos\(7) & !\VGA_86_image|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_h_pos\(7),
	datad => VCC,
	cin => \VGA_86_image|Add2~7\,
	combout => \VGA_86_image|Add2~8_combout\,
	cout => \VGA_86_image|Add2~9\);

-- Location: LCCOMB_X39_Y35_N10
\VGA_86_image|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add2~10_combout\ = (\VGA_86_image|square_h_pos\(8) & (!\VGA_86_image|Add2~9\)) # (!\VGA_86_image|square_h_pos\(8) & ((\VGA_86_image|Add2~9\) # (GND)))
-- \VGA_86_image|Add2~11\ = CARRY((!\VGA_86_image|Add2~9\) # (!\VGA_86_image|square_h_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(8),
	datad => VCC,
	cin => \VGA_86_image|Add2~9\,
	combout => \VGA_86_image|Add2~10_combout\,
	cout => \VGA_86_image|Add2~11\);

-- Location: LCCOMB_X39_Y35_N12
\VGA_86_image|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add2~12_combout\ = (\VGA_86_image|square_h_pos\(9) & (\VGA_86_image|Add2~11\ $ (GND))) # (!\VGA_86_image|square_h_pos\(9) & (!\VGA_86_image|Add2~11\ & VCC))
-- \VGA_86_image|Add2~13\ = CARRY((\VGA_86_image|square_h_pos\(9) & !\VGA_86_image|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(9),
	datad => VCC,
	cin => \VGA_86_image|Add2~11\,
	combout => \VGA_86_image|Add2~12_combout\,
	cout => \VGA_86_image|Add2~13\);

-- Location: LCCOMB_X39_Y35_N14
\VGA_86_image|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add2~14_combout\ = \VGA_86_image|Add2~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VGA_86_image|Add2~13\,
	combout => \VGA_86_image|Add2~14_combout\);

-- Location: LCCOMB_X40_Y35_N4
\VGA_86_image|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~1_cout\ = CARRY((\VGA_86_image|square_h_pos\(0) & !\VGA_86_image|h_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(0),
	datab => \VGA_86_image|h_count\(0),
	datad => VCC,
	cout => \VGA_86_image|LessThan6~1_cout\);

-- Location: LCCOMB_X40_Y35_N6
\VGA_86_image|LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~3_cout\ = CARRY((\VGA_86_image|square_h_pos\(1) & (\VGA_86_image|h_count\(1) & !\VGA_86_image|LessThan6~1_cout\)) # (!\VGA_86_image|square_h_pos\(1) & ((\VGA_86_image|h_count\(1)) # (!\VGA_86_image|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(1),
	datab => \VGA_86_image|h_count\(1),
	datad => VCC,
	cin => \VGA_86_image|LessThan6~1_cout\,
	cout => \VGA_86_image|LessThan6~3_cout\);

-- Location: LCCOMB_X40_Y35_N8
\VGA_86_image|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~5_cout\ = CARRY((\VGA_86_image|h_count\(2) & (!\VGA_86_image|square_h_pos\(2) & !\VGA_86_image|LessThan6~3_cout\)) # (!\VGA_86_image|h_count\(2) & ((!\VGA_86_image|LessThan6~3_cout\) # (!\VGA_86_image|square_h_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(2),
	datab => \VGA_86_image|square_h_pos\(2),
	datad => VCC,
	cin => \VGA_86_image|LessThan6~3_cout\,
	cout => \VGA_86_image|LessThan6~5_cout\);

-- Location: LCCOMB_X40_Y35_N10
\VGA_86_image|LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~7_cout\ = CARRY((\VGA_86_image|Add2~0_combout\ & (\VGA_86_image|h_count\(3) & !\VGA_86_image|LessThan6~5_cout\)) # (!\VGA_86_image|Add2~0_combout\ & ((\VGA_86_image|h_count\(3)) # (!\VGA_86_image|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add2~0_combout\,
	datab => \VGA_86_image|h_count\(3),
	datad => VCC,
	cin => \VGA_86_image|LessThan6~5_cout\,
	cout => \VGA_86_image|LessThan6~7_cout\);

-- Location: LCCOMB_X40_Y35_N12
\VGA_86_image|LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~9_cout\ = CARRY((\VGA_86_image|Add2~2_combout\ & ((!\VGA_86_image|LessThan6~7_cout\) # (!\VGA_86_image|h_count\(4)))) # (!\VGA_86_image|Add2~2_combout\ & (!\VGA_86_image|h_count\(4) & !\VGA_86_image|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add2~2_combout\,
	datab => \VGA_86_image|h_count\(4),
	datad => VCC,
	cin => \VGA_86_image|LessThan6~7_cout\,
	cout => \VGA_86_image|LessThan6~9_cout\);

-- Location: LCCOMB_X40_Y35_N14
\VGA_86_image|LessThan6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~11_cout\ = CARRY((\VGA_86_image|h_count\(5) & ((!\VGA_86_image|LessThan6~9_cout\) # (!\VGA_86_image|Add2~4_combout\))) # (!\VGA_86_image|h_count\(5) & (!\VGA_86_image|Add2~4_combout\ & !\VGA_86_image|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(5),
	datab => \VGA_86_image|Add2~4_combout\,
	datad => VCC,
	cin => \VGA_86_image|LessThan6~9_cout\,
	cout => \VGA_86_image|LessThan6~11_cout\);

-- Location: LCCOMB_X40_Y35_N16
\VGA_86_image|LessThan6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~13_cout\ = CARRY((\VGA_86_image|h_count\(6) & (\VGA_86_image|Add2~6_combout\ & !\VGA_86_image|LessThan6~11_cout\)) # (!\VGA_86_image|h_count\(6) & ((\VGA_86_image|Add2~6_combout\) # (!\VGA_86_image|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(6),
	datab => \VGA_86_image|Add2~6_combout\,
	datad => VCC,
	cin => \VGA_86_image|LessThan6~11_cout\,
	cout => \VGA_86_image|LessThan6~13_cout\);

-- Location: LCCOMB_X40_Y35_N18
\VGA_86_image|LessThan6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~15_cout\ = CARRY((\VGA_86_image|Add2~8_combout\ & (\VGA_86_image|h_count\(7) & !\VGA_86_image|LessThan6~13_cout\)) # (!\VGA_86_image|Add2~8_combout\ & ((\VGA_86_image|h_count\(7)) # (!\VGA_86_image|LessThan6~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add2~8_combout\,
	datab => \VGA_86_image|h_count\(7),
	datad => VCC,
	cin => \VGA_86_image|LessThan6~13_cout\,
	cout => \VGA_86_image|LessThan6~15_cout\);

-- Location: LCCOMB_X40_Y35_N20
\VGA_86_image|LessThan6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~17_cout\ = CARRY((\VGA_86_image|Add2~10_combout\ & ((!\VGA_86_image|LessThan6~15_cout\) # (!\VGA_86_image|h_count\(8)))) # (!\VGA_86_image|Add2~10_combout\ & (!\VGA_86_image|h_count\(8) & !\VGA_86_image|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add2~10_combout\,
	datab => \VGA_86_image|h_count\(8),
	datad => VCC,
	cin => \VGA_86_image|LessThan6~15_cout\,
	cout => \VGA_86_image|LessThan6~17_cout\);

-- Location: LCCOMB_X40_Y35_N22
\VGA_86_image|LessThan6~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~19_cout\ = CARRY((\VGA_86_image|Add2~12_combout\ & (\VGA_86_image|h_count\(9) & !\VGA_86_image|LessThan6~17_cout\)) # (!\VGA_86_image|Add2~12_combout\ & ((\VGA_86_image|h_count\(9)) # (!\VGA_86_image|LessThan6~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add2~12_combout\,
	datab => \VGA_86_image|h_count\(9),
	datad => VCC,
	cin => \VGA_86_image|LessThan6~17_cout\,
	cout => \VGA_86_image|LessThan6~19_cout\);

-- Location: LCCOMB_X40_Y35_N24
\VGA_86_image|LessThan6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan6~20_combout\ = (\VGA_86_image|h_count\(10) & (!\VGA_86_image|LessThan6~19_cout\ & \VGA_86_image|Add2~14_combout\)) # (!\VGA_86_image|h_count\(10) & ((\VGA_86_image|Add2~14_combout\) # (!\VGA_86_image|LessThan6~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(10),
	datad => \VGA_86_image|Add2~14_combout\,
	cin => \VGA_86_image|LessThan6~19_cout\,
	combout => \VGA_86_image|LessThan6~20_combout\);

-- Location: LCCOMB_X38_Y35_N6
\VGA_86_image|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan9~1_cout\ = CARRY(\VGA_86_image|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(0),
	datad => VCC,
	cout => \VGA_86_image|LessThan9~1_cout\);

-- Location: LCCOMB_X38_Y35_N8
\VGA_86_image|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan9~3_cout\ = CARRY((\VGA_86_image|square_v_pos\(1) & ((!\VGA_86_image|LessThan9~1_cout\) # (!\VGA_86_image|v_count\(1)))) # (!\VGA_86_image|square_v_pos\(1) & (!\VGA_86_image|v_count\(1) & !\VGA_86_image|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(1),
	datab => \VGA_86_image|v_count\(1),
	datad => VCC,
	cin => \VGA_86_image|LessThan9~1_cout\,
	cout => \VGA_86_image|LessThan9~3_cout\);

-- Location: LCCOMB_X38_Y35_N10
\VGA_86_image|LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan9~5_cout\ = CARRY((\VGA_86_image|v_count\(2) & ((!\VGA_86_image|LessThan9~3_cout\) # (!\VGA_86_image|square_v_pos\(2)))) # (!\VGA_86_image|v_count\(2) & (!\VGA_86_image|square_v_pos\(2) & !\VGA_86_image|LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(2),
	datab => \VGA_86_image|square_v_pos\(2),
	datad => VCC,
	cin => \VGA_86_image|LessThan9~3_cout\,
	cout => \VGA_86_image|LessThan9~5_cout\);

-- Location: LCCOMB_X38_Y35_N12
\VGA_86_image|LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan9~7_cout\ = CARRY((\VGA_86_image|square_v_pos\(3) & (!\VGA_86_image|v_count\(3) & !\VGA_86_image|LessThan9~5_cout\)) # (!\VGA_86_image|square_v_pos\(3) & ((!\VGA_86_image|LessThan9~5_cout\) # (!\VGA_86_image|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos\(3),
	datab => \VGA_86_image|v_count\(3),
	datad => VCC,
	cin => \VGA_86_image|LessThan9~5_cout\,
	cout => \VGA_86_image|LessThan9~7_cout\);

-- Location: LCCOMB_X38_Y35_N14
\VGA_86_image|LessThan9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan9~9_cout\ = CARRY((\VGA_86_image|Add5~0_combout\ & (\VGA_86_image|v_count\(4) & !\VGA_86_image|LessThan9~7_cout\)) # (!\VGA_86_image|Add5~0_combout\ & ((\VGA_86_image|v_count\(4)) # (!\VGA_86_image|LessThan9~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add5~0_combout\,
	datab => \VGA_86_image|v_count\(4),
	datad => VCC,
	cin => \VGA_86_image|LessThan9~7_cout\,
	cout => \VGA_86_image|LessThan9~9_cout\);

-- Location: LCCOMB_X38_Y35_N16
\VGA_86_image|LessThan9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan9~11_cout\ = CARRY((\VGA_86_image|v_count\(5) & (\VGA_86_image|Add5~2_combout\ & !\VGA_86_image|LessThan9~9_cout\)) # (!\VGA_86_image|v_count\(5) & ((\VGA_86_image|Add5~2_combout\) # (!\VGA_86_image|LessThan9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(5),
	datab => \VGA_86_image|Add5~2_combout\,
	datad => VCC,
	cin => \VGA_86_image|LessThan9~9_cout\,
	cout => \VGA_86_image|LessThan9~11_cout\);

-- Location: LCCOMB_X38_Y35_N18
\VGA_86_image|LessThan9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan9~13_cout\ = CARRY((\VGA_86_image|v_count\(6) & ((!\VGA_86_image|LessThan9~11_cout\) # (!\VGA_86_image|Add5~4_combout\))) # (!\VGA_86_image|v_count\(6) & (!\VGA_86_image|Add5~4_combout\ & !\VGA_86_image|LessThan9~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(6),
	datab => \VGA_86_image|Add5~4_combout\,
	datad => VCC,
	cin => \VGA_86_image|LessThan9~11_cout\,
	cout => \VGA_86_image|LessThan9~13_cout\);

-- Location: LCCOMB_X38_Y35_N20
\VGA_86_image|LessThan9~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan9~15_cout\ = CARRY((\VGA_86_image|v_count\(7) & (\VGA_86_image|Add5~6_combout\ & !\VGA_86_image|LessThan9~13_cout\)) # (!\VGA_86_image|v_count\(7) & ((\VGA_86_image|Add5~6_combout\) # (!\VGA_86_image|LessThan9~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(7),
	datab => \VGA_86_image|Add5~6_combout\,
	datad => VCC,
	cin => \VGA_86_image|LessThan9~13_cout\,
	cout => \VGA_86_image|LessThan9~15_cout\);

-- Location: LCCOMB_X38_Y35_N22
\VGA_86_image|LessThan9~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan9~17_cout\ = CARRY((\VGA_86_image|Add5~8_combout\ & (\VGA_86_image|v_count\(8) & !\VGA_86_image|LessThan9~15_cout\)) # (!\VGA_86_image|Add5~8_combout\ & ((\VGA_86_image|v_count\(8)) # (!\VGA_86_image|LessThan9~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add5~8_combout\,
	datab => \VGA_86_image|v_count\(8),
	datad => VCC,
	cin => \VGA_86_image|LessThan9~15_cout\,
	cout => \VGA_86_image|LessThan9~17_cout\);

-- Location: LCCOMB_X38_Y35_N24
\VGA_86_image|LessThan9~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan9~18_combout\ = (\VGA_86_image|v_count\(9) & ((\VGA_86_image|LessThan9~17_cout\) # (!\VGA_86_image|Add5~10_combout\))) # (!\VGA_86_image|v_count\(9) & (\VGA_86_image|LessThan9~17_cout\ & !\VGA_86_image|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(9),
	datad => \VGA_86_image|Add5~10_combout\,
	cin => \VGA_86_image|LessThan9~17_cout\,
	combout => \VGA_86_image|LessThan9~18_combout\);

-- Location: LCCOMB_X39_Y36_N0
\VGA_86_image|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add3~0_combout\ = (\VGA_86_image|square_h_pos\(3) & (\VGA_86_image|square_h_pos\(4) $ (VCC))) # (!\VGA_86_image|square_h_pos\(3) & (\VGA_86_image|square_h_pos\(4) & VCC))
-- \VGA_86_image|Add3~1\ = CARRY((\VGA_86_image|square_h_pos\(3) & \VGA_86_image|square_h_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(3),
	datab => \VGA_86_image|square_h_pos\(4),
	datad => VCC,
	combout => \VGA_86_image|Add3~0_combout\,
	cout => \VGA_86_image|Add3~1\);

-- Location: LCCOMB_X39_Y36_N2
\VGA_86_image|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add3~2_combout\ = (\VGA_86_image|square_h_pos\(5) & (!\VGA_86_image|Add3~1\)) # (!\VGA_86_image|square_h_pos\(5) & ((\VGA_86_image|Add3~1\) # (GND)))
-- \VGA_86_image|Add3~3\ = CARRY((!\VGA_86_image|Add3~1\) # (!\VGA_86_image|square_h_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(5),
	datad => VCC,
	cin => \VGA_86_image|Add3~1\,
	combout => \VGA_86_image|Add3~2_combout\,
	cout => \VGA_86_image|Add3~3\);

-- Location: LCCOMB_X39_Y36_N4
\VGA_86_image|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add3~4_combout\ = (\VGA_86_image|square_h_pos\(6) & ((GND) # (!\VGA_86_image|Add3~3\))) # (!\VGA_86_image|square_h_pos\(6) & (\VGA_86_image|Add3~3\ $ (GND)))
-- \VGA_86_image|Add3~5\ = CARRY((\VGA_86_image|square_h_pos\(6)) # (!\VGA_86_image|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_h_pos\(6),
	datad => VCC,
	cin => \VGA_86_image|Add3~3\,
	combout => \VGA_86_image|Add3~4_combout\,
	cout => \VGA_86_image|Add3~5\);

-- Location: LCCOMB_X39_Y36_N6
\VGA_86_image|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add3~6_combout\ = (\VGA_86_image|square_h_pos\(7) & (\VGA_86_image|Add3~5\ & VCC)) # (!\VGA_86_image|square_h_pos\(7) & (!\VGA_86_image|Add3~5\))
-- \VGA_86_image|Add3~7\ = CARRY((!\VGA_86_image|square_h_pos\(7) & !\VGA_86_image|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(7),
	datad => VCC,
	cin => \VGA_86_image|Add3~5\,
	combout => \VGA_86_image|Add3~6_combout\,
	cout => \VGA_86_image|Add3~7\);

-- Location: LCCOMB_X39_Y36_N8
\VGA_86_image|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add3~8_combout\ = (\VGA_86_image|square_h_pos\(8) & (\VGA_86_image|Add3~7\ $ (GND))) # (!\VGA_86_image|square_h_pos\(8) & (!\VGA_86_image|Add3~7\ & VCC))
-- \VGA_86_image|Add3~9\ = CARRY((\VGA_86_image|square_h_pos\(8) & !\VGA_86_image|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|square_h_pos\(8),
	datad => VCC,
	cin => \VGA_86_image|Add3~7\,
	combout => \VGA_86_image|Add3~8_combout\,
	cout => \VGA_86_image|Add3~9\);

-- Location: LCCOMB_X39_Y36_N10
\VGA_86_image|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add3~10_combout\ = (\VGA_86_image|square_h_pos\(9) & (!\VGA_86_image|Add3~9\)) # (!\VGA_86_image|square_h_pos\(9) & ((\VGA_86_image|Add3~9\) # (GND)))
-- \VGA_86_image|Add3~11\ = CARRY((!\VGA_86_image|Add3~9\) # (!\VGA_86_image|square_h_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(9),
	datad => VCC,
	cin => \VGA_86_image|Add3~9\,
	combout => \VGA_86_image|Add3~10_combout\,
	cout => \VGA_86_image|Add3~11\);

-- Location: LCCOMB_X39_Y36_N12
\VGA_86_image|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add3~12_combout\ = !\VGA_86_image|Add3~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VGA_86_image|Add3~11\,
	combout => \VGA_86_image|Add3~12_combout\);

-- Location: LCCOMB_X40_Y36_N8
\VGA_86_image|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~1_cout\ = CARRY((\VGA_86_image|h_count\(0) & !\VGA_86_image|square_h_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(0),
	datab => \VGA_86_image|square_h_pos\(0),
	datad => VCC,
	cout => \VGA_86_image|LessThan7~1_cout\);

-- Location: LCCOMB_X40_Y36_N10
\VGA_86_image|LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~3_cout\ = CARRY((\VGA_86_image|square_h_pos\(1) & ((!\VGA_86_image|LessThan7~1_cout\) # (!\VGA_86_image|h_count\(1)))) # (!\VGA_86_image|square_h_pos\(1) & (!\VGA_86_image|h_count\(1) & !\VGA_86_image|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(1),
	datab => \VGA_86_image|h_count\(1),
	datad => VCC,
	cin => \VGA_86_image|LessThan7~1_cout\,
	cout => \VGA_86_image|LessThan7~3_cout\);

-- Location: LCCOMB_X40_Y36_N12
\VGA_86_image|LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~5_cout\ = CARRY((\VGA_86_image|square_h_pos\(2) & (\VGA_86_image|h_count\(2) & !\VGA_86_image|LessThan7~3_cout\)) # (!\VGA_86_image|square_h_pos\(2) & ((\VGA_86_image|h_count\(2)) # (!\VGA_86_image|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_h_pos\(2),
	datab => \VGA_86_image|h_count\(2),
	datad => VCC,
	cin => \VGA_86_image|LessThan7~3_cout\,
	cout => \VGA_86_image|LessThan7~5_cout\);

-- Location: LCCOMB_X40_Y36_N14
\VGA_86_image|LessThan7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~7_cout\ = CARRY((\VGA_86_image|h_count\(3) & (!\VGA_86_image|square_h_pos\(3) & !\VGA_86_image|LessThan7~5_cout\)) # (!\VGA_86_image|h_count\(3) & ((!\VGA_86_image|LessThan7~5_cout\) # (!\VGA_86_image|square_h_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(3),
	datab => \VGA_86_image|square_h_pos\(3),
	datad => VCC,
	cin => \VGA_86_image|LessThan7~5_cout\,
	cout => \VGA_86_image|LessThan7~7_cout\);

-- Location: LCCOMB_X40_Y36_N16
\VGA_86_image|LessThan7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~9_cout\ = CARRY((\VGA_86_image|Add3~0_combout\ & (\VGA_86_image|h_count\(4) & !\VGA_86_image|LessThan7~7_cout\)) # (!\VGA_86_image|Add3~0_combout\ & ((\VGA_86_image|h_count\(4)) # (!\VGA_86_image|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add3~0_combout\,
	datab => \VGA_86_image|h_count\(4),
	datad => VCC,
	cin => \VGA_86_image|LessThan7~7_cout\,
	cout => \VGA_86_image|LessThan7~9_cout\);

-- Location: LCCOMB_X40_Y36_N18
\VGA_86_image|LessThan7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~11_cout\ = CARRY((\VGA_86_image|h_count\(5) & (\VGA_86_image|Add3~2_combout\ & !\VGA_86_image|LessThan7~9_cout\)) # (!\VGA_86_image|h_count\(5) & ((\VGA_86_image|Add3~2_combout\) # (!\VGA_86_image|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(5),
	datab => \VGA_86_image|Add3~2_combout\,
	datad => VCC,
	cin => \VGA_86_image|LessThan7~9_cout\,
	cout => \VGA_86_image|LessThan7~11_cout\);

-- Location: LCCOMB_X40_Y36_N20
\VGA_86_image|LessThan7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~13_cout\ = CARRY((\VGA_86_image|h_count\(6) & ((!\VGA_86_image|LessThan7~11_cout\) # (!\VGA_86_image|Add3~4_combout\))) # (!\VGA_86_image|h_count\(6) & (!\VGA_86_image|Add3~4_combout\ & !\VGA_86_image|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(6),
	datab => \VGA_86_image|Add3~4_combout\,
	datad => VCC,
	cin => \VGA_86_image|LessThan7~11_cout\,
	cout => \VGA_86_image|LessThan7~13_cout\);

-- Location: LCCOMB_X40_Y36_N22
\VGA_86_image|LessThan7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~15_cout\ = CARRY((\VGA_86_image|h_count\(7) & (\VGA_86_image|Add3~6_combout\ & !\VGA_86_image|LessThan7~13_cout\)) # (!\VGA_86_image|h_count\(7) & ((\VGA_86_image|Add3~6_combout\) # (!\VGA_86_image|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(7),
	datab => \VGA_86_image|Add3~6_combout\,
	datad => VCC,
	cin => \VGA_86_image|LessThan7~13_cout\,
	cout => \VGA_86_image|LessThan7~15_cout\);

-- Location: LCCOMB_X40_Y36_N24
\VGA_86_image|LessThan7~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~17_cout\ = CARRY((\VGA_86_image|Add3~8_combout\ & (\VGA_86_image|h_count\(8) & !\VGA_86_image|LessThan7~15_cout\)) # (!\VGA_86_image|Add3~8_combout\ & ((\VGA_86_image|h_count\(8)) # (!\VGA_86_image|LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add3~8_combout\,
	datab => \VGA_86_image|h_count\(8),
	datad => VCC,
	cin => \VGA_86_image|LessThan7~15_cout\,
	cout => \VGA_86_image|LessThan7~17_cout\);

-- Location: LCCOMB_X40_Y36_N26
\VGA_86_image|LessThan7~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~19_cout\ = CARRY((\VGA_86_image|Add3~10_combout\ & ((!\VGA_86_image|LessThan7~17_cout\) # (!\VGA_86_image|h_count\(9)))) # (!\VGA_86_image|Add3~10_combout\ & (!\VGA_86_image|h_count\(9) & !\VGA_86_image|LessThan7~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add3~10_combout\,
	datab => \VGA_86_image|h_count\(9),
	datad => VCC,
	cin => \VGA_86_image|LessThan7~17_cout\,
	cout => \VGA_86_image|LessThan7~19_cout\);

-- Location: LCCOMB_X40_Y36_N28
\VGA_86_image|LessThan7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan7~20_combout\ = (\VGA_86_image|Add3~12_combout\ & (!\VGA_86_image|LessThan7~19_cout\ & \VGA_86_image|h_count\(10))) # (!\VGA_86_image|Add3~12_combout\ & ((\VGA_86_image|h_count\(10)) # (!\VGA_86_image|LessThan7~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add3~12_combout\,
	datad => \VGA_86_image|h_count\(10),
	cin => \VGA_86_image|LessThan7~19_cout\,
	combout => \VGA_86_image|LessThan7~20_combout\);

-- Location: LCCOMB_X40_Y36_N2
\VGA_86_image|process_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~15_combout\ = (!\VGA_86_image|LessThan6~20_combout\ & (!\VGA_86_image|LessThan7~20_combout\ & ((\VGA_86_image|Add5~12_combout\) # (!\VGA_86_image|LessThan9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add5~12_combout\,
	datab => \VGA_86_image|LessThan6~20_combout\,
	datac => \VGA_86_image|LessThan9~18_combout\,
	datad => \VGA_86_image|LessThan7~20_combout\,
	combout => \VGA_86_image|process_1~15_combout\);

-- Location: LCCOMB_X41_Y35_N2
\VGA_86_image|Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~0_combout\ = \VGA_86_image|color_shift_count\(0) $ (VCC)
-- \VGA_86_image|Add7~1\ = CARRY(\VGA_86_image|color_shift_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(0),
	datad => VCC,
	combout => \VGA_86_image|Add7~0_combout\,
	cout => \VGA_86_image|Add7~1\);

-- Location: LCCOMB_X42_Y35_N18
\VGA_86_image|color_shift_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~0_combout\ = (\VGA_86_image|Add7~0_combout\ & !\VGA_86_image|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add7~0_combout\,
	datac => \VGA_86_image|Equal2~9_combout\,
	combout => \VGA_86_image|color_shift_count~0_combout\);

-- Location: FF_X42_Y35_N19
\VGA_86_image|color_shift_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~0_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(0));

-- Location: LCCOMB_X41_Y35_N4
\VGA_86_image|Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~2_combout\ = (\VGA_86_image|color_shift_count\(1) & (!\VGA_86_image|Add7~1\)) # (!\VGA_86_image|color_shift_count\(1) & ((\VGA_86_image|Add7~1\) # (GND)))
-- \VGA_86_image|Add7~3\ = CARRY((!\VGA_86_image|Add7~1\) # (!\VGA_86_image|color_shift_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(1),
	datad => VCC,
	cin => \VGA_86_image|Add7~1\,
	combout => \VGA_86_image|Add7~2_combout\,
	cout => \VGA_86_image|Add7~3\);

-- Location: FF_X41_Y35_N5
\VGA_86_image|color_shift_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~2_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(1));

-- Location: LCCOMB_X41_Y35_N6
\VGA_86_image|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~4_combout\ = (\VGA_86_image|color_shift_count\(2) & (\VGA_86_image|Add7~3\ $ (GND))) # (!\VGA_86_image|color_shift_count\(2) & (!\VGA_86_image|Add7~3\ & VCC))
-- \VGA_86_image|Add7~5\ = CARRY((\VGA_86_image|color_shift_count\(2) & !\VGA_86_image|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(2),
	datad => VCC,
	cin => \VGA_86_image|Add7~3\,
	combout => \VGA_86_image|Add7~4_combout\,
	cout => \VGA_86_image|Add7~5\);

-- Location: FF_X41_Y35_N7
\VGA_86_image|color_shift_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~4_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(2));

-- Location: LCCOMB_X41_Y35_N8
\VGA_86_image|Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~6_combout\ = (\VGA_86_image|color_shift_count\(3) & (!\VGA_86_image|Add7~5\)) # (!\VGA_86_image|color_shift_count\(3) & ((\VGA_86_image|Add7~5\) # (GND)))
-- \VGA_86_image|Add7~7\ = CARRY((!\VGA_86_image|Add7~5\) # (!\VGA_86_image|color_shift_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(3),
	datad => VCC,
	cin => \VGA_86_image|Add7~5\,
	combout => \VGA_86_image|Add7~6_combout\,
	cout => \VGA_86_image|Add7~7\);

-- Location: FF_X41_Y35_N9
\VGA_86_image|color_shift_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~6_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(3));

-- Location: LCCOMB_X41_Y35_N10
\VGA_86_image|Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~8_combout\ = (\VGA_86_image|color_shift_count\(4) & (\VGA_86_image|Add7~7\ $ (GND))) # (!\VGA_86_image|color_shift_count\(4) & (!\VGA_86_image|Add7~7\ & VCC))
-- \VGA_86_image|Add7~9\ = CARRY((\VGA_86_image|color_shift_count\(4) & !\VGA_86_image|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(4),
	datad => VCC,
	cin => \VGA_86_image|Add7~7\,
	combout => \VGA_86_image|Add7~8_combout\,
	cout => \VGA_86_image|Add7~9\);

-- Location: FF_X41_Y35_N11
\VGA_86_image|color_shift_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~8_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(4));

-- Location: LCCOMB_X41_Y35_N12
\VGA_86_image|Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~10_combout\ = (\VGA_86_image|color_shift_count\(5) & (!\VGA_86_image|Add7~9\)) # (!\VGA_86_image|color_shift_count\(5) & ((\VGA_86_image|Add7~9\) # (GND)))
-- \VGA_86_image|Add7~11\ = CARRY((!\VGA_86_image|Add7~9\) # (!\VGA_86_image|color_shift_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(5),
	datad => VCC,
	cin => \VGA_86_image|Add7~9\,
	combout => \VGA_86_image|Add7~10_combout\,
	cout => \VGA_86_image|Add7~11\);

-- Location: FF_X41_Y35_N13
\VGA_86_image|color_shift_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~10_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(5));

-- Location: LCCOMB_X41_Y35_N14
\VGA_86_image|Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~12_combout\ = (\VGA_86_image|color_shift_count\(6) & (\VGA_86_image|Add7~11\ $ (GND))) # (!\VGA_86_image|color_shift_count\(6) & (!\VGA_86_image|Add7~11\ & VCC))
-- \VGA_86_image|Add7~13\ = CARRY((\VGA_86_image|color_shift_count\(6) & !\VGA_86_image|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(6),
	datad => VCC,
	cin => \VGA_86_image|Add7~11\,
	combout => \VGA_86_image|Add7~12_combout\,
	cout => \VGA_86_image|Add7~13\);

-- Location: FF_X41_Y35_N15
\VGA_86_image|color_shift_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~12_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(6));

-- Location: LCCOMB_X41_Y35_N16
\VGA_86_image|Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~14_combout\ = (\VGA_86_image|color_shift_count\(7) & (!\VGA_86_image|Add7~13\)) # (!\VGA_86_image|color_shift_count\(7) & ((\VGA_86_image|Add7~13\) # (GND)))
-- \VGA_86_image|Add7~15\ = CARRY((!\VGA_86_image|Add7~13\) # (!\VGA_86_image|color_shift_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(7),
	datad => VCC,
	cin => \VGA_86_image|Add7~13\,
	combout => \VGA_86_image|Add7~14_combout\,
	cout => \VGA_86_image|Add7~15\);

-- Location: LCCOMB_X42_Y35_N22
\VGA_86_image|color_shift_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~1_combout\ = (!\VGA_86_image|Equal2~9_combout\ & \VGA_86_image|Add7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal2~9_combout\,
	datac => \VGA_86_image|Add7~14_combout\,
	combout => \VGA_86_image|color_shift_count~1_combout\);

-- Location: FF_X42_Y35_N23
\VGA_86_image|color_shift_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~1_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(7));

-- Location: LCCOMB_X41_Y35_N18
\VGA_86_image|Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~16_combout\ = (\VGA_86_image|color_shift_count\(8) & (\VGA_86_image|Add7~15\ $ (GND))) # (!\VGA_86_image|color_shift_count\(8) & (!\VGA_86_image|Add7~15\ & VCC))
-- \VGA_86_image|Add7~17\ = CARRY((\VGA_86_image|color_shift_count\(8) & !\VGA_86_image|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(8),
	datad => VCC,
	cin => \VGA_86_image|Add7~15\,
	combout => \VGA_86_image|Add7~16_combout\,
	cout => \VGA_86_image|Add7~17\);

-- Location: FF_X41_Y35_N19
\VGA_86_image|color_shift_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~16_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(8));

-- Location: LCCOMB_X41_Y35_N20
\VGA_86_image|Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~18_combout\ = (\VGA_86_image|color_shift_count\(9) & (!\VGA_86_image|Add7~17\)) # (!\VGA_86_image|color_shift_count\(9) & ((\VGA_86_image|Add7~17\) # (GND)))
-- \VGA_86_image|Add7~19\ = CARRY((!\VGA_86_image|Add7~17\) # (!\VGA_86_image|color_shift_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(9),
	datad => VCC,
	cin => \VGA_86_image|Add7~17\,
	combout => \VGA_86_image|Add7~18_combout\,
	cout => \VGA_86_image|Add7~19\);

-- Location: FF_X41_Y35_N21
\VGA_86_image|color_shift_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~18_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(9));

-- Location: LCCOMB_X41_Y35_N22
\VGA_86_image|Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~20_combout\ = (\VGA_86_image|color_shift_count\(10) & (\VGA_86_image|Add7~19\ $ (GND))) # (!\VGA_86_image|color_shift_count\(10) & (!\VGA_86_image|Add7~19\ & VCC))
-- \VGA_86_image|Add7~21\ = CARRY((\VGA_86_image|color_shift_count\(10) & !\VGA_86_image|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(10),
	datad => VCC,
	cin => \VGA_86_image|Add7~19\,
	combout => \VGA_86_image|Add7~20_combout\,
	cout => \VGA_86_image|Add7~21\);

-- Location: LCCOMB_X42_Y35_N8
\VGA_86_image|color_shift_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~2_combout\ = (\VGA_86_image|Add7~20_combout\ & !\VGA_86_image|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Add7~20_combout\,
	datac => \VGA_86_image|Equal2~9_combout\,
	combout => \VGA_86_image|color_shift_count~2_combout\);

-- Location: FF_X42_Y35_N9
\VGA_86_image|color_shift_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~2_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(10));

-- Location: LCCOMB_X41_Y35_N24
\VGA_86_image|Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~22_combout\ = (\VGA_86_image|color_shift_count\(11) & (!\VGA_86_image|Add7~21\)) # (!\VGA_86_image|color_shift_count\(11) & ((\VGA_86_image|Add7~21\) # (GND)))
-- \VGA_86_image|Add7~23\ = CARRY((!\VGA_86_image|Add7~21\) # (!\VGA_86_image|color_shift_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(11),
	datad => VCC,
	cin => \VGA_86_image|Add7~21\,
	combout => \VGA_86_image|Add7~22_combout\,
	cout => \VGA_86_image|Add7~23\);

-- Location: FF_X41_Y35_N25
\VGA_86_image|color_shift_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~22_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(11));

-- Location: LCCOMB_X41_Y35_N26
\VGA_86_image|Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~24_combout\ = (\VGA_86_image|color_shift_count\(12) & (\VGA_86_image|Add7~23\ $ (GND))) # (!\VGA_86_image|color_shift_count\(12) & (!\VGA_86_image|Add7~23\ & VCC))
-- \VGA_86_image|Add7~25\ = CARRY((\VGA_86_image|color_shift_count\(12) & !\VGA_86_image|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(12),
	datad => VCC,
	cin => \VGA_86_image|Add7~23\,
	combout => \VGA_86_image|Add7~24_combout\,
	cout => \VGA_86_image|Add7~25\);

-- Location: FF_X41_Y35_N27
\VGA_86_image|color_shift_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~24_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(12));

-- Location: LCCOMB_X41_Y35_N28
\VGA_86_image|Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~26_combout\ = (\VGA_86_image|color_shift_count\(13) & (!\VGA_86_image|Add7~25\)) # (!\VGA_86_image|color_shift_count\(13) & ((\VGA_86_image|Add7~25\) # (GND)))
-- \VGA_86_image|Add7~27\ = CARRY((!\VGA_86_image|Add7~25\) # (!\VGA_86_image|color_shift_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(13),
	datad => VCC,
	cin => \VGA_86_image|Add7~25\,
	combout => \VGA_86_image|Add7~26_combout\,
	cout => \VGA_86_image|Add7~27\);

-- Location: FF_X41_Y35_N29
\VGA_86_image|color_shift_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~26_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(13));

-- Location: LCCOMB_X41_Y35_N30
\VGA_86_image|Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~28_combout\ = (\VGA_86_image|color_shift_count\(14) & (\VGA_86_image|Add7~27\ $ (GND))) # (!\VGA_86_image|color_shift_count\(14) & (!\VGA_86_image|Add7~27\ & VCC))
-- \VGA_86_image|Add7~29\ = CARRY((\VGA_86_image|color_shift_count\(14) & !\VGA_86_image|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(14),
	datad => VCC,
	cin => \VGA_86_image|Add7~27\,
	combout => \VGA_86_image|Add7~28_combout\,
	cout => \VGA_86_image|Add7~29\);

-- Location: FF_X41_Y35_N31
\VGA_86_image|color_shift_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~28_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(14));

-- Location: LCCOMB_X41_Y34_N0
\VGA_86_image|Add7~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~30_combout\ = (\VGA_86_image|color_shift_count\(15) & (!\VGA_86_image|Add7~29\)) # (!\VGA_86_image|color_shift_count\(15) & ((\VGA_86_image|Add7~29\) # (GND)))
-- \VGA_86_image|Add7~31\ = CARRY((!\VGA_86_image|Add7~29\) # (!\VGA_86_image|color_shift_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(15),
	datad => VCC,
	cin => \VGA_86_image|Add7~29\,
	combout => \VGA_86_image|Add7~30_combout\,
	cout => \VGA_86_image|Add7~31\);

-- Location: LCCOMB_X42_Y35_N20
\VGA_86_image|color_shift_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~3_combout\ = (!\VGA_86_image|Equal2~9_combout\ & \VGA_86_image|Add7~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal2~9_combout\,
	datac => \VGA_86_image|Add7~30_combout\,
	combout => \VGA_86_image|color_shift_count~3_combout\);

-- Location: FF_X42_Y35_N21
\VGA_86_image|color_shift_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~3_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(15));

-- Location: LCCOMB_X41_Y34_N2
\VGA_86_image|Add7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~32_combout\ = (\VGA_86_image|color_shift_count\(16) & (\VGA_86_image|Add7~31\ $ (GND))) # (!\VGA_86_image|color_shift_count\(16) & (!\VGA_86_image|Add7~31\ & VCC))
-- \VGA_86_image|Add7~33\ = CARRY((\VGA_86_image|color_shift_count\(16) & !\VGA_86_image|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(16),
	datad => VCC,
	cin => \VGA_86_image|Add7~31\,
	combout => \VGA_86_image|Add7~32_combout\,
	cout => \VGA_86_image|Add7~33\);

-- Location: FF_X41_Y34_N3
\VGA_86_image|color_shift_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~32_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(16));

-- Location: LCCOMB_X41_Y34_N4
\VGA_86_image|Add7~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~34_combout\ = (\VGA_86_image|color_shift_count\(17) & (!\VGA_86_image|Add7~33\)) # (!\VGA_86_image|color_shift_count\(17) & ((\VGA_86_image|Add7~33\) # (GND)))
-- \VGA_86_image|Add7~35\ = CARRY((!\VGA_86_image|Add7~33\) # (!\VGA_86_image|color_shift_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(17),
	datad => VCC,
	cin => \VGA_86_image|Add7~33\,
	combout => \VGA_86_image|Add7~34_combout\,
	cout => \VGA_86_image|Add7~35\);

-- Location: LCCOMB_X42_Y34_N8
\VGA_86_image|color_shift_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~4_combout\ = (\VGA_86_image|Add7~34_combout\ & !\VGA_86_image|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add7~34_combout\,
	datad => \VGA_86_image|Equal2~9_combout\,
	combout => \VGA_86_image|color_shift_count~4_combout\);

-- Location: FF_X42_Y34_N9
\VGA_86_image|color_shift_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~4_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(17));

-- Location: LCCOMB_X41_Y34_N6
\VGA_86_image|Add7~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~36_combout\ = (\VGA_86_image|color_shift_count\(18) & (\VGA_86_image|Add7~35\ $ (GND))) # (!\VGA_86_image|color_shift_count\(18) & (!\VGA_86_image|Add7~35\ & VCC))
-- \VGA_86_image|Add7~37\ = CARRY((\VGA_86_image|color_shift_count\(18) & !\VGA_86_image|Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(18),
	datad => VCC,
	cin => \VGA_86_image|Add7~35\,
	combout => \VGA_86_image|Add7~36_combout\,
	cout => \VGA_86_image|Add7~37\);

-- Location: LCCOMB_X42_Y34_N2
\VGA_86_image|color_shift_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~5_combout\ = (\VGA_86_image|Add7~36_combout\ & !\VGA_86_image|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add7~36_combout\,
	datad => \VGA_86_image|Equal2~9_combout\,
	combout => \VGA_86_image|color_shift_count~5_combout\);

-- Location: FF_X42_Y34_N3
\VGA_86_image|color_shift_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~5_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(18));

-- Location: LCCOMB_X41_Y34_N8
\VGA_86_image|Add7~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~38_combout\ = (\VGA_86_image|color_shift_count\(19) & (!\VGA_86_image|Add7~37\)) # (!\VGA_86_image|color_shift_count\(19) & ((\VGA_86_image|Add7~37\) # (GND)))
-- \VGA_86_image|Add7~39\ = CARRY((!\VGA_86_image|Add7~37\) # (!\VGA_86_image|color_shift_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(19),
	datad => VCC,
	cin => \VGA_86_image|Add7~37\,
	combout => \VGA_86_image|Add7~38_combout\,
	cout => \VGA_86_image|Add7~39\);

-- Location: LCCOMB_X42_Y35_N2
\VGA_86_image|color_shift_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~6_combout\ = (!\VGA_86_image|Equal2~9_combout\ & \VGA_86_image|Add7~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Equal2~9_combout\,
	datac => \VGA_86_image|Add7~38_combout\,
	combout => \VGA_86_image|color_shift_count~6_combout\);

-- Location: FF_X42_Y35_N3
\VGA_86_image|color_shift_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~6_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(19));

-- Location: LCCOMB_X41_Y34_N10
\VGA_86_image|Add7~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~40_combout\ = (\VGA_86_image|color_shift_count\(20) & (\VGA_86_image|Add7~39\ $ (GND))) # (!\VGA_86_image|color_shift_count\(20) & (!\VGA_86_image|Add7~39\ & VCC))
-- \VGA_86_image|Add7~41\ = CARRY((\VGA_86_image|color_shift_count\(20) & !\VGA_86_image|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(20),
	datad => VCC,
	cin => \VGA_86_image|Add7~39\,
	combout => \VGA_86_image|Add7~40_combout\,
	cout => \VGA_86_image|Add7~41\);

-- Location: LCCOMB_X42_Y34_N20
\VGA_86_image|color_shift_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~7_combout\ = (\VGA_86_image|Add7~40_combout\ & !\VGA_86_image|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add7~40_combout\,
	datad => \VGA_86_image|Equal2~9_combout\,
	combout => \VGA_86_image|color_shift_count~7_combout\);

-- Location: FF_X42_Y34_N21
\VGA_86_image|color_shift_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~7_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(20));

-- Location: LCCOMB_X41_Y34_N12
\VGA_86_image|Add7~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~42_combout\ = (\VGA_86_image|color_shift_count\(21) & (!\VGA_86_image|Add7~41\)) # (!\VGA_86_image|color_shift_count\(21) & ((\VGA_86_image|Add7~41\) # (GND)))
-- \VGA_86_image|Add7~43\ = CARRY((!\VGA_86_image|Add7~41\) # (!\VGA_86_image|color_shift_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(21),
	datad => VCC,
	cin => \VGA_86_image|Add7~41\,
	combout => \VGA_86_image|Add7~42_combout\,
	cout => \VGA_86_image|Add7~43\);

-- Location: FF_X41_Y34_N13
\VGA_86_image|color_shift_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~42_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(21));

-- Location: LCCOMB_X41_Y34_N14
\VGA_86_image|Add7~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~44_combout\ = (\VGA_86_image|color_shift_count\(22) & (\VGA_86_image|Add7~43\ $ (GND))) # (!\VGA_86_image|color_shift_count\(22) & (!\VGA_86_image|Add7~43\ & VCC))
-- \VGA_86_image|Add7~45\ = CARRY((\VGA_86_image|color_shift_count\(22) & !\VGA_86_image|Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(22),
	datad => VCC,
	cin => \VGA_86_image|Add7~43\,
	combout => \VGA_86_image|Add7~44_combout\,
	cout => \VGA_86_image|Add7~45\);

-- Location: FF_X41_Y34_N15
\VGA_86_image|color_shift_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~44_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(22));

-- Location: LCCOMB_X41_Y34_N16
\VGA_86_image|Add7~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~46_combout\ = (\VGA_86_image|color_shift_count\(23) & (!\VGA_86_image|Add7~45\)) # (!\VGA_86_image|color_shift_count\(23) & ((\VGA_86_image|Add7~45\) # (GND)))
-- \VGA_86_image|Add7~47\ = CARRY((!\VGA_86_image|Add7~45\) # (!\VGA_86_image|color_shift_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(23),
	datad => VCC,
	cin => \VGA_86_image|Add7~45\,
	combout => \VGA_86_image|Add7~46_combout\,
	cout => \VGA_86_image|Add7~47\);

-- Location: FF_X41_Y34_N17
\VGA_86_image|color_shift_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~46_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(23));

-- Location: LCCOMB_X42_Y34_N6
\VGA_86_image|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~6_combout\ = (!\VGA_86_image|color_shift_count\(22) & (\VGA_86_image|color_shift_count\(20) & (!\VGA_86_image|color_shift_count\(23) & !\VGA_86_image|color_shift_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(22),
	datab => \VGA_86_image|color_shift_count\(20),
	datac => \VGA_86_image|color_shift_count\(23),
	datad => \VGA_86_image|color_shift_count\(21),
	combout => \VGA_86_image|Equal2~6_combout\);

-- Location: LCCOMB_X42_Y35_N10
\VGA_86_image|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~2_combout\ = (!\VGA_86_image|color_shift_count\(11) & (!\VGA_86_image|color_shift_count\(8) & (\VGA_86_image|color_shift_count\(10) & !\VGA_86_image|color_shift_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(11),
	datab => \VGA_86_image|color_shift_count\(8),
	datac => \VGA_86_image|color_shift_count\(10),
	datad => \VGA_86_image|color_shift_count\(9),
	combout => \VGA_86_image|Equal2~2_combout\);

-- Location: LCCOMB_X42_Y35_N14
\VGA_86_image|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~3_combout\ = (\VGA_86_image|color_shift_count\(15) & (!\VGA_86_image|color_shift_count\(14) & (!\VGA_86_image|color_shift_count\(12) & !\VGA_86_image|color_shift_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(15),
	datab => \VGA_86_image|color_shift_count\(14),
	datac => \VGA_86_image|color_shift_count\(12),
	datad => \VGA_86_image|color_shift_count\(13),
	combout => \VGA_86_image|Equal2~3_combout\);

-- Location: LCCOMB_X41_Y35_N0
\VGA_86_image|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~1_combout\ = (!\VGA_86_image|color_shift_count\(5) & (\VGA_86_image|color_shift_count\(7) & (!\VGA_86_image|color_shift_count\(6) & !\VGA_86_image|color_shift_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(5),
	datab => \VGA_86_image|color_shift_count\(7),
	datac => \VGA_86_image|color_shift_count\(6),
	datad => \VGA_86_image|color_shift_count\(4),
	combout => \VGA_86_image|Equal2~1_combout\);

-- Location: LCCOMB_X42_Y35_N12
\VGA_86_image|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~0_combout\ = (!\VGA_86_image|color_shift_count\(3) & (!\VGA_86_image|color_shift_count\(2) & (!\VGA_86_image|color_shift_count\(1) & !\VGA_86_image|color_shift_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(3),
	datab => \VGA_86_image|color_shift_count\(2),
	datac => \VGA_86_image|color_shift_count\(1),
	datad => \VGA_86_image|color_shift_count\(0),
	combout => \VGA_86_image|Equal2~0_combout\);

-- Location: LCCOMB_X42_Y35_N16
\VGA_86_image|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~4_combout\ = (\VGA_86_image|Equal2~2_combout\ & (\VGA_86_image|Equal2~3_combout\ & (\VGA_86_image|Equal2~1_combout\ & \VGA_86_image|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal2~2_combout\,
	datab => \VGA_86_image|Equal2~3_combout\,
	datac => \VGA_86_image|Equal2~1_combout\,
	datad => \VGA_86_image|Equal2~0_combout\,
	combout => \VGA_86_image|Equal2~4_combout\);

-- Location: LCCOMB_X41_Y34_N18
\VGA_86_image|Add7~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~48_combout\ = (\VGA_86_image|color_shift_count\(24) & (\VGA_86_image|Add7~47\ $ (GND))) # (!\VGA_86_image|color_shift_count\(24) & (!\VGA_86_image|Add7~47\ & VCC))
-- \VGA_86_image|Add7~49\ = CARRY((\VGA_86_image|color_shift_count\(24) & !\VGA_86_image|Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(24),
	datad => VCC,
	cin => \VGA_86_image|Add7~47\,
	combout => \VGA_86_image|Add7~48_combout\,
	cout => \VGA_86_image|Add7~49\);

-- Location: FF_X41_Y34_N19
\VGA_86_image|color_shift_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~48_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(24));

-- Location: LCCOMB_X41_Y34_N20
\VGA_86_image|Add7~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~50_combout\ = (\VGA_86_image|color_shift_count\(25) & (!\VGA_86_image|Add7~49\)) # (!\VGA_86_image|color_shift_count\(25) & ((\VGA_86_image|Add7~49\) # (GND)))
-- \VGA_86_image|Add7~51\ = CARRY((!\VGA_86_image|Add7~49\) # (!\VGA_86_image|color_shift_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(25),
	datad => VCC,
	cin => \VGA_86_image|Add7~49\,
	combout => \VGA_86_image|Add7~50_combout\,
	cout => \VGA_86_image|Add7~51\);

-- Location: FF_X41_Y34_N21
\VGA_86_image|color_shift_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~50_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(25));

-- Location: LCCOMB_X41_Y34_N22
\VGA_86_image|Add7~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~52_combout\ = (\VGA_86_image|color_shift_count\(26) & (\VGA_86_image|Add7~51\ $ (GND))) # (!\VGA_86_image|color_shift_count\(26) & (!\VGA_86_image|Add7~51\ & VCC))
-- \VGA_86_image|Add7~53\ = CARRY((\VGA_86_image|color_shift_count\(26) & !\VGA_86_image|Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(26),
	datad => VCC,
	cin => \VGA_86_image|Add7~51\,
	combout => \VGA_86_image|Add7~52_combout\,
	cout => \VGA_86_image|Add7~53\);

-- Location: FF_X41_Y34_N23
\VGA_86_image|color_shift_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~52_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(26));

-- Location: LCCOMB_X41_Y34_N24
\VGA_86_image|Add7~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~54_combout\ = (\VGA_86_image|color_shift_count\(27) & (!\VGA_86_image|Add7~53\)) # (!\VGA_86_image|color_shift_count\(27) & ((\VGA_86_image|Add7~53\) # (GND)))
-- \VGA_86_image|Add7~55\ = CARRY((!\VGA_86_image|Add7~53\) # (!\VGA_86_image|color_shift_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(27),
	datad => VCC,
	cin => \VGA_86_image|Add7~53\,
	combout => \VGA_86_image|Add7~54_combout\,
	cout => \VGA_86_image|Add7~55\);

-- Location: FF_X41_Y34_N25
\VGA_86_image|color_shift_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~54_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(27));

-- Location: LCCOMB_X41_Y34_N26
\VGA_86_image|Add7~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~56_combout\ = (\VGA_86_image|color_shift_count\(28) & (\VGA_86_image|Add7~55\ $ (GND))) # (!\VGA_86_image|color_shift_count\(28) & (!\VGA_86_image|Add7~55\ & VCC))
-- \VGA_86_image|Add7~57\ = CARRY((\VGA_86_image|color_shift_count\(28) & !\VGA_86_image|Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(28),
	datad => VCC,
	cin => \VGA_86_image|Add7~55\,
	combout => \VGA_86_image|Add7~56_combout\,
	cout => \VGA_86_image|Add7~57\);

-- Location: FF_X41_Y34_N27
\VGA_86_image|color_shift_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~56_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(28));

-- Location: LCCOMB_X41_Y34_N28
\VGA_86_image|Add7~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~58_combout\ = (\VGA_86_image|color_shift_count\(29) & (!\VGA_86_image|Add7~57\)) # (!\VGA_86_image|color_shift_count\(29) & ((\VGA_86_image|Add7~57\) # (GND)))
-- \VGA_86_image|Add7~59\ = CARRY((!\VGA_86_image|Add7~57\) # (!\VGA_86_image|color_shift_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(29),
	datad => VCC,
	cin => \VGA_86_image|Add7~57\,
	combout => \VGA_86_image|Add7~58_combout\,
	cout => \VGA_86_image|Add7~59\);

-- Location: FF_X41_Y34_N29
\VGA_86_image|color_shift_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~58_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(29));

-- Location: LCCOMB_X41_Y34_N30
\VGA_86_image|Add7~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add7~60_combout\ = \VGA_86_image|color_shift_count\(30) $ (!\VGA_86_image|Add7~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(30),
	cin => \VGA_86_image|Add7~59\,
	combout => \VGA_86_image|Add7~60_combout\);

-- Location: FF_X41_Y34_N31
\VGA_86_image|color_shift_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|Add7~60_combout\,
	ena => \VGA_86_image|square_v_pos[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(30));

-- Location: LCCOMB_X42_Y34_N24
\VGA_86_image|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~7_combout\ = (!\VGA_86_image|color_shift_count\(25) & (!\VGA_86_image|color_shift_count\(26) & (!\VGA_86_image|color_shift_count\(27) & !\VGA_86_image|color_shift_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(25),
	datab => \VGA_86_image|color_shift_count\(26),
	datac => \VGA_86_image|color_shift_count\(27),
	datad => \VGA_86_image|color_shift_count\(24),
	combout => \VGA_86_image|Equal2~7_combout\);

-- Location: LCCOMB_X42_Y34_N10
\VGA_86_image|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~8_combout\ = (!\VGA_86_image|color_shift_count\(29) & (!\VGA_86_image|color_shift_count\(30) & (!\VGA_86_image|color_shift_count\(28) & \VGA_86_image|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(29),
	datab => \VGA_86_image|color_shift_count\(30),
	datac => \VGA_86_image|color_shift_count\(28),
	datad => \VGA_86_image|Equal2~7_combout\,
	combout => \VGA_86_image|Equal2~8_combout\);

-- Location: LCCOMB_X43_Y34_N0
\VGA_86_image|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~5_combout\ = (\VGA_86_image|color_shift_count\(18) & (\VGA_86_image|color_shift_count\(19) & (!\VGA_86_image|color_shift_count\(16) & \VGA_86_image|color_shift_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(18),
	datab => \VGA_86_image|color_shift_count\(19),
	datac => \VGA_86_image|color_shift_count\(16),
	datad => \VGA_86_image|color_shift_count\(17),
	combout => \VGA_86_image|Equal2~5_combout\);

-- Location: LCCOMB_X42_Y35_N4
\VGA_86_image|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~9_combout\ = (\VGA_86_image|Equal2~6_combout\ & (\VGA_86_image|Equal2~4_combout\ & (\VGA_86_image|Equal2~8_combout\ & \VGA_86_image|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal2~6_combout\,
	datab => \VGA_86_image|Equal2~4_combout\,
	datac => \VGA_86_image|Equal2~8_combout\,
	datad => \VGA_86_image|Equal2~5_combout\,
	combout => \VGA_86_image|Equal2~9_combout\);

-- Location: LCCOMB_X42_Y35_N24
\VGA_86_image|rgb_count[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[0]~34_combout\ = \VGA_86_image|rgb_count\(0) $ (((\VGA_86_image|square_v_pos[3]~24_combout\ & \VGA_86_image|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|square_v_pos[3]~24_combout\,
	datab => \VGA_86_image|Equal2~9_combout\,
	datac => \VGA_86_image|rgb_count\(0),
	combout => \VGA_86_image|rgb_count[0]~34_combout\);

-- Location: FF_X42_Y35_N25
\VGA_86_image|rgb_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(0));

-- Location: LCCOMB_X34_Y23_N2
\VGA_86_image|rgb_count[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[1]~11_combout\ = (\VGA_86_image|rgb_count\(1) & (\VGA_86_image|rgb_count\(0) $ (VCC))) # (!\VGA_86_image|rgb_count\(1) & (\VGA_86_image|rgb_count\(0) & VCC))
-- \VGA_86_image|rgb_count[1]~12\ = CARRY((\VGA_86_image|rgb_count\(1) & \VGA_86_image|rgb_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_count\(1),
	datab => \VGA_86_image|rgb_count\(0),
	datad => VCC,
	combout => \VGA_86_image|rgb_count[1]~11_combout\,
	cout => \VGA_86_image|rgb_count[1]~12\);

-- Location: LCCOMB_X38_Y34_N28
\VGA_86_image|rgb_count[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[8]~27_combout\ = (!\VGA_86_image|blank_2~q\ & (\VGA_86_image|Equal2~9_combout\ & ((!\VGA_86_image|process_1~21_combout\) # (!\VGA_86_image|process_1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~15_combout\,
	datab => \VGA_86_image|blank_2~q\,
	datac => \VGA_86_image|process_1~21_combout\,
	datad => \VGA_86_image|Equal2~9_combout\,
	combout => \VGA_86_image|rgb_count[8]~27_combout\);

-- Location: FF_X34_Y23_N3
\VGA_86_image|rgb_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[1]~11_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(1));

-- Location: LCCOMB_X34_Y23_N4
\VGA_86_image|rgb_count[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[2]~13_combout\ = (\VGA_86_image|rgb_count\(2) & (!\VGA_86_image|rgb_count[1]~12\)) # (!\VGA_86_image|rgb_count\(2) & ((\VGA_86_image|rgb_count[1]~12\) # (GND)))
-- \VGA_86_image|rgb_count[2]~14\ = CARRY((!\VGA_86_image|rgb_count[1]~12\) # (!\VGA_86_image|rgb_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_count\(2),
	datad => VCC,
	cin => \VGA_86_image|rgb_count[1]~12\,
	combout => \VGA_86_image|rgb_count[2]~13_combout\,
	cout => \VGA_86_image|rgb_count[2]~14\);

-- Location: FF_X34_Y23_N5
\VGA_86_image|rgb_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[2]~13_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(2));

-- Location: LCCOMB_X34_Y23_N6
\VGA_86_image|rgb_count[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[3]~15_combout\ = (\VGA_86_image|rgb_count\(3) & (\VGA_86_image|rgb_count[2]~14\ $ (GND))) # (!\VGA_86_image|rgb_count\(3) & (!\VGA_86_image|rgb_count[2]~14\ & VCC))
-- \VGA_86_image|rgb_count[3]~16\ = CARRY((\VGA_86_image|rgb_count\(3) & !\VGA_86_image|rgb_count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_count\(3),
	datad => VCC,
	cin => \VGA_86_image|rgb_count[2]~14\,
	combout => \VGA_86_image|rgb_count[3]~15_combout\,
	cout => \VGA_86_image|rgb_count[3]~16\);

-- Location: FF_X34_Y23_N7
\VGA_86_image|rgb_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[3]~15_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(3));

-- Location: LCCOMB_X34_Y23_N8
\VGA_86_image|rgb_count[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[4]~17_combout\ = (\VGA_86_image|rgb_count\(4) & (!\VGA_86_image|rgb_count[3]~16\)) # (!\VGA_86_image|rgb_count\(4) & ((\VGA_86_image|rgb_count[3]~16\) # (GND)))
-- \VGA_86_image|rgb_count[4]~18\ = CARRY((!\VGA_86_image|rgb_count[3]~16\) # (!\VGA_86_image|rgb_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_count\(4),
	datad => VCC,
	cin => \VGA_86_image|rgb_count[3]~16\,
	combout => \VGA_86_image|rgb_count[4]~17_combout\,
	cout => \VGA_86_image|rgb_count[4]~18\);

-- Location: FF_X34_Y23_N9
\VGA_86_image|rgb_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[4]~17_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(4));

-- Location: LCCOMB_X34_Y23_N10
\VGA_86_image|rgb_count[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[5]~19_combout\ = (\VGA_86_image|rgb_count\(5) & (\VGA_86_image|rgb_count[4]~18\ $ (GND))) # (!\VGA_86_image|rgb_count\(5) & (!\VGA_86_image|rgb_count[4]~18\ & VCC))
-- \VGA_86_image|rgb_count[5]~20\ = CARRY((\VGA_86_image|rgb_count\(5) & !\VGA_86_image|rgb_count[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_count\(5),
	datad => VCC,
	cin => \VGA_86_image|rgb_count[4]~18\,
	combout => \VGA_86_image|rgb_count[5]~19_combout\,
	cout => \VGA_86_image|rgb_count[5]~20\);

-- Location: FF_X34_Y23_N11
\VGA_86_image|rgb_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[5]~19_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(5));

-- Location: LCCOMB_X34_Y23_N12
\VGA_86_image|rgb_count[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[6]~21_combout\ = (\VGA_86_image|rgb_count\(6) & (!\VGA_86_image|rgb_count[5]~20\)) # (!\VGA_86_image|rgb_count\(6) & ((\VGA_86_image|rgb_count[5]~20\) # (GND)))
-- \VGA_86_image|rgb_count[6]~22\ = CARRY((!\VGA_86_image|rgb_count[5]~20\) # (!\VGA_86_image|rgb_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_count\(6),
	datad => VCC,
	cin => \VGA_86_image|rgb_count[5]~20\,
	combout => \VGA_86_image|rgb_count[6]~21_combout\,
	cout => \VGA_86_image|rgb_count[6]~22\);

-- Location: FF_X34_Y23_N13
\VGA_86_image|rgb_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[6]~21_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(6));

-- Location: LCCOMB_X34_Y23_N14
\VGA_86_image|rgb_count[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[7]~23_combout\ = (\VGA_86_image|rgb_count\(7) & (\VGA_86_image|rgb_count[6]~22\ $ (GND))) # (!\VGA_86_image|rgb_count\(7) & (!\VGA_86_image|rgb_count[6]~22\ & VCC))
-- \VGA_86_image|rgb_count[7]~24\ = CARRY((\VGA_86_image|rgb_count\(7) & !\VGA_86_image|rgb_count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_count\(7),
	datad => VCC,
	cin => \VGA_86_image|rgb_count[6]~22\,
	combout => \VGA_86_image|rgb_count[7]~23_combout\,
	cout => \VGA_86_image|rgb_count[7]~24\);

-- Location: FF_X34_Y23_N15
\VGA_86_image|rgb_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[7]~23_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(7));

-- Location: LCCOMB_X34_Y23_N16
\VGA_86_image|rgb_count[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[8]~25_combout\ = (\VGA_86_image|rgb_count\(8) & (!\VGA_86_image|rgb_count[7]~24\)) # (!\VGA_86_image|rgb_count\(8) & ((\VGA_86_image|rgb_count[7]~24\) # (GND)))
-- \VGA_86_image|rgb_count[8]~26\ = CARRY((!\VGA_86_image|rgb_count[7]~24\) # (!\VGA_86_image|rgb_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_count\(8),
	datad => VCC,
	cin => \VGA_86_image|rgb_count[7]~24\,
	combout => \VGA_86_image|rgb_count[8]~25_combout\,
	cout => \VGA_86_image|rgb_count[8]~26\);

-- Location: FF_X34_Y23_N17
\VGA_86_image|rgb_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[8]~25_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(8));

-- Location: LCCOMB_X31_Y23_N16
\VGA_86_image|rgb_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~0_combout\ = \VGA_86_image|rgb_count\(8) $ (((\VGA_86_image|process_1~15_combout\ & (!\VGA_86_image|LessThan8~16_combout\ & !\VGA_86_image|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~15_combout\,
	datab => \VGA_86_image|rgb_count\(8),
	datac => \VGA_86_image|LessThan8~16_combout\,
	datad => \VGA_86_image|Add4~14_combout\,
	combout => \VGA_86_image|rgb_2~0_combout\);

-- Location: FF_X31_Y23_N17
\VGA_86_image|rgb_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~0_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(8));

-- Location: LCCOMB_X31_Y23_N8
\VGA_86_image|r_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[0]~0_combout\ = !\VGA_86_image|rgb_2\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(8),
	combout => \VGA_86_image|r_out[0]~0_combout\);

-- Location: FF_X31_Y23_N9
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

-- Location: LCCOMB_X34_Y23_N18
\VGA_86_image|rgb_count[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[9]~28_combout\ = (\VGA_86_image|rgb_count\(9) & (\VGA_86_image|rgb_count[8]~26\ $ (GND))) # (!\VGA_86_image|rgb_count\(9) & (!\VGA_86_image|rgb_count[8]~26\ & VCC))
-- \VGA_86_image|rgb_count[9]~29\ = CARRY((\VGA_86_image|rgb_count\(9) & !\VGA_86_image|rgb_count[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_count\(9),
	datad => VCC,
	cin => \VGA_86_image|rgb_count[8]~26\,
	combout => \VGA_86_image|rgb_count[9]~28_combout\,
	cout => \VGA_86_image|rgb_count[9]~29\);

-- Location: FF_X34_Y23_N19
\VGA_86_image|rgb_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[9]~28_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(9));

-- Location: LCCOMB_X31_Y23_N2
\VGA_86_image|rgb_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~1_combout\ = \VGA_86_image|rgb_count\(9) $ (((!\VGA_86_image|Add4~14_combout\ & (!\VGA_86_image|LessThan8~16_combout\ & \VGA_86_image|process_1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_count\(9),
	datab => \VGA_86_image|Add4~14_combout\,
	datac => \VGA_86_image|LessThan8~16_combout\,
	datad => \VGA_86_image|process_1~15_combout\,
	combout => \VGA_86_image|rgb_2~1_combout\);

-- Location: FF_X31_Y23_N3
\VGA_86_image|rgb_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~1_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(9));

-- Location: LCCOMB_X31_Y23_N18
\VGA_86_image|r_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[1]~feeder_combout\ = \VGA_86_image|rgb_2\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(9),
	combout => \VGA_86_image|r_out[1]~feeder_combout\);

-- Location: FF_X31_Y23_N19
\VGA_86_image|r_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(1));

-- Location: LCCOMB_X34_Y23_N20
\VGA_86_image|rgb_count[10]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[10]~30_combout\ = (\VGA_86_image|rgb_count\(10) & (!\VGA_86_image|rgb_count[9]~29\)) # (!\VGA_86_image|rgb_count\(10) & ((\VGA_86_image|rgb_count[9]~29\) # (GND)))
-- \VGA_86_image|rgb_count[10]~31\ = CARRY((!\VGA_86_image|rgb_count[9]~29\) # (!\VGA_86_image|rgb_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_count\(10),
	datad => VCC,
	cin => \VGA_86_image|rgb_count[9]~29\,
	combout => \VGA_86_image|rgb_count[10]~30_combout\,
	cout => \VGA_86_image|rgb_count[10]~31\);

-- Location: FF_X34_Y23_N21
\VGA_86_image|rgb_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[10]~30_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(10));

-- Location: LCCOMB_X31_Y23_N28
\VGA_86_image|rgb_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~2_combout\ = \VGA_86_image|rgb_count\(10) $ (((\VGA_86_image|process_1~15_combout\ & (!\VGA_86_image|LessThan8~16_combout\ & !\VGA_86_image|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~15_combout\,
	datab => \VGA_86_image|rgb_count\(10),
	datac => \VGA_86_image|LessThan8~16_combout\,
	datad => \VGA_86_image|Add4~14_combout\,
	combout => \VGA_86_image|rgb_2~2_combout\);

-- Location: FF_X31_Y23_N29
\VGA_86_image|rgb_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~2_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(10));

-- Location: LCCOMB_X31_Y23_N12
\VGA_86_image|r_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[2]~feeder_combout\ = \VGA_86_image|rgb_2\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(10),
	combout => \VGA_86_image|r_out[2]~feeder_combout\);

-- Location: FF_X31_Y23_N13
\VGA_86_image|r_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(2));

-- Location: LCCOMB_X34_Y23_N22
\VGA_86_image|rgb_count[11]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_count[11]~32_combout\ = \VGA_86_image|rgb_count\(11) $ (!\VGA_86_image|rgb_count[10]~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_count\(11),
	cin => \VGA_86_image|rgb_count[10]~31\,
	combout => \VGA_86_image|rgb_count[11]~32_combout\);

-- Location: FF_X34_Y23_N23
\VGA_86_image|rgb_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_count[11]~32_combout\,
	ena => \VGA_86_image|rgb_count[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_count\(11));

-- Location: LCCOMB_X31_Y23_N6
\VGA_86_image|rgb_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~3_combout\ = \VGA_86_image|rgb_count\(11) $ (((\VGA_86_image|process_1~15_combout\ & (!\VGA_86_image|LessThan8~16_combout\ & !\VGA_86_image|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~15_combout\,
	datab => \VGA_86_image|rgb_count\(11),
	datac => \VGA_86_image|LessThan8~16_combout\,
	datad => \VGA_86_image|Add4~14_combout\,
	combout => \VGA_86_image|rgb_2~3_combout\);

-- Location: FF_X31_Y23_N7
\VGA_86_image|rgb_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~3_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(11));

-- Location: LCCOMB_X31_Y23_N14
\VGA_86_image|r_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[3]~feeder_combout\ = \VGA_86_image|rgb_2\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(11),
	combout => \VGA_86_image|r_out[3]~feeder_combout\);

-- Location: FF_X31_Y23_N15
\VGA_86_image|r_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|r_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(3));

-- Location: LCCOMB_X34_Y27_N24
\VGA_86_image|rgb_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~4_combout\ = \VGA_86_image|rgb_count\(4) $ (((!\VGA_86_image|LessThan8~16_combout\ & (!\VGA_86_image|Add4~14_combout\ & \VGA_86_image|process_1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_count\(4),
	datab => \VGA_86_image|LessThan8~16_combout\,
	datac => \VGA_86_image|Add4~14_combout\,
	datad => \VGA_86_image|process_1~15_combout\,
	combout => \VGA_86_image|rgb_2~4_combout\);

-- Location: FF_X34_Y27_N25
\VGA_86_image|rgb_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~4_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(4));

-- Location: LCCOMB_X34_Y27_N0
\VGA_86_image|g_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[0]~0_combout\ = !\VGA_86_image|rgb_2\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(4),
	combout => \VGA_86_image|g_out[0]~0_combout\);

-- Location: FF_X34_Y27_N1
\VGA_86_image|g_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|g_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_out\(0));

-- Location: LCCOMB_X31_Y23_N0
\VGA_86_image|rgb_2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~5_combout\ = \VGA_86_image|rgb_count\(5) $ (((\VGA_86_image|process_1~15_combout\ & (!\VGA_86_image|LessThan8~16_combout\ & !\VGA_86_image|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~15_combout\,
	datab => \VGA_86_image|rgb_count\(5),
	datac => \VGA_86_image|LessThan8~16_combout\,
	datad => \VGA_86_image|Add4~14_combout\,
	combout => \VGA_86_image|rgb_2~5_combout\);

-- Location: FF_X31_Y23_N1
\VGA_86_image|rgb_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~5_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(5));

-- Location: LCCOMB_X31_Y23_N24
\VGA_86_image|g_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[1]~feeder_combout\ = \VGA_86_image|rgb_2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(5),
	combout => \VGA_86_image|g_out[1]~feeder_combout\);

-- Location: FF_X31_Y23_N25
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

-- Location: LCCOMB_X31_Y23_N10
\VGA_86_image|rgb_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~6_combout\ = \VGA_86_image|rgb_count\(6) $ (((!\VGA_86_image|Add4~14_combout\ & (!\VGA_86_image|LessThan8~16_combout\ & \VGA_86_image|process_1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_count\(6),
	datab => \VGA_86_image|Add4~14_combout\,
	datac => \VGA_86_image|LessThan8~16_combout\,
	datad => \VGA_86_image|process_1~15_combout\,
	combout => \VGA_86_image|rgb_2~6_combout\);

-- Location: FF_X31_Y23_N11
\VGA_86_image|rgb_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~6_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(6));

-- Location: LCCOMB_X31_Y23_N26
\VGA_86_image|g_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[2]~feeder_combout\ = \VGA_86_image|rgb_2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(6),
	combout => \VGA_86_image|g_out[2]~feeder_combout\);

-- Location: FF_X31_Y23_N27
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

-- Location: LCCOMB_X34_Y27_N2
\VGA_86_image|rgb_2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~7_combout\ = \VGA_86_image|rgb_count\(7) $ (((!\VGA_86_image|Add4~14_combout\ & (!\VGA_86_image|LessThan8~16_combout\ & \VGA_86_image|process_1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~14_combout\,
	datab => \VGA_86_image|LessThan8~16_combout\,
	datac => \VGA_86_image|rgb_count\(7),
	datad => \VGA_86_image|process_1~15_combout\,
	combout => \VGA_86_image|rgb_2~7_combout\);

-- Location: FF_X34_Y27_N3
\VGA_86_image|rgb_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~7_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(7));

-- Location: LCCOMB_X40_Y27_N8
\VGA_86_image|g_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[3]~feeder_combout\ = \VGA_86_image|rgb_2\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(7),
	combout => \VGA_86_image|g_out[3]~feeder_combout\);

-- Location: FF_X40_Y27_N9
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

-- Location: LCCOMB_X31_Y23_N4
\VGA_86_image|rgb_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~8_combout\ = \VGA_86_image|rgb_count\(0) $ (((\VGA_86_image|process_1~15_combout\ & (!\VGA_86_image|Add4~14_combout\ & !\VGA_86_image|LessThan8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~15_combout\,
	datab => \VGA_86_image|Add4~14_combout\,
	datac => \VGA_86_image|LessThan8~16_combout\,
	datad => \VGA_86_image|rgb_count\(0),
	combout => \VGA_86_image|rgb_2~8_combout\);

-- Location: FF_X31_Y23_N5
\VGA_86_image|rgb_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~8_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(0));

-- Location: LCCOMB_X31_Y23_N20
\VGA_86_image|b_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[0]~0_combout\ = !\VGA_86_image|rgb_2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|rgb_2\(0),
	combout => \VGA_86_image|b_out[0]~0_combout\);

-- Location: FF_X31_Y23_N21
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

-- Location: LCCOMB_X31_Y23_N30
\VGA_86_image|rgb_2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~9_combout\ = \VGA_86_image|rgb_count\(1) $ (((!\VGA_86_image|Add4~14_combout\ & (!\VGA_86_image|LessThan8~16_combout\ & \VGA_86_image|process_1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_count\(1),
	datab => \VGA_86_image|Add4~14_combout\,
	datac => \VGA_86_image|LessThan8~16_combout\,
	datad => \VGA_86_image|process_1~15_combout\,
	combout => \VGA_86_image|rgb_2~9_combout\);

-- Location: FF_X31_Y23_N31
\VGA_86_image|rgb_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~9_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(1));

-- Location: LCCOMB_X31_Y23_N22
\VGA_86_image|b_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[1]~1_combout\ = !\VGA_86_image|rgb_2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|rgb_2\(1),
	combout => \VGA_86_image|b_out[1]~1_combout\);

-- Location: FF_X31_Y23_N23
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

-- Location: LCCOMB_X34_Y27_N4
\VGA_86_image|rgb_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~10_combout\ = \VGA_86_image|rgb_count\(2) $ (((!\VGA_86_image|LessThan8~16_combout\ & (!\VGA_86_image|Add4~14_combout\ & \VGA_86_image|process_1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_count\(2),
	datab => \VGA_86_image|LessThan8~16_combout\,
	datac => \VGA_86_image|Add4~14_combout\,
	datad => \VGA_86_image|process_1~15_combout\,
	combout => \VGA_86_image|rgb_2~10_combout\);

-- Location: FF_X34_Y27_N5
\VGA_86_image|rgb_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~10_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(2));

-- Location: LCCOMB_X27_Y23_N16
\VGA_86_image|b_out[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[2]~2_combout\ = !\VGA_86_image|rgb_2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|rgb_2\(2),
	combout => \VGA_86_image|b_out[2]~2_combout\);

-- Location: FF_X27_Y23_N17
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

-- Location: LCCOMB_X34_Y27_N6
\VGA_86_image|rgb_2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~11_combout\ = \VGA_86_image|rgb_count\(3) $ (((!\VGA_86_image|Add4~14_combout\ & (!\VGA_86_image|LessThan8~16_combout\ & \VGA_86_image|process_1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~14_combout\,
	datab => \VGA_86_image|LessThan8~16_combout\,
	datac => \VGA_86_image|rgb_count\(3),
	datad => \VGA_86_image|process_1~15_combout\,
	combout => \VGA_86_image|rgb_2~11_combout\);

-- Location: FF_X34_Y27_N7
\VGA_86_image|rgb_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_40_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~11_combout\,
	sclr => \VGA_86_image|blank_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(3));

-- Location: LCCOMB_X34_Y27_N18
\VGA_86_image|b_out[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[3]~3_combout\ = !\VGA_86_image|rgb_2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(3),
	combout => \VGA_86_image|b_out[3]~3_combout\);

-- Location: FF_X34_Y27_N19
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


