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

-- DATE "11/02/2023 13:56:03"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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
	vga_vs : BUFFER std_logic;
	vga_hs : BUFFER std_logic;
	vga_r : BUFFER std_logic_vector(3 DOWNTO 0);
	vga_g : BUFFER std_logic_vector(3 DOWNTO 0);
	vga_b : BUFFER std_logic_vector(3 DOWNTO 0)
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
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock_25~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \max10_clk1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \vga_vs~output_o\ : std_logic;
SIGNAL \vga_hs~output_o\ : std_logic;
SIGNAL \vga_r[0]~output_o\ : std_logic;
SIGNAL \vga_r[1]~output_o\ : std_logic;
SIGNAL \vga_r[2]~output_o\ : std_logic;
SIGNAL \vga_r[3]~output_o\ : std_logic;
SIGNAL \vga_g[0]~output_o\ : std_logic;
SIGNAL \vga_g[1]~output_o\ : std_logic;
SIGNAL \vga_g[2]~output_o\ : std_logic;
SIGNAL \vga_g[3]~output_o\ : std_logic;
SIGNAL \vga_b[0]~output_o\ : std_logic;
SIGNAL \vga_b[1]~output_o\ : std_logic;
SIGNAL \vga_b[2]~output_o\ : std_logic;
SIGNAL \vga_b[3]~output_o\ : std_logic;
SIGNAL \max10_clk1_50~input_o\ : std_logic;
SIGNAL \max10_clk1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \clock_25~0_combout\ : std_logic;
SIGNAL \clock_25~feeder_combout\ : std_logic;
SIGNAL \clock_25~q\ : std_logic;
SIGNAL \clock_25~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_86_image|v_count[0]~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[8]~27\ : std_logic;
SIGNAL \VGA_86_image|v_count[9]~28_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[0]~10_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[0]~11\ : std_logic;
SIGNAL \VGA_86_image|h_count[1]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[1]~13\ : std_logic;
SIGNAL \VGA_86_image|h_count[2]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[2]~15\ : std_logic;
SIGNAL \VGA_86_image|h_count[3]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[3]~17\ : std_logic;
SIGNAL \VGA_86_image|h_count[4]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[4]~19\ : std_logic;
SIGNAL \VGA_86_image|h_count[5]~20_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[5]~21\ : std_logic;
SIGNAL \VGA_86_image|h_count[6]~22_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[6]~23\ : std_logic;
SIGNAL \VGA_86_image|h_count[7]~24_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[7]~25\ : std_logic;
SIGNAL \VGA_86_image|h_count[8]~26_combout\ : std_logic;
SIGNAL \VGA_86_image|h_count[8]~27\ : std_logic;
SIGNAL \VGA_86_image|h_count[9]~28_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal0~1_combout\ : std_logic;
SIGNAL \reset_a~0_combout\ : std_logic;
SIGNAL \reset_a~q\ : std_logic;
SIGNAL \reset_b~0_combout\ : std_logic;
SIGNAL \reset_b~q\ : std_logic;
SIGNAL \reset_c~0_combout\ : std_logic;
SIGNAL \reset_c~q\ : std_logic;
SIGNAL \reset_d~0_combout\ : std_logic;
SIGNAL \reset_d~q\ : std_logic;
SIGNAL \reset_e~0_combout\ : std_logic;
SIGNAL \reset_e~q\ : std_logic;
SIGNAL \VGA_86_image|v_count[9]~31_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_86_image|v_count[9]~30_combout\ : std_logic;
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
SIGNAL \VGA_86_image|process_1~1_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~0_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~2_combout\ : std_logic;
SIGNAL \VGA_86_image|v_sync_1~q\ : std_logic;
SIGNAL \VGA_86_image|v_sync_2~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|v_sync_2~q\ : std_logic;
SIGNAL \VGA_86_image|v_sync_out~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|v_sync_out~q\ : std_logic;
SIGNAL \VGA_86_image|process_1~3_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~4_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~5_combout\ : std_logic;
SIGNAL \VGA_86_image|h_sync_1~q\ : std_logic;
SIGNAL \VGA_86_image|h_sync_2~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|h_sync_2~q\ : std_logic;
SIGNAL \VGA_86_image|h_sync_out~q\ : std_logic;
SIGNAL \VGA_86_image|process_1~6_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~7_combout\ : std_logic;
SIGNAL \VGA_86_image|blank_1~q\ : std_logic;
SIGNAL \VGA_86_image|blank_2~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|blank_2~q\ : std_logic;
SIGNAL \VGA_86_image|rgb_sky[0]~9_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~0_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~1\ : std_logic;
SIGNAL \VGA_86_image|Add18~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~3\ : std_logic;
SIGNAL \VGA_86_image|Add18~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~5\ : std_logic;
SIGNAL \VGA_86_image|Add18~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~7\ : std_logic;
SIGNAL \VGA_86_image|Add18~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~9\ : std_logic;
SIGNAL \VGA_86_image|Add18~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~11\ : std_logic;
SIGNAL \VGA_86_image|Add18~12_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~13\ : std_logic;
SIGNAL \VGA_86_image|Add18~14_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~15\ : std_logic;
SIGNAL \VGA_86_image|Add18~16_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~17\ : std_logic;
SIGNAL \VGA_86_image|Add18~18_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~19\ : std_logic;
SIGNAL \VGA_86_image|Add18~20_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~21\ : std_logic;
SIGNAL \VGA_86_image|Add18~22_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~23\ : std_logic;
SIGNAL \VGA_86_image|Add18~24_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~25\ : std_logic;
SIGNAL \VGA_86_image|Add18~26_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~27\ : std_logic;
SIGNAL \VGA_86_image|Add18~28_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~29\ : std_logic;
SIGNAL \VGA_86_image|Add18~30_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~31\ : std_logic;
SIGNAL \VGA_86_image|Add18~32_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~33\ : std_logic;
SIGNAL \VGA_86_image|Add18~34_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~35\ : std_logic;
SIGNAL \VGA_86_image|Add18~36_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~37\ : std_logic;
SIGNAL \VGA_86_image|Add18~38_combout\ : std_logic;
SIGNAL \VGA_86_image|color_shift_count~7_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~39\ : std_logic;
SIGNAL \VGA_86_image|Add18~40_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~41\ : std_logic;
SIGNAL \VGA_86_image|Add18~42_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~43\ : std_logic;
SIGNAL \VGA_86_image|Add18~44_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~45\ : std_logic;
SIGNAL \VGA_86_image|Add18~46_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~47\ : std_logic;
SIGNAL \VGA_86_image|Add18~48_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~49\ : std_logic;
SIGNAL \VGA_86_image|Add18~50_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~51\ : std_logic;
SIGNAL \VGA_86_image|Add18~52_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~53\ : std_logic;
SIGNAL \VGA_86_image|Add18~54_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~55\ : std_logic;
SIGNAL \VGA_86_image|Add18~56_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~57\ : std_logic;
SIGNAL \VGA_86_image|Add18~58_combout\ : std_logic;
SIGNAL \VGA_86_image|Add18~59\ : std_logic;
SIGNAL \VGA_86_image|Add18~60_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~7_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal3~9_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~1\ : std_logic;
SIGNAL \VGA_86_image|Add19~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~3\ : std_logic;
SIGNAL \VGA_86_image|Add19~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~5\ : std_logic;
SIGNAL \VGA_86_image|Add19~6_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_sky[4]~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~7\ : std_logic;
SIGNAL \VGA_86_image|Add19~8_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_sky[5]~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~9\ : std_logic;
SIGNAL \VGA_86_image|Add19~10_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_sky[6]~7_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~11\ : std_logic;
SIGNAL \VGA_86_image|Add19~12_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_sky[7]~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~13\ : std_logic;
SIGNAL \VGA_86_image|Add19~14_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~15\ : std_logic;
SIGNAL \VGA_86_image|Add19~16_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~17\ : std_logic;
SIGNAL \VGA_86_image|Add19~18_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~19\ : std_logic;
SIGNAL \VGA_86_image|Add19~20_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~21\ : std_logic;
SIGNAL \VGA_86_image|Add19~22_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_sky[12]~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~23\ : std_logic;
SIGNAL \VGA_86_image|Add19~24_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~25\ : std_logic;
SIGNAL \VGA_86_image|Add19~26_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_sky[14]~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~27\ : std_logic;
SIGNAL \VGA_86_image|Add19~28_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_sky[15]~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~29\ : std_logic;
SIGNAL \VGA_86_image|Add19~30_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~31\ : std_logic;
SIGNAL \VGA_86_image|Add19~32_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~33\ : std_logic;
SIGNAL \VGA_86_image|Add19~34_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~35\ : std_logic;
SIGNAL \VGA_86_image|Add19~36_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~37\ : std_logic;
SIGNAL \VGA_86_image|Add19~38_combout\ : std_logic;
SIGNAL \VGA_86_image|Add12~1_cout\ : std_logic;
SIGNAL \VGA_86_image|Add12~3\ : std_logic;
SIGNAL \VGA_86_image|Add12~5\ : std_logic;
SIGNAL \VGA_86_image|Add12~7\ : std_logic;
SIGNAL \VGA_86_image|Add12~9\ : std_logic;
SIGNAL \VGA_86_image|Add12~11\ : std_logic;
SIGNAL \VGA_86_image|Add12~13\ : std_logic;
SIGNAL \VGA_86_image|Add12~14_combout\ : std_logic;
SIGNAL \VGA_86_image|v_pos_1[9]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add12~15\ : std_logic;
SIGNAL \VGA_86_image|Add12~16_combout\ : std_logic;
SIGNAL \VGA_86_image|v_pos_1[10]~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Add12~12_combout\ : std_logic;
SIGNAL \VGA_86_image|v_pos_1[8]~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Add12~6_combout\ : std_logic;
SIGNAL \VGA_86_image|v_pos_1[5]~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add12~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add12~10_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan15~0_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan15~1_combout\ : std_logic;
SIGNAL \VGA_86_image|v_pos_1[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[0]~9_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a~11_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a~12_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[0]~10\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[1]~13_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[0]~24_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[1]~14\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[2]~15_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \VGA_86_image|Add12~2_combout\ : std_logic;
SIGNAL \VGA_86_image|v_pos_1[3]~4_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[2]~16\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[3]~17_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \VGA_86_image|Add12~4_combout\ : std_logic;
SIGNAL \VGA_86_image|v_pos_1[4]~5_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[3]~18\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[4]~19_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[4]~20\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[5]~21_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[5]~22\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[6]~23_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[6]~24\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[7]~25_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[7]~26\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[8]~27_combout\ : std_logic;
SIGNAL \VGA_86_image|v_factor_a[8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \VGA_86_image|frame_num[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_86_image|frame_num[8]~27\ : std_logic;
SIGNAL \VGA_86_image|frame_num[9]~28_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal0~3_combout\ : std_logic;
SIGNAL \VGA_86_image|new_frame~0_combout\ : std_logic;
SIGNAL \VGA_86_image|new_frame~q\ : std_logic;
SIGNAL \VGA_86_image|frame_num[7]~31_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Equal2~1_combout\ : std_logic;
SIGNAL \VGA_86_image|frame_num[7]~30_combout\ : std_logic;
SIGNAL \VGA_86_image|frame_num[0]~11\ : std_logic;
SIGNAL \VGA_86_image|frame_num[1]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|frame_num[1]~13\ : std_logic;
SIGNAL \VGA_86_image|frame_num[2]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|frame_num[2]~15\ : std_logic;
SIGNAL \VGA_86_image|frame_num[3]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|frame_num[3]~17\ : std_logic;
SIGNAL \VGA_86_image|frame_num[4]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|frame_num[4]~19\ : std_logic;
SIGNAL \VGA_86_image|frame_num[5]~20_combout\ : std_logic;
SIGNAL \VGA_86_image|frame_num[5]~21\ : std_logic;
SIGNAL \VGA_86_image|frame_num[6]~22_combout\ : std_logic;
SIGNAL \VGA_86_image|frame_num[6]~23\ : std_logic;
SIGNAL \VGA_86_image|frame_num[7]~24_combout\ : std_logic;
SIGNAL \VGA_86_image|frame_num[7]~25\ : std_logic;
SIGNAL \VGA_86_image|frame_num[8]~26_combout\ : std_logic;
SIGNAL \VGA_86_image|Add3~0_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan2~0_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan2~1_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan1~2_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~11_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan3~0_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~8_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~9_combout\ : std_logic;
SIGNAL \VGA_86_image|process_1~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~0_combout\ : std_logic;
SIGNAL \VGA_86_image|curve[6]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|curve[6]~2_combout\ : std_logic;
SIGNAL \VGA_86_image|curve[6]~1_combout\ : std_logic;
SIGNAL \VGA_86_image|curve[6]~3_combout\ : std_logic;
SIGNAL \VGA_86_image|curve~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~2_cout\ : std_logic;
SIGNAL \VGA_86_image|Add4~3_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~4\ : std_logic;
SIGNAL \VGA_86_image|Add4~7_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~9_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~8\ : std_logic;
SIGNAL \VGA_86_image|Add4~14_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~11_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~1\ : std_logic;
SIGNAL \VGA_86_image|Add5~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add6~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~12_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~13_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~16_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~15\ : std_logic;
SIGNAL \VGA_86_image|Add4~18_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~3\ : std_logic;
SIGNAL \VGA_86_image|Add5~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add6~1\ : std_logic;
SIGNAL \VGA_86_image|Add6~2_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~17_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~20_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~19\ : std_logic;
SIGNAL \VGA_86_image|Add4~22_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~5\ : std_logic;
SIGNAL \VGA_86_image|Add5~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add6~3\ : std_logic;
SIGNAL \VGA_86_image|Add6~4_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~21_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~24_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~23\ : std_logic;
SIGNAL \VGA_86_image|Add4~26_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~7\ : std_logic;
SIGNAL \VGA_86_image|Add5~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add6~5\ : std_logic;
SIGNAL \VGA_86_image|Add6~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~25_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~28_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~27\ : std_logic;
SIGNAL \VGA_86_image|Add4~30_combout\ : std_logic;
SIGNAL \VGA_86_image|Add5~9\ : std_logic;
SIGNAL \VGA_86_image|Add5~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add6~7\ : std_logic;
SIGNAL \VGA_86_image|Add6~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~29_combout\ : std_logic;
SIGNAL \VGA_86_image|Add4~32_combout\ : std_logic;
SIGNAL \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \VGA_86_image|WideOr0~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \VGA_86_image|WideOr0~0_combout\ : std_logic;
SIGNAL \VGA_86_image|WideOr0~combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~1_cout\ : std_logic;
SIGNAL \VGA_86_image|Add10~3\ : std_logic;
SIGNAL \VGA_86_image|Add10~5\ : std_logic;
SIGNAL \VGA_86_image|Add10~7\ : std_logic;
SIGNAL \VGA_86_image|Add10~9\ : std_logic;
SIGNAL \VGA_86_image|Add10~11\ : std_logic;
SIGNAL \VGA_86_image|Add10~13\ : std_logic;
SIGNAL \VGA_86_image|Add10~15\ : std_logic;
SIGNAL \VGA_86_image|Add10~16_combout\ : std_logic;
SIGNAL \VGA_86_image|this_curve[7]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~14_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~12_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~8_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~6_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~4_combout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[2]~9_cout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[2]~11\ : std_logic;
SIGNAL \VGA_86_image|center_pos[3]~13\ : std_logic;
SIGNAL \VGA_86_image|center_pos[4]~15\ : std_logic;
SIGNAL \VGA_86_image|center_pos[5]~17\ : std_logic;
SIGNAL \VGA_86_image|center_pos[6]~19\ : std_logic;
SIGNAL \VGA_86_image|center_pos[7]~21\ : std_logic;
SIGNAL \VGA_86_image|center_pos[8]~23\ : std_logic;
SIGNAL \VGA_86_image|center_pos[9]~24_combout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[8]~22_combout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[7]~20_combout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[6]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[5]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[4]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[3]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[2]~10_combout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[1]~26_combout\ : std_logic;
SIGNAL \VGA_86_image|Add10~2_combout\ : std_logic;
SIGNAL \VGA_86_image|center_pos[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[0]~11\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[1]~13\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[2]~15\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[3]~17\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[4]~19\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[5]~21\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[6]~23\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[7]~25\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[8]~27\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[9]~28_combout\ : std_logic;
SIGNAL \VGA_86_image|Add13~1\ : std_logic;
SIGNAL \VGA_86_image|Add13~3\ : std_logic;
SIGNAL \VGA_86_image|Add13~5\ : std_logic;
SIGNAL \VGA_86_image|Add13~7\ : std_logic;
SIGNAL \VGA_86_image|Add13~9\ : std_logic;
SIGNAL \VGA_86_image|Add13~11\ : std_logic;
SIGNAL \VGA_86_image|Add13~13\ : std_logic;
SIGNAL \VGA_86_image|Add13~15\ : std_logic;
SIGNAL \VGA_86_image|Add13~17\ : std_logic;
SIGNAL \VGA_86_image|Add13~18_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan14~1_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan14~3_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan14~5_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan14~7_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan14~9_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan14~11_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan14~13_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan14~15_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan14~17_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan14~18_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[1]~9\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[2]~11\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[3]~13\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[4]~15\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[5]~17\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[6]~19\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[7]~21\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[8]~22_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[8]~26_combout\ : std_logic;
SIGNAL \VGA_86_image|Add13~16_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[7]~24_combout\ : std_logic;
SIGNAL \VGA_86_image|Add13~14_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[7]~20_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[6]~22_combout\ : std_logic;
SIGNAL \VGA_86_image|Add13~12_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[6]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[5]~20_combout\ : std_logic;
SIGNAL \VGA_86_image|Add13~10_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[5]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[4]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[4]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|Add13~8_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[3]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|Add13~6_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[3]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[2]~10_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[2]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|Add13~4_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_b[1]~8_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[1]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|Add13~2_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1[0]~10_combout\ : std_logic;
SIGNAL \VGA_86_image|Add13~0_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan17~1_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan17~3_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan17~5_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan17~7_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan17~9_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan17~11_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan17~13_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan17~15_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan17~16_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[3]~7\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[4]~9\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[5]~11\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[6]~13\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[7]~15\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[8]~16_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[7]~14_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[6]~12_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[5]~10_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[4]~8_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[3]~6_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_a[2]~18_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan16~1_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan16~3_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan16~5_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan16~7_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan16~9_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan16~11_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan16~13_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan16~15_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan16~16_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~0_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~1_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~39\ : std_logic;
SIGNAL \VGA_86_image|Add19~40_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_sky[21]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add17~0_combout\ : std_logic;
SIGNAL \VGA_86_image|Add17~1_combout\ : std_logic;
SIGNAL \VGA_86_image|Add17~2_combout\ : std_logic;
SIGNAL \VGA_86_image|x_value_c[5]~0_combout\ : std_logic;
SIGNAL \VGA_86_image|LessThan18~1_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan18~3_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan18~5_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan18~7_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan18~9_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan18~11_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan18~13_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan18~15_cout\ : std_logic;
SIGNAL \VGA_86_image|LessThan18~16_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~2_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~3_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~4_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~41\ : std_logic;
SIGNAL \VGA_86_image|Add19~42_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~5_combout\ : std_logic;
SIGNAL \VGA_86_image|Add19~43\ : std_logic;
SIGNAL \VGA_86_image|Add19~44_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_sky[23]~1_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~6_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~7_combout\ : std_logic;
SIGNAL \VGA_86_image|r_out[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~8_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~9_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~10_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[6]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~11_combout\ : std_logic;
SIGNAL \VGA_86_image|g_out[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~12_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~13_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~14_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~15_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[6]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|rgb_2~16_combout\ : std_logic;
SIGNAL \VGA_86_image|b_out[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_86_image|h_gap_1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|center_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|x_value_b\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|r_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_86_image|x_value_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|frame_num\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|g_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_86_image|b_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_86_image|rgb_2\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \VGA_86_image|v_pos_1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_86_image|x_value_c\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_86_image|rgb_sky\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \VGA_86_image|color_shift_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \VGA_86_image|this_curve\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_86_image|curve\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_86_image|ALT_INV_curve\ : std_logic_vector(7 DOWNTO 7);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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

\VGA_86_image|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT14\ & 
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT10\ & 
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT6\ & 
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~dataout\ & \VGA_86_image|Mult1|auto_generated|mac_mult1~0\);

\VGA_86_image|Mult1|auto_generated|mac_out2~0\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\VGA_86_image|Mult1|auto_generated|mac_out2~dataout\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);

\VGA_86_image|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT16\ & \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT15\ & \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT13\ & \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT12\ & \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT11\ & \VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT9\);

\VGA_86_image|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (NOT \VGA_86_image|curve\(7) & \VGA_86_image|curve\(6) & \VGA_86_image|curve\(5) & \VGA_86_image|curve\(4) & \VGA_86_image|curve\(3) & \VGA_86_image|curve\(2) & 
\VGA_86_image|curve\(1) & \VGA_86_image|curve\(0) & gnd);

\VGA_86_image|Mult1|auto_generated|mac_mult1~0\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\VGA_86_image|Mult1|auto_generated|mac_mult1~dataout\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\VGA_86_image|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);

\VGA_86_image|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \VGA_86_image|Mult0|auto_generated|mac_mult1~dataout\);

\VGA_86_image|Mult0|auto_generated|mac_out2~dataout\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\VGA_86_image|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\VGA_86_image|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\VGA_86_image|v_factor_a[8]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[7]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[6]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[5]~SCLR_LUT_combout\ & 
\VGA_86_image|v_factor_a[4]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[3]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[2]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[1]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[0]~SCLR_LUT_combout\);

\VGA_86_image|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\VGA_86_image|v_factor_a[8]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[7]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[6]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[5]~SCLR_LUT_combout\ & 
\VGA_86_image|v_factor_a[4]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[3]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[2]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[1]~SCLR_LUT_combout\ & \VGA_86_image|v_factor_a[0]~SCLR_LUT_combout\);

\VGA_86_image|Mult0|auto_generated|mac_mult1~dataout\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\VGA_86_image|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\clock_25~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_25~q\);

\max10_clk1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \max10_clk1_50~input_o\);
\VGA_86_image|ALT_INV_curve\(7) <= NOT \VGA_86_image|curve\(7);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

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
	o => \vga_vs~output_o\);

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
	o => \vga_hs~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\vga_r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|r_out\(4),
	devoe => ww_devoe,
	o => \vga_r[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\vga_r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|r_out\(5),
	devoe => ww_devoe,
	o => \vga_r[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\vga_r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|r_out\(6),
	devoe => ww_devoe,
	o => \vga_r[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\vga_r[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|r_out\(7),
	devoe => ww_devoe,
	o => \vga_r[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\vga_g[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|g_out\(4),
	devoe => ww_devoe,
	o => \vga_g[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\vga_g[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|g_out\(5),
	devoe => ww_devoe,
	o => \vga_g[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\vga_g[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|g_out\(6),
	devoe => ww_devoe,
	o => \vga_g[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\vga_g[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|g_out\(7),
	devoe => ww_devoe,
	o => \vga_g[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\vga_b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|b_out\(4),
	devoe => ww_devoe,
	o => \vga_b[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\vga_b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|b_out\(5),
	devoe => ww_devoe,
	o => \vga_b[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\vga_b[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|b_out\(6),
	devoe => ww_devoe,
	o => \vga_b[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\vga_b[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_86_image|b_out\(7),
	devoe => ww_devoe,
	o => \vga_b[3]~output_o\);

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

-- Location: CLKCTRL_G19
\max10_clk1_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \max10_clk1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \max10_clk1_50~inputclkctrl_outclk\);

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

-- Location: LCCOMB_X45_Y53_N10
\clock_25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_25~0_combout\ = (!\clock_25~q\ & \key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_25~q\,
	datad => \key[0]~input_o\,
	combout => \clock_25~0_combout\);

-- Location: LCCOMB_X45_Y53_N28
\clock_25~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_25~feeder_combout\ = \clock_25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_25~0_combout\,
	combout => \clock_25~feeder_combout\);

-- Location: FF_X45_Y53_N29
clock_25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \clock_25~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_25~q\);

-- Location: CLKCTRL_G10
\clock_25~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_25~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_25~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y39_N10
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

-- Location: LCCOMB_X45_Y39_N0
\VGA_86_image|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal1~0_combout\ = (!\VGA_86_image|v_count\(1) & (!\VGA_86_image|v_count\(4) & (\VGA_86_image|v_count\(2) & \VGA_86_image|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(1),
	datab => \VGA_86_image|v_count\(4),
	datac => \VGA_86_image|v_count\(2),
	datad => \VGA_86_image|v_count\(3),
	combout => \VGA_86_image|Equal1~0_combout\);

-- Location: LCCOMB_X45_Y39_N30
\VGA_86_image|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal1~1_combout\ = (!\VGA_86_image|v_count\(8) & (!\VGA_86_image|v_count\(7) & (!\VGA_86_image|v_count\(6) & !\VGA_86_image|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(8),
	datab => \VGA_86_image|v_count\(7),
	datac => \VGA_86_image|v_count\(6),
	datad => \VGA_86_image|v_count\(5),
	combout => \VGA_86_image|Equal1~1_combout\);

-- Location: LCCOMB_X45_Y39_N26
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

-- Location: LCCOMB_X45_Y39_N28
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

-- Location: LCCOMB_X46_Y39_N6
\VGA_86_image|h_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[0]~10_combout\ = \VGA_86_image|h_count\(0) $ (VCC)
-- \VGA_86_image|h_count[0]~11\ = CARRY(\VGA_86_image|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(0),
	datad => VCC,
	combout => \VGA_86_image|h_count[0]~10_combout\,
	cout => \VGA_86_image|h_count[0]~11\);

-- Location: FF_X46_Y39_N7
\VGA_86_image|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_count[0]~10_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(0));

-- Location: LCCOMB_X46_Y39_N8
\VGA_86_image|h_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[1]~12_combout\ = (\VGA_86_image|h_count\(1) & (!\VGA_86_image|h_count[0]~11\)) # (!\VGA_86_image|h_count\(1) & ((\VGA_86_image|h_count[0]~11\) # (GND)))
-- \VGA_86_image|h_count[1]~13\ = CARRY((!\VGA_86_image|h_count[0]~11\) # (!\VGA_86_image|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(1),
	datad => VCC,
	cin => \VGA_86_image|h_count[0]~11\,
	combout => \VGA_86_image|h_count[1]~12_combout\,
	cout => \VGA_86_image|h_count[1]~13\);

-- Location: FF_X46_Y39_N9
\VGA_86_image|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_count[1]~12_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(1));

-- Location: LCCOMB_X46_Y39_N10
\VGA_86_image|h_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[2]~14_combout\ = (\VGA_86_image|h_count\(2) & (\VGA_86_image|h_count[1]~13\ $ (GND))) # (!\VGA_86_image|h_count\(2) & (!\VGA_86_image|h_count[1]~13\ & VCC))
-- \VGA_86_image|h_count[2]~15\ = CARRY((\VGA_86_image|h_count\(2) & !\VGA_86_image|h_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(2),
	datad => VCC,
	cin => \VGA_86_image|h_count[1]~13\,
	combout => \VGA_86_image|h_count[2]~14_combout\,
	cout => \VGA_86_image|h_count[2]~15\);

-- Location: FF_X46_Y39_N11
\VGA_86_image|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_count[2]~14_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(2));

-- Location: LCCOMB_X46_Y39_N12
\VGA_86_image|h_count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[3]~16_combout\ = (\VGA_86_image|h_count\(3) & (!\VGA_86_image|h_count[2]~15\)) # (!\VGA_86_image|h_count\(3) & ((\VGA_86_image|h_count[2]~15\) # (GND)))
-- \VGA_86_image|h_count[3]~17\ = CARRY((!\VGA_86_image|h_count[2]~15\) # (!\VGA_86_image|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(3),
	datad => VCC,
	cin => \VGA_86_image|h_count[2]~15\,
	combout => \VGA_86_image|h_count[3]~16_combout\,
	cout => \VGA_86_image|h_count[3]~17\);

-- Location: FF_X46_Y39_N13
\VGA_86_image|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_count[3]~16_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(3));

-- Location: LCCOMB_X46_Y39_N14
\VGA_86_image|h_count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[4]~18_combout\ = (\VGA_86_image|h_count\(4) & (\VGA_86_image|h_count[3]~17\ $ (GND))) # (!\VGA_86_image|h_count\(4) & (!\VGA_86_image|h_count[3]~17\ & VCC))
-- \VGA_86_image|h_count[4]~19\ = CARRY((\VGA_86_image|h_count\(4) & !\VGA_86_image|h_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(4),
	datad => VCC,
	cin => \VGA_86_image|h_count[3]~17\,
	combout => \VGA_86_image|h_count[4]~18_combout\,
	cout => \VGA_86_image|h_count[4]~19\);

-- Location: FF_X46_Y39_N15
\VGA_86_image|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_count[4]~18_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(4));

-- Location: LCCOMB_X46_Y39_N16
\VGA_86_image|h_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[5]~20_combout\ = (\VGA_86_image|h_count\(5) & (!\VGA_86_image|h_count[4]~19\)) # (!\VGA_86_image|h_count\(5) & ((\VGA_86_image|h_count[4]~19\) # (GND)))
-- \VGA_86_image|h_count[5]~21\ = CARRY((!\VGA_86_image|h_count[4]~19\) # (!\VGA_86_image|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(5),
	datad => VCC,
	cin => \VGA_86_image|h_count[4]~19\,
	combout => \VGA_86_image|h_count[5]~20_combout\,
	cout => \VGA_86_image|h_count[5]~21\);

-- Location: FF_X46_Y39_N17
\VGA_86_image|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_count[5]~20_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(5));

-- Location: LCCOMB_X46_Y39_N18
\VGA_86_image|h_count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[6]~22_combout\ = (\VGA_86_image|h_count\(6) & (\VGA_86_image|h_count[5]~21\ $ (GND))) # (!\VGA_86_image|h_count\(6) & (!\VGA_86_image|h_count[5]~21\ & VCC))
-- \VGA_86_image|h_count[6]~23\ = CARRY((\VGA_86_image|h_count\(6) & !\VGA_86_image|h_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|h_count\(6),
	datad => VCC,
	cin => \VGA_86_image|h_count[5]~21\,
	combout => \VGA_86_image|h_count[6]~22_combout\,
	cout => \VGA_86_image|h_count[6]~23\);

-- Location: FF_X46_Y39_N19
\VGA_86_image|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_count[6]~22_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(6));

-- Location: LCCOMB_X46_Y39_N20
\VGA_86_image|h_count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[7]~24_combout\ = (\VGA_86_image|h_count\(7) & (!\VGA_86_image|h_count[6]~23\)) # (!\VGA_86_image|h_count\(7) & ((\VGA_86_image|h_count[6]~23\) # (GND)))
-- \VGA_86_image|h_count[7]~25\ = CARRY((!\VGA_86_image|h_count[6]~23\) # (!\VGA_86_image|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(7),
	datad => VCC,
	cin => \VGA_86_image|h_count[6]~23\,
	combout => \VGA_86_image|h_count[7]~24_combout\,
	cout => \VGA_86_image|h_count[7]~25\);

-- Location: FF_X46_Y39_N21
\VGA_86_image|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_count[7]~24_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(7));

-- Location: LCCOMB_X46_Y39_N22
\VGA_86_image|h_count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[8]~26_combout\ = (\VGA_86_image|h_count\(8) & (\VGA_86_image|h_count[7]~25\ $ (GND))) # (!\VGA_86_image|h_count\(8) & (!\VGA_86_image|h_count[7]~25\ & VCC))
-- \VGA_86_image|h_count[8]~27\ = CARRY((\VGA_86_image|h_count\(8) & !\VGA_86_image|h_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(8),
	datad => VCC,
	cin => \VGA_86_image|h_count[7]~25\,
	combout => \VGA_86_image|h_count[8]~26_combout\,
	cout => \VGA_86_image|h_count[8]~27\);

-- Location: FF_X46_Y39_N23
\VGA_86_image|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_count[8]~26_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(8));

-- Location: LCCOMB_X46_Y39_N24
\VGA_86_image|h_count[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_count[9]~28_combout\ = \VGA_86_image|h_count[8]~27\ $ (\VGA_86_image|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|h_count\(9),
	cin => \VGA_86_image|h_count[8]~27\,
	combout => \VGA_86_image|h_count[9]~28_combout\);

-- Location: FF_X46_Y39_N25
\VGA_86_image|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_count[9]~28_combout\,
	sclr => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_count\(9));

-- Location: LCCOMB_X46_Y39_N26
\VGA_86_image|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal0~2_combout\ = (!\VGA_86_image|h_count\(9)) # (!\VGA_86_image|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|h_count\(8),
	datad => \VGA_86_image|h_count\(9),
	combout => \VGA_86_image|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y39_N4
\VGA_86_image|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal0~0_combout\ = (\VGA_86_image|h_count\(6)) # (((\VGA_86_image|h_count\(5)) # (!\VGA_86_image|h_count\(4))) # (!\VGA_86_image|h_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(6),
	datab => \VGA_86_image|h_count\(0),
	datac => \VGA_86_image|h_count\(5),
	datad => \VGA_86_image|h_count\(4),
	combout => \VGA_86_image|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y39_N6
\VGA_86_image|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal0~1_combout\ = (\VGA_86_image|h_count\(7)) # (((!\VGA_86_image|h_count\(1)) # (!\VGA_86_image|h_count\(3))) # (!\VGA_86_image|h_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(7),
	datab => \VGA_86_image|h_count\(2),
	datac => \VGA_86_image|h_count\(3),
	datad => \VGA_86_image|h_count\(1),
	combout => \VGA_86_image|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y41_N22
\reset_a~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_a~0_combout\ = !\key[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[0]~input_o\,
	combout => \reset_a~0_combout\);

-- Location: FF_X47_Y41_N23
reset_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \reset_a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_a~q\);

-- Location: LCCOMB_X47_Y41_N4
\reset_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_b~0_combout\ = (\reset_a~q\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[0]~input_o\,
	datac => \reset_a~q\,
	combout => \reset_b~0_combout\);

-- Location: FF_X47_Y41_N5
reset_b : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \reset_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_b~q\);

-- Location: LCCOMB_X47_Y41_N2
\reset_c~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_c~0_combout\ = (\reset_b~q\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[0]~input_o\,
	datac => \reset_b~q\,
	combout => \reset_c~0_combout\);

-- Location: FF_X47_Y41_N3
reset_c : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \reset_c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_c~q\);

-- Location: LCCOMB_X47_Y41_N20
\reset_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_d~0_combout\ = (\reset_c~q\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[0]~input_o\,
	datad => \reset_c~q\,
	combout => \reset_d~0_combout\);

-- Location: FF_X47_Y41_N21
reset_d : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \reset_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_d~q\);

-- Location: LCCOMB_X46_Y39_N28
\reset_e~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_e~0_combout\ = (\reset_d~q\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[0]~input_o\,
	datad => \reset_d~q\,
	combout => \reset_e~0_combout\);

-- Location: FF_X46_Y39_N29
reset_e : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \reset_e~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_e~q\);

-- Location: LCCOMB_X46_Y39_N0
\VGA_86_image|v_count[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[9]~31_combout\ = (\reset_e~q\) # ((!\VGA_86_image|Equal0~2_combout\ & (!\VGA_86_image|Equal0~0_combout\ & !\VGA_86_image|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal0~2_combout\,
	datab => \VGA_86_image|Equal0~0_combout\,
	datac => \VGA_86_image|Equal0~1_combout\,
	datad => \reset_e~q\,
	combout => \VGA_86_image|v_count[9]~31_combout\);

-- Location: FF_X45_Y39_N29
\VGA_86_image|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_count[9]~28_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(9));

-- Location: LCCOMB_X45_Y39_N8
\VGA_86_image|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal1~2_combout\ = (!\VGA_86_image|v_count\(0) & (\VGA_86_image|Equal1~0_combout\ & (\VGA_86_image|Equal1~1_combout\ & \VGA_86_image|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(0),
	datab => \VGA_86_image|Equal1~0_combout\,
	datac => \VGA_86_image|Equal1~1_combout\,
	datad => \VGA_86_image|v_count\(9),
	combout => \VGA_86_image|Equal1~2_combout\);

-- Location: LCCOMB_X45_Y39_N2
\VGA_86_image|v_count[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[9]~30_combout\ = (\VGA_86_image|Equal1~2_combout\) # (\reset_e~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Equal1~2_combout\,
	datad => \reset_e~q\,
	combout => \VGA_86_image|v_count[9]~30_combout\);

-- Location: FF_X45_Y39_N11
\VGA_86_image|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_count[0]~10_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(0));

-- Location: LCCOMB_X45_Y39_N12
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

-- Location: FF_X45_Y39_N13
\VGA_86_image|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_count[1]~12_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(1));

-- Location: LCCOMB_X45_Y39_N14
\VGA_86_image|v_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[2]~14_combout\ = (\VGA_86_image|v_count\(2) & (\VGA_86_image|v_count[1]~13\ $ (GND))) # (!\VGA_86_image|v_count\(2) & (!\VGA_86_image|v_count[1]~13\ & VCC))
-- \VGA_86_image|v_count[2]~15\ = CARRY((\VGA_86_image|v_count\(2) & !\VGA_86_image|v_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(2),
	datad => VCC,
	cin => \VGA_86_image|v_count[1]~13\,
	combout => \VGA_86_image|v_count[2]~14_combout\,
	cout => \VGA_86_image|v_count[2]~15\);

-- Location: FF_X45_Y39_N15
\VGA_86_image|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_count[2]~14_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(2));

-- Location: LCCOMB_X45_Y39_N16
\VGA_86_image|v_count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[3]~16_combout\ = (\VGA_86_image|v_count\(3) & (!\VGA_86_image|v_count[2]~15\)) # (!\VGA_86_image|v_count\(3) & ((\VGA_86_image|v_count[2]~15\) # (GND)))
-- \VGA_86_image|v_count[3]~17\ = CARRY((!\VGA_86_image|v_count[2]~15\) # (!\VGA_86_image|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(3),
	datad => VCC,
	cin => \VGA_86_image|v_count[2]~15\,
	combout => \VGA_86_image|v_count[3]~16_combout\,
	cout => \VGA_86_image|v_count[3]~17\);

-- Location: FF_X45_Y39_N17
\VGA_86_image|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_count[3]~16_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(3));

-- Location: LCCOMB_X45_Y39_N18
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

-- Location: FF_X45_Y39_N19
\VGA_86_image|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_count[4]~18_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(4));

-- Location: LCCOMB_X45_Y39_N20
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

-- Location: FF_X45_Y39_N21
\VGA_86_image|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_count[5]~20_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(5));

-- Location: LCCOMB_X45_Y39_N22
\VGA_86_image|v_count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_count[6]~22_combout\ = (\VGA_86_image|v_count\(6) & (\VGA_86_image|v_count[5]~21\ $ (GND))) # (!\VGA_86_image|v_count\(6) & (!\VGA_86_image|v_count[5]~21\ & VCC))
-- \VGA_86_image|v_count[6]~23\ = CARRY((\VGA_86_image|v_count\(6) & !\VGA_86_image|v_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(6),
	datad => VCC,
	cin => \VGA_86_image|v_count[5]~21\,
	combout => \VGA_86_image|v_count[6]~22_combout\,
	cout => \VGA_86_image|v_count[6]~23\);

-- Location: FF_X45_Y39_N23
\VGA_86_image|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_count[6]~22_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(6));

-- Location: LCCOMB_X45_Y39_N24
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

-- Location: FF_X45_Y39_N25
\VGA_86_image|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_count[7]~24_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(7));

-- Location: FF_X45_Y39_N27
\VGA_86_image|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_count[8]~26_combout\,
	sclr => \VGA_86_image|v_count[9]~30_combout\,
	ena => \VGA_86_image|v_count[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_count\(8));

-- Location: LCCOMB_X42_Y38_N30
\VGA_86_image|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~1_combout\ = (\VGA_86_image|v_count\(8) & (\VGA_86_image|v_count\(6) & (\VGA_86_image|v_count\(7) & \VGA_86_image|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(8),
	datab => \VGA_86_image|v_count\(6),
	datac => \VGA_86_image|v_count\(7),
	datad => \VGA_86_image|v_count\(5),
	combout => \VGA_86_image|process_1~1_combout\);

-- Location: LCCOMB_X45_Y38_N20
\VGA_86_image|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~0_combout\ = (\VGA_86_image|v_count\(4)) # ((\VGA_86_image|v_count\(3) & ((\VGA_86_image|v_count\(2)) # (\VGA_86_image|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(2),
	datab => \VGA_86_image|v_count\(4),
	datac => \VGA_86_image|v_count\(3),
	datad => \VGA_86_image|v_count\(1),
	combout => \VGA_86_image|process_1~0_combout\);

-- Location: LCCOMB_X42_Y38_N8
\VGA_86_image|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~2_combout\ = (\VGA_86_image|v_count\(9)) # ((\VGA_86_image|process_1~1_combout\ & \VGA_86_image|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~1_combout\,
	datab => \VGA_86_image|process_1~0_combout\,
	datad => \VGA_86_image|v_count\(9),
	combout => \VGA_86_image|process_1~2_combout\);

-- Location: FF_X42_Y38_N9
\VGA_86_image|v_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_sync_1~q\);

-- Location: LCCOMB_X40_Y38_N20
\VGA_86_image|v_sync_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_sync_2~feeder_combout\ = \VGA_86_image|v_sync_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|v_sync_1~q\,
	combout => \VGA_86_image|v_sync_2~feeder_combout\);

-- Location: FF_X40_Y38_N21
\VGA_86_image|v_sync_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_sync_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_sync_2~q\);

-- Location: LCCOMB_X12_Y31_N28
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

-- Location: FF_X12_Y31_N29
\VGA_86_image|v_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_sync_out~q\);

-- Location: LCCOMB_X44_Y39_N26
\VGA_86_image|process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~3_combout\ = (\VGA_86_image|h_count\(1)) # ((\VGA_86_image|h_count\(3)) # ((\VGA_86_image|h_count\(0)) # (\VGA_86_image|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(1),
	datab => \VGA_86_image|h_count\(3),
	datac => \VGA_86_image|h_count\(0),
	datad => \VGA_86_image|h_count\(2),
	combout => \VGA_86_image|process_1~3_combout\);

-- Location: LCCOMB_X44_Y39_N28
\VGA_86_image|process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~4_combout\ = (\VGA_86_image|h_count\(6) & (((!\VGA_86_image|h_count\(5)) # (!\VGA_86_image|h_count\(4))) # (!\VGA_86_image|process_1~3_combout\))) # (!\VGA_86_image|h_count\(6) & (((\VGA_86_image|h_count\(4)) # 
-- (\VGA_86_image|h_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~3_combout\,
	datab => \VGA_86_image|h_count\(6),
	datac => \VGA_86_image|h_count\(4),
	datad => \VGA_86_image|h_count\(5),
	combout => \VGA_86_image|process_1~4_combout\);

-- Location: LCCOMB_X44_Y39_N20
\VGA_86_image|process_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~5_combout\ = ((\VGA_86_image|h_count\(8)) # ((!\VGA_86_image|h_count\(9)) # (!\VGA_86_image|process_1~4_combout\))) # (!\VGA_86_image|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(7),
	datab => \VGA_86_image|h_count\(8),
	datac => \VGA_86_image|process_1~4_combout\,
	datad => \VGA_86_image|h_count\(9),
	combout => \VGA_86_image|process_1~5_combout\);

-- Location: FF_X44_Y39_N21
\VGA_86_image|h_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|process_1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_sync_1~q\);

-- Location: LCCOMB_X44_Y39_N22
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

-- Location: FF_X44_Y39_N23
\VGA_86_image|h_sync_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_sync_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_sync_2~q\);

-- Location: FF_X44_Y39_N25
\VGA_86_image|h_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	asdata => \VGA_86_image|h_sync_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_sync_out~q\);

-- Location: LCCOMB_X45_Y38_N14
\VGA_86_image|process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~6_combout\ = (!\VGA_86_image|v_count\(9) & (((!\VGA_86_image|h_count\(7) & !\VGA_86_image|h_count\(8))) # (!\VGA_86_image|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(9),
	datab => \VGA_86_image|h_count\(9),
	datac => \VGA_86_image|h_count\(7),
	datad => \VGA_86_image|h_count\(8),
	combout => \VGA_86_image|process_1~6_combout\);

-- Location: LCCOMB_X42_Y38_N10
\VGA_86_image|process_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~7_combout\ = (\VGA_86_image|process_1~1_combout\) # (!\VGA_86_image|process_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|process_1~1_combout\,
	datad => \VGA_86_image|process_1~6_combout\,
	combout => \VGA_86_image|process_1~7_combout\);

-- Location: FF_X42_Y38_N11
\VGA_86_image|blank_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|process_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|blank_1~q\);

-- Location: LCCOMB_X19_Y30_N8
\VGA_86_image|blank_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|blank_2~feeder_combout\ = \VGA_86_image|blank_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|blank_1~q\,
	combout => \VGA_86_image|blank_2~feeder_combout\);

-- Location: FF_X19_Y30_N9
\VGA_86_image|blank_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|blank_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|blank_2~q\);

-- Location: LCCOMB_X17_Y31_N0
\VGA_86_image|rgb_sky[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_sky[0]~9_combout\ = !\VGA_86_image|rgb_sky\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|rgb_sky\(0),
	combout => \VGA_86_image|rgb_sky[0]~9_combout\);

-- Location: LCCOMB_X19_Y35_N2
\VGA_86_image|Add18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~0_combout\ = \VGA_86_image|color_shift_count\(0) $ (VCC)
-- \VGA_86_image|Add18~1\ = CARRY(\VGA_86_image|color_shift_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(0),
	datad => VCC,
	combout => \VGA_86_image|Add18~0_combout\,
	cout => \VGA_86_image|Add18~1\);

-- Location: LCCOMB_X20_Y35_N4
\VGA_86_image|color_shift_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~0_combout\ = (\VGA_86_image|Add18~0_combout\ & !\VGA_86_image|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add18~0_combout\,
	datad => \VGA_86_image|Equal3~9_combout\,
	combout => \VGA_86_image|color_shift_count~0_combout\);

-- Location: FF_X20_Y35_N5
\VGA_86_image|color_shift_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(0));

-- Location: LCCOMB_X19_Y35_N4
\VGA_86_image|Add18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~2_combout\ = (\VGA_86_image|color_shift_count\(1) & (!\VGA_86_image|Add18~1\)) # (!\VGA_86_image|color_shift_count\(1) & ((\VGA_86_image|Add18~1\) # (GND)))
-- \VGA_86_image|Add18~3\ = CARRY((!\VGA_86_image|Add18~1\) # (!\VGA_86_image|color_shift_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(1),
	datad => VCC,
	cin => \VGA_86_image|Add18~1\,
	combout => \VGA_86_image|Add18~2_combout\,
	cout => \VGA_86_image|Add18~3\);

-- Location: FF_X19_Y35_N5
\VGA_86_image|color_shift_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(1));

-- Location: LCCOMB_X19_Y35_N6
\VGA_86_image|Add18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~4_combout\ = (\VGA_86_image|color_shift_count\(2) & (\VGA_86_image|Add18~3\ $ (GND))) # (!\VGA_86_image|color_shift_count\(2) & (!\VGA_86_image|Add18~3\ & VCC))
-- \VGA_86_image|Add18~5\ = CARRY((\VGA_86_image|color_shift_count\(2) & !\VGA_86_image|Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(2),
	datad => VCC,
	cin => \VGA_86_image|Add18~3\,
	combout => \VGA_86_image|Add18~4_combout\,
	cout => \VGA_86_image|Add18~5\);

-- Location: FF_X19_Y35_N7
\VGA_86_image|color_shift_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(2));

-- Location: LCCOMB_X19_Y35_N8
\VGA_86_image|Add18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~6_combout\ = (\VGA_86_image|color_shift_count\(3) & (!\VGA_86_image|Add18~5\)) # (!\VGA_86_image|color_shift_count\(3) & ((\VGA_86_image|Add18~5\) # (GND)))
-- \VGA_86_image|Add18~7\ = CARRY((!\VGA_86_image|Add18~5\) # (!\VGA_86_image|color_shift_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(3),
	datad => VCC,
	cin => \VGA_86_image|Add18~5\,
	combout => \VGA_86_image|Add18~6_combout\,
	cout => \VGA_86_image|Add18~7\);

-- Location: FF_X19_Y35_N9
\VGA_86_image|color_shift_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(3));

-- Location: LCCOMB_X19_Y35_N10
\VGA_86_image|Add18~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~8_combout\ = (\VGA_86_image|color_shift_count\(4) & (\VGA_86_image|Add18~7\ $ (GND))) # (!\VGA_86_image|color_shift_count\(4) & (!\VGA_86_image|Add18~7\ & VCC))
-- \VGA_86_image|Add18~9\ = CARRY((\VGA_86_image|color_shift_count\(4) & !\VGA_86_image|Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(4),
	datad => VCC,
	cin => \VGA_86_image|Add18~7\,
	combout => \VGA_86_image|Add18~8_combout\,
	cout => \VGA_86_image|Add18~9\);

-- Location: FF_X19_Y35_N11
\VGA_86_image|color_shift_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(4));

-- Location: LCCOMB_X19_Y35_N12
\VGA_86_image|Add18~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~10_combout\ = (\VGA_86_image|color_shift_count\(5) & (!\VGA_86_image|Add18~9\)) # (!\VGA_86_image|color_shift_count\(5) & ((\VGA_86_image|Add18~9\) # (GND)))
-- \VGA_86_image|Add18~11\ = CARRY((!\VGA_86_image|Add18~9\) # (!\VGA_86_image|color_shift_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(5),
	datad => VCC,
	cin => \VGA_86_image|Add18~9\,
	combout => \VGA_86_image|Add18~10_combout\,
	cout => \VGA_86_image|Add18~11\);

-- Location: FF_X19_Y35_N13
\VGA_86_image|color_shift_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(5));

-- Location: LCCOMB_X19_Y35_N14
\VGA_86_image|Add18~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~12_combout\ = (\VGA_86_image|color_shift_count\(6) & (\VGA_86_image|Add18~11\ $ (GND))) # (!\VGA_86_image|color_shift_count\(6) & (!\VGA_86_image|Add18~11\ & VCC))
-- \VGA_86_image|Add18~13\ = CARRY((\VGA_86_image|color_shift_count\(6) & !\VGA_86_image|Add18~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(6),
	datad => VCC,
	cin => \VGA_86_image|Add18~11\,
	combout => \VGA_86_image|Add18~12_combout\,
	cout => \VGA_86_image|Add18~13\);

-- Location: LCCOMB_X20_Y35_N2
\VGA_86_image|color_shift_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~1_combout\ = (\VGA_86_image|Add18~12_combout\ & !\VGA_86_image|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add18~12_combout\,
	datad => \VGA_86_image|Equal3~9_combout\,
	combout => \VGA_86_image|color_shift_count~1_combout\);

-- Location: FF_X20_Y35_N3
\VGA_86_image|color_shift_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(6));

-- Location: LCCOMB_X19_Y35_N16
\VGA_86_image|Add18~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~14_combout\ = (\VGA_86_image|color_shift_count\(7) & (!\VGA_86_image|Add18~13\)) # (!\VGA_86_image|color_shift_count\(7) & ((\VGA_86_image|Add18~13\) # (GND)))
-- \VGA_86_image|Add18~15\ = CARRY((!\VGA_86_image|Add18~13\) # (!\VGA_86_image|color_shift_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(7),
	datad => VCC,
	cin => \VGA_86_image|Add18~13\,
	combout => \VGA_86_image|Add18~14_combout\,
	cout => \VGA_86_image|Add18~15\);

-- Location: FF_X19_Y35_N17
\VGA_86_image|color_shift_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(7));

-- Location: LCCOMB_X19_Y35_N18
\VGA_86_image|Add18~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~16_combout\ = (\VGA_86_image|color_shift_count\(8) & (\VGA_86_image|Add18~15\ $ (GND))) # (!\VGA_86_image|color_shift_count\(8) & (!\VGA_86_image|Add18~15\ & VCC))
-- \VGA_86_image|Add18~17\ = CARRY((\VGA_86_image|color_shift_count\(8) & !\VGA_86_image|Add18~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(8),
	datad => VCC,
	cin => \VGA_86_image|Add18~15\,
	combout => \VGA_86_image|Add18~16_combout\,
	cout => \VGA_86_image|Add18~17\);

-- Location: FF_X19_Y35_N19
\VGA_86_image|color_shift_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(8));

-- Location: LCCOMB_X19_Y35_N20
\VGA_86_image|Add18~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~18_combout\ = (\VGA_86_image|color_shift_count\(9) & (!\VGA_86_image|Add18~17\)) # (!\VGA_86_image|color_shift_count\(9) & ((\VGA_86_image|Add18~17\) # (GND)))
-- \VGA_86_image|Add18~19\ = CARRY((!\VGA_86_image|Add18~17\) # (!\VGA_86_image|color_shift_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(9),
	datad => VCC,
	cin => \VGA_86_image|Add18~17\,
	combout => \VGA_86_image|Add18~18_combout\,
	cout => \VGA_86_image|Add18~19\);

-- Location: LCCOMB_X20_Y35_N26
\VGA_86_image|color_shift_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~2_combout\ = (\VGA_86_image|Add18~18_combout\ & !\VGA_86_image|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Add18~18_combout\,
	datad => \VGA_86_image|Equal3~9_combout\,
	combout => \VGA_86_image|color_shift_count~2_combout\);

-- Location: FF_X20_Y35_N27
\VGA_86_image|color_shift_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(9));

-- Location: LCCOMB_X19_Y35_N22
\VGA_86_image|Add18~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~20_combout\ = (\VGA_86_image|color_shift_count\(10) & (\VGA_86_image|Add18~19\ $ (GND))) # (!\VGA_86_image|color_shift_count\(10) & (!\VGA_86_image|Add18~19\ & VCC))
-- \VGA_86_image|Add18~21\ = CARRY((\VGA_86_image|color_shift_count\(10) & !\VGA_86_image|Add18~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(10),
	datad => VCC,
	cin => \VGA_86_image|Add18~19\,
	combout => \VGA_86_image|Add18~20_combout\,
	cout => \VGA_86_image|Add18~21\);

-- Location: FF_X19_Y35_N23
\VGA_86_image|color_shift_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(10));

-- Location: LCCOMB_X19_Y35_N24
\VGA_86_image|Add18~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~22_combout\ = (\VGA_86_image|color_shift_count\(11) & (!\VGA_86_image|Add18~21\)) # (!\VGA_86_image|color_shift_count\(11) & ((\VGA_86_image|Add18~21\) # (GND)))
-- \VGA_86_image|Add18~23\ = CARRY((!\VGA_86_image|Add18~21\) # (!\VGA_86_image|color_shift_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(11),
	datad => VCC,
	cin => \VGA_86_image|Add18~21\,
	combout => \VGA_86_image|Add18~22_combout\,
	cout => \VGA_86_image|Add18~23\);

-- Location: FF_X19_Y35_N25
\VGA_86_image|color_shift_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(11));

-- Location: LCCOMB_X19_Y35_N26
\VGA_86_image|Add18~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~24_combout\ = (\VGA_86_image|color_shift_count\(12) & (\VGA_86_image|Add18~23\ $ (GND))) # (!\VGA_86_image|color_shift_count\(12) & (!\VGA_86_image|Add18~23\ & VCC))
-- \VGA_86_image|Add18~25\ = CARRY((\VGA_86_image|color_shift_count\(12) & !\VGA_86_image|Add18~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(12),
	datad => VCC,
	cin => \VGA_86_image|Add18~23\,
	combout => \VGA_86_image|Add18~24_combout\,
	cout => \VGA_86_image|Add18~25\);

-- Location: FF_X19_Y35_N27
\VGA_86_image|color_shift_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(12));

-- Location: LCCOMB_X19_Y35_N28
\VGA_86_image|Add18~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~26_combout\ = (\VGA_86_image|color_shift_count\(13) & (!\VGA_86_image|Add18~25\)) # (!\VGA_86_image|color_shift_count\(13) & ((\VGA_86_image|Add18~25\) # (GND)))
-- \VGA_86_image|Add18~27\ = CARRY((!\VGA_86_image|Add18~25\) # (!\VGA_86_image|color_shift_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(13),
	datad => VCC,
	cin => \VGA_86_image|Add18~25\,
	combout => \VGA_86_image|Add18~26_combout\,
	cout => \VGA_86_image|Add18~27\);

-- Location: FF_X19_Y35_N29
\VGA_86_image|color_shift_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(13));

-- Location: LCCOMB_X19_Y35_N30
\VGA_86_image|Add18~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~28_combout\ = (\VGA_86_image|color_shift_count\(14) & (\VGA_86_image|Add18~27\ $ (GND))) # (!\VGA_86_image|color_shift_count\(14) & (!\VGA_86_image|Add18~27\ & VCC))
-- \VGA_86_image|Add18~29\ = CARRY((\VGA_86_image|color_shift_count\(14) & !\VGA_86_image|Add18~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(14),
	datad => VCC,
	cin => \VGA_86_image|Add18~27\,
	combout => \VGA_86_image|Add18~28_combout\,
	cout => \VGA_86_image|Add18~29\);

-- Location: LCCOMB_X20_Y35_N0
\VGA_86_image|color_shift_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~3_combout\ = (\VGA_86_image|Add18~28_combout\ & !\VGA_86_image|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Add18~28_combout\,
	datad => \VGA_86_image|Equal3~9_combout\,
	combout => \VGA_86_image|color_shift_count~3_combout\);

-- Location: FF_X20_Y35_N1
\VGA_86_image|color_shift_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(14));

-- Location: LCCOMB_X19_Y34_N0
\VGA_86_image|Add18~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~30_combout\ = (\VGA_86_image|color_shift_count\(15) & (!\VGA_86_image|Add18~29\)) # (!\VGA_86_image|color_shift_count\(15) & ((\VGA_86_image|Add18~29\) # (GND)))
-- \VGA_86_image|Add18~31\ = CARRY((!\VGA_86_image|Add18~29\) # (!\VGA_86_image|color_shift_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(15),
	datad => VCC,
	cin => \VGA_86_image|Add18~29\,
	combout => \VGA_86_image|Add18~30_combout\,
	cout => \VGA_86_image|Add18~31\);

-- Location: FF_X19_Y34_N1
\VGA_86_image|color_shift_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(15));

-- Location: LCCOMB_X19_Y34_N2
\VGA_86_image|Add18~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~32_combout\ = (\VGA_86_image|color_shift_count\(16) & (\VGA_86_image|Add18~31\ $ (GND))) # (!\VGA_86_image|color_shift_count\(16) & (!\VGA_86_image|Add18~31\ & VCC))
-- \VGA_86_image|Add18~33\ = CARRY((\VGA_86_image|color_shift_count\(16) & !\VGA_86_image|Add18~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(16),
	datad => VCC,
	cin => \VGA_86_image|Add18~31\,
	combout => \VGA_86_image|Add18~32_combout\,
	cout => \VGA_86_image|Add18~33\);

-- Location: LCCOMB_X20_Y34_N4
\VGA_86_image|color_shift_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~4_combout\ = (\VGA_86_image|Add18~32_combout\ & !\VGA_86_image|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add18~32_combout\,
	datad => \VGA_86_image|Equal3~9_combout\,
	combout => \VGA_86_image|color_shift_count~4_combout\);

-- Location: FF_X20_Y34_N5
\VGA_86_image|color_shift_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(16));

-- Location: LCCOMB_X19_Y34_N4
\VGA_86_image|Add18~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~34_combout\ = (\VGA_86_image|color_shift_count\(17) & (!\VGA_86_image|Add18~33\)) # (!\VGA_86_image|color_shift_count\(17) & ((\VGA_86_image|Add18~33\) # (GND)))
-- \VGA_86_image|Add18~35\ = CARRY((!\VGA_86_image|Add18~33\) # (!\VGA_86_image|color_shift_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(17),
	datad => VCC,
	cin => \VGA_86_image|Add18~33\,
	combout => \VGA_86_image|Add18~34_combout\,
	cout => \VGA_86_image|Add18~35\);

-- Location: LCCOMB_X20_Y34_N2
\VGA_86_image|color_shift_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~5_combout\ = (\VGA_86_image|Add18~34_combout\ & !\VGA_86_image|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add18~34_combout\,
	datad => \VGA_86_image|Equal3~9_combout\,
	combout => \VGA_86_image|color_shift_count~5_combout\);

-- Location: FF_X20_Y34_N3
\VGA_86_image|color_shift_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(17));

-- Location: LCCOMB_X19_Y34_N6
\VGA_86_image|Add18~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~36_combout\ = (\VGA_86_image|color_shift_count\(18) & (\VGA_86_image|Add18~35\ $ (GND))) # (!\VGA_86_image|color_shift_count\(18) & (!\VGA_86_image|Add18~35\ & VCC))
-- \VGA_86_image|Add18~37\ = CARRY((\VGA_86_image|color_shift_count\(18) & !\VGA_86_image|Add18~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(18),
	datad => VCC,
	cin => \VGA_86_image|Add18~35\,
	combout => \VGA_86_image|Add18~36_combout\,
	cout => \VGA_86_image|Add18~37\);

-- Location: LCCOMB_X20_Y34_N20
\VGA_86_image|color_shift_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~6_combout\ = (\VGA_86_image|Add18~36_combout\ & !\VGA_86_image|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add18~36_combout\,
	datad => \VGA_86_image|Equal3~9_combout\,
	combout => \VGA_86_image|color_shift_count~6_combout\);

-- Location: FF_X20_Y34_N21
\VGA_86_image|color_shift_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(18));

-- Location: LCCOMB_X19_Y34_N8
\VGA_86_image|Add18~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~38_combout\ = (\VGA_86_image|color_shift_count\(19) & (!\VGA_86_image|Add18~37\)) # (!\VGA_86_image|color_shift_count\(19) & ((\VGA_86_image|Add18~37\) # (GND)))
-- \VGA_86_image|Add18~39\ = CARRY((!\VGA_86_image|Add18~37\) # (!\VGA_86_image|color_shift_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(19),
	datad => VCC,
	cin => \VGA_86_image|Add18~37\,
	combout => \VGA_86_image|Add18~38_combout\,
	cout => \VGA_86_image|Add18~39\);

-- Location: LCCOMB_X20_Y34_N10
\VGA_86_image|color_shift_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|color_shift_count~7_combout\ = (\VGA_86_image|Add18~38_combout\ & !\VGA_86_image|Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add18~38_combout\,
	datad => \VGA_86_image|Equal3~9_combout\,
	combout => \VGA_86_image|color_shift_count~7_combout\);

-- Location: FF_X20_Y34_N11
\VGA_86_image|color_shift_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|color_shift_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(19));

-- Location: LCCOMB_X19_Y34_N10
\VGA_86_image|Add18~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~40_combout\ = (\VGA_86_image|color_shift_count\(20) & (\VGA_86_image|Add18~39\ $ (GND))) # (!\VGA_86_image|color_shift_count\(20) & (!\VGA_86_image|Add18~39\ & VCC))
-- \VGA_86_image|Add18~41\ = CARRY((\VGA_86_image|color_shift_count\(20) & !\VGA_86_image|Add18~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(20),
	datad => VCC,
	cin => \VGA_86_image|Add18~39\,
	combout => \VGA_86_image|Add18~40_combout\,
	cout => \VGA_86_image|Add18~41\);

-- Location: FF_X19_Y34_N11
\VGA_86_image|color_shift_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(20));

-- Location: LCCOMB_X19_Y34_N12
\VGA_86_image|Add18~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~42_combout\ = (\VGA_86_image|color_shift_count\(21) & (!\VGA_86_image|Add18~41\)) # (!\VGA_86_image|color_shift_count\(21) & ((\VGA_86_image|Add18~41\) # (GND)))
-- \VGA_86_image|Add18~43\ = CARRY((!\VGA_86_image|Add18~41\) # (!\VGA_86_image|color_shift_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(21),
	datad => VCC,
	cin => \VGA_86_image|Add18~41\,
	combout => \VGA_86_image|Add18~42_combout\,
	cout => \VGA_86_image|Add18~43\);

-- Location: FF_X19_Y34_N13
\VGA_86_image|color_shift_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(21));

-- Location: LCCOMB_X19_Y34_N14
\VGA_86_image|Add18~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~44_combout\ = (\VGA_86_image|color_shift_count\(22) & (\VGA_86_image|Add18~43\ $ (GND))) # (!\VGA_86_image|color_shift_count\(22) & (!\VGA_86_image|Add18~43\ & VCC))
-- \VGA_86_image|Add18~45\ = CARRY((\VGA_86_image|color_shift_count\(22) & !\VGA_86_image|Add18~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(22),
	datad => VCC,
	cin => \VGA_86_image|Add18~43\,
	combout => \VGA_86_image|Add18~44_combout\,
	cout => \VGA_86_image|Add18~45\);

-- Location: FF_X19_Y34_N15
\VGA_86_image|color_shift_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(22));

-- Location: LCCOMB_X19_Y34_N16
\VGA_86_image|Add18~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~46_combout\ = (\VGA_86_image|color_shift_count\(23) & (!\VGA_86_image|Add18~45\)) # (!\VGA_86_image|color_shift_count\(23) & ((\VGA_86_image|Add18~45\) # (GND)))
-- \VGA_86_image|Add18~47\ = CARRY((!\VGA_86_image|Add18~45\) # (!\VGA_86_image|color_shift_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(23),
	datad => VCC,
	cin => \VGA_86_image|Add18~45\,
	combout => \VGA_86_image|Add18~46_combout\,
	cout => \VGA_86_image|Add18~47\);

-- Location: FF_X19_Y34_N17
\VGA_86_image|color_shift_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(23));

-- Location: LCCOMB_X20_Y34_N26
\VGA_86_image|Equal3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~6_combout\ = (!\VGA_86_image|color_shift_count\(20) & (!\VGA_86_image|color_shift_count\(21) & (!\VGA_86_image|color_shift_count\(23) & !\VGA_86_image|color_shift_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(20),
	datab => \VGA_86_image|color_shift_count\(21),
	datac => \VGA_86_image|color_shift_count\(23),
	datad => \VGA_86_image|color_shift_count\(22),
	combout => \VGA_86_image|Equal3~6_combout\);

-- Location: LCCOMB_X20_Y35_N28
\VGA_86_image|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~1_combout\ = (!\VGA_86_image|color_shift_count\(5) & (\VGA_86_image|color_shift_count\(6) & (!\VGA_86_image|color_shift_count\(7) & !\VGA_86_image|color_shift_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(5),
	datab => \VGA_86_image|color_shift_count\(6),
	datac => \VGA_86_image|color_shift_count\(7),
	datad => \VGA_86_image|color_shift_count\(4),
	combout => \VGA_86_image|Equal3~1_combout\);

-- Location: LCCOMB_X19_Y35_N0
\VGA_86_image|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~2_combout\ = (!\VGA_86_image|color_shift_count\(11) & (!\VGA_86_image|color_shift_count\(8) & (!\VGA_86_image|color_shift_count\(10) & \VGA_86_image|color_shift_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(11),
	datab => \VGA_86_image|color_shift_count\(8),
	datac => \VGA_86_image|color_shift_count\(10),
	datad => \VGA_86_image|color_shift_count\(9),
	combout => \VGA_86_image|Equal3~2_combout\);

-- Location: LCCOMB_X20_Y35_N30
\VGA_86_image|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~3_combout\ = (!\VGA_86_image|color_shift_count\(15) & (!\VGA_86_image|color_shift_count\(13) & (!\VGA_86_image|color_shift_count\(12) & \VGA_86_image|color_shift_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(15),
	datab => \VGA_86_image|color_shift_count\(13),
	datac => \VGA_86_image|color_shift_count\(12),
	datad => \VGA_86_image|color_shift_count\(14),
	combout => \VGA_86_image|Equal3~3_combout\);

-- Location: LCCOMB_X20_Y34_N28
\VGA_86_image|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~0_combout\ = (!\VGA_86_image|color_shift_count\(2) & (!\VGA_86_image|color_shift_count\(3) & (!\VGA_86_image|color_shift_count\(0) & !\VGA_86_image|color_shift_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(2),
	datab => \VGA_86_image|color_shift_count\(3),
	datac => \VGA_86_image|color_shift_count\(0),
	datad => \VGA_86_image|color_shift_count\(1),
	combout => \VGA_86_image|Equal3~0_combout\);

-- Location: LCCOMB_X20_Y34_N18
\VGA_86_image|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~4_combout\ = (\VGA_86_image|Equal3~1_combout\ & (\VGA_86_image|Equal3~2_combout\ & (\VGA_86_image|Equal3~3_combout\ & \VGA_86_image|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal3~1_combout\,
	datab => \VGA_86_image|Equal3~2_combout\,
	datac => \VGA_86_image|Equal3~3_combout\,
	datad => \VGA_86_image|Equal3~0_combout\,
	combout => \VGA_86_image|Equal3~4_combout\);

-- Location: LCCOMB_X19_Y34_N18
\VGA_86_image|Add18~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~48_combout\ = (\VGA_86_image|color_shift_count\(24) & (\VGA_86_image|Add18~47\ $ (GND))) # (!\VGA_86_image|color_shift_count\(24) & (!\VGA_86_image|Add18~47\ & VCC))
-- \VGA_86_image|Add18~49\ = CARRY((\VGA_86_image|color_shift_count\(24) & !\VGA_86_image|Add18~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(24),
	datad => VCC,
	cin => \VGA_86_image|Add18~47\,
	combout => \VGA_86_image|Add18~48_combout\,
	cout => \VGA_86_image|Add18~49\);

-- Location: FF_X19_Y34_N19
\VGA_86_image|color_shift_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(24));

-- Location: LCCOMB_X19_Y34_N20
\VGA_86_image|Add18~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~50_combout\ = (\VGA_86_image|color_shift_count\(25) & (!\VGA_86_image|Add18~49\)) # (!\VGA_86_image|color_shift_count\(25) & ((\VGA_86_image|Add18~49\) # (GND)))
-- \VGA_86_image|Add18~51\ = CARRY((!\VGA_86_image|Add18~49\) # (!\VGA_86_image|color_shift_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(25),
	datad => VCC,
	cin => \VGA_86_image|Add18~49\,
	combout => \VGA_86_image|Add18~50_combout\,
	cout => \VGA_86_image|Add18~51\);

-- Location: FF_X19_Y34_N21
\VGA_86_image|color_shift_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(25));

-- Location: LCCOMB_X19_Y34_N22
\VGA_86_image|Add18~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~52_combout\ = (\VGA_86_image|color_shift_count\(26) & (\VGA_86_image|Add18~51\ $ (GND))) # (!\VGA_86_image|color_shift_count\(26) & (!\VGA_86_image|Add18~51\ & VCC))
-- \VGA_86_image|Add18~53\ = CARRY((\VGA_86_image|color_shift_count\(26) & !\VGA_86_image|Add18~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(26),
	datad => VCC,
	cin => \VGA_86_image|Add18~51\,
	combout => \VGA_86_image|Add18~52_combout\,
	cout => \VGA_86_image|Add18~53\);

-- Location: FF_X19_Y34_N23
\VGA_86_image|color_shift_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(26));

-- Location: LCCOMB_X19_Y34_N24
\VGA_86_image|Add18~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~54_combout\ = (\VGA_86_image|color_shift_count\(27) & (!\VGA_86_image|Add18~53\)) # (!\VGA_86_image|color_shift_count\(27) & ((\VGA_86_image|Add18~53\) # (GND)))
-- \VGA_86_image|Add18~55\ = CARRY((!\VGA_86_image|Add18~53\) # (!\VGA_86_image|color_shift_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(27),
	datad => VCC,
	cin => \VGA_86_image|Add18~53\,
	combout => \VGA_86_image|Add18~54_combout\,
	cout => \VGA_86_image|Add18~55\);

-- Location: FF_X19_Y34_N25
\VGA_86_image|color_shift_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(27));

-- Location: LCCOMB_X19_Y34_N26
\VGA_86_image|Add18~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~56_combout\ = (\VGA_86_image|color_shift_count\(28) & (\VGA_86_image|Add18~55\ $ (GND))) # (!\VGA_86_image|color_shift_count\(28) & (!\VGA_86_image|Add18~55\ & VCC))
-- \VGA_86_image|Add18~57\ = CARRY((\VGA_86_image|color_shift_count\(28) & !\VGA_86_image|Add18~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(28),
	datad => VCC,
	cin => \VGA_86_image|Add18~55\,
	combout => \VGA_86_image|Add18~56_combout\,
	cout => \VGA_86_image|Add18~57\);

-- Location: FF_X19_Y34_N27
\VGA_86_image|color_shift_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(28));

-- Location: LCCOMB_X19_Y34_N28
\VGA_86_image|Add18~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~58_combout\ = (\VGA_86_image|color_shift_count\(29) & (!\VGA_86_image|Add18~57\)) # (!\VGA_86_image|color_shift_count\(29) & ((\VGA_86_image|Add18~57\) # (GND)))
-- \VGA_86_image|Add18~59\ = CARRY((!\VGA_86_image|Add18~57\) # (!\VGA_86_image|color_shift_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|color_shift_count\(29),
	datad => VCC,
	cin => \VGA_86_image|Add18~57\,
	combout => \VGA_86_image|Add18~58_combout\,
	cout => \VGA_86_image|Add18~59\);

-- Location: FF_X19_Y34_N29
\VGA_86_image|color_shift_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(29));

-- Location: LCCOMB_X19_Y34_N30
\VGA_86_image|Add18~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add18~60_combout\ = \VGA_86_image|color_shift_count\(30) $ (!\VGA_86_image|Add18~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(30),
	cin => \VGA_86_image|Add18~59\,
	combout => \VGA_86_image|Add18~60_combout\);

-- Location: FF_X19_Y34_N31
\VGA_86_image|color_shift_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add18~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|color_shift_count\(30));

-- Location: LCCOMB_X20_Y34_N24
\VGA_86_image|Equal3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~7_combout\ = (!\VGA_86_image|color_shift_count\(25) & (!\VGA_86_image|color_shift_count\(24) & (!\VGA_86_image|color_shift_count\(27) & !\VGA_86_image|color_shift_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(25),
	datab => \VGA_86_image|color_shift_count\(24),
	datac => \VGA_86_image|color_shift_count\(27),
	datad => \VGA_86_image|color_shift_count\(26),
	combout => \VGA_86_image|Equal3~7_combout\);

-- Location: LCCOMB_X20_Y34_N22
\VGA_86_image|Equal3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~8_combout\ = (!\VGA_86_image|color_shift_count\(29) & (!\VGA_86_image|color_shift_count\(30) & (!\VGA_86_image|color_shift_count\(28) & \VGA_86_image|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(29),
	datab => \VGA_86_image|color_shift_count\(30),
	datac => \VGA_86_image|color_shift_count\(28),
	datad => \VGA_86_image|Equal3~7_combout\,
	combout => \VGA_86_image|Equal3~8_combout\);

-- Location: LCCOMB_X20_Y34_N12
\VGA_86_image|Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~5_combout\ = (\VGA_86_image|color_shift_count\(19) & (\VGA_86_image|color_shift_count\(18) & (\VGA_86_image|color_shift_count\(16) & \VGA_86_image|color_shift_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|color_shift_count\(19),
	datab => \VGA_86_image|color_shift_count\(18),
	datac => \VGA_86_image|color_shift_count\(16),
	datad => \VGA_86_image|color_shift_count\(17),
	combout => \VGA_86_image|Equal3~5_combout\);

-- Location: LCCOMB_X20_Y34_N0
\VGA_86_image|Equal3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal3~9_combout\ = (\VGA_86_image|Equal3~6_combout\ & (\VGA_86_image|Equal3~4_combout\ & (\VGA_86_image|Equal3~8_combout\ & \VGA_86_image|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal3~6_combout\,
	datab => \VGA_86_image|Equal3~4_combout\,
	datac => \VGA_86_image|Equal3~8_combout\,
	datad => \VGA_86_image|Equal3~5_combout\,
	combout => \VGA_86_image|Equal3~9_combout\);

-- Location: FF_X17_Y31_N1
\VGA_86_image|rgb_sky[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_sky[0]~9_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(0));

-- Location: LCCOMB_X17_Y31_N10
\VGA_86_image|Add19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~0_combout\ = (\VGA_86_image|rgb_sky\(1) & (\VGA_86_image|rgb_sky\(0) $ (VCC))) # (!\VGA_86_image|rgb_sky\(1) & (\VGA_86_image|rgb_sky\(0) & VCC))
-- \VGA_86_image|Add19~1\ = CARRY((\VGA_86_image|rgb_sky\(1) & \VGA_86_image|rgb_sky\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_sky\(1),
	datab => \VGA_86_image|rgb_sky\(0),
	datad => VCC,
	combout => \VGA_86_image|Add19~0_combout\,
	cout => \VGA_86_image|Add19~1\);

-- Location: FF_X17_Y31_N11
\VGA_86_image|rgb_sky[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~0_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(1));

-- Location: LCCOMB_X17_Y31_N12
\VGA_86_image|Add19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~2_combout\ = (\VGA_86_image|rgb_sky\(2) & (!\VGA_86_image|Add19~1\)) # (!\VGA_86_image|rgb_sky\(2) & ((\VGA_86_image|Add19~1\) # (GND)))
-- \VGA_86_image|Add19~3\ = CARRY((!\VGA_86_image|Add19~1\) # (!\VGA_86_image|rgb_sky\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_sky\(2),
	datad => VCC,
	cin => \VGA_86_image|Add19~1\,
	combout => \VGA_86_image|Add19~2_combout\,
	cout => \VGA_86_image|Add19~3\);

-- Location: FF_X17_Y31_N13
\VGA_86_image|rgb_sky[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~2_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(2));

-- Location: LCCOMB_X17_Y31_N14
\VGA_86_image|Add19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~4_combout\ = (\VGA_86_image|rgb_sky\(3) & (\VGA_86_image|Add19~3\ $ (GND))) # (!\VGA_86_image|rgb_sky\(3) & (!\VGA_86_image|Add19~3\ & VCC))
-- \VGA_86_image|Add19~5\ = CARRY((\VGA_86_image|rgb_sky\(3) & !\VGA_86_image|Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(3),
	datad => VCC,
	cin => \VGA_86_image|Add19~3\,
	combout => \VGA_86_image|Add19~4_combout\,
	cout => \VGA_86_image|Add19~5\);

-- Location: FF_X17_Y31_N15
\VGA_86_image|rgb_sky[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~4_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(3));

-- Location: LCCOMB_X17_Y31_N16
\VGA_86_image|Add19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~6_combout\ = (\VGA_86_image|rgb_sky\(4) & ((\VGA_86_image|Add19~5\) # (GND))) # (!\VGA_86_image|rgb_sky\(4) & (!\VGA_86_image|Add19~5\))
-- \VGA_86_image|Add19~7\ = CARRY((\VGA_86_image|rgb_sky\(4)) # (!\VGA_86_image|Add19~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(4),
	datad => VCC,
	cin => \VGA_86_image|Add19~5\,
	combout => \VGA_86_image|Add19~6_combout\,
	cout => \VGA_86_image|Add19~7\);

-- Location: LCCOMB_X17_Y31_N4
\VGA_86_image|rgb_sky[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_sky[4]~5_combout\ = !\VGA_86_image|Add19~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|Add19~6_combout\,
	combout => \VGA_86_image|rgb_sky[4]~5_combout\);

-- Location: FF_X17_Y31_N5
\VGA_86_image|rgb_sky[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_sky[4]~5_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(4));

-- Location: LCCOMB_X17_Y31_N18
\VGA_86_image|Add19~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~8_combout\ = (\VGA_86_image|rgb_sky\(5) & (!\VGA_86_image|Add19~7\ & VCC)) # (!\VGA_86_image|rgb_sky\(5) & (\VGA_86_image|Add19~7\ $ (GND)))
-- \VGA_86_image|Add19~9\ = CARRY((!\VGA_86_image|rgb_sky\(5) & !\VGA_86_image|Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(5),
	datad => VCC,
	cin => \VGA_86_image|Add19~7\,
	combout => \VGA_86_image|Add19~8_combout\,
	cout => \VGA_86_image|Add19~9\);

-- Location: LCCOMB_X17_Y31_N2
\VGA_86_image|rgb_sky[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_sky[5]~6_combout\ = !\VGA_86_image|Add19~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|Add19~8_combout\,
	combout => \VGA_86_image|rgb_sky[5]~6_combout\);

-- Location: FF_X17_Y31_N3
\VGA_86_image|rgb_sky[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_sky[5]~6_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(5));

-- Location: LCCOMB_X17_Y31_N20
\VGA_86_image|Add19~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~10_combout\ = (\VGA_86_image|rgb_sky\(6) & ((\VGA_86_image|Add19~9\) # (GND))) # (!\VGA_86_image|rgb_sky\(6) & (!\VGA_86_image|Add19~9\))
-- \VGA_86_image|Add19~11\ = CARRY((\VGA_86_image|rgb_sky\(6)) # (!\VGA_86_image|Add19~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(6),
	datad => VCC,
	cin => \VGA_86_image|Add19~9\,
	combout => \VGA_86_image|Add19~10_combout\,
	cout => \VGA_86_image|Add19~11\);

-- Location: LCCOMB_X17_Y31_N8
\VGA_86_image|rgb_sky[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_sky[6]~7_combout\ = !\VGA_86_image|Add19~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|Add19~10_combout\,
	combout => \VGA_86_image|rgb_sky[6]~7_combout\);

-- Location: FF_X17_Y31_N9
\VGA_86_image|rgb_sky[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_sky[6]~7_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(6));

-- Location: LCCOMB_X17_Y31_N22
\VGA_86_image|Add19~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~12_combout\ = (\VGA_86_image|rgb_sky\(7) & (!\VGA_86_image|Add19~11\ & VCC)) # (!\VGA_86_image|rgb_sky\(7) & (\VGA_86_image|Add19~11\ $ (GND)))
-- \VGA_86_image|Add19~13\ = CARRY((!\VGA_86_image|rgb_sky\(7) & !\VGA_86_image|Add19~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_sky\(7),
	datad => VCC,
	cin => \VGA_86_image|Add19~11\,
	combout => \VGA_86_image|Add19~12_combout\,
	cout => \VGA_86_image|Add19~13\);

-- Location: LCCOMB_X17_Y31_N6
\VGA_86_image|rgb_sky[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_sky[7]~8_combout\ = !\VGA_86_image|Add19~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add19~12_combout\,
	combout => \VGA_86_image|rgb_sky[7]~8_combout\);

-- Location: FF_X17_Y31_N7
\VGA_86_image|rgb_sky[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_sky[7]~8_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(7));

-- Location: LCCOMB_X17_Y31_N24
\VGA_86_image|Add19~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~14_combout\ = (\VGA_86_image|rgb_sky\(8) & (!\VGA_86_image|Add19~13\)) # (!\VGA_86_image|rgb_sky\(8) & ((\VGA_86_image|Add19~13\) # (GND)))
-- \VGA_86_image|Add19~15\ = CARRY((!\VGA_86_image|Add19~13\) # (!\VGA_86_image|rgb_sky\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(8),
	datad => VCC,
	cin => \VGA_86_image|Add19~13\,
	combout => \VGA_86_image|Add19~14_combout\,
	cout => \VGA_86_image|Add19~15\);

-- Location: FF_X17_Y31_N25
\VGA_86_image|rgb_sky[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~14_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(8));

-- Location: LCCOMB_X17_Y31_N26
\VGA_86_image|Add19~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~16_combout\ = (\VGA_86_image|rgb_sky\(9) & (\VGA_86_image|Add19~15\ $ (GND))) # (!\VGA_86_image|rgb_sky\(9) & (!\VGA_86_image|Add19~15\ & VCC))
-- \VGA_86_image|Add19~17\ = CARRY((\VGA_86_image|rgb_sky\(9) & !\VGA_86_image|Add19~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_sky\(9),
	datad => VCC,
	cin => \VGA_86_image|Add19~15\,
	combout => \VGA_86_image|Add19~16_combout\,
	cout => \VGA_86_image|Add19~17\);

-- Location: FF_X17_Y31_N27
\VGA_86_image|rgb_sky[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~16_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(9));

-- Location: LCCOMB_X17_Y31_N28
\VGA_86_image|Add19~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~18_combout\ = (\VGA_86_image|rgb_sky\(10) & (!\VGA_86_image|Add19~17\)) # (!\VGA_86_image|rgb_sky\(10) & ((\VGA_86_image|Add19~17\) # (GND)))
-- \VGA_86_image|Add19~19\ = CARRY((!\VGA_86_image|Add19~17\) # (!\VGA_86_image|rgb_sky\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(10),
	datad => VCC,
	cin => \VGA_86_image|Add19~17\,
	combout => \VGA_86_image|Add19~18_combout\,
	cout => \VGA_86_image|Add19~19\);

-- Location: FF_X17_Y31_N29
\VGA_86_image|rgb_sky[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~18_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(10));

-- Location: LCCOMB_X17_Y31_N30
\VGA_86_image|Add19~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~20_combout\ = (\VGA_86_image|rgb_sky\(11) & (\VGA_86_image|Add19~19\ $ (GND))) # (!\VGA_86_image|rgb_sky\(11) & (!\VGA_86_image|Add19~19\ & VCC))
-- \VGA_86_image|Add19~21\ = CARRY((\VGA_86_image|rgb_sky\(11) & !\VGA_86_image|Add19~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_sky\(11),
	datad => VCC,
	cin => \VGA_86_image|Add19~19\,
	combout => \VGA_86_image|Add19~20_combout\,
	cout => \VGA_86_image|Add19~21\);

-- Location: FF_X17_Y31_N31
\VGA_86_image|rgb_sky[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~20_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(11));

-- Location: LCCOMB_X17_Y30_N0
\VGA_86_image|Add19~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~22_combout\ = (\VGA_86_image|rgb_sky\(12) & ((\VGA_86_image|Add19~21\) # (GND))) # (!\VGA_86_image|rgb_sky\(12) & (!\VGA_86_image|Add19~21\))
-- \VGA_86_image|Add19~23\ = CARRY((\VGA_86_image|rgb_sky\(12)) # (!\VGA_86_image|Add19~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(12),
	datad => VCC,
	cin => \VGA_86_image|Add19~21\,
	combout => \VGA_86_image|Add19~22_combout\,
	cout => \VGA_86_image|Add19~23\);

-- Location: LCCOMB_X18_Y30_N8
\VGA_86_image|rgb_sky[12]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_sky[12]~2_combout\ = !\VGA_86_image|Add19~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add19~22_combout\,
	combout => \VGA_86_image|rgb_sky[12]~2_combout\);

-- Location: FF_X18_Y30_N9
\VGA_86_image|rgb_sky[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_sky[12]~2_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(12));

-- Location: LCCOMB_X17_Y30_N2
\VGA_86_image|Add19~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~24_combout\ = (\VGA_86_image|rgb_sky\(13) & (\VGA_86_image|Add19~23\ $ (GND))) # (!\VGA_86_image|rgb_sky\(13) & (!\VGA_86_image|Add19~23\ & VCC))
-- \VGA_86_image|Add19~25\ = CARRY((\VGA_86_image|rgb_sky\(13) & !\VGA_86_image|Add19~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(13),
	datad => VCC,
	cin => \VGA_86_image|Add19~23\,
	combout => \VGA_86_image|Add19~24_combout\,
	cout => \VGA_86_image|Add19~25\);

-- Location: FF_X17_Y30_N3
\VGA_86_image|rgb_sky[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~24_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(13));

-- Location: LCCOMB_X17_Y30_N4
\VGA_86_image|Add19~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~26_combout\ = (\VGA_86_image|rgb_sky\(14) & ((\VGA_86_image|Add19~25\) # (GND))) # (!\VGA_86_image|rgb_sky\(14) & (!\VGA_86_image|Add19~25\))
-- \VGA_86_image|Add19~27\ = CARRY((\VGA_86_image|rgb_sky\(14)) # (!\VGA_86_image|Add19~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(14),
	datad => VCC,
	cin => \VGA_86_image|Add19~25\,
	combout => \VGA_86_image|Add19~26_combout\,
	cout => \VGA_86_image|Add19~27\);

-- Location: LCCOMB_X17_Y30_N24
\VGA_86_image|rgb_sky[14]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_sky[14]~3_combout\ = !\VGA_86_image|Add19~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add19~26_combout\,
	combout => \VGA_86_image|rgb_sky[14]~3_combout\);

-- Location: FF_X17_Y30_N25
\VGA_86_image|rgb_sky[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_sky[14]~3_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(14));

-- Location: LCCOMB_X17_Y30_N6
\VGA_86_image|Add19~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~28_combout\ = (\VGA_86_image|rgb_sky\(15) & (!\VGA_86_image|Add19~27\ & VCC)) # (!\VGA_86_image|rgb_sky\(15) & (\VGA_86_image|Add19~27\ $ (GND)))
-- \VGA_86_image|Add19~29\ = CARRY((!\VGA_86_image|rgb_sky\(15) & !\VGA_86_image|Add19~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_sky\(15),
	datad => VCC,
	cin => \VGA_86_image|Add19~27\,
	combout => \VGA_86_image|Add19~28_combout\,
	cout => \VGA_86_image|Add19~29\);

-- Location: LCCOMB_X17_Y30_N26
\VGA_86_image|rgb_sky[15]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_sky[15]~4_combout\ = !\VGA_86_image|Add19~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|Add19~28_combout\,
	combout => \VGA_86_image|rgb_sky[15]~4_combout\);

-- Location: FF_X17_Y30_N27
\VGA_86_image|rgb_sky[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_sky[15]~4_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(15));

-- Location: LCCOMB_X17_Y30_N8
\VGA_86_image|Add19~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~30_combout\ = (\VGA_86_image|rgb_sky\(16) & (!\VGA_86_image|Add19~29\)) # (!\VGA_86_image|rgb_sky\(16) & ((\VGA_86_image|Add19~29\) # (GND)))
-- \VGA_86_image|Add19~31\ = CARRY((!\VGA_86_image|Add19~29\) # (!\VGA_86_image|rgb_sky\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(16),
	datad => VCC,
	cin => \VGA_86_image|Add19~29\,
	combout => \VGA_86_image|Add19~30_combout\,
	cout => \VGA_86_image|Add19~31\);

-- Location: FF_X17_Y30_N9
\VGA_86_image|rgb_sky[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~30_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(16));

-- Location: LCCOMB_X17_Y30_N10
\VGA_86_image|Add19~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~32_combout\ = (\VGA_86_image|rgb_sky\(17) & (\VGA_86_image|Add19~31\ $ (GND))) # (!\VGA_86_image|rgb_sky\(17) & (!\VGA_86_image|Add19~31\ & VCC))
-- \VGA_86_image|Add19~33\ = CARRY((\VGA_86_image|rgb_sky\(17) & !\VGA_86_image|Add19~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_sky\(17),
	datad => VCC,
	cin => \VGA_86_image|Add19~31\,
	combout => \VGA_86_image|Add19~32_combout\,
	cout => \VGA_86_image|Add19~33\);

-- Location: FF_X17_Y30_N11
\VGA_86_image|rgb_sky[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~32_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(17));

-- Location: LCCOMB_X17_Y30_N12
\VGA_86_image|Add19~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~34_combout\ = (\VGA_86_image|rgb_sky\(18) & (!\VGA_86_image|Add19~33\)) # (!\VGA_86_image|rgb_sky\(18) & ((\VGA_86_image|Add19~33\) # (GND)))
-- \VGA_86_image|Add19~35\ = CARRY((!\VGA_86_image|Add19~33\) # (!\VGA_86_image|rgb_sky\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_sky\(18),
	datad => VCC,
	cin => \VGA_86_image|Add19~33\,
	combout => \VGA_86_image|Add19~34_combout\,
	cout => \VGA_86_image|Add19~35\);

-- Location: FF_X17_Y30_N13
\VGA_86_image|rgb_sky[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~34_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(18));

-- Location: LCCOMB_X17_Y30_N14
\VGA_86_image|Add19~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~36_combout\ = (\VGA_86_image|rgb_sky\(19) & (\VGA_86_image|Add19~35\ $ (GND))) # (!\VGA_86_image|rgb_sky\(19) & (!\VGA_86_image|Add19~35\ & VCC))
-- \VGA_86_image|Add19~37\ = CARRY((\VGA_86_image|rgb_sky\(19) & !\VGA_86_image|Add19~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(19),
	datad => VCC,
	cin => \VGA_86_image|Add19~35\,
	combout => \VGA_86_image|Add19~36_combout\,
	cout => \VGA_86_image|Add19~37\);

-- Location: FF_X17_Y30_N15
\VGA_86_image|rgb_sky[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~36_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(19));

-- Location: LCCOMB_X17_Y30_N16
\VGA_86_image|Add19~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~38_combout\ = (\VGA_86_image|rgb_sky\(20) & (!\VGA_86_image|Add19~37\)) # (!\VGA_86_image|rgb_sky\(20) & ((\VGA_86_image|Add19~37\) # (GND)))
-- \VGA_86_image|Add19~39\ = CARRY((!\VGA_86_image|Add19~37\) # (!\VGA_86_image|rgb_sky\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(20),
	datad => VCC,
	cin => \VGA_86_image|Add19~37\,
	combout => \VGA_86_image|Add19~38_combout\,
	cout => \VGA_86_image|Add19~39\);

-- Location: FF_X17_Y30_N17
\VGA_86_image|rgb_sky[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~38_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(20));

-- Location: LCCOMB_X43_Y37_N6
\VGA_86_image|Add12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add12~1_cout\ = CARRY(\VGA_86_image|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(2),
	datad => VCC,
	cout => \VGA_86_image|Add12~1_cout\);

-- Location: LCCOMB_X43_Y37_N8
\VGA_86_image|Add12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add12~2_combout\ = (\VGA_86_image|v_count\(3) & (\VGA_86_image|Add12~1_cout\ & VCC)) # (!\VGA_86_image|v_count\(3) & (!\VGA_86_image|Add12~1_cout\))
-- \VGA_86_image|Add12~3\ = CARRY((!\VGA_86_image|v_count\(3) & !\VGA_86_image|Add12~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(3),
	datad => VCC,
	cin => \VGA_86_image|Add12~1_cout\,
	combout => \VGA_86_image|Add12~2_combout\,
	cout => \VGA_86_image|Add12~3\);

-- Location: LCCOMB_X43_Y37_N10
\VGA_86_image|Add12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add12~4_combout\ = (\VGA_86_image|v_count\(4) & ((GND) # (!\VGA_86_image|Add12~3\))) # (!\VGA_86_image|v_count\(4) & (\VGA_86_image|Add12~3\ $ (GND)))
-- \VGA_86_image|Add12~5\ = CARRY((\VGA_86_image|v_count\(4)) # (!\VGA_86_image|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(4),
	datad => VCC,
	cin => \VGA_86_image|Add12~3\,
	combout => \VGA_86_image|Add12~4_combout\,
	cout => \VGA_86_image|Add12~5\);

-- Location: LCCOMB_X43_Y37_N12
\VGA_86_image|Add12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add12~6_combout\ = (\VGA_86_image|v_count\(5) & (!\VGA_86_image|Add12~5\)) # (!\VGA_86_image|v_count\(5) & ((\VGA_86_image|Add12~5\) # (GND)))
-- \VGA_86_image|Add12~7\ = CARRY((!\VGA_86_image|Add12~5\) # (!\VGA_86_image|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(5),
	datad => VCC,
	cin => \VGA_86_image|Add12~5\,
	combout => \VGA_86_image|Add12~6_combout\,
	cout => \VGA_86_image|Add12~7\);

-- Location: LCCOMB_X43_Y37_N14
\VGA_86_image|Add12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add12~8_combout\ = (\VGA_86_image|v_count\(6) & ((GND) # (!\VGA_86_image|Add12~7\))) # (!\VGA_86_image|v_count\(6) & (\VGA_86_image|Add12~7\ $ (GND)))
-- \VGA_86_image|Add12~9\ = CARRY((\VGA_86_image|v_count\(6)) # (!\VGA_86_image|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(6),
	datad => VCC,
	cin => \VGA_86_image|Add12~7\,
	combout => \VGA_86_image|Add12~8_combout\,
	cout => \VGA_86_image|Add12~9\);

-- Location: LCCOMB_X43_Y37_N16
\VGA_86_image|Add12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add12~10_combout\ = (\VGA_86_image|v_count\(7) & (\VGA_86_image|Add12~9\ & VCC)) # (!\VGA_86_image|v_count\(7) & (!\VGA_86_image|Add12~9\))
-- \VGA_86_image|Add12~11\ = CARRY((!\VGA_86_image|v_count\(7) & !\VGA_86_image|Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(7),
	datad => VCC,
	cin => \VGA_86_image|Add12~9\,
	combout => \VGA_86_image|Add12~10_combout\,
	cout => \VGA_86_image|Add12~11\);

-- Location: LCCOMB_X43_Y37_N18
\VGA_86_image|Add12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add12~12_combout\ = (\VGA_86_image|v_count\(8) & ((GND) # (!\VGA_86_image|Add12~11\))) # (!\VGA_86_image|v_count\(8) & (\VGA_86_image|Add12~11\ $ (GND)))
-- \VGA_86_image|Add12~13\ = CARRY((\VGA_86_image|v_count\(8)) # (!\VGA_86_image|Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(8),
	datad => VCC,
	cin => \VGA_86_image|Add12~11\,
	combout => \VGA_86_image|Add12~12_combout\,
	cout => \VGA_86_image|Add12~13\);

-- Location: LCCOMB_X43_Y37_N20
\VGA_86_image|Add12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add12~14_combout\ = (\VGA_86_image|v_count\(9) & (\VGA_86_image|Add12~13\ & VCC)) # (!\VGA_86_image|v_count\(9) & (!\VGA_86_image|Add12~13\))
-- \VGA_86_image|Add12~15\ = CARRY((!\VGA_86_image|v_count\(9) & !\VGA_86_image|Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(9),
	datad => VCC,
	cin => \VGA_86_image|Add12~13\,
	combout => \VGA_86_image|Add12~14_combout\,
	cout => \VGA_86_image|Add12~15\);

-- Location: LCCOMB_X43_Y37_N28
\VGA_86_image|v_pos_1[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_pos_1[9]~0_combout\ = !\VGA_86_image|Add12~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|Add12~14_combout\,
	combout => \VGA_86_image|v_pos_1[9]~0_combout\);

-- Location: FF_X43_Y37_N29
\VGA_86_image|v_pos_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_pos_1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_pos_1\(9));

-- Location: LCCOMB_X43_Y37_N22
\VGA_86_image|Add12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add12~16_combout\ = \VGA_86_image|Add12~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VGA_86_image|Add12~15\,
	combout => \VGA_86_image|Add12~16_combout\);

-- Location: LCCOMB_X43_Y37_N30
\VGA_86_image|v_pos_1[10]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_pos_1[10]~3_combout\ = !\VGA_86_image|Add12~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add12~16_combout\,
	combout => \VGA_86_image|v_pos_1[10]~3_combout\);

-- Location: FF_X43_Y37_N31
\VGA_86_image|v_pos_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_pos_1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_pos_1\(10));

-- Location: LCCOMB_X43_Y37_N26
\VGA_86_image|v_pos_1[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_pos_1[8]~1_combout\ = !\VGA_86_image|Add12~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|Add12~12_combout\,
	combout => \VGA_86_image|v_pos_1[8]~1_combout\);

-- Location: FF_X43_Y37_N27
\VGA_86_image|v_pos_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_pos_1[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_pos_1\(8));

-- Location: LCCOMB_X43_Y37_N0
\VGA_86_image|v_pos_1[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_pos_1[5]~2_combout\ = !\VGA_86_image|Add12~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|Add12~6_combout\,
	combout => \VGA_86_image|v_pos_1[5]~2_combout\);

-- Location: FF_X43_Y37_N1
\VGA_86_image|v_pos_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_pos_1[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_pos_1\(5));

-- Location: FF_X43_Y37_N15
\VGA_86_image|v_pos_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add12~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_pos_1\(6));

-- Location: FF_X43_Y37_N17
\VGA_86_image|v_pos_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add12~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_pos_1\(7));

-- Location: LCCOMB_X43_Y37_N24
\VGA_86_image|LessThan15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan15~0_combout\ = (\VGA_86_image|v_pos_1\(8) & (((\VGA_86_image|v_pos_1\(5) & !\VGA_86_image|v_pos_1\(6))) # (!\VGA_86_image|v_pos_1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_pos_1\(8),
	datab => \VGA_86_image|v_pos_1\(5),
	datac => \VGA_86_image|v_pos_1\(6),
	datad => \VGA_86_image|v_pos_1\(7),
	combout => \VGA_86_image|LessThan15~0_combout\);

-- Location: LCCOMB_X42_Y37_N24
\VGA_86_image|LessThan15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan15~1_combout\ = ((\VGA_86_image|v_pos_1\(9) & \VGA_86_image|LessThan15~0_combout\)) # (!\VGA_86_image|v_pos_1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_pos_1\(9),
	datac => \VGA_86_image|v_pos_1\(10),
	datad => \VGA_86_image|LessThan15~0_combout\,
	combout => \VGA_86_image|LessThan15~1_combout\);

-- Location: LCCOMB_X46_Y40_N26
\VGA_86_image|v_pos_1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_pos_1[0]~feeder_combout\ = \VGA_86_image|v_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|v_count\(0),
	combout => \VGA_86_image|v_pos_1[0]~feeder_combout\);

-- Location: FF_X46_Y40_N27
\VGA_86_image|v_pos_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_pos_1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_pos_1\(0));

-- Location: LCCOMB_X46_Y40_N0
\VGA_86_image|v_factor_a[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[0]~9_combout\ = \VGA_86_image|v_pos_1\(0) $ (GND)
-- \VGA_86_image|v_factor_a[0]~10\ = CARRY(!\VGA_86_image|v_pos_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_pos_1\(0),
	datad => VCC,
	combout => \VGA_86_image|v_factor_a[0]~9_combout\,
	cout => \VGA_86_image|v_factor_a[0]~10\);

-- Location: LCCOMB_X43_Y37_N4
\VGA_86_image|v_factor_a~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a~11_combout\ = (\VGA_86_image|v_pos_1\(8) & (\VGA_86_image|v_pos_1\(7) & ((\VGA_86_image|v_pos_1\(6)) # (!\VGA_86_image|v_pos_1\(5))))) # (!\VGA_86_image|v_pos_1\(8) & ((\VGA_86_image|v_pos_1\(5)) # ((!\VGA_86_image|v_pos_1\(7)) # 
-- (!\VGA_86_image|v_pos_1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_pos_1\(8),
	datab => \VGA_86_image|v_pos_1\(5),
	datac => \VGA_86_image|v_pos_1\(6),
	datad => \VGA_86_image|v_pos_1\(7),
	combout => \VGA_86_image|v_factor_a~11_combout\);

-- Location: LCCOMB_X43_Y37_N2
\VGA_86_image|v_factor_a~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a~12_combout\ = ((!\VGA_86_image|v_pos_1\(9)) # (!\VGA_86_image|v_factor_a~11_combout\)) # (!\VGA_86_image|v_pos_1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_pos_1\(10),
	datac => \VGA_86_image|v_factor_a~11_combout\,
	datad => \VGA_86_image|v_pos_1\(9),
	combout => \VGA_86_image|v_factor_a~12_combout\);

-- Location: LCCOMB_X47_Y40_N12
\VGA_86_image|v_factor_a[0]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[0]~SCLR_LUT_combout\ = (\VGA_86_image|v_factor_a[0]~9_combout\ & !\VGA_86_image|v_factor_a~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|v_factor_a[0]~9_combout\,
	datad => \VGA_86_image|v_factor_a~12_combout\,
	combout => \VGA_86_image|v_factor_a[0]~SCLR_LUT_combout\);

-- Location: FF_X46_Y40_N11
\VGA_86_image|v_pos_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	asdata => \VGA_86_image|v_count\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_pos_1\(1));

-- Location: LCCOMB_X46_Y40_N2
\VGA_86_image|v_factor_a[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[1]~13_combout\ = (\VGA_86_image|v_pos_1\(1) & ((\VGA_86_image|v_factor_a[0]~10\) # (GND))) # (!\VGA_86_image|v_pos_1\(1) & (!\VGA_86_image|v_factor_a[0]~10\))
-- \VGA_86_image|v_factor_a[1]~14\ = CARRY((\VGA_86_image|v_pos_1\(1)) # (!\VGA_86_image|v_factor_a[0]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_pos_1\(1),
	datad => VCC,
	cin => \VGA_86_image|v_factor_a[0]~10\,
	combout => \VGA_86_image|v_factor_a[1]~13_combout\,
	cout => \VGA_86_image|v_factor_a[1]~14\);

-- Location: LCCOMB_X47_Y40_N14
\VGA_86_image|v_factor_a[1]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[1]~SCLR_LUT_combout\ = (!\VGA_86_image|v_factor_a~12_combout\ & \VGA_86_image|v_factor_a[1]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_factor_a~12_combout\,
	datad => \VGA_86_image|v_factor_a[1]~13_combout\,
	combout => \VGA_86_image|v_factor_a[1]~SCLR_LUT_combout\);

-- Location: LCCOMB_X39_Y38_N24
\VGA_86_image|x_value_b[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_b[0]~24_combout\ = !\VGA_86_image|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|v_count\(2),
	combout => \VGA_86_image|x_value_b[0]~24_combout\);

-- Location: FF_X39_Y38_N25
\VGA_86_image|x_value_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_b[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_b\(0));

-- Location: LCCOMB_X46_Y40_N4
\VGA_86_image|v_factor_a[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[2]~15_combout\ = (\VGA_86_image|x_value_b\(0) & (!\VGA_86_image|v_factor_a[1]~14\ & VCC)) # (!\VGA_86_image|x_value_b\(0) & (\VGA_86_image|v_factor_a[1]~14\ $ (GND)))
-- \VGA_86_image|v_factor_a[2]~16\ = CARRY((!\VGA_86_image|x_value_b\(0) & !\VGA_86_image|v_factor_a[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|x_value_b\(0),
	datad => VCC,
	cin => \VGA_86_image|v_factor_a[1]~14\,
	combout => \VGA_86_image|v_factor_a[2]~15_combout\,
	cout => \VGA_86_image|v_factor_a[2]~16\);

-- Location: LCCOMB_X47_Y40_N24
\VGA_86_image|v_factor_a[2]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[2]~SCLR_LUT_combout\ = (\VGA_86_image|v_factor_a[2]~15_combout\ & !\VGA_86_image|v_factor_a~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|v_factor_a[2]~15_combout\,
	datad => \VGA_86_image|v_factor_a~12_combout\,
	combout => \VGA_86_image|v_factor_a[2]~SCLR_LUT_combout\);

-- Location: LCCOMB_X46_Y40_N28
\VGA_86_image|v_pos_1[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_pos_1[3]~4_combout\ = !\VGA_86_image|Add12~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add12~2_combout\,
	combout => \VGA_86_image|v_pos_1[3]~4_combout\);

-- Location: FF_X46_Y40_N29
\VGA_86_image|v_pos_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_pos_1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_pos_1\(3));

-- Location: LCCOMB_X46_Y40_N6
\VGA_86_image|v_factor_a[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[3]~17_combout\ = (\VGA_86_image|v_pos_1\(3) & (\VGA_86_image|v_factor_a[2]~16\ & VCC)) # (!\VGA_86_image|v_pos_1\(3) & (!\VGA_86_image|v_factor_a[2]~16\))
-- \VGA_86_image|v_factor_a[3]~18\ = CARRY((!\VGA_86_image|v_pos_1\(3) & !\VGA_86_image|v_factor_a[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_pos_1\(3),
	datad => VCC,
	cin => \VGA_86_image|v_factor_a[2]~16\,
	combout => \VGA_86_image|v_factor_a[3]~17_combout\,
	cout => \VGA_86_image|v_factor_a[3]~18\);

-- Location: LCCOMB_X47_Y40_N6
\VGA_86_image|v_factor_a[3]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[3]~SCLR_LUT_combout\ = (\VGA_86_image|v_factor_a[3]~17_combout\ & !\VGA_86_image|v_factor_a~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|v_factor_a[3]~17_combout\,
	datad => \VGA_86_image|v_factor_a~12_combout\,
	combout => \VGA_86_image|v_factor_a[3]~SCLR_LUT_combout\);

-- Location: LCCOMB_X46_Y40_N30
\VGA_86_image|v_pos_1[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_pos_1[4]~5_combout\ = !\VGA_86_image|Add12~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add12~4_combout\,
	combout => \VGA_86_image|v_pos_1[4]~5_combout\);

-- Location: FF_X46_Y40_N31
\VGA_86_image|v_pos_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|v_pos_1[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|v_pos_1\(4));

-- Location: LCCOMB_X46_Y40_N8
\VGA_86_image|v_factor_a[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[4]~19_combout\ = (\VGA_86_image|v_pos_1\(4) & (\VGA_86_image|v_factor_a[3]~18\ $ (GND))) # (!\VGA_86_image|v_pos_1\(4) & (!\VGA_86_image|v_factor_a[3]~18\ & VCC))
-- \VGA_86_image|v_factor_a[4]~20\ = CARRY((\VGA_86_image|v_pos_1\(4) & !\VGA_86_image|v_factor_a[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_pos_1\(4),
	datad => VCC,
	cin => \VGA_86_image|v_factor_a[3]~18\,
	combout => \VGA_86_image|v_factor_a[4]~19_combout\,
	cout => \VGA_86_image|v_factor_a[4]~20\);

-- Location: LCCOMB_X47_Y40_N16
\VGA_86_image|v_factor_a[4]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[4]~SCLR_LUT_combout\ = (!\VGA_86_image|v_factor_a~12_combout\ & \VGA_86_image|v_factor_a[4]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_factor_a~12_combout\,
	datad => \VGA_86_image|v_factor_a[4]~19_combout\,
	combout => \VGA_86_image|v_factor_a[4]~SCLR_LUT_combout\);

-- Location: LCCOMB_X46_Y40_N10
\VGA_86_image|v_factor_a[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[5]~21_combout\ = (\VGA_86_image|v_pos_1\(5) & (!\VGA_86_image|v_factor_a[4]~20\)) # (!\VGA_86_image|v_pos_1\(5) & ((\VGA_86_image|v_factor_a[4]~20\) # (GND)))
-- \VGA_86_image|v_factor_a[5]~22\ = CARRY((!\VGA_86_image|v_factor_a[4]~20\) # (!\VGA_86_image|v_pos_1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_pos_1\(5),
	datad => VCC,
	cin => \VGA_86_image|v_factor_a[4]~20\,
	combout => \VGA_86_image|v_factor_a[5]~21_combout\,
	cout => \VGA_86_image|v_factor_a[5]~22\);

-- Location: LCCOMB_X47_Y40_N22
\VGA_86_image|v_factor_a[5]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[5]~SCLR_LUT_combout\ = (!\VGA_86_image|v_factor_a~12_combout\ & \VGA_86_image|v_factor_a[5]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_factor_a~12_combout\,
	datad => \VGA_86_image|v_factor_a[5]~21_combout\,
	combout => \VGA_86_image|v_factor_a[5]~SCLR_LUT_combout\);

-- Location: LCCOMB_X46_Y40_N12
\VGA_86_image|v_factor_a[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[6]~23_combout\ = (\VGA_86_image|v_pos_1\(6) & (!\VGA_86_image|v_factor_a[5]~22\ & VCC)) # (!\VGA_86_image|v_pos_1\(6) & (\VGA_86_image|v_factor_a[5]~22\ $ (GND)))
-- \VGA_86_image|v_factor_a[6]~24\ = CARRY((!\VGA_86_image|v_pos_1\(6) & !\VGA_86_image|v_factor_a[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_pos_1\(6),
	datad => VCC,
	cin => \VGA_86_image|v_factor_a[5]~22\,
	combout => \VGA_86_image|v_factor_a[6]~23_combout\,
	cout => \VGA_86_image|v_factor_a[6]~24\);

-- Location: LCCOMB_X47_Y40_N4
\VGA_86_image|v_factor_a[6]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[6]~SCLR_LUT_combout\ = (!\VGA_86_image|v_factor_a~12_combout\ & \VGA_86_image|v_factor_a[6]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_factor_a~12_combout\,
	datad => \VGA_86_image|v_factor_a[6]~23_combout\,
	combout => \VGA_86_image|v_factor_a[6]~SCLR_LUT_combout\);

-- Location: LCCOMB_X46_Y40_N14
\VGA_86_image|v_factor_a[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[7]~25_combout\ = (\VGA_86_image|v_pos_1\(7) & ((\VGA_86_image|v_factor_a[6]~24\) # (GND))) # (!\VGA_86_image|v_pos_1\(7) & (!\VGA_86_image|v_factor_a[6]~24\))
-- \VGA_86_image|v_factor_a[7]~26\ = CARRY((\VGA_86_image|v_pos_1\(7)) # (!\VGA_86_image|v_factor_a[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_pos_1\(7),
	datad => VCC,
	cin => \VGA_86_image|v_factor_a[6]~24\,
	combout => \VGA_86_image|v_factor_a[7]~25_combout\,
	cout => \VGA_86_image|v_factor_a[7]~26\);

-- Location: LCCOMB_X47_Y40_N10
\VGA_86_image|v_factor_a[7]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[7]~SCLR_LUT_combout\ = (!\VGA_86_image|v_factor_a~12_combout\ & \VGA_86_image|v_factor_a[7]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_factor_a~12_combout\,
	datad => \VGA_86_image|v_factor_a[7]~25_combout\,
	combout => \VGA_86_image|v_factor_a[7]~SCLR_LUT_combout\);

-- Location: LCCOMB_X46_Y40_N16
\VGA_86_image|v_factor_a[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[8]~27_combout\ = \VGA_86_image|v_factor_a[7]~26\ $ (!\VGA_86_image|v_pos_1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|v_pos_1\(8),
	cin => \VGA_86_image|v_factor_a[7]~26\,
	combout => \VGA_86_image|v_factor_a[8]~27_combout\);

-- Location: LCCOMB_X47_Y40_N28
\VGA_86_image|v_factor_a[8]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|v_factor_a[8]~SCLR_LUT_combout\ = (\VGA_86_image|v_factor_a[8]~27_combout\ & !\VGA_86_image|v_factor_a~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|v_factor_a[8]~27_combout\,
	datad => \VGA_86_image|v_factor_a~12_combout\,
	combout => \VGA_86_image|v_factor_a[8]~SCLR_LUT_combout\);

-- Location: DSPMULT_X48_Y40_N0
\VGA_86_image|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock_25~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \VGA_86_image|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y40_N2
\VGA_86_image|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \VGA_86_image|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X47_Y39_N0
\VGA_86_image|frame_num[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[0]~10_combout\ = \VGA_86_image|frame_num\(0) $ (VCC)
-- \VGA_86_image|frame_num[0]~11\ = CARRY(\VGA_86_image|frame_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(0),
	datad => VCC,
	combout => \VGA_86_image|frame_num[0]~10_combout\,
	cout => \VGA_86_image|frame_num[0]~11\);

-- Location: LCCOMB_X47_Y39_N26
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X47_Y41_N10
\VGA_86_image|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~0_combout\ = (((!\VGA_86_image|frame_num\(2)) # (!\VGA_86_image|frame_num\(3))) # (!\VGA_86_image|frame_num\(8))) # (!\VGA_86_image|frame_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(7),
	datab => \VGA_86_image|frame_num\(8),
	datac => \VGA_86_image|frame_num\(3),
	datad => \VGA_86_image|frame_num\(2),
	combout => \VGA_86_image|Equal2~0_combout\);

-- Location: LCCOMB_X47_Y39_N16
\VGA_86_image|frame_num[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[8]~26_combout\ = (\VGA_86_image|frame_num\(8) & (\VGA_86_image|frame_num[7]~25\ $ (GND))) # (!\VGA_86_image|frame_num\(8) & (!\VGA_86_image|frame_num[7]~25\ & VCC))
-- \VGA_86_image|frame_num[8]~27\ = CARRY((\VGA_86_image|frame_num\(8) & !\VGA_86_image|frame_num[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(8),
	datad => VCC,
	cin => \VGA_86_image|frame_num[7]~25\,
	combout => \VGA_86_image|frame_num[8]~26_combout\,
	cout => \VGA_86_image|frame_num[8]~27\);

-- Location: LCCOMB_X47_Y39_N18
\VGA_86_image|frame_num[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[9]~28_combout\ = \VGA_86_image|frame_num[8]~27\ $ (\VGA_86_image|frame_num\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|frame_num\(9),
	cin => \VGA_86_image|frame_num[8]~27\,
	combout => \VGA_86_image|frame_num[9]~28_combout\);

-- Location: LCCOMB_X46_Y39_N4
\VGA_86_image|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal0~3_combout\ = ((\VGA_86_image|Equal0~0_combout\) # ((\VGA_86_image|Equal0~1_combout\) # (!\VGA_86_image|h_count\(9)))) # (!\VGA_86_image|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(8),
	datab => \VGA_86_image|Equal0~0_combout\,
	datac => \VGA_86_image|Equal0~1_combout\,
	datad => \VGA_86_image|h_count\(9),
	combout => \VGA_86_image|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y39_N2
\VGA_86_image|new_frame~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|new_frame~0_combout\ = (\VGA_86_image|Equal1~2_combout\ & (!\reset_e~q\ & !\VGA_86_image|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal1~2_combout\,
	datab => \reset_e~q\,
	datac => \VGA_86_image|Equal0~3_combout\,
	combout => \VGA_86_image|new_frame~0_combout\);

-- Location: FF_X46_Y39_N3
\VGA_86_image|new_frame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|new_frame~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|new_frame~q\);

-- Location: LCCOMB_X47_Y39_N28
\VGA_86_image|frame_num[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[7]~31_combout\ = (\VGA_86_image|new_frame~q\) # (\reset_e~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|new_frame~q\,
	datad => \reset_e~q\,
	combout => \VGA_86_image|frame_num[7]~31_combout\);

-- Location: FF_X47_Y39_N19
\VGA_86_image|frame_num[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|frame_num[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \VGA_86_image|frame_num[7]~30_combout\,
	ena => \VGA_86_image|frame_num[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|frame_num\(9));

-- Location: LCCOMB_X47_Y39_N24
\VGA_86_image|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~2_combout\ = (!\VGA_86_image|frame_num\(6)) # (!\VGA_86_image|frame_num\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(9),
	datad => \VGA_86_image|frame_num\(6),
	combout => \VGA_86_image|Equal2~2_combout\);

-- Location: LCCOMB_X47_Y39_N22
\VGA_86_image|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Equal2~1_combout\ = (((!\VGA_86_image|frame_num\(0)) # (!\VGA_86_image|frame_num\(4))) # (!\VGA_86_image|frame_num\(1))) # (!\VGA_86_image|frame_num\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(5),
	datab => \VGA_86_image|frame_num\(1),
	datac => \VGA_86_image|frame_num\(4),
	datad => \VGA_86_image|frame_num\(0),
	combout => \VGA_86_image|Equal2~1_combout\);

-- Location: LCCOMB_X47_Y39_N30
\VGA_86_image|frame_num[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[7]~30_combout\ = (\reset_e~q\) # ((!\VGA_86_image|Equal2~0_combout\ & (!\VGA_86_image|Equal2~2_combout\ & !\VGA_86_image|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Equal2~0_combout\,
	datab => \VGA_86_image|Equal2~2_combout\,
	datac => \VGA_86_image|Equal2~1_combout\,
	datad => \reset_e~q\,
	combout => \VGA_86_image|frame_num[7]~30_combout\);

-- Location: FF_X47_Y39_N1
\VGA_86_image|frame_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|frame_num[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \VGA_86_image|frame_num[7]~30_combout\,
	ena => \VGA_86_image|frame_num[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|frame_num\(0));

-- Location: LCCOMB_X47_Y39_N2
\VGA_86_image|frame_num[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[1]~12_combout\ = (\VGA_86_image|frame_num\(1) & (!\VGA_86_image|frame_num[0]~11\)) # (!\VGA_86_image|frame_num\(1) & ((\VGA_86_image|frame_num[0]~11\) # (GND)))
-- \VGA_86_image|frame_num[1]~13\ = CARRY((!\VGA_86_image|frame_num[0]~11\) # (!\VGA_86_image|frame_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(1),
	datad => VCC,
	cin => \VGA_86_image|frame_num[0]~11\,
	combout => \VGA_86_image|frame_num[1]~12_combout\,
	cout => \VGA_86_image|frame_num[1]~13\);

-- Location: FF_X47_Y39_N3
\VGA_86_image|frame_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|frame_num[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \VGA_86_image|frame_num[7]~30_combout\,
	ena => \VGA_86_image|frame_num[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|frame_num\(1));

-- Location: LCCOMB_X47_Y39_N4
\VGA_86_image|frame_num[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[2]~14_combout\ = (\VGA_86_image|frame_num\(2) & (\VGA_86_image|frame_num[1]~13\ $ (GND))) # (!\VGA_86_image|frame_num\(2) & (!\VGA_86_image|frame_num[1]~13\ & VCC))
-- \VGA_86_image|frame_num[2]~15\ = CARRY((\VGA_86_image|frame_num\(2) & !\VGA_86_image|frame_num[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(2),
	datad => VCC,
	cin => \VGA_86_image|frame_num[1]~13\,
	combout => \VGA_86_image|frame_num[2]~14_combout\,
	cout => \VGA_86_image|frame_num[2]~15\);

-- Location: FF_X47_Y39_N5
\VGA_86_image|frame_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|frame_num[2]~14_combout\,
	asdata => \reset_e~q\,
	sload => \VGA_86_image|frame_num[7]~30_combout\,
	ena => \VGA_86_image|frame_num[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|frame_num\(2));

-- Location: LCCOMB_X47_Y39_N6
\VGA_86_image|frame_num[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[3]~16_combout\ = (\VGA_86_image|frame_num\(3) & (!\VGA_86_image|frame_num[2]~15\)) # (!\VGA_86_image|frame_num\(3) & ((\VGA_86_image|frame_num[2]~15\) # (GND)))
-- \VGA_86_image|frame_num[3]~17\ = CARRY((!\VGA_86_image|frame_num[2]~15\) # (!\VGA_86_image|frame_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(3),
	datad => VCC,
	cin => \VGA_86_image|frame_num[2]~15\,
	combout => \VGA_86_image|frame_num[3]~16_combout\,
	cout => \VGA_86_image|frame_num[3]~17\);

-- Location: FF_X47_Y39_N7
\VGA_86_image|frame_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|frame_num[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \VGA_86_image|frame_num[7]~30_combout\,
	ena => \VGA_86_image|frame_num[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|frame_num\(3));

-- Location: LCCOMB_X47_Y39_N8
\VGA_86_image|frame_num[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[4]~18_combout\ = (\VGA_86_image|frame_num\(4) & (\VGA_86_image|frame_num[3]~17\ $ (GND))) # (!\VGA_86_image|frame_num\(4) & (!\VGA_86_image|frame_num[3]~17\ & VCC))
-- \VGA_86_image|frame_num[4]~19\ = CARRY((\VGA_86_image|frame_num\(4) & !\VGA_86_image|frame_num[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(4),
	datad => VCC,
	cin => \VGA_86_image|frame_num[3]~17\,
	combout => \VGA_86_image|frame_num[4]~18_combout\,
	cout => \VGA_86_image|frame_num[4]~19\);

-- Location: FF_X47_Y39_N9
\VGA_86_image|frame_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|frame_num[4]~18_combout\,
	asdata => \reset_e~q\,
	sload => \VGA_86_image|frame_num[7]~30_combout\,
	ena => \VGA_86_image|frame_num[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|frame_num\(4));

-- Location: LCCOMB_X47_Y39_N10
\VGA_86_image|frame_num[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[5]~20_combout\ = (\VGA_86_image|frame_num\(5) & (!\VGA_86_image|frame_num[4]~19\)) # (!\VGA_86_image|frame_num\(5) & ((\VGA_86_image|frame_num[4]~19\) # (GND)))
-- \VGA_86_image|frame_num[5]~21\ = CARRY((!\VGA_86_image|frame_num[4]~19\) # (!\VGA_86_image|frame_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(5),
	datad => VCC,
	cin => \VGA_86_image|frame_num[4]~19\,
	combout => \VGA_86_image|frame_num[5]~20_combout\,
	cout => \VGA_86_image|frame_num[5]~21\);

-- Location: FF_X47_Y39_N11
\VGA_86_image|frame_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|frame_num[5]~20_combout\,
	asdata => \reset_e~q\,
	sload => \VGA_86_image|frame_num[7]~30_combout\,
	ena => \VGA_86_image|frame_num[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|frame_num\(5));

-- Location: LCCOMB_X47_Y39_N12
\VGA_86_image|frame_num[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[6]~22_combout\ = (\VGA_86_image|frame_num\(6) & (\VGA_86_image|frame_num[5]~21\ $ (GND))) # (!\VGA_86_image|frame_num\(6) & (!\VGA_86_image|frame_num[5]~21\ & VCC))
-- \VGA_86_image|frame_num[6]~23\ = CARRY((\VGA_86_image|frame_num\(6) & !\VGA_86_image|frame_num[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(6),
	datad => VCC,
	cin => \VGA_86_image|frame_num[5]~21\,
	combout => \VGA_86_image|frame_num[6]~22_combout\,
	cout => \VGA_86_image|frame_num[6]~23\);

-- Location: FF_X47_Y39_N13
\VGA_86_image|frame_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|frame_num[6]~22_combout\,
	asdata => \reset_e~q\,
	sload => \VGA_86_image|frame_num[7]~30_combout\,
	ena => \VGA_86_image|frame_num[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|frame_num\(6));

-- Location: LCCOMB_X47_Y39_N14
\VGA_86_image|frame_num[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|frame_num[7]~24_combout\ = (\VGA_86_image|frame_num\(7) & (!\VGA_86_image|frame_num[6]~23\)) # (!\VGA_86_image|frame_num\(7) & ((\VGA_86_image|frame_num[6]~23\) # (GND)))
-- \VGA_86_image|frame_num[7]~25\ = CARRY((!\VGA_86_image|frame_num[6]~23\) # (!\VGA_86_image|frame_num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(7),
	datad => VCC,
	cin => \VGA_86_image|frame_num[6]~23\,
	combout => \VGA_86_image|frame_num[7]~24_combout\,
	cout => \VGA_86_image|frame_num[7]~25\);

-- Location: FF_X47_Y39_N15
\VGA_86_image|frame_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|frame_num[7]~24_combout\,
	asdata => \reset_e~q\,
	sload => \VGA_86_image|frame_num[7]~30_combout\,
	ena => \VGA_86_image|frame_num[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|frame_num\(7));

-- Location: FF_X47_Y39_N17
\VGA_86_image|frame_num[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|frame_num[8]~26_combout\,
	asdata => \reset_e~q\,
	sload => \VGA_86_image|frame_num[7]~30_combout\,
	ena => \VGA_86_image|frame_num[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|frame_num\(8));

-- Location: LCCOMB_X46_Y44_N10
\VGA_86_image|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add3~0_combout\ = (!\VGA_86_image|frame_num\(4) & !\VGA_86_image|frame_num\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(4),
	datac => \VGA_86_image|frame_num\(5),
	combout => \VGA_86_image|Add3~0_combout\);

-- Location: LCCOMB_X46_Y44_N24
\VGA_86_image|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan2~0_combout\ = (\VGA_86_image|frame_num\(3) & ((\VGA_86_image|frame_num\(1)) # ((\VGA_86_image|frame_num\(2)) # (\VGA_86_image|frame_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(1),
	datab => \VGA_86_image|frame_num\(2),
	datac => \VGA_86_image|frame_num\(3),
	datad => \VGA_86_image|frame_num\(0),
	combout => \VGA_86_image|LessThan2~0_combout\);

-- Location: LCCOMB_X46_Y44_N8
\VGA_86_image|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan2~1_combout\ = ((\VGA_86_image|frame_num\(7)) # ((\VGA_86_image|frame_num\(6)) # (\VGA_86_image|LessThan2~0_combout\))) # (!\VGA_86_image|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add3~0_combout\,
	datab => \VGA_86_image|frame_num\(7),
	datac => \VGA_86_image|frame_num\(6),
	datad => \VGA_86_image|LessThan2~0_combout\,
	combout => \VGA_86_image|LessThan2~1_combout\);

-- Location: LCCOMB_X47_Y39_N20
\VGA_86_image|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan1~0_combout\ = (\VGA_86_image|frame_num\(3)) # ((\VGA_86_image|frame_num\(1)) # ((\VGA_86_image|frame_num\(2)) # (\VGA_86_image|frame_num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(3),
	datab => \VGA_86_image|frame_num\(1),
	datac => \VGA_86_image|frame_num\(2),
	datad => \VGA_86_image|frame_num\(0),
	combout => \VGA_86_image|LessThan1~0_combout\);

-- Location: LCCOMB_X47_Y43_N0
\VGA_86_image|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan1~1_combout\ = (\VGA_86_image|frame_num\(6)) # ((\VGA_86_image|frame_num\(5)) # ((\VGA_86_image|frame_num\(4) & \VGA_86_image|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(6),
	datab => \VGA_86_image|frame_num\(4),
	datac => \VGA_86_image|frame_num\(5),
	datad => \VGA_86_image|LessThan1~0_combout\,
	combout => \VGA_86_image|LessThan1~1_combout\);

-- Location: LCCOMB_X46_Y44_N28
\VGA_86_image|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan1~2_combout\ = (\VGA_86_image|frame_num\(9)) # ((\VGA_86_image|frame_num\(8) & (\VGA_86_image|frame_num\(7) & \VGA_86_image|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(8),
	datab => \VGA_86_image|frame_num\(9),
	datac => \VGA_86_image|frame_num\(7),
	datad => \VGA_86_image|LessThan1~1_combout\,
	combout => \VGA_86_image|LessThan1~2_combout\);

-- Location: LCCOMB_X46_Y44_N26
\VGA_86_image|process_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~11_combout\ = ((\VGA_86_image|frame_num\(9) & ((\VGA_86_image|frame_num\(8)) # (\VGA_86_image|LessThan2~1_combout\)))) # (!\VGA_86_image|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(8),
	datab => \VGA_86_image|frame_num\(9),
	datac => \VGA_86_image|LessThan2~1_combout\,
	datad => \VGA_86_image|LessThan1~2_combout\,
	combout => \VGA_86_image|process_1~11_combout\);

-- Location: LCCOMB_X47_Y41_N12
\VGA_86_image|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan3~0_combout\ = (\VGA_86_image|frame_num\(2) & (\VGA_86_image|frame_num\(3) & ((\VGA_86_image|frame_num\(1)) # (\VGA_86_image|frame_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(2),
	datab => \VGA_86_image|frame_num\(3),
	datac => \VGA_86_image|frame_num\(1),
	datad => \VGA_86_image|frame_num\(0),
	combout => \VGA_86_image|LessThan3~0_combout\);

-- Location: LCCOMB_X47_Y41_N30
\VGA_86_image|process_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~8_combout\ = (\VGA_86_image|frame_num\(8) & (\VGA_86_image|frame_num\(4) & \VGA_86_image|LessThan3~0_combout\)) # (!\VGA_86_image|frame_num\(8) & ((\VGA_86_image|frame_num\(4)) # (\VGA_86_image|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(8),
	datac => \VGA_86_image|frame_num\(4),
	datad => \VGA_86_image|LessThan3~0_combout\,
	combout => \VGA_86_image|process_1~8_combout\);

-- Location: LCCOMB_X47_Y41_N28
\VGA_86_image|process_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~9_combout\ = (\VGA_86_image|frame_num\(6) & ((\VGA_86_image|frame_num\(5) & ((\VGA_86_image|process_1~8_combout\) # (\VGA_86_image|frame_num\(8)))) # (!\VGA_86_image|frame_num\(5) & (\VGA_86_image|process_1~8_combout\ & 
-- \VGA_86_image|frame_num\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(5),
	datab => \VGA_86_image|frame_num\(6),
	datac => \VGA_86_image|process_1~8_combout\,
	datad => \VGA_86_image|frame_num\(8),
	combout => \VGA_86_image|process_1~9_combout\);

-- Location: LCCOMB_X46_Y44_N30
\VGA_86_image|process_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|process_1~10_combout\ = (\VGA_86_image|frame_num\(8) $ (((!\VGA_86_image|frame_num\(7) & !\VGA_86_image|process_1~9_combout\)))) # (!\VGA_86_image|frame_num\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(8),
	datab => \VGA_86_image|frame_num\(9),
	datac => \VGA_86_image|frame_num\(7),
	datad => \VGA_86_image|process_1~9_combout\,
	combout => \VGA_86_image|process_1~10_combout\);

-- Location: LCCOMB_X46_Y44_N4
\VGA_86_image|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~0_combout\ = (\VGA_86_image|LessThan1~2_combout\ & (\VGA_86_image|frame_num\(0) $ (((\VGA_86_image|process_1~11_combout\ & \VGA_86_image|process_1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~11_combout\,
	datab => \VGA_86_image|LessThan1~2_combout\,
	datac => \VGA_86_image|process_1~10_combout\,
	datad => \VGA_86_image|frame_num\(0),
	combout => \VGA_86_image|Add4~0_combout\);

-- Location: LCCOMB_X47_Y43_N30
\VGA_86_image|curve[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|curve[6]~0_combout\ = (!\VGA_86_image|frame_num\(5) & (!\VGA_86_image|frame_num\(4) & !\VGA_86_image|frame_num\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(5),
	datac => \VGA_86_image|frame_num\(4),
	datad => \VGA_86_image|frame_num\(6),
	combout => \VGA_86_image|curve[6]~0_combout\);

-- Location: LCCOMB_X46_Y44_N12
\VGA_86_image|curve[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|curve[6]~2_combout\ = (\VGA_86_image|frame_num\(8) & (((\VGA_86_image|curve[6]~0_combout\ & !\VGA_86_image|frame_num\(3))) # (!\VGA_86_image|frame_num\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|curve[6]~0_combout\,
	datab => \VGA_86_image|frame_num\(3),
	datac => \VGA_86_image|frame_num\(7),
	datad => \VGA_86_image|frame_num\(8),
	combout => \VGA_86_image|curve[6]~2_combout\);

-- Location: LCCOMB_X46_Y44_N2
\VGA_86_image|curve[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|curve[6]~1_combout\ = (!\VGA_86_image|frame_num\(8) & ((\VGA_86_image|frame_num\(7)) # ((\VGA_86_image|LessThan2~0_combout\) # (!\VGA_86_image|curve[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(8),
	datab => \VGA_86_image|frame_num\(7),
	datac => \VGA_86_image|curve[6]~0_combout\,
	datad => \VGA_86_image|LessThan2~0_combout\,
	combout => \VGA_86_image|curve[6]~1_combout\);

-- Location: LCCOMB_X46_Y44_N22
\VGA_86_image|curve[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|curve[6]~3_combout\ = (((!\VGA_86_image|curve[6]~2_combout\ & !\VGA_86_image|curve[6]~1_combout\)) # (!\VGA_86_image|process_1~10_combout\)) # (!\VGA_86_image|frame_num\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|curve[6]~2_combout\,
	datab => \VGA_86_image|frame_num\(9),
	datac => \VGA_86_image|process_1~10_combout\,
	datad => \VGA_86_image|curve[6]~1_combout\,
	combout => \VGA_86_image|curve[6]~3_combout\);

-- Location: FF_X47_Y44_N17
\VGA_86_image|curve[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	asdata => \VGA_86_image|Add4~0_combout\,
	sload => VCC,
	ena => \VGA_86_image|curve[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|curve\(0));

-- Location: LCCOMB_X46_Y44_N0
\VGA_86_image|curve~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|curve~4_combout\ = \VGA_86_image|frame_num\(1) $ (\VGA_86_image|process_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(1),
	datac => \VGA_86_image|process_1~10_combout\,
	combout => \VGA_86_image|curve~4_combout\);

-- Location: LCCOMB_X47_Y44_N16
\VGA_86_image|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~2_cout\ = CARRY(!\VGA_86_image|frame_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(0),
	datad => VCC,
	cout => \VGA_86_image|Add4~2_cout\);

-- Location: LCCOMB_X47_Y44_N18
\VGA_86_image|Add4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~3_combout\ = (\VGA_86_image|frame_num\(1) & ((\VGA_86_image|Add4~2_cout\) # (GND))) # (!\VGA_86_image|frame_num\(1) & (!\VGA_86_image|Add4~2_cout\))
-- \VGA_86_image|Add4~4\ = CARRY((\VGA_86_image|frame_num\(1)) # (!\VGA_86_image|Add4~2_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(1),
	datad => VCC,
	cin => \VGA_86_image|Add4~2_cout\,
	combout => \VGA_86_image|Add4~3_combout\,
	cout => \VGA_86_image|Add4~4\);

-- Location: LCCOMB_X47_Y44_N8
\VGA_86_image|Add4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~5_combout\ = (\VGA_86_image|LessThan1~2_combout\ & ((\VGA_86_image|process_1~11_combout\ & (\VGA_86_image|curve~4_combout\)) # (!\VGA_86_image|process_1~11_combout\ & ((\VGA_86_image|Add4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|curve~4_combout\,
	datab => \VGA_86_image|LessThan1~2_combout\,
	datac => \VGA_86_image|process_1~11_combout\,
	datad => \VGA_86_image|Add4~3_combout\,
	combout => \VGA_86_image|Add4~5_combout\);

-- Location: FF_X47_Y44_N9
\VGA_86_image|curve[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add4~5_combout\,
	ena => \VGA_86_image|curve[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|curve\(1));

-- Location: LCCOMB_X47_Y43_N4
\VGA_86_image|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~0_combout\ = \VGA_86_image|frame_num\(2) $ (VCC)
-- \VGA_86_image|Add5~1\ = CARRY(\VGA_86_image|frame_num\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(2),
	datad => VCC,
	combout => \VGA_86_image|Add5~0_combout\,
	cout => \VGA_86_image|Add5~1\);

-- Location: LCCOMB_X46_Y44_N18
\VGA_86_image|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~6_combout\ = (\VGA_86_image|process_1~10_combout\ & (!\VGA_86_image|frame_num\(2))) # (!\VGA_86_image|process_1~10_combout\ & ((\VGA_86_image|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(2),
	datac => \VGA_86_image|process_1~10_combout\,
	datad => \VGA_86_image|Add5~0_combout\,
	combout => \VGA_86_image|Add4~6_combout\);

-- Location: LCCOMB_X47_Y44_N20
\VGA_86_image|Add4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~7_combout\ = (\VGA_86_image|frame_num\(2) & (!\VGA_86_image|Add4~4\ & VCC)) # (!\VGA_86_image|frame_num\(2) & (\VGA_86_image|Add4~4\ $ (GND)))
-- \VGA_86_image|Add4~8\ = CARRY((!\VGA_86_image|frame_num\(2) & !\VGA_86_image|Add4~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(2),
	datad => VCC,
	cin => \VGA_86_image|Add4~4\,
	combout => \VGA_86_image|Add4~7_combout\,
	cout => \VGA_86_image|Add4~8\);

-- Location: LCCOMB_X49_Y44_N26
\VGA_86_image|Add4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~9_combout\ = (\VGA_86_image|LessThan1~2_combout\ & ((\VGA_86_image|process_1~11_combout\ & (\VGA_86_image|Add4~6_combout\)) # (!\VGA_86_image|process_1~11_combout\ & ((\VGA_86_image|Add4~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~11_combout\,
	datab => \VGA_86_image|LessThan1~2_combout\,
	datac => \VGA_86_image|Add4~6_combout\,
	datad => \VGA_86_image|Add4~7_combout\,
	combout => \VGA_86_image|Add4~9_combout\);

-- Location: FF_X49_Y44_N27
\VGA_86_image|curve[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add4~9_combout\,
	ena => \VGA_86_image|curve[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|curve\(2));

-- Location: LCCOMB_X47_Y44_N22
\VGA_86_image|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~14_combout\ = (\VGA_86_image|frame_num\(3) & ((\VGA_86_image|Add4~8\) # (GND))) # (!\VGA_86_image|frame_num\(3) & (!\VGA_86_image|Add4~8\))
-- \VGA_86_image|Add4~15\ = CARRY((\VGA_86_image|frame_num\(3)) # (!\VGA_86_image|Add4~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(3),
	datad => VCC,
	cin => \VGA_86_image|Add4~8\,
	combout => \VGA_86_image|Add4~14_combout\,
	cout => \VGA_86_image|Add4~15\);

-- Location: LCCOMB_X46_Y44_N6
\VGA_86_image|Add4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~11_combout\ = (\VGA_86_image|process_1~10_combout\ & (\VGA_86_image|process_1~11_combout\ & \VGA_86_image|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~10_combout\,
	datac => \VGA_86_image|process_1~11_combout\,
	datad => \VGA_86_image|LessThan1~2_combout\,
	combout => \VGA_86_image|Add4~11_combout\);

-- Location: LCCOMB_X47_Y43_N6
\VGA_86_image|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~2_combout\ = (\VGA_86_image|frame_num\(3) & (!\VGA_86_image|Add5~1\)) # (!\VGA_86_image|frame_num\(3) & ((\VGA_86_image|Add5~1\) # (GND)))
-- \VGA_86_image|Add5~3\ = CARRY((!\VGA_86_image|Add5~1\) # (!\VGA_86_image|frame_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(3),
	datad => VCC,
	cin => \VGA_86_image|Add5~1\,
	combout => \VGA_86_image|Add5~2_combout\,
	cout => \VGA_86_image|Add5~3\);

-- Location: LCCOMB_X47_Y43_N20
\VGA_86_image|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add6~0_combout\ = \VGA_86_image|Add5~2_combout\ $ (VCC)
-- \VGA_86_image|Add6~1\ = CARRY(\VGA_86_image|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add5~2_combout\,
	datad => VCC,
	combout => \VGA_86_image|Add6~0_combout\,
	cout => \VGA_86_image|Add6~1\);

-- Location: LCCOMB_X46_Y44_N20
\VGA_86_image|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~10_combout\ = (!\VGA_86_image|process_1~10_combout\ & (\VGA_86_image|process_1~11_combout\ & \VGA_86_image|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|process_1~10_combout\,
	datac => \VGA_86_image|process_1~11_combout\,
	datad => \VGA_86_image|LessThan1~2_combout\,
	combout => \VGA_86_image|Add4~10_combout\);

-- Location: LCCOMB_X46_Y44_N16
\VGA_86_image|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~12_combout\ = (\VGA_86_image|Add4~11_combout\ & (((\VGA_86_image|Add6~0_combout\ & \VGA_86_image|Add4~10_combout\)) # (!\VGA_86_image|frame_num\(3)))) # (!\VGA_86_image|Add4~11_combout\ & (((\VGA_86_image|Add6~0_combout\ & 
-- \VGA_86_image|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~11_combout\,
	datab => \VGA_86_image|frame_num\(3),
	datac => \VGA_86_image|Add6~0_combout\,
	datad => \VGA_86_image|Add4~10_combout\,
	combout => \VGA_86_image|Add4~12_combout\);

-- Location: LCCOMB_X46_Y44_N14
\VGA_86_image|Add4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~13_combout\ = (\VGA_86_image|LessThan1~2_combout\ & (((!\VGA_86_image|frame_num\(8) & !\VGA_86_image|LessThan2~1_combout\)) # (!\VGA_86_image|frame_num\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(8),
	datab => \VGA_86_image|LessThan2~1_combout\,
	datac => \VGA_86_image|frame_num\(9),
	datad => \VGA_86_image|LessThan1~2_combout\,
	combout => \VGA_86_image|Add4~13_combout\);

-- Location: LCCOMB_X47_Y44_N14
\VGA_86_image|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~16_combout\ = (\VGA_86_image|Add4~12_combout\) # ((\VGA_86_image|Add4~14_combout\ & \VGA_86_image|Add4~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~14_combout\,
	datac => \VGA_86_image|Add4~12_combout\,
	datad => \VGA_86_image|Add4~13_combout\,
	combout => \VGA_86_image|Add4~16_combout\);

-- Location: FF_X47_Y44_N15
\VGA_86_image|curve[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add4~16_combout\,
	ena => \VGA_86_image|curve[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|curve\(3));

-- Location: LCCOMB_X47_Y44_N24
\VGA_86_image|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~18_combout\ = (\VGA_86_image|frame_num\(4) & (\VGA_86_image|Add4~15\ $ (GND))) # (!\VGA_86_image|frame_num\(4) & (!\VGA_86_image|Add4~15\ & VCC))
-- \VGA_86_image|Add4~19\ = CARRY((\VGA_86_image|frame_num\(4) & !\VGA_86_image|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(4),
	datad => VCC,
	cin => \VGA_86_image|Add4~15\,
	combout => \VGA_86_image|Add4~18_combout\,
	cout => \VGA_86_image|Add4~19\);

-- Location: LCCOMB_X47_Y43_N8
\VGA_86_image|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~4_combout\ = (\VGA_86_image|frame_num\(4) & ((GND) # (!\VGA_86_image|Add5~3\))) # (!\VGA_86_image|frame_num\(4) & (\VGA_86_image|Add5~3\ $ (GND)))
-- \VGA_86_image|Add5~5\ = CARRY((\VGA_86_image|frame_num\(4)) # (!\VGA_86_image|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(4),
	datad => VCC,
	cin => \VGA_86_image|Add5~3\,
	combout => \VGA_86_image|Add5~4_combout\,
	cout => \VGA_86_image|Add5~5\);

-- Location: LCCOMB_X47_Y43_N22
\VGA_86_image|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add6~2_combout\ = (\VGA_86_image|Add5~4_combout\ & (!\VGA_86_image|Add6~1\)) # (!\VGA_86_image|Add5~4_combout\ & ((\VGA_86_image|Add6~1\) # (GND)))
-- \VGA_86_image|Add6~3\ = CARRY((!\VGA_86_image|Add6~1\) # (!\VGA_86_image|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Add5~4_combout\,
	datad => VCC,
	cin => \VGA_86_image|Add6~1\,
	combout => \VGA_86_image|Add6~2_combout\,
	cout => \VGA_86_image|Add6~3\);

-- Location: LCCOMB_X47_Y43_N16
\VGA_86_image|Add4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~17_combout\ = (\VGA_86_image|Add4~11_combout\ & (((\VGA_86_image|Add6~2_combout\ & \VGA_86_image|Add4~10_combout\)) # (!\VGA_86_image|frame_num\(4)))) # (!\VGA_86_image|Add4~11_combout\ & (((\VGA_86_image|Add6~2_combout\ & 
-- \VGA_86_image|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~11_combout\,
	datab => \VGA_86_image|frame_num\(4),
	datac => \VGA_86_image|Add6~2_combout\,
	datad => \VGA_86_image|Add4~10_combout\,
	combout => \VGA_86_image|Add4~17_combout\);

-- Location: LCCOMB_X47_Y44_N4
\VGA_86_image|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~20_combout\ = (\VGA_86_image|Add4~17_combout\) # ((\VGA_86_image|Add4~13_combout\ & \VGA_86_image|Add4~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~13_combout\,
	datab => \VGA_86_image|Add4~18_combout\,
	datad => \VGA_86_image|Add4~17_combout\,
	combout => \VGA_86_image|Add4~20_combout\);

-- Location: FF_X47_Y44_N5
\VGA_86_image|curve[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add4~20_combout\,
	ena => \VGA_86_image|curve[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|curve\(4));

-- Location: LCCOMB_X47_Y44_N26
\VGA_86_image|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~22_combout\ = (\VGA_86_image|Add4~19\ & (\VGA_86_image|frame_num\(4) $ ((!\VGA_86_image|frame_num\(5))))) # (!\VGA_86_image|Add4~19\ & ((\VGA_86_image|frame_num\(4) $ (\VGA_86_image|frame_num\(5))) # (GND)))
-- \VGA_86_image|Add4~23\ = CARRY((\VGA_86_image|frame_num\(4) $ (!\VGA_86_image|frame_num\(5))) # (!\VGA_86_image|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(4),
	datab => \VGA_86_image|frame_num\(5),
	datad => VCC,
	cin => \VGA_86_image|Add4~19\,
	combout => \VGA_86_image|Add4~22_combout\,
	cout => \VGA_86_image|Add4~23\);

-- Location: LCCOMB_X47_Y43_N10
\VGA_86_image|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~6_combout\ = (\VGA_86_image|frame_num\(5) & (!\VGA_86_image|Add5~5\)) # (!\VGA_86_image|frame_num\(5) & ((\VGA_86_image|Add5~5\) # (GND)))
-- \VGA_86_image|Add5~7\ = CARRY((!\VGA_86_image|Add5~5\) # (!\VGA_86_image|frame_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(5),
	datad => VCC,
	cin => \VGA_86_image|Add5~5\,
	combout => \VGA_86_image|Add5~6_combout\,
	cout => \VGA_86_image|Add5~7\);

-- Location: LCCOMB_X47_Y43_N24
\VGA_86_image|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add6~4_combout\ = (\VGA_86_image|Add5~6_combout\ & (\VGA_86_image|Add6~3\ $ (GND))) # (!\VGA_86_image|Add5~6_combout\ & (!\VGA_86_image|Add6~3\ & VCC))
-- \VGA_86_image|Add6~5\ = CARRY((\VGA_86_image|Add5~6_combout\ & !\VGA_86_image|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add5~6_combout\,
	datad => VCC,
	cin => \VGA_86_image|Add6~3\,
	combout => \VGA_86_image|Add6~4_combout\,
	cout => \VGA_86_image|Add6~5\);

-- Location: LCCOMB_X47_Y44_N12
\VGA_86_image|Add4~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~21_combout\ = (\VGA_86_image|frame_num\(5) & (((\VGA_86_image|Add6~4_combout\ & \VGA_86_image|Add4~10_combout\)))) # (!\VGA_86_image|frame_num\(5) & ((\VGA_86_image|Add4~11_combout\) # ((\VGA_86_image|Add6~4_combout\ & 
-- \VGA_86_image|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(5),
	datab => \VGA_86_image|Add4~11_combout\,
	datac => \VGA_86_image|Add6~4_combout\,
	datad => \VGA_86_image|Add4~10_combout\,
	combout => \VGA_86_image|Add4~21_combout\);

-- Location: LCCOMB_X47_Y44_N2
\VGA_86_image|Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~24_combout\ = (\VGA_86_image|Add4~21_combout\) # ((\VGA_86_image|Add4~13_combout\ & \VGA_86_image|Add4~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~13_combout\,
	datac => \VGA_86_image|Add4~22_combout\,
	datad => \VGA_86_image|Add4~21_combout\,
	combout => \VGA_86_image|Add4~24_combout\);

-- Location: FF_X47_Y44_N3
\VGA_86_image|curve[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add4~24_combout\,
	ena => \VGA_86_image|curve[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|curve\(5));

-- Location: LCCOMB_X47_Y44_N28
\VGA_86_image|Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~26_combout\ = (\VGA_86_image|Add4~23\ & ((\VGA_86_image|Add3~0_combout\ $ (!\VGA_86_image|frame_num\(6))))) # (!\VGA_86_image|Add4~23\ & (\VGA_86_image|Add3~0_combout\ $ (\VGA_86_image|frame_num\(6) $ (GND))))
-- \VGA_86_image|Add4~27\ = CARRY((!\VGA_86_image|Add4~23\ & (\VGA_86_image|Add3~0_combout\ $ (!\VGA_86_image|frame_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add3~0_combout\,
	datab => \VGA_86_image|frame_num\(6),
	datad => VCC,
	cin => \VGA_86_image|Add4~23\,
	combout => \VGA_86_image|Add4~26_combout\,
	cout => \VGA_86_image|Add4~27\);

-- Location: LCCOMB_X47_Y43_N12
\VGA_86_image|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~8_combout\ = (\VGA_86_image|frame_num\(6) & (\VGA_86_image|Add5~7\ $ (GND))) # (!\VGA_86_image|frame_num\(6) & (!\VGA_86_image|Add5~7\ & VCC))
-- \VGA_86_image|Add5~9\ = CARRY((\VGA_86_image|frame_num\(6) & !\VGA_86_image|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|frame_num\(6),
	datad => VCC,
	cin => \VGA_86_image|Add5~7\,
	combout => \VGA_86_image|Add5~8_combout\,
	cout => \VGA_86_image|Add5~9\);

-- Location: LCCOMB_X47_Y43_N26
\VGA_86_image|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add6~6_combout\ = (\VGA_86_image|Add5~8_combout\ & (!\VGA_86_image|Add6~5\)) # (!\VGA_86_image|Add5~8_combout\ & ((\VGA_86_image|Add6~5\) # (GND)))
-- \VGA_86_image|Add6~7\ = CARRY((!\VGA_86_image|Add6~5\) # (!\VGA_86_image|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add5~8_combout\,
	datad => VCC,
	cin => \VGA_86_image|Add6~5\,
	combout => \VGA_86_image|Add6~6_combout\,
	cout => \VGA_86_image|Add6~7\);

-- Location: LCCOMB_X47_Y44_N10
\VGA_86_image|Add4~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~25_combout\ = (\VGA_86_image|Add6~6_combout\ & ((\VGA_86_image|Add4~10_combout\) # ((\VGA_86_image|Add4~11_combout\ & !\VGA_86_image|frame_num\(6))))) # (!\VGA_86_image|Add6~6_combout\ & (\VGA_86_image|Add4~11_combout\ & 
-- (!\VGA_86_image|frame_num\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add6~6_combout\,
	datab => \VGA_86_image|Add4~11_combout\,
	datac => \VGA_86_image|frame_num\(6),
	datad => \VGA_86_image|Add4~10_combout\,
	combout => \VGA_86_image|Add4~25_combout\);

-- Location: LCCOMB_X47_Y44_N0
\VGA_86_image|Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~28_combout\ = (\VGA_86_image|Add4~25_combout\) # ((\VGA_86_image|Add4~13_combout\ & \VGA_86_image|Add4~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~13_combout\,
	datab => \VGA_86_image|Add4~26_combout\,
	datad => \VGA_86_image|Add4~25_combout\,
	combout => \VGA_86_image|Add4~28_combout\);

-- Location: FF_X47_Y44_N1
\VGA_86_image|curve[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add4~28_combout\,
	ena => \VGA_86_image|curve[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|curve\(6));

-- Location: LCCOMB_X47_Y44_N30
\VGA_86_image|Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~30_combout\ = \VGA_86_image|curve[6]~0_combout\ $ (\VGA_86_image|Add4~27\ $ (\VGA_86_image|frame_num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|curve[6]~0_combout\,
	datad => \VGA_86_image|frame_num\(7),
	cin => \VGA_86_image|Add4~27\,
	combout => \VGA_86_image|Add4~30_combout\);

-- Location: LCCOMB_X47_Y43_N14
\VGA_86_image|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add5~10_combout\ = \VGA_86_image|Add5~9\ $ (!\VGA_86_image|frame_num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|frame_num\(7),
	cin => \VGA_86_image|Add5~9\,
	combout => \VGA_86_image|Add5~10_combout\);

-- Location: LCCOMB_X47_Y43_N28
\VGA_86_image|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add6~8_combout\ = \VGA_86_image|Add5~10_combout\ $ (\VGA_86_image|Add6~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Add5~10_combout\,
	cin => \VGA_86_image|Add6~7\,
	combout => \VGA_86_image|Add6~8_combout\);

-- Location: LCCOMB_X47_Y43_N18
\VGA_86_image|Add4~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~29_combout\ = (\VGA_86_image|frame_num\(7) & (\VGA_86_image|Add6~8_combout\ & ((\VGA_86_image|Add4~10_combout\)))) # (!\VGA_86_image|frame_num\(7) & ((\VGA_86_image|Add4~11_combout\) # ((\VGA_86_image|Add6~8_combout\ & 
-- \VGA_86_image|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|frame_num\(7),
	datab => \VGA_86_image|Add6~8_combout\,
	datac => \VGA_86_image|Add4~11_combout\,
	datad => \VGA_86_image|Add4~10_combout\,
	combout => \VGA_86_image|Add4~29_combout\);

-- Location: LCCOMB_X47_Y44_N6
\VGA_86_image|Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add4~32_combout\ = (!\VGA_86_image|Add4~29_combout\ & ((!\VGA_86_image|Add4~30_combout\) # (!\VGA_86_image|Add4~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Add4~13_combout\,
	datac => \VGA_86_image|Add4~30_combout\,
	datad => \VGA_86_image|Add4~29_combout\,
	combout => \VGA_86_image|Add4~32_combout\);

-- Location: FF_X47_Y44_N7
\VGA_86_image|curve[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add4~32_combout\,
	ena => \VGA_86_image|curve[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|curve\(7));

-- Location: DSPMULT_X48_Y44_N0
\VGA_86_image|Mult1|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clock_25~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \VGA_86_image|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y44_N2
\VGA_86_image|Mult1|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \VGA_86_image|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X49_Y44_N30
\VGA_86_image|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|WideOr0~1_combout\ = (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT2\) # ((\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT3\) # ((\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT4\) # 
-- (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datab => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datac => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT6\,
	combout => \VGA_86_image|WideOr0~1_combout\);

-- Location: LCCOMB_X49_Y44_N2
\VGA_86_image|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|WideOr0~0_combout\ = (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT7\) # ((\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT1\) # ((\VGA_86_image|Mult1|auto_generated|mac_out2~dataout\) # 
-- (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datab => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT1\,
	datac => \VGA_86_image|Mult1|auto_generated|mac_out2~dataout\,
	datad => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT5\,
	combout => \VGA_86_image|WideOr0~0_combout\);

-- Location: LCCOMB_X49_Y44_N28
\VGA_86_image|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|WideOr0~combout\ = (\VGA_86_image|WideOr0~1_combout\) # (\VGA_86_image|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|WideOr0~1_combout\,
	datad => \VGA_86_image|WideOr0~0_combout\,
	combout => \VGA_86_image|WideOr0~combout\);

-- Location: LCCOMB_X49_Y44_N4
\VGA_86_image|Add10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~1_cout\ = CARRY((\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT16\ & \VGA_86_image|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \VGA_86_image|WideOr0~combout\,
	datad => VCC,
	cout => \VGA_86_image|Add10~1_cout\);

-- Location: LCCOMB_X49_Y44_N6
\VGA_86_image|Add10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~2_combout\ = (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT8\ & (!\VGA_86_image|Add10~1_cout\)) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\VGA_86_image|Add10~1_cout\) # (GND)))
-- \VGA_86_image|Add10~3\ = CARRY((!\VGA_86_image|Add10~1_cout\) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \VGA_86_image|Add10~1_cout\,
	combout => \VGA_86_image|Add10~2_combout\,
	cout => \VGA_86_image|Add10~3\);

-- Location: LCCOMB_X49_Y44_N8
\VGA_86_image|Add10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~4_combout\ = (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT9\ & (\VGA_86_image|Add10~3\ $ (GND))) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\VGA_86_image|Add10~3\ & VCC))
-- \VGA_86_image|Add10~5\ = CARRY((\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\VGA_86_image|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \VGA_86_image|Add10~3\,
	combout => \VGA_86_image|Add10~4_combout\,
	cout => \VGA_86_image|Add10~5\);

-- Location: LCCOMB_X49_Y44_N10
\VGA_86_image|Add10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~6_combout\ = (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT10\ & (!\VGA_86_image|Add10~5\)) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT10\ & ((\VGA_86_image|Add10~5\) # (GND)))
-- \VGA_86_image|Add10~7\ = CARRY((!\VGA_86_image|Add10~5\) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \VGA_86_image|Add10~5\,
	combout => \VGA_86_image|Add10~6_combout\,
	cout => \VGA_86_image|Add10~7\);

-- Location: LCCOMB_X49_Y44_N12
\VGA_86_image|Add10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~8_combout\ = (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT11\ & (\VGA_86_image|Add10~7\ $ (GND))) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\VGA_86_image|Add10~7\ & VCC))
-- \VGA_86_image|Add10~9\ = CARRY((\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT11\ & !\VGA_86_image|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \VGA_86_image|Add10~7\,
	combout => \VGA_86_image|Add10~8_combout\,
	cout => \VGA_86_image|Add10~9\);

-- Location: LCCOMB_X49_Y44_N14
\VGA_86_image|Add10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~10_combout\ = (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT12\ & (!\VGA_86_image|Add10~9\)) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT12\ & ((\VGA_86_image|Add10~9\) # (GND)))
-- \VGA_86_image|Add10~11\ = CARRY((!\VGA_86_image|Add10~9\) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \VGA_86_image|Add10~9\,
	combout => \VGA_86_image|Add10~10_combout\,
	cout => \VGA_86_image|Add10~11\);

-- Location: LCCOMB_X49_Y44_N16
\VGA_86_image|Add10~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~12_combout\ = (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT13\ & (\VGA_86_image|Add10~11\ $ (GND))) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\VGA_86_image|Add10~11\ & VCC))
-- \VGA_86_image|Add10~13\ = CARRY((\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT13\ & !\VGA_86_image|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \VGA_86_image|Add10~11\,
	combout => \VGA_86_image|Add10~12_combout\,
	cout => \VGA_86_image|Add10~13\);

-- Location: LCCOMB_X49_Y44_N18
\VGA_86_image|Add10~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~14_combout\ = (\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT14\ & (!\VGA_86_image|Add10~13\)) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\VGA_86_image|Add10~13\) # (GND)))
-- \VGA_86_image|Add10~15\ = CARRY((!\VGA_86_image|Add10~13\) # (!\VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \VGA_86_image|Add10~13\,
	combout => \VGA_86_image|Add10~14_combout\,
	cout => \VGA_86_image|Add10~15\);

-- Location: LCCOMB_X49_Y44_N20
\VGA_86_image|Add10~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add10~16_combout\ = \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT15\ $ (!\VGA_86_image|Add10~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|Mult1|auto_generated|mac_out2~DATAOUT15\,
	cin => \VGA_86_image|Add10~15\,
	combout => \VGA_86_image|Add10~16_combout\);

-- Location: LCCOMB_X49_Y44_N24
\VGA_86_image|this_curve[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|this_curve[7]~0_combout\ = !\VGA_86_image|Add10~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|Add10~16_combout\,
	combout => \VGA_86_image|this_curve[7]~0_combout\);

-- Location: FF_X49_Y44_N25
\VGA_86_image|this_curve[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|this_curve[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|this_curve\(7));

-- Location: FF_X49_Y44_N19
\VGA_86_image|this_curve[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add10~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|this_curve\(6));

-- Location: FF_X49_Y44_N17
\VGA_86_image|this_curve[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add10~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|this_curve\(5));

-- Location: FF_X49_Y44_N15
\VGA_86_image|this_curve[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add10~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|this_curve\(4));

-- Location: FF_X49_Y44_N13
\VGA_86_image|this_curve[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add10~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|this_curve\(3));

-- Location: FF_X49_Y44_N11
\VGA_86_image|this_curve[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|this_curve\(2));

-- Location: FF_X49_Y44_N9
\VGA_86_image|this_curve[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|this_curve\(1));

-- Location: LCCOMB_X44_Y40_N10
\VGA_86_image|center_pos[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[2]~9_cout\ = CARRY(\VGA_86_image|this_curve\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|this_curve\(1),
	datad => VCC,
	cout => \VGA_86_image|center_pos[2]~9_cout\);

-- Location: LCCOMB_X44_Y40_N12
\VGA_86_image|center_pos[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[2]~10_combout\ = (\VGA_86_image|this_curve\(2) & (\VGA_86_image|center_pos[2]~9_cout\ & VCC)) # (!\VGA_86_image|this_curve\(2) & (!\VGA_86_image|center_pos[2]~9_cout\))
-- \VGA_86_image|center_pos[2]~11\ = CARRY((!\VGA_86_image|this_curve\(2) & !\VGA_86_image|center_pos[2]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|this_curve\(2),
	datad => VCC,
	cin => \VGA_86_image|center_pos[2]~9_cout\,
	combout => \VGA_86_image|center_pos[2]~10_combout\,
	cout => \VGA_86_image|center_pos[2]~11\);

-- Location: LCCOMB_X44_Y40_N14
\VGA_86_image|center_pos[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[3]~12_combout\ = (\VGA_86_image|this_curve\(3) & ((GND) # (!\VGA_86_image|center_pos[2]~11\))) # (!\VGA_86_image|this_curve\(3) & (\VGA_86_image|center_pos[2]~11\ $ (GND)))
-- \VGA_86_image|center_pos[3]~13\ = CARRY((\VGA_86_image|this_curve\(3)) # (!\VGA_86_image|center_pos[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|this_curve\(3),
	datad => VCC,
	cin => \VGA_86_image|center_pos[2]~11\,
	combout => \VGA_86_image|center_pos[3]~12_combout\,
	cout => \VGA_86_image|center_pos[3]~13\);

-- Location: LCCOMB_X44_Y40_N16
\VGA_86_image|center_pos[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[4]~14_combout\ = (\VGA_86_image|this_curve\(4) & (\VGA_86_image|center_pos[3]~13\ & VCC)) # (!\VGA_86_image|this_curve\(4) & (!\VGA_86_image|center_pos[3]~13\))
-- \VGA_86_image|center_pos[4]~15\ = CARRY((!\VGA_86_image|this_curve\(4) & !\VGA_86_image|center_pos[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|this_curve\(4),
	datad => VCC,
	cin => \VGA_86_image|center_pos[3]~13\,
	combout => \VGA_86_image|center_pos[4]~14_combout\,
	cout => \VGA_86_image|center_pos[4]~15\);

-- Location: LCCOMB_X44_Y40_N18
\VGA_86_image|center_pos[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[5]~16_combout\ = (\VGA_86_image|this_curve\(5) & (\VGA_86_image|center_pos[4]~15\ $ (GND))) # (!\VGA_86_image|this_curve\(5) & (!\VGA_86_image|center_pos[4]~15\ & VCC))
-- \VGA_86_image|center_pos[5]~17\ = CARRY((\VGA_86_image|this_curve\(5) & !\VGA_86_image|center_pos[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|this_curve\(5),
	datad => VCC,
	cin => \VGA_86_image|center_pos[4]~15\,
	combout => \VGA_86_image|center_pos[5]~16_combout\,
	cout => \VGA_86_image|center_pos[5]~17\);

-- Location: LCCOMB_X44_Y40_N20
\VGA_86_image|center_pos[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[6]~18_combout\ = (\VGA_86_image|this_curve\(6) & (\VGA_86_image|center_pos[5]~17\ & VCC)) # (!\VGA_86_image|this_curve\(6) & (!\VGA_86_image|center_pos[5]~17\))
-- \VGA_86_image|center_pos[6]~19\ = CARRY((!\VGA_86_image|this_curve\(6) & !\VGA_86_image|center_pos[5]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|this_curve\(6),
	datad => VCC,
	cin => \VGA_86_image|center_pos[5]~17\,
	combout => \VGA_86_image|center_pos[6]~18_combout\,
	cout => \VGA_86_image|center_pos[6]~19\);

-- Location: LCCOMB_X44_Y40_N22
\VGA_86_image|center_pos[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[7]~20_combout\ = (\VGA_86_image|this_curve\(7) & (!\VGA_86_image|center_pos[6]~19\ & VCC)) # (!\VGA_86_image|this_curve\(7) & (\VGA_86_image|center_pos[6]~19\ $ (GND)))
-- \VGA_86_image|center_pos[7]~21\ = CARRY((!\VGA_86_image|this_curve\(7) & !\VGA_86_image|center_pos[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|this_curve\(7),
	datad => VCC,
	cin => \VGA_86_image|center_pos[6]~19\,
	combout => \VGA_86_image|center_pos[7]~20_combout\,
	cout => \VGA_86_image|center_pos[7]~21\);

-- Location: LCCOMB_X44_Y40_N24
\VGA_86_image|center_pos[8]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[8]~22_combout\ = (\VGA_86_image|this_curve\(7) & (!\VGA_86_image|center_pos[7]~21\)) # (!\VGA_86_image|this_curve\(7) & (\VGA_86_image|center_pos[7]~21\ & VCC))
-- \VGA_86_image|center_pos[8]~23\ = CARRY((\VGA_86_image|this_curve\(7) & !\VGA_86_image|center_pos[7]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|this_curve\(7),
	datad => VCC,
	cin => \VGA_86_image|center_pos[7]~21\,
	combout => \VGA_86_image|center_pos[8]~22_combout\,
	cout => \VGA_86_image|center_pos[8]~23\);

-- Location: LCCOMB_X44_Y40_N26
\VGA_86_image|center_pos[9]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[9]~24_combout\ = \VGA_86_image|center_pos[8]~23\ $ (\VGA_86_image|this_curve\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|this_curve\(7),
	cin => \VGA_86_image|center_pos[8]~23\,
	combout => \VGA_86_image|center_pos[9]~24_combout\);

-- Location: FF_X44_Y40_N27
\VGA_86_image|center_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|center_pos[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|center_pos\(9));

-- Location: FF_X44_Y40_N25
\VGA_86_image|center_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|center_pos[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|center_pos\(8));

-- Location: FF_X44_Y40_N23
\VGA_86_image|center_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|center_pos[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|center_pos\(7));

-- Location: FF_X44_Y40_N21
\VGA_86_image|center_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|center_pos[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|center_pos\(6));

-- Location: FF_X44_Y40_N19
\VGA_86_image|center_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|center_pos[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|center_pos\(5));

-- Location: FF_X44_Y40_N17
\VGA_86_image|center_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|center_pos[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|center_pos\(4));

-- Location: FF_X44_Y40_N15
\VGA_86_image|center_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|center_pos[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|center_pos\(3));

-- Location: FF_X44_Y40_N13
\VGA_86_image|center_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|center_pos[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|center_pos\(2));

-- Location: LCCOMB_X44_Y40_N8
\VGA_86_image|center_pos[1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[1]~26_combout\ = !\VGA_86_image|this_curve\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|this_curve\(1),
	combout => \VGA_86_image|center_pos[1]~26_combout\);

-- Location: FF_X44_Y40_N9
\VGA_86_image|center_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|center_pos[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|center_pos\(1));

-- Location: FF_X49_Y44_N7
\VGA_86_image|this_curve[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|this_curve\(0));

-- Location: LCCOMB_X44_Y39_N30
\VGA_86_image|center_pos[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|center_pos[0]~feeder_combout\ = \VGA_86_image|this_curve\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|this_curve\(0),
	combout => \VGA_86_image|center_pos[0]~feeder_combout\);

-- Location: FF_X44_Y39_N31
\VGA_86_image|center_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|center_pos[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|center_pos\(0));

-- Location: LCCOMB_X43_Y38_N6
\VGA_86_image|h_gap_1[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_gap_1[0]~10_combout\ = (\VGA_86_image|center_pos\(0) & ((GND) # (!\VGA_86_image|h_count\(0)))) # (!\VGA_86_image|center_pos\(0) & (\VGA_86_image|h_count\(0) $ (GND)))
-- \VGA_86_image|h_gap_1[0]~11\ = CARRY((\VGA_86_image|center_pos\(0)) # (!\VGA_86_image|h_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(0),
	datab => \VGA_86_image|h_count\(0),
	datad => VCC,
	combout => \VGA_86_image|h_gap_1[0]~10_combout\,
	cout => \VGA_86_image|h_gap_1[0]~11\);

-- Location: LCCOMB_X43_Y38_N8
\VGA_86_image|h_gap_1[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_gap_1[1]~12_combout\ = (\VGA_86_image|h_count\(1) & ((\VGA_86_image|center_pos\(1) & (!\VGA_86_image|h_gap_1[0]~11\)) # (!\VGA_86_image|center_pos\(1) & ((\VGA_86_image|h_gap_1[0]~11\) # (GND))))) # (!\VGA_86_image|h_count\(1) & 
-- ((\VGA_86_image|center_pos\(1) & (\VGA_86_image|h_gap_1[0]~11\ & VCC)) # (!\VGA_86_image|center_pos\(1) & (!\VGA_86_image|h_gap_1[0]~11\))))
-- \VGA_86_image|h_gap_1[1]~13\ = CARRY((\VGA_86_image|h_count\(1) & ((!\VGA_86_image|h_gap_1[0]~11\) # (!\VGA_86_image|center_pos\(1)))) # (!\VGA_86_image|h_count\(1) & (!\VGA_86_image|center_pos\(1) & !\VGA_86_image|h_gap_1[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(1),
	datab => \VGA_86_image|center_pos\(1),
	datad => VCC,
	cin => \VGA_86_image|h_gap_1[0]~11\,
	combout => \VGA_86_image|h_gap_1[1]~12_combout\,
	cout => \VGA_86_image|h_gap_1[1]~13\);

-- Location: LCCOMB_X43_Y38_N10
\VGA_86_image|h_gap_1[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_gap_1[2]~14_combout\ = ((\VGA_86_image|h_count\(2) $ (\VGA_86_image|center_pos\(2) $ (\VGA_86_image|h_gap_1[1]~13\)))) # (GND)
-- \VGA_86_image|h_gap_1[2]~15\ = CARRY((\VGA_86_image|h_count\(2) & (\VGA_86_image|center_pos\(2) & !\VGA_86_image|h_gap_1[1]~13\)) # (!\VGA_86_image|h_count\(2) & ((\VGA_86_image|center_pos\(2)) # (!\VGA_86_image|h_gap_1[1]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(2),
	datab => \VGA_86_image|center_pos\(2),
	datad => VCC,
	cin => \VGA_86_image|h_gap_1[1]~13\,
	combout => \VGA_86_image|h_gap_1[2]~14_combout\,
	cout => \VGA_86_image|h_gap_1[2]~15\);

-- Location: LCCOMB_X43_Y38_N12
\VGA_86_image|h_gap_1[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_gap_1[3]~16_combout\ = (\VGA_86_image|center_pos\(3) & ((\VGA_86_image|h_count\(3) & (!\VGA_86_image|h_gap_1[2]~15\)) # (!\VGA_86_image|h_count\(3) & (\VGA_86_image|h_gap_1[2]~15\ & VCC)))) # (!\VGA_86_image|center_pos\(3) & 
-- ((\VGA_86_image|h_count\(3) & ((\VGA_86_image|h_gap_1[2]~15\) # (GND))) # (!\VGA_86_image|h_count\(3) & (!\VGA_86_image|h_gap_1[2]~15\))))
-- \VGA_86_image|h_gap_1[3]~17\ = CARRY((\VGA_86_image|center_pos\(3) & (\VGA_86_image|h_count\(3) & !\VGA_86_image|h_gap_1[2]~15\)) # (!\VGA_86_image|center_pos\(3) & ((\VGA_86_image|h_count\(3)) # (!\VGA_86_image|h_gap_1[2]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(3),
	datab => \VGA_86_image|h_count\(3),
	datad => VCC,
	cin => \VGA_86_image|h_gap_1[2]~15\,
	combout => \VGA_86_image|h_gap_1[3]~16_combout\,
	cout => \VGA_86_image|h_gap_1[3]~17\);

-- Location: LCCOMB_X43_Y38_N14
\VGA_86_image|h_gap_1[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_gap_1[4]~18_combout\ = ((\VGA_86_image|center_pos\(4) $ (\VGA_86_image|h_count\(4) $ (\VGA_86_image|h_gap_1[3]~17\)))) # (GND)
-- \VGA_86_image|h_gap_1[4]~19\ = CARRY((\VGA_86_image|center_pos\(4) & ((!\VGA_86_image|h_gap_1[3]~17\) # (!\VGA_86_image|h_count\(4)))) # (!\VGA_86_image|center_pos\(4) & (!\VGA_86_image|h_count\(4) & !\VGA_86_image|h_gap_1[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(4),
	datab => \VGA_86_image|h_count\(4),
	datad => VCC,
	cin => \VGA_86_image|h_gap_1[3]~17\,
	combout => \VGA_86_image|h_gap_1[4]~18_combout\,
	cout => \VGA_86_image|h_gap_1[4]~19\);

-- Location: LCCOMB_X43_Y38_N16
\VGA_86_image|h_gap_1[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_gap_1[5]~20_combout\ = (\VGA_86_image|center_pos\(5) & ((\VGA_86_image|h_count\(5) & (!\VGA_86_image|h_gap_1[4]~19\)) # (!\VGA_86_image|h_count\(5) & (\VGA_86_image|h_gap_1[4]~19\ & VCC)))) # (!\VGA_86_image|center_pos\(5) & 
-- ((\VGA_86_image|h_count\(5) & ((\VGA_86_image|h_gap_1[4]~19\) # (GND))) # (!\VGA_86_image|h_count\(5) & (!\VGA_86_image|h_gap_1[4]~19\))))
-- \VGA_86_image|h_gap_1[5]~21\ = CARRY((\VGA_86_image|center_pos\(5) & (\VGA_86_image|h_count\(5) & !\VGA_86_image|h_gap_1[4]~19\)) # (!\VGA_86_image|center_pos\(5) & ((\VGA_86_image|h_count\(5)) # (!\VGA_86_image|h_gap_1[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(5),
	datab => \VGA_86_image|h_count\(5),
	datad => VCC,
	cin => \VGA_86_image|h_gap_1[4]~19\,
	combout => \VGA_86_image|h_gap_1[5]~20_combout\,
	cout => \VGA_86_image|h_gap_1[5]~21\);

-- Location: LCCOMB_X43_Y38_N18
\VGA_86_image|h_gap_1[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_gap_1[6]~22_combout\ = ((\VGA_86_image|h_count\(6) $ (\VGA_86_image|center_pos\(6) $ (\VGA_86_image|h_gap_1[5]~21\)))) # (GND)
-- \VGA_86_image|h_gap_1[6]~23\ = CARRY((\VGA_86_image|h_count\(6) & (\VGA_86_image|center_pos\(6) & !\VGA_86_image|h_gap_1[5]~21\)) # (!\VGA_86_image|h_count\(6) & ((\VGA_86_image|center_pos\(6)) # (!\VGA_86_image|h_gap_1[5]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(6),
	datab => \VGA_86_image|center_pos\(6),
	datad => VCC,
	cin => \VGA_86_image|h_gap_1[5]~21\,
	combout => \VGA_86_image|h_gap_1[6]~22_combout\,
	cout => \VGA_86_image|h_gap_1[6]~23\);

-- Location: LCCOMB_X43_Y38_N20
\VGA_86_image|h_gap_1[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_gap_1[7]~24_combout\ = (\VGA_86_image|center_pos\(7) & ((\VGA_86_image|h_count\(7) & (!\VGA_86_image|h_gap_1[6]~23\)) # (!\VGA_86_image|h_count\(7) & (\VGA_86_image|h_gap_1[6]~23\ & VCC)))) # (!\VGA_86_image|center_pos\(7) & 
-- ((\VGA_86_image|h_count\(7) & ((\VGA_86_image|h_gap_1[6]~23\) # (GND))) # (!\VGA_86_image|h_count\(7) & (!\VGA_86_image|h_gap_1[6]~23\))))
-- \VGA_86_image|h_gap_1[7]~25\ = CARRY((\VGA_86_image|center_pos\(7) & (\VGA_86_image|h_count\(7) & !\VGA_86_image|h_gap_1[6]~23\)) # (!\VGA_86_image|center_pos\(7) & ((\VGA_86_image|h_count\(7)) # (!\VGA_86_image|h_gap_1[6]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(7),
	datab => \VGA_86_image|h_count\(7),
	datad => VCC,
	cin => \VGA_86_image|h_gap_1[6]~23\,
	combout => \VGA_86_image|h_gap_1[7]~24_combout\,
	cout => \VGA_86_image|h_gap_1[7]~25\);

-- Location: LCCOMB_X43_Y38_N22
\VGA_86_image|h_gap_1[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_gap_1[8]~26_combout\ = ((\VGA_86_image|center_pos\(8) $ (\VGA_86_image|h_count\(8) $ (\VGA_86_image|h_gap_1[7]~25\)))) # (GND)
-- \VGA_86_image|h_gap_1[8]~27\ = CARRY((\VGA_86_image|center_pos\(8) & ((!\VGA_86_image|h_gap_1[7]~25\) # (!\VGA_86_image|h_count\(8)))) # (!\VGA_86_image|center_pos\(8) & (!\VGA_86_image|h_count\(8) & !\VGA_86_image|h_gap_1[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(8),
	datab => \VGA_86_image|h_count\(8),
	datad => VCC,
	cin => \VGA_86_image|h_gap_1[7]~25\,
	combout => \VGA_86_image|h_gap_1[8]~26_combout\,
	cout => \VGA_86_image|h_gap_1[8]~27\);

-- Location: LCCOMB_X43_Y38_N24
\VGA_86_image|h_gap_1[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|h_gap_1[9]~28_combout\ = \VGA_86_image|center_pos\(9) $ (\VGA_86_image|h_gap_1[8]~27\ $ (!\VGA_86_image|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(9),
	datad => \VGA_86_image|h_count\(9),
	cin => \VGA_86_image|h_gap_1[8]~27\,
	combout => \VGA_86_image|h_gap_1[9]~28_combout\);

-- Location: LCCOMB_X44_Y38_N6
\VGA_86_image|Add13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add13~0_combout\ = (\VGA_86_image|h_count\(0) & ((GND) # (!\VGA_86_image|center_pos\(0)))) # (!\VGA_86_image|h_count\(0) & (\VGA_86_image|center_pos\(0) $ (GND)))
-- \VGA_86_image|Add13~1\ = CARRY((\VGA_86_image|h_count\(0)) # (!\VGA_86_image|center_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(0),
	datab => \VGA_86_image|center_pos\(0),
	datad => VCC,
	combout => \VGA_86_image|Add13~0_combout\,
	cout => \VGA_86_image|Add13~1\);

-- Location: LCCOMB_X44_Y38_N8
\VGA_86_image|Add13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add13~2_combout\ = (\VGA_86_image|h_count\(1) & ((\VGA_86_image|center_pos\(1) & (!\VGA_86_image|Add13~1\)) # (!\VGA_86_image|center_pos\(1) & (\VGA_86_image|Add13~1\ & VCC)))) # (!\VGA_86_image|h_count\(1) & ((\VGA_86_image|center_pos\(1) & 
-- ((\VGA_86_image|Add13~1\) # (GND))) # (!\VGA_86_image|center_pos\(1) & (!\VGA_86_image|Add13~1\))))
-- \VGA_86_image|Add13~3\ = CARRY((\VGA_86_image|h_count\(1) & (\VGA_86_image|center_pos\(1) & !\VGA_86_image|Add13~1\)) # (!\VGA_86_image|h_count\(1) & ((\VGA_86_image|center_pos\(1)) # (!\VGA_86_image|Add13~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(1),
	datab => \VGA_86_image|center_pos\(1),
	datad => VCC,
	cin => \VGA_86_image|Add13~1\,
	combout => \VGA_86_image|Add13~2_combout\,
	cout => \VGA_86_image|Add13~3\);

-- Location: LCCOMB_X44_Y38_N10
\VGA_86_image|Add13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add13~4_combout\ = ((\VGA_86_image|h_count\(2) $ (\VGA_86_image|center_pos\(2) $ (\VGA_86_image|Add13~3\)))) # (GND)
-- \VGA_86_image|Add13~5\ = CARRY((\VGA_86_image|h_count\(2) & ((!\VGA_86_image|Add13~3\) # (!\VGA_86_image|center_pos\(2)))) # (!\VGA_86_image|h_count\(2) & (!\VGA_86_image|center_pos\(2) & !\VGA_86_image|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(2),
	datab => \VGA_86_image|center_pos\(2),
	datad => VCC,
	cin => \VGA_86_image|Add13~3\,
	combout => \VGA_86_image|Add13~4_combout\,
	cout => \VGA_86_image|Add13~5\);

-- Location: LCCOMB_X44_Y38_N12
\VGA_86_image|Add13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add13~6_combout\ = (\VGA_86_image|center_pos\(3) & ((\VGA_86_image|h_count\(3) & (!\VGA_86_image|Add13~5\)) # (!\VGA_86_image|h_count\(3) & ((\VGA_86_image|Add13~5\) # (GND))))) # (!\VGA_86_image|center_pos\(3) & ((\VGA_86_image|h_count\(3) 
-- & (\VGA_86_image|Add13~5\ & VCC)) # (!\VGA_86_image|h_count\(3) & (!\VGA_86_image|Add13~5\))))
-- \VGA_86_image|Add13~7\ = CARRY((\VGA_86_image|center_pos\(3) & ((!\VGA_86_image|Add13~5\) # (!\VGA_86_image|h_count\(3)))) # (!\VGA_86_image|center_pos\(3) & (!\VGA_86_image|h_count\(3) & !\VGA_86_image|Add13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(3),
	datab => \VGA_86_image|h_count\(3),
	datad => VCC,
	cin => \VGA_86_image|Add13~5\,
	combout => \VGA_86_image|Add13~6_combout\,
	cout => \VGA_86_image|Add13~7\);

-- Location: LCCOMB_X44_Y38_N14
\VGA_86_image|Add13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add13~8_combout\ = ((\VGA_86_image|h_count\(4) $ (\VGA_86_image|center_pos\(4) $ (\VGA_86_image|Add13~7\)))) # (GND)
-- \VGA_86_image|Add13~9\ = CARRY((\VGA_86_image|h_count\(4) & ((!\VGA_86_image|Add13~7\) # (!\VGA_86_image|center_pos\(4)))) # (!\VGA_86_image|h_count\(4) & (!\VGA_86_image|center_pos\(4) & !\VGA_86_image|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(4),
	datab => \VGA_86_image|center_pos\(4),
	datad => VCC,
	cin => \VGA_86_image|Add13~7\,
	combout => \VGA_86_image|Add13~8_combout\,
	cout => \VGA_86_image|Add13~9\);

-- Location: LCCOMB_X44_Y38_N16
\VGA_86_image|Add13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add13~10_combout\ = (\VGA_86_image|center_pos\(5) & ((\VGA_86_image|h_count\(5) & (!\VGA_86_image|Add13~9\)) # (!\VGA_86_image|h_count\(5) & ((\VGA_86_image|Add13~9\) # (GND))))) # (!\VGA_86_image|center_pos\(5) & ((\VGA_86_image|h_count\(5) 
-- & (\VGA_86_image|Add13~9\ & VCC)) # (!\VGA_86_image|h_count\(5) & (!\VGA_86_image|Add13~9\))))
-- \VGA_86_image|Add13~11\ = CARRY((\VGA_86_image|center_pos\(5) & ((!\VGA_86_image|Add13~9\) # (!\VGA_86_image|h_count\(5)))) # (!\VGA_86_image|center_pos\(5) & (!\VGA_86_image|h_count\(5) & !\VGA_86_image|Add13~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(5),
	datab => \VGA_86_image|h_count\(5),
	datad => VCC,
	cin => \VGA_86_image|Add13~9\,
	combout => \VGA_86_image|Add13~10_combout\,
	cout => \VGA_86_image|Add13~11\);

-- Location: LCCOMB_X44_Y38_N18
\VGA_86_image|Add13~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add13~12_combout\ = ((\VGA_86_image|center_pos\(6) $ (\VGA_86_image|h_count\(6) $ (\VGA_86_image|Add13~11\)))) # (GND)
-- \VGA_86_image|Add13~13\ = CARRY((\VGA_86_image|center_pos\(6) & (\VGA_86_image|h_count\(6) & !\VGA_86_image|Add13~11\)) # (!\VGA_86_image|center_pos\(6) & ((\VGA_86_image|h_count\(6)) # (!\VGA_86_image|Add13~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(6),
	datab => \VGA_86_image|h_count\(6),
	datad => VCC,
	cin => \VGA_86_image|Add13~11\,
	combout => \VGA_86_image|Add13~12_combout\,
	cout => \VGA_86_image|Add13~13\);

-- Location: LCCOMB_X44_Y38_N20
\VGA_86_image|Add13~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add13~14_combout\ = (\VGA_86_image|center_pos\(7) & ((\VGA_86_image|h_count\(7) & (!\VGA_86_image|Add13~13\)) # (!\VGA_86_image|h_count\(7) & ((\VGA_86_image|Add13~13\) # (GND))))) # (!\VGA_86_image|center_pos\(7) & 
-- ((\VGA_86_image|h_count\(7) & (\VGA_86_image|Add13~13\ & VCC)) # (!\VGA_86_image|h_count\(7) & (!\VGA_86_image|Add13~13\))))
-- \VGA_86_image|Add13~15\ = CARRY((\VGA_86_image|center_pos\(7) & ((!\VGA_86_image|Add13~13\) # (!\VGA_86_image|h_count\(7)))) # (!\VGA_86_image|center_pos\(7) & (!\VGA_86_image|h_count\(7) & !\VGA_86_image|Add13~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(7),
	datab => \VGA_86_image|h_count\(7),
	datad => VCC,
	cin => \VGA_86_image|Add13~13\,
	combout => \VGA_86_image|Add13~14_combout\,
	cout => \VGA_86_image|Add13~15\);

-- Location: LCCOMB_X44_Y38_N22
\VGA_86_image|Add13~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add13~16_combout\ = ((\VGA_86_image|center_pos\(8) $ (\VGA_86_image|h_count\(8) $ (\VGA_86_image|Add13~15\)))) # (GND)
-- \VGA_86_image|Add13~17\ = CARRY((\VGA_86_image|center_pos\(8) & (\VGA_86_image|h_count\(8) & !\VGA_86_image|Add13~15\)) # (!\VGA_86_image|center_pos\(8) & ((\VGA_86_image|h_count\(8)) # (!\VGA_86_image|Add13~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(8),
	datab => \VGA_86_image|h_count\(8),
	datad => VCC,
	cin => \VGA_86_image|Add13~15\,
	combout => \VGA_86_image|Add13~16_combout\,
	cout => \VGA_86_image|Add13~17\);

-- Location: LCCOMB_X44_Y38_N24
\VGA_86_image|Add13~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add13~18_combout\ = \VGA_86_image|center_pos\(9) $ (\VGA_86_image|Add13~17\ $ (!\VGA_86_image|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(9),
	datad => \VGA_86_image|h_count\(9),
	cin => \VGA_86_image|Add13~17\,
	combout => \VGA_86_image|Add13~18_combout\);

-- Location: LCCOMB_X44_Y39_N0
\VGA_86_image|LessThan14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan14~1_cout\ = CARRY((!\VGA_86_image|center_pos\(0) & \VGA_86_image|h_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(0),
	datab => \VGA_86_image|h_count\(0),
	datad => VCC,
	cout => \VGA_86_image|LessThan14~1_cout\);

-- Location: LCCOMB_X44_Y39_N2
\VGA_86_image|LessThan14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan14~3_cout\ = CARRY((\VGA_86_image|h_count\(1) & (\VGA_86_image|center_pos\(1) & !\VGA_86_image|LessThan14~1_cout\)) # (!\VGA_86_image|h_count\(1) & ((\VGA_86_image|center_pos\(1)) # (!\VGA_86_image|LessThan14~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(1),
	datab => \VGA_86_image|center_pos\(1),
	datad => VCC,
	cin => \VGA_86_image|LessThan14~1_cout\,
	cout => \VGA_86_image|LessThan14~3_cout\);

-- Location: LCCOMB_X44_Y39_N4
\VGA_86_image|LessThan14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan14~5_cout\ = CARRY((\VGA_86_image|center_pos\(2) & (\VGA_86_image|h_count\(2) & !\VGA_86_image|LessThan14~3_cout\)) # (!\VGA_86_image|center_pos\(2) & ((\VGA_86_image|h_count\(2)) # (!\VGA_86_image|LessThan14~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(2),
	datab => \VGA_86_image|h_count\(2),
	datad => VCC,
	cin => \VGA_86_image|LessThan14~3_cout\,
	cout => \VGA_86_image|LessThan14~5_cout\);

-- Location: LCCOMB_X44_Y39_N6
\VGA_86_image|LessThan14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan14~7_cout\ = CARRY((\VGA_86_image|center_pos\(3) & ((!\VGA_86_image|LessThan14~5_cout\) # (!\VGA_86_image|h_count\(3)))) # (!\VGA_86_image|center_pos\(3) & (!\VGA_86_image|h_count\(3) & !\VGA_86_image|LessThan14~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(3),
	datab => \VGA_86_image|h_count\(3),
	datad => VCC,
	cin => \VGA_86_image|LessThan14~5_cout\,
	cout => \VGA_86_image|LessThan14~7_cout\);

-- Location: LCCOMB_X44_Y39_N8
\VGA_86_image|LessThan14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan14~9_cout\ = CARRY((\VGA_86_image|center_pos\(4) & (\VGA_86_image|h_count\(4) & !\VGA_86_image|LessThan14~7_cout\)) # (!\VGA_86_image|center_pos\(4) & ((\VGA_86_image|h_count\(4)) # (!\VGA_86_image|LessThan14~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(4),
	datab => \VGA_86_image|h_count\(4),
	datad => VCC,
	cin => \VGA_86_image|LessThan14~7_cout\,
	cout => \VGA_86_image|LessThan14~9_cout\);

-- Location: LCCOMB_X44_Y39_N10
\VGA_86_image|LessThan14~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan14~11_cout\ = CARRY((\VGA_86_image|center_pos\(5) & ((!\VGA_86_image|LessThan14~9_cout\) # (!\VGA_86_image|h_count\(5)))) # (!\VGA_86_image|center_pos\(5) & (!\VGA_86_image|h_count\(5) & !\VGA_86_image|LessThan14~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(5),
	datab => \VGA_86_image|h_count\(5),
	datad => VCC,
	cin => \VGA_86_image|LessThan14~9_cout\,
	cout => \VGA_86_image|LessThan14~11_cout\);

-- Location: LCCOMB_X44_Y39_N12
\VGA_86_image|LessThan14~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan14~13_cout\ = CARRY((\VGA_86_image|center_pos\(6) & (\VGA_86_image|h_count\(6) & !\VGA_86_image|LessThan14~11_cout\)) # (!\VGA_86_image|center_pos\(6) & ((\VGA_86_image|h_count\(6)) # (!\VGA_86_image|LessThan14~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(6),
	datab => \VGA_86_image|h_count\(6),
	datad => VCC,
	cin => \VGA_86_image|LessThan14~11_cout\,
	cout => \VGA_86_image|LessThan14~13_cout\);

-- Location: LCCOMB_X44_Y39_N14
\VGA_86_image|LessThan14~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan14~15_cout\ = CARRY((\VGA_86_image|h_count\(7) & (\VGA_86_image|center_pos\(7) & !\VGA_86_image|LessThan14~13_cout\)) # (!\VGA_86_image|h_count\(7) & ((\VGA_86_image|center_pos\(7)) # (!\VGA_86_image|LessThan14~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_count\(7),
	datab => \VGA_86_image|center_pos\(7),
	datad => VCC,
	cin => \VGA_86_image|LessThan14~13_cout\,
	cout => \VGA_86_image|LessThan14~15_cout\);

-- Location: LCCOMB_X44_Y39_N16
\VGA_86_image|LessThan14~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan14~17_cout\ = CARRY((\VGA_86_image|center_pos\(8) & (\VGA_86_image|h_count\(8) & !\VGA_86_image|LessThan14~15_cout\)) # (!\VGA_86_image|center_pos\(8) & ((\VGA_86_image|h_count\(8)) # (!\VGA_86_image|LessThan14~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|center_pos\(8),
	datab => \VGA_86_image|h_count\(8),
	datad => VCC,
	cin => \VGA_86_image|LessThan14~15_cout\,
	cout => \VGA_86_image|LessThan14~17_cout\);

-- Location: LCCOMB_X44_Y39_N18
\VGA_86_image|LessThan14~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan14~18_combout\ = (\VGA_86_image|center_pos\(9) & (\VGA_86_image|LessThan14~17_cout\ & \VGA_86_image|h_count\(9))) # (!\VGA_86_image|center_pos\(9) & ((\VGA_86_image|LessThan14~17_cout\) # (\VGA_86_image|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|center_pos\(9),
	datad => \VGA_86_image|h_count\(9),
	cin => \VGA_86_image|LessThan14~17_cout\,
	combout => \VGA_86_image|LessThan14~18_combout\);

-- Location: FF_X43_Y38_N25
\VGA_86_image|h_gap_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_gap_1[9]~28_combout\,
	asdata => \VGA_86_image|Add13~18_combout\,
	sload => \VGA_86_image|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_gap_1\(9));

-- Location: LCCOMB_X40_Y38_N0
\VGA_86_image|x_value_b[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_b[1]~8_combout\ = (\VGA_86_image|v_count\(3) & (\VGA_86_image|v_count\(2) $ (VCC))) # (!\VGA_86_image|v_count\(3) & (\VGA_86_image|v_count\(2) & VCC))
-- \VGA_86_image|x_value_b[1]~9\ = CARRY((\VGA_86_image|v_count\(3) & \VGA_86_image|v_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(3),
	datab => \VGA_86_image|v_count\(2),
	datad => VCC,
	combout => \VGA_86_image|x_value_b[1]~8_combout\,
	cout => \VGA_86_image|x_value_b[1]~9\);

-- Location: LCCOMB_X40_Y38_N2
\VGA_86_image|x_value_b[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_b[2]~10_combout\ = (\VGA_86_image|v_count\(4) & (!\VGA_86_image|x_value_b[1]~9\)) # (!\VGA_86_image|v_count\(4) & ((\VGA_86_image|x_value_b[1]~9\) # (GND)))
-- \VGA_86_image|x_value_b[2]~11\ = CARRY((!\VGA_86_image|x_value_b[1]~9\) # (!\VGA_86_image|v_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(4),
	datad => VCC,
	cin => \VGA_86_image|x_value_b[1]~9\,
	combout => \VGA_86_image|x_value_b[2]~10_combout\,
	cout => \VGA_86_image|x_value_b[2]~11\);

-- Location: LCCOMB_X40_Y38_N4
\VGA_86_image|x_value_b[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_b[3]~12_combout\ = (\VGA_86_image|v_count\(5) & ((GND) # (!\VGA_86_image|x_value_b[2]~11\))) # (!\VGA_86_image|v_count\(5) & (\VGA_86_image|x_value_b[2]~11\ $ (GND)))
-- \VGA_86_image|x_value_b[3]~13\ = CARRY((\VGA_86_image|v_count\(5)) # (!\VGA_86_image|x_value_b[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(5),
	datad => VCC,
	cin => \VGA_86_image|x_value_b[2]~11\,
	combout => \VGA_86_image|x_value_b[3]~12_combout\,
	cout => \VGA_86_image|x_value_b[3]~13\);

-- Location: LCCOMB_X40_Y38_N6
\VGA_86_image|x_value_b[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_b[4]~14_combout\ = (\VGA_86_image|v_count\(6) & (\VGA_86_image|x_value_b[3]~13\ & VCC)) # (!\VGA_86_image|v_count\(6) & (!\VGA_86_image|x_value_b[3]~13\))
-- \VGA_86_image|x_value_b[4]~15\ = CARRY((!\VGA_86_image|v_count\(6) & !\VGA_86_image|x_value_b[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(6),
	datad => VCC,
	cin => \VGA_86_image|x_value_b[3]~13\,
	combout => \VGA_86_image|x_value_b[4]~14_combout\,
	cout => \VGA_86_image|x_value_b[4]~15\);

-- Location: LCCOMB_X40_Y38_N8
\VGA_86_image|x_value_b[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_b[5]~16_combout\ = (\VGA_86_image|v_count\(7) & (\VGA_86_image|x_value_b[4]~15\ $ (GND))) # (!\VGA_86_image|v_count\(7) & (!\VGA_86_image|x_value_b[4]~15\ & VCC))
-- \VGA_86_image|x_value_b[5]~17\ = CARRY((\VGA_86_image|v_count\(7) & !\VGA_86_image|x_value_b[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(7),
	datad => VCC,
	cin => \VGA_86_image|x_value_b[4]~15\,
	combout => \VGA_86_image|x_value_b[5]~16_combout\,
	cout => \VGA_86_image|x_value_b[5]~17\);

-- Location: LCCOMB_X40_Y38_N10
\VGA_86_image|x_value_b[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_b[6]~18_combout\ = (\VGA_86_image|v_count\(8) & (!\VGA_86_image|x_value_b[5]~17\)) # (!\VGA_86_image|v_count\(8) & ((\VGA_86_image|x_value_b[5]~17\) # (GND)))
-- \VGA_86_image|x_value_b[6]~19\ = CARRY((!\VGA_86_image|x_value_b[5]~17\) # (!\VGA_86_image|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(8),
	datad => VCC,
	cin => \VGA_86_image|x_value_b[5]~17\,
	combout => \VGA_86_image|x_value_b[6]~18_combout\,
	cout => \VGA_86_image|x_value_b[6]~19\);

-- Location: LCCOMB_X40_Y38_N12
\VGA_86_image|x_value_b[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_b[7]~20_combout\ = (\VGA_86_image|v_count\(9) & (\VGA_86_image|x_value_b[6]~19\ $ (GND))) # (!\VGA_86_image|v_count\(9) & (!\VGA_86_image|x_value_b[6]~19\ & VCC))
-- \VGA_86_image|x_value_b[7]~21\ = CARRY((\VGA_86_image|v_count\(9) & !\VGA_86_image|x_value_b[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(9),
	datad => VCC,
	cin => \VGA_86_image|x_value_b[6]~19\,
	combout => \VGA_86_image|x_value_b[7]~20_combout\,
	cout => \VGA_86_image|x_value_b[7]~21\);

-- Location: LCCOMB_X40_Y38_N14
\VGA_86_image|x_value_b[8]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_b[8]~22_combout\ = \VGA_86_image|x_value_b[7]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VGA_86_image|x_value_b[7]~21\,
	combout => \VGA_86_image|x_value_b[8]~22_combout\);

-- Location: FF_X40_Y38_N15
\VGA_86_image|x_value_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_b[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_b\(8));

-- Location: FF_X43_Y38_N23
\VGA_86_image|h_gap_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_gap_1[8]~26_combout\,
	asdata => \VGA_86_image|Add13~16_combout\,
	sload => \VGA_86_image|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_gap_1\(8));

-- Location: FF_X43_Y38_N21
\VGA_86_image|h_gap_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_gap_1[7]~24_combout\,
	asdata => \VGA_86_image|Add13~14_combout\,
	sload => \VGA_86_image|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_gap_1\(7));

-- Location: FF_X40_Y38_N13
\VGA_86_image|x_value_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_b[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_b\(7));

-- Location: FF_X43_Y38_N19
\VGA_86_image|h_gap_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_gap_1[6]~22_combout\,
	asdata => \VGA_86_image|Add13~12_combout\,
	sload => \VGA_86_image|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_gap_1\(6));

-- Location: FF_X40_Y38_N11
\VGA_86_image|x_value_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_b[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_b\(6));

-- Location: FF_X43_Y38_N17
\VGA_86_image|h_gap_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_gap_1[5]~20_combout\,
	asdata => \VGA_86_image|Add13~10_combout\,
	sload => \VGA_86_image|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_gap_1\(5));

-- Location: FF_X40_Y38_N9
\VGA_86_image|x_value_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_b[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_b\(5));

-- Location: FF_X40_Y38_N7
\VGA_86_image|x_value_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_b[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_b\(4));

-- Location: FF_X43_Y38_N15
\VGA_86_image|h_gap_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_gap_1[4]~18_combout\,
	asdata => \VGA_86_image|Add13~8_combout\,
	sload => \VGA_86_image|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_gap_1\(4));

-- Location: FF_X43_Y38_N13
\VGA_86_image|h_gap_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_gap_1[3]~16_combout\,
	asdata => \VGA_86_image|Add13~6_combout\,
	sload => \VGA_86_image|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_gap_1\(3));

-- Location: FF_X40_Y38_N5
\VGA_86_image|x_value_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_b[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_b\(3));

-- Location: FF_X40_Y38_N3
\VGA_86_image|x_value_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_b[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_b\(2));

-- Location: FF_X43_Y38_N11
\VGA_86_image|h_gap_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_gap_1[2]~14_combout\,
	asdata => \VGA_86_image|Add13~4_combout\,
	sload => \VGA_86_image|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_gap_1\(2));

-- Location: FF_X40_Y38_N1
\VGA_86_image|x_value_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_b[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_b\(1));

-- Location: FF_X43_Y38_N9
\VGA_86_image|h_gap_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_gap_1[1]~12_combout\,
	asdata => \VGA_86_image|Add13~2_combout\,
	sload => \VGA_86_image|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_gap_1\(1));

-- Location: FF_X43_Y38_N7
\VGA_86_image|h_gap_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|h_gap_1[0]~10_combout\,
	asdata => \VGA_86_image|Add13~0_combout\,
	sload => \VGA_86_image|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|h_gap_1\(0));

-- Location: LCCOMB_X39_Y38_N4
\VGA_86_image|LessThan17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan17~1_cout\ = CARRY((!\VGA_86_image|h_gap_1\(0) & \VGA_86_image|x_value_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(0),
	datab => \VGA_86_image|x_value_b\(0),
	datad => VCC,
	cout => \VGA_86_image|LessThan17~1_cout\);

-- Location: LCCOMB_X39_Y38_N6
\VGA_86_image|LessThan17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan17~3_cout\ = CARRY((\VGA_86_image|x_value_b\(1) & (\VGA_86_image|h_gap_1\(1) & !\VGA_86_image|LessThan17~1_cout\)) # (!\VGA_86_image|x_value_b\(1) & ((\VGA_86_image|h_gap_1\(1)) # (!\VGA_86_image|LessThan17~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|x_value_b\(1),
	datab => \VGA_86_image|h_gap_1\(1),
	datad => VCC,
	cin => \VGA_86_image|LessThan17~1_cout\,
	cout => \VGA_86_image|LessThan17~3_cout\);

-- Location: LCCOMB_X39_Y38_N8
\VGA_86_image|LessThan17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan17~5_cout\ = CARRY((\VGA_86_image|x_value_b\(2) & ((!\VGA_86_image|LessThan17~3_cout\) # (!\VGA_86_image|h_gap_1\(2)))) # (!\VGA_86_image|x_value_b\(2) & (!\VGA_86_image|h_gap_1\(2) & !\VGA_86_image|LessThan17~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|x_value_b\(2),
	datab => \VGA_86_image|h_gap_1\(2),
	datad => VCC,
	cin => \VGA_86_image|LessThan17~3_cout\,
	cout => \VGA_86_image|LessThan17~5_cout\);

-- Location: LCCOMB_X39_Y38_N10
\VGA_86_image|LessThan17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan17~7_cout\ = CARRY((\VGA_86_image|h_gap_1\(3) & ((!\VGA_86_image|LessThan17~5_cout\) # (!\VGA_86_image|x_value_b\(3)))) # (!\VGA_86_image|h_gap_1\(3) & (!\VGA_86_image|x_value_b\(3) & !\VGA_86_image|LessThan17~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(3),
	datab => \VGA_86_image|x_value_b\(3),
	datad => VCC,
	cin => \VGA_86_image|LessThan17~5_cout\,
	cout => \VGA_86_image|LessThan17~7_cout\);

-- Location: LCCOMB_X39_Y38_N12
\VGA_86_image|LessThan17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan17~9_cout\ = CARRY((\VGA_86_image|x_value_b\(4) & ((!\VGA_86_image|LessThan17~7_cout\) # (!\VGA_86_image|h_gap_1\(4)))) # (!\VGA_86_image|x_value_b\(4) & (!\VGA_86_image|h_gap_1\(4) & !\VGA_86_image|LessThan17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|x_value_b\(4),
	datab => \VGA_86_image|h_gap_1\(4),
	datad => VCC,
	cin => \VGA_86_image|LessThan17~7_cout\,
	cout => \VGA_86_image|LessThan17~9_cout\);

-- Location: LCCOMB_X39_Y38_N14
\VGA_86_image|LessThan17~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan17~11_cout\ = CARRY((\VGA_86_image|h_gap_1\(5) & ((!\VGA_86_image|LessThan17~9_cout\) # (!\VGA_86_image|x_value_b\(5)))) # (!\VGA_86_image|h_gap_1\(5) & (!\VGA_86_image|x_value_b\(5) & !\VGA_86_image|LessThan17~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(5),
	datab => \VGA_86_image|x_value_b\(5),
	datad => VCC,
	cin => \VGA_86_image|LessThan17~9_cout\,
	cout => \VGA_86_image|LessThan17~11_cout\);

-- Location: LCCOMB_X39_Y38_N16
\VGA_86_image|LessThan17~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan17~13_cout\ = CARRY((\VGA_86_image|h_gap_1\(6) & (\VGA_86_image|x_value_b\(6) & !\VGA_86_image|LessThan17~11_cout\)) # (!\VGA_86_image|h_gap_1\(6) & ((\VGA_86_image|x_value_b\(6)) # (!\VGA_86_image|LessThan17~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(6),
	datab => \VGA_86_image|x_value_b\(6),
	datad => VCC,
	cin => \VGA_86_image|LessThan17~11_cout\,
	cout => \VGA_86_image|LessThan17~13_cout\);

-- Location: LCCOMB_X39_Y38_N18
\VGA_86_image|LessThan17~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan17~15_cout\ = CARRY((\VGA_86_image|h_gap_1\(7) & ((!\VGA_86_image|LessThan17~13_cout\) # (!\VGA_86_image|x_value_b\(7)))) # (!\VGA_86_image|h_gap_1\(7) & (!\VGA_86_image|x_value_b\(7) & !\VGA_86_image|LessThan17~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(7),
	datab => \VGA_86_image|x_value_b\(7),
	datad => VCC,
	cin => \VGA_86_image|LessThan17~13_cout\,
	cout => \VGA_86_image|LessThan17~15_cout\);

-- Location: LCCOMB_X39_Y38_N20
\VGA_86_image|LessThan17~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan17~16_combout\ = (\VGA_86_image|x_value_b\(8) & ((!\VGA_86_image|h_gap_1\(8)) # (!\VGA_86_image|LessThan17~15_cout\))) # (!\VGA_86_image|x_value_b\(8) & (!\VGA_86_image|LessThan17~15_cout\ & !\VGA_86_image|h_gap_1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|x_value_b\(8),
	datad => \VGA_86_image|h_gap_1\(8),
	cin => \VGA_86_image|LessThan17~15_cout\,
	combout => \VGA_86_image|LessThan17~16_combout\);

-- Location: LCCOMB_X41_Y38_N0
\VGA_86_image|x_value_a[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_a[3]~6_combout\ = (\VGA_86_image|v_count\(4) & (\VGA_86_image|v_count\(5) $ (VCC))) # (!\VGA_86_image|v_count\(4) & (\VGA_86_image|v_count\(5) & VCC))
-- \VGA_86_image|x_value_a[3]~7\ = CARRY((\VGA_86_image|v_count\(4) & \VGA_86_image|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(4),
	datab => \VGA_86_image|v_count\(5),
	datad => VCC,
	combout => \VGA_86_image|x_value_a[3]~6_combout\,
	cout => \VGA_86_image|x_value_a[3]~7\);

-- Location: LCCOMB_X41_Y38_N2
\VGA_86_image|x_value_a[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_a[4]~8_combout\ = (\VGA_86_image|v_count\(6) & (\VGA_86_image|x_value_a[3]~7\ & VCC)) # (!\VGA_86_image|v_count\(6) & (!\VGA_86_image|x_value_a[3]~7\))
-- \VGA_86_image|x_value_a[4]~9\ = CARRY((!\VGA_86_image|v_count\(6) & !\VGA_86_image|x_value_a[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(6),
	datad => VCC,
	cin => \VGA_86_image|x_value_a[3]~7\,
	combout => \VGA_86_image|x_value_a[4]~8_combout\,
	cout => \VGA_86_image|x_value_a[4]~9\);

-- Location: LCCOMB_X41_Y38_N4
\VGA_86_image|x_value_a[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_a[5]~10_combout\ = (\VGA_86_image|v_count\(7) & (\VGA_86_image|x_value_a[4]~9\ $ (GND))) # (!\VGA_86_image|v_count\(7) & (!\VGA_86_image|x_value_a[4]~9\ & VCC))
-- \VGA_86_image|x_value_a[5]~11\ = CARRY((\VGA_86_image|v_count\(7) & !\VGA_86_image|x_value_a[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(7),
	datad => VCC,
	cin => \VGA_86_image|x_value_a[4]~9\,
	combout => \VGA_86_image|x_value_a[5]~10_combout\,
	cout => \VGA_86_image|x_value_a[5]~11\);

-- Location: LCCOMB_X41_Y38_N6
\VGA_86_image|x_value_a[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_a[6]~12_combout\ = (\VGA_86_image|v_count\(8) & (!\VGA_86_image|x_value_a[5]~11\)) # (!\VGA_86_image|v_count\(8) & ((\VGA_86_image|x_value_a[5]~11\) # (GND)))
-- \VGA_86_image|x_value_a[6]~13\ = CARRY((!\VGA_86_image|x_value_a[5]~11\) # (!\VGA_86_image|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(8),
	datad => VCC,
	cin => \VGA_86_image|x_value_a[5]~11\,
	combout => \VGA_86_image|x_value_a[6]~12_combout\,
	cout => \VGA_86_image|x_value_a[6]~13\);

-- Location: LCCOMB_X41_Y38_N8
\VGA_86_image|x_value_a[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_a[7]~14_combout\ = (\VGA_86_image|v_count\(9) & (\VGA_86_image|x_value_a[6]~13\ $ (GND))) # (!\VGA_86_image|v_count\(9) & (!\VGA_86_image|x_value_a[6]~13\ & VCC))
-- \VGA_86_image|x_value_a[7]~15\ = CARRY((\VGA_86_image|v_count\(9) & !\VGA_86_image|x_value_a[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(9),
	datad => VCC,
	cin => \VGA_86_image|x_value_a[6]~13\,
	combout => \VGA_86_image|x_value_a[7]~14_combout\,
	cout => \VGA_86_image|x_value_a[7]~15\);

-- Location: LCCOMB_X41_Y38_N10
\VGA_86_image|x_value_a[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_a[8]~16_combout\ = \VGA_86_image|x_value_a[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VGA_86_image|x_value_a[7]~15\,
	combout => \VGA_86_image|x_value_a[8]~16_combout\);

-- Location: FF_X41_Y38_N11
\VGA_86_image|x_value_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_a[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_a\(8));

-- Location: FF_X41_Y38_N9
\VGA_86_image|x_value_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_a[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_a\(7));

-- Location: FF_X41_Y38_N7
\VGA_86_image|x_value_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_a[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_a\(6));

-- Location: FF_X41_Y38_N5
\VGA_86_image|x_value_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_a[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_a\(5));

-- Location: FF_X41_Y38_N3
\VGA_86_image|x_value_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_a[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_a\(4));

-- Location: FF_X41_Y38_N1
\VGA_86_image|x_value_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_a[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_a\(3));

-- Location: LCCOMB_X41_Y38_N30
\VGA_86_image|x_value_a[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_a[2]~18_combout\ = !\VGA_86_image|v_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|v_count\(4),
	combout => \VGA_86_image|x_value_a[2]~18_combout\);

-- Location: FF_X41_Y38_N31
\VGA_86_image|x_value_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_a[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_a\(2));

-- Location: FF_X42_Y38_N15
\VGA_86_image|x_value_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	asdata => \VGA_86_image|v_count\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_c\(1));

-- Location: FF_X42_Y38_N13
\VGA_86_image|x_value_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	asdata => \VGA_86_image|v_count\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_c\(0));

-- Location: LCCOMB_X41_Y38_N12
\VGA_86_image|LessThan16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan16~1_cout\ = CARRY((\VGA_86_image|x_value_c\(0) & !\VGA_86_image|h_gap_1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|x_value_c\(0),
	datab => \VGA_86_image|h_gap_1\(0),
	datad => VCC,
	cout => \VGA_86_image|LessThan16~1_cout\);

-- Location: LCCOMB_X41_Y38_N14
\VGA_86_image|LessThan16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan16~3_cout\ = CARRY((\VGA_86_image|h_gap_1\(1) & ((!\VGA_86_image|LessThan16~1_cout\) # (!\VGA_86_image|x_value_c\(1)))) # (!\VGA_86_image|h_gap_1\(1) & (!\VGA_86_image|x_value_c\(1) & !\VGA_86_image|LessThan16~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(1),
	datab => \VGA_86_image|x_value_c\(1),
	datad => VCC,
	cin => \VGA_86_image|LessThan16~1_cout\,
	cout => \VGA_86_image|LessThan16~3_cout\);

-- Location: LCCOMB_X41_Y38_N16
\VGA_86_image|LessThan16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan16~5_cout\ = CARRY((\VGA_86_image|x_value_a\(2) & ((!\VGA_86_image|LessThan16~3_cout\) # (!\VGA_86_image|h_gap_1\(2)))) # (!\VGA_86_image|x_value_a\(2) & (!\VGA_86_image|h_gap_1\(2) & !\VGA_86_image|LessThan16~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|x_value_a\(2),
	datab => \VGA_86_image|h_gap_1\(2),
	datad => VCC,
	cin => \VGA_86_image|LessThan16~3_cout\,
	cout => \VGA_86_image|LessThan16~5_cout\);

-- Location: LCCOMB_X41_Y38_N18
\VGA_86_image|LessThan16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan16~7_cout\ = CARRY((\VGA_86_image|h_gap_1\(3) & ((!\VGA_86_image|LessThan16~5_cout\) # (!\VGA_86_image|x_value_a\(3)))) # (!\VGA_86_image|h_gap_1\(3) & (!\VGA_86_image|x_value_a\(3) & !\VGA_86_image|LessThan16~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(3),
	datab => \VGA_86_image|x_value_a\(3),
	datad => VCC,
	cin => \VGA_86_image|LessThan16~5_cout\,
	cout => \VGA_86_image|LessThan16~7_cout\);

-- Location: LCCOMB_X41_Y38_N20
\VGA_86_image|LessThan16~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan16~9_cout\ = CARRY((\VGA_86_image|h_gap_1\(4) & (\VGA_86_image|x_value_a\(4) & !\VGA_86_image|LessThan16~7_cout\)) # (!\VGA_86_image|h_gap_1\(4) & ((\VGA_86_image|x_value_a\(4)) # (!\VGA_86_image|LessThan16~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(4),
	datab => \VGA_86_image|x_value_a\(4),
	datad => VCC,
	cin => \VGA_86_image|LessThan16~7_cout\,
	cout => \VGA_86_image|LessThan16~9_cout\);

-- Location: LCCOMB_X41_Y38_N22
\VGA_86_image|LessThan16~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan16~11_cout\ = CARRY((\VGA_86_image|h_gap_1\(5) & ((!\VGA_86_image|LessThan16~9_cout\) # (!\VGA_86_image|x_value_a\(5)))) # (!\VGA_86_image|h_gap_1\(5) & (!\VGA_86_image|x_value_a\(5) & !\VGA_86_image|LessThan16~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(5),
	datab => \VGA_86_image|x_value_a\(5),
	datad => VCC,
	cin => \VGA_86_image|LessThan16~9_cout\,
	cout => \VGA_86_image|LessThan16~11_cout\);

-- Location: LCCOMB_X41_Y38_N24
\VGA_86_image|LessThan16~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan16~13_cout\ = CARRY((\VGA_86_image|x_value_a\(6) & ((!\VGA_86_image|LessThan16~11_cout\) # (!\VGA_86_image|h_gap_1\(6)))) # (!\VGA_86_image|x_value_a\(6) & (!\VGA_86_image|h_gap_1\(6) & !\VGA_86_image|LessThan16~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|x_value_a\(6),
	datab => \VGA_86_image|h_gap_1\(6),
	datad => VCC,
	cin => \VGA_86_image|LessThan16~11_cout\,
	cout => \VGA_86_image|LessThan16~13_cout\);

-- Location: LCCOMB_X41_Y38_N26
\VGA_86_image|LessThan16~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan16~15_cout\ = CARRY((\VGA_86_image|h_gap_1\(7) & ((!\VGA_86_image|LessThan16~13_cout\) # (!\VGA_86_image|x_value_a\(7)))) # (!\VGA_86_image|h_gap_1\(7) & (!\VGA_86_image|x_value_a\(7) & !\VGA_86_image|LessThan16~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(7),
	datab => \VGA_86_image|x_value_a\(7),
	datad => VCC,
	cin => \VGA_86_image|LessThan16~13_cout\,
	cout => \VGA_86_image|LessThan16~15_cout\);

-- Location: LCCOMB_X41_Y38_N28
\VGA_86_image|LessThan16~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan16~16_combout\ = (\VGA_86_image|x_value_a\(8) & ((!\VGA_86_image|h_gap_1\(8)) # (!\VGA_86_image|LessThan16~15_cout\))) # (!\VGA_86_image|x_value_a\(8) & (!\VGA_86_image|LessThan16~15_cout\ & !\VGA_86_image|h_gap_1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|x_value_a\(8),
	datad => \VGA_86_image|h_gap_1\(8),
	cin => \VGA_86_image|LessThan16~15_cout\,
	combout => \VGA_86_image|LessThan16~16_combout\);

-- Location: LCCOMB_X18_Y30_N16
\VGA_86_image|rgb_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~0_combout\ = (!\VGA_86_image|LessThan15~1_combout\ & (!\VGA_86_image|h_gap_1\(9) & (\VGA_86_image|LessThan17~16_combout\ & !\VGA_86_image|LessThan16~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|LessThan15~1_combout\,
	datab => \VGA_86_image|h_gap_1\(9),
	datac => \VGA_86_image|LessThan17~16_combout\,
	datad => \VGA_86_image|LessThan16~16_combout\,
	combout => \VGA_86_image|rgb_2~0_combout\);

-- Location: LCCOMB_X18_Y30_N26
\VGA_86_image|rgb_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~1_combout\ = (!\VGA_86_image|blank_2~q\ & ((\VGA_86_image|rgb_2~0_combout\) # ((\VGA_86_image|rgb_sky\(20) & \VGA_86_image|LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|rgb_sky\(20),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|rgb_2~0_combout\,
	combout => \VGA_86_image|rgb_2~1_combout\);

-- Location: FF_X18_Y30_N27
\VGA_86_image|rgb_2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(20));

-- Location: LCCOMB_X16_Y30_N20
\VGA_86_image|r_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[4]~feeder_combout\ = \VGA_86_image|rgb_2\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(20),
	combout => \VGA_86_image|r_out[4]~feeder_combout\);

-- Location: FF_X16_Y30_N21
\VGA_86_image|r_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|r_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(4));

-- Location: LCCOMB_X17_Y30_N18
\VGA_86_image|Add19~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~40_combout\ = (\VGA_86_image|rgb_sky\(21) & (!\VGA_86_image|Add19~39\ & VCC)) # (!\VGA_86_image|rgb_sky\(21) & (\VGA_86_image|Add19~39\ $ (GND)))
-- \VGA_86_image|Add19~41\ = CARRY((!\VGA_86_image|rgb_sky\(21) & !\VGA_86_image|Add19~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(21),
	datad => VCC,
	cin => \VGA_86_image|Add19~39\,
	combout => \VGA_86_image|Add19~40_combout\,
	cout => \VGA_86_image|Add19~41\);

-- Location: LCCOMB_X17_Y30_N28
\VGA_86_image|rgb_sky[21]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_sky[21]~0_combout\ = !\VGA_86_image|Add19~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|Add19~40_combout\,
	combout => \VGA_86_image|rgb_sky[21]~0_combout\);

-- Location: FF_X17_Y30_N29
\VGA_86_image|rgb_sky[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_sky[21]~0_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(21));

-- Location: LCCOMB_X42_Y38_N2
\VGA_86_image|Add17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add17~0_combout\ = (\VGA_86_image|v_count\(9) & (\VGA_86_image|v_count\(7) & \VGA_86_image|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(9),
	datab => \VGA_86_image|v_count\(7),
	datac => \VGA_86_image|v_count\(8),
	combout => \VGA_86_image|Add17~0_combout\);

-- Location: FF_X42_Y38_N3
\VGA_86_image|x_value_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_c\(8));

-- Location: LCCOMB_X42_Y38_N0
\VGA_86_image|Add17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add17~1_combout\ = \VGA_86_image|v_count\(9) $ (((\VGA_86_image|v_count\(7) & \VGA_86_image|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|v_count\(9),
	datab => \VGA_86_image|v_count\(7),
	datac => \VGA_86_image|v_count\(8),
	combout => \VGA_86_image|Add17~1_combout\);

-- Location: FF_X42_Y38_N1
\VGA_86_image|x_value_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_c\(7));

-- Location: LCCOMB_X42_Y38_N6
\VGA_86_image|Add17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add17~2_combout\ = \VGA_86_image|v_count\(7) $ (\VGA_86_image|v_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|v_count\(7),
	datac => \VGA_86_image|v_count\(8),
	combout => \VGA_86_image|Add17~2_combout\);

-- Location: FF_X42_Y38_N7
\VGA_86_image|x_value_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_c\(6));

-- Location: LCCOMB_X42_Y38_N4
\VGA_86_image|x_value_c[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|x_value_c[5]~0_combout\ = !\VGA_86_image|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|v_count\(7),
	combout => \VGA_86_image|x_value_c[5]~0_combout\);

-- Location: FF_X42_Y38_N5
\VGA_86_image|x_value_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|x_value_c[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_c\(5));

-- Location: FF_X42_Y38_N21
\VGA_86_image|x_value_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	asdata => \VGA_86_image|v_count\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_c\(4));

-- Location: FF_X42_Y38_N19
\VGA_86_image|x_value_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	asdata => \VGA_86_image|v_count\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_c\(3));

-- Location: FF_X42_Y38_N17
\VGA_86_image|x_value_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	asdata => \VGA_86_image|v_count\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|x_value_c\(2));

-- Location: LCCOMB_X42_Y38_N12
\VGA_86_image|LessThan18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan18~1_cout\ = CARRY((!\VGA_86_image|h_gap_1\(0) & \VGA_86_image|x_value_c\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(0),
	datab => \VGA_86_image|x_value_c\(0),
	datad => VCC,
	cout => \VGA_86_image|LessThan18~1_cout\);

-- Location: LCCOMB_X42_Y38_N14
\VGA_86_image|LessThan18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan18~3_cout\ = CARRY((\VGA_86_image|h_gap_1\(1) & ((!\VGA_86_image|LessThan18~1_cout\) # (!\VGA_86_image|x_value_c\(1)))) # (!\VGA_86_image|h_gap_1\(1) & (!\VGA_86_image|x_value_c\(1) & !\VGA_86_image|LessThan18~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(1),
	datab => \VGA_86_image|x_value_c\(1),
	datad => VCC,
	cin => \VGA_86_image|LessThan18~1_cout\,
	cout => \VGA_86_image|LessThan18~3_cout\);

-- Location: LCCOMB_X42_Y38_N16
\VGA_86_image|LessThan18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan18~5_cout\ = CARRY((\VGA_86_image|h_gap_1\(2) & (\VGA_86_image|x_value_c\(2) & !\VGA_86_image|LessThan18~3_cout\)) # (!\VGA_86_image|h_gap_1\(2) & ((\VGA_86_image|x_value_c\(2)) # (!\VGA_86_image|LessThan18~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(2),
	datab => \VGA_86_image|x_value_c\(2),
	datad => VCC,
	cin => \VGA_86_image|LessThan18~3_cout\,
	cout => \VGA_86_image|LessThan18~5_cout\);

-- Location: LCCOMB_X42_Y38_N18
\VGA_86_image|LessThan18~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan18~7_cout\ = CARRY((\VGA_86_image|x_value_c\(3) & (\VGA_86_image|h_gap_1\(3) & !\VGA_86_image|LessThan18~5_cout\)) # (!\VGA_86_image|x_value_c\(3) & ((\VGA_86_image|h_gap_1\(3)) # (!\VGA_86_image|LessThan18~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|x_value_c\(3),
	datab => \VGA_86_image|h_gap_1\(3),
	datad => VCC,
	cin => \VGA_86_image|LessThan18~5_cout\,
	cout => \VGA_86_image|LessThan18~7_cout\);

-- Location: LCCOMB_X42_Y38_N20
\VGA_86_image|LessThan18~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan18~9_cout\ = CARRY((\VGA_86_image|h_gap_1\(4) & (\VGA_86_image|x_value_c\(4) & !\VGA_86_image|LessThan18~7_cout\)) # (!\VGA_86_image|h_gap_1\(4) & ((\VGA_86_image|x_value_c\(4)) # (!\VGA_86_image|LessThan18~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(4),
	datab => \VGA_86_image|x_value_c\(4),
	datad => VCC,
	cin => \VGA_86_image|LessThan18~7_cout\,
	cout => \VGA_86_image|LessThan18~9_cout\);

-- Location: LCCOMB_X42_Y38_N22
\VGA_86_image|LessThan18~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan18~11_cout\ = CARRY((\VGA_86_image|h_gap_1\(5) & ((!\VGA_86_image|LessThan18~9_cout\) # (!\VGA_86_image|x_value_c\(5)))) # (!\VGA_86_image|h_gap_1\(5) & (!\VGA_86_image|x_value_c\(5) & !\VGA_86_image|LessThan18~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(5),
	datab => \VGA_86_image|x_value_c\(5),
	datad => VCC,
	cin => \VGA_86_image|LessThan18~9_cout\,
	cout => \VGA_86_image|LessThan18~11_cout\);

-- Location: LCCOMB_X42_Y38_N24
\VGA_86_image|LessThan18~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan18~13_cout\ = CARRY((\VGA_86_image|x_value_c\(6) & ((!\VGA_86_image|LessThan18~11_cout\) # (!\VGA_86_image|h_gap_1\(6)))) # (!\VGA_86_image|x_value_c\(6) & (!\VGA_86_image|h_gap_1\(6) & !\VGA_86_image|LessThan18~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|x_value_c\(6),
	datab => \VGA_86_image|h_gap_1\(6),
	datad => VCC,
	cin => \VGA_86_image|LessThan18~11_cout\,
	cout => \VGA_86_image|LessThan18~13_cout\);

-- Location: LCCOMB_X42_Y38_N26
\VGA_86_image|LessThan18~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan18~15_cout\ = CARRY((\VGA_86_image|h_gap_1\(7) & ((!\VGA_86_image|LessThan18~13_cout\) # (!\VGA_86_image|x_value_c\(7)))) # (!\VGA_86_image|h_gap_1\(7) & (!\VGA_86_image|x_value_c\(7) & !\VGA_86_image|LessThan18~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(7),
	datab => \VGA_86_image|x_value_c\(7),
	datad => VCC,
	cin => \VGA_86_image|LessThan18~13_cout\,
	cout => \VGA_86_image|LessThan18~15_cout\);

-- Location: LCCOMB_X42_Y38_N28
\VGA_86_image|LessThan18~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|LessThan18~16_combout\ = (\VGA_86_image|x_value_c\(8) & ((!\VGA_86_image|h_gap_1\(8)) # (!\VGA_86_image|LessThan18~15_cout\))) # (!\VGA_86_image|x_value_c\(8) & (!\VGA_86_image|LessThan18~15_cout\ & !\VGA_86_image|h_gap_1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|x_value_c\(8),
	datad => \VGA_86_image|h_gap_1\(8),
	cin => \VGA_86_image|LessThan18~15_cout\,
	combout => \VGA_86_image|LessThan18~16_combout\);

-- Location: LCCOMB_X18_Y30_N18
\VGA_86_image|rgb_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~2_combout\ = (\VGA_86_image|LessThan17~16_combout\) # (!\VGA_86_image|LessThan18~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|LessThan17~16_combout\,
	datad => \VGA_86_image|LessThan18~16_combout\,
	combout => \VGA_86_image|rgb_2~2_combout\);

-- Location: LCCOMB_X18_Y30_N20
\VGA_86_image|rgb_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~3_combout\ = (!\VGA_86_image|LessThan15~1_combout\ & ((\VGA_86_image|h_gap_1\(9)) # ((!\VGA_86_image|LessThan16~16_combout\ & \VGA_86_image|rgb_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|LessThan15~1_combout\,
	datab => \VGA_86_image|LessThan16~16_combout\,
	datac => \VGA_86_image|h_gap_1\(9),
	datad => \VGA_86_image|rgb_2~2_combout\,
	combout => \VGA_86_image|rgb_2~3_combout\);

-- Location: LCCOMB_X18_Y30_N28
\VGA_86_image|rgb_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~4_combout\ = (!\VGA_86_image|blank_2~q\ & ((\VGA_86_image|rgb_2~3_combout\) # ((!\VGA_86_image|rgb_sky\(21) & \VGA_86_image|LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|rgb_sky\(21),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|rgb_2~3_combout\,
	combout => \VGA_86_image|rgb_2~4_combout\);

-- Location: FF_X18_Y30_N29
\VGA_86_image|rgb_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(21));

-- Location: LCCOMB_X1_Y30_N0
\VGA_86_image|r_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[5]~feeder_combout\ = \VGA_86_image|rgb_2\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(21),
	combout => \VGA_86_image|r_out[5]~feeder_combout\);

-- Location: FF_X1_Y30_N1
\VGA_86_image|r_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|r_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(5));

-- Location: LCCOMB_X17_Y30_N20
\VGA_86_image|Add19~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~42_combout\ = (\VGA_86_image|rgb_sky\(22) & (!\VGA_86_image|Add19~41\)) # (!\VGA_86_image|rgb_sky\(22) & ((\VGA_86_image|Add19~41\) # (GND)))
-- \VGA_86_image|Add19~43\ = CARRY((!\VGA_86_image|Add19~41\) # (!\VGA_86_image|rgb_sky\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(22),
	datad => VCC,
	cin => \VGA_86_image|Add19~41\,
	combout => \VGA_86_image|Add19~42_combout\,
	cout => \VGA_86_image|Add19~43\);

-- Location: FF_X17_Y30_N21
\VGA_86_image|rgb_sky[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|Add19~42_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(22));

-- Location: LCCOMB_X18_Y30_N22
\VGA_86_image|rgb_2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~5_combout\ = (!\VGA_86_image|blank_2~q\ & ((\VGA_86_image|rgb_2~0_combout\) # ((\VGA_86_image|rgb_sky\(22) & \VGA_86_image|LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|rgb_sky\(22),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|rgb_2~0_combout\,
	combout => \VGA_86_image|rgb_2~5_combout\);

-- Location: FF_X18_Y30_N23
\VGA_86_image|rgb_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(22));

-- Location: FF_X18_Y30_N1
\VGA_86_image|r_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	asdata => \VGA_86_image|rgb_2\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(6));

-- Location: LCCOMB_X17_Y30_N22
\VGA_86_image|Add19~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|Add19~44_combout\ = \VGA_86_image|rgb_sky\(23) $ (\VGA_86_image|Add19~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|rgb_sky\(23),
	cin => \VGA_86_image|Add19~43\,
	combout => \VGA_86_image|Add19~44_combout\);

-- Location: LCCOMB_X17_Y30_N30
\VGA_86_image|rgb_sky[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_sky[23]~1_combout\ = !\VGA_86_image|Add19~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|Add19~44_combout\,
	combout => \VGA_86_image|rgb_sky[23]~1_combout\);

-- Location: FF_X17_Y30_N31
\VGA_86_image|rgb_sky[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_sky[23]~1_combout\,
	ena => \VGA_86_image|Equal3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_sky\(23));

-- Location: LCCOMB_X18_Y30_N2
\VGA_86_image|rgb_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~6_combout\ = (!\VGA_86_image|h_gap_1\(9) & ((\VGA_86_image|LessThan16~16_combout\) # ((\VGA_86_image|LessThan17~16_combout\) # (\VGA_86_image|LessThan18~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(9),
	datab => \VGA_86_image|LessThan16~16_combout\,
	datac => \VGA_86_image|LessThan17~16_combout\,
	datad => \VGA_86_image|LessThan18~16_combout\,
	combout => \VGA_86_image|rgb_2~6_combout\);

-- Location: LCCOMB_X18_Y30_N24
\VGA_86_image|rgb_2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~7_combout\ = (!\VGA_86_image|blank_2~q\ & ((\VGA_86_image|LessThan15~1_combout\ & (!\VGA_86_image|rgb_sky\(23))) # (!\VGA_86_image|LessThan15~1_combout\ & ((\VGA_86_image|rgb_2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|rgb_sky\(23),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|rgb_2~6_combout\,
	combout => \VGA_86_image|rgb_2~7_combout\);

-- Location: FF_X18_Y30_N25
\VGA_86_image|rgb_2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(23));

-- Location: LCCOMB_X16_Y30_N6
\VGA_86_image|r_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|r_out[7]~feeder_combout\ = \VGA_86_image|rgb_2\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(23),
	combout => \VGA_86_image|r_out[7]~feeder_combout\);

-- Location: FF_X16_Y30_N7
\VGA_86_image|r_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|r_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|r_out\(7));

-- Location: LCCOMB_X18_Y30_N6
\VGA_86_image|rgb_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~8_combout\ = (!\VGA_86_image|blank_2~q\ & ((\VGA_86_image|rgb_2~0_combout\) # ((!\VGA_86_image|rgb_sky\(12) & \VGA_86_image|LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|rgb_sky\(12),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|rgb_2~0_combout\,
	combout => \VGA_86_image|rgb_2~8_combout\);

-- Location: FF_X18_Y30_N7
\VGA_86_image|rgb_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(12));

-- Location: LCCOMB_X11_Y30_N20
\VGA_86_image|g_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[4]~feeder_combout\ = \VGA_86_image|rgb_2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(12),
	combout => \VGA_86_image|g_out[4]~feeder_combout\);

-- Location: FF_X11_Y30_N21
\VGA_86_image|g_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|g_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_out\(4));

-- Location: LCCOMB_X18_Y30_N12
\VGA_86_image|rgb_2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~9_combout\ = (!\VGA_86_image|blank_2~q\ & ((\VGA_86_image|rgb_2~0_combout\) # ((\VGA_86_image|rgb_sky\(13) & \VGA_86_image|LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|rgb_sky\(13),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|rgb_2~0_combout\,
	combout => \VGA_86_image|rgb_2~9_combout\);

-- Location: FF_X18_Y30_N13
\VGA_86_image|rgb_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(13));

-- Location: LCCOMB_X3_Y30_N20
\VGA_86_image|g_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[5]~feeder_combout\ = \VGA_86_image|rgb_2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(13),
	combout => \VGA_86_image|g_out[5]~feeder_combout\);

-- Location: FF_X3_Y30_N21
\VGA_86_image|g_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|g_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_out\(5));

-- Location: LCCOMB_X18_Y30_N14
\VGA_86_image|rgb_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~10_combout\ = (!\VGA_86_image|blank_2~q\ & ((\VGA_86_image|rgb_2~3_combout\) # ((!\VGA_86_image|rgb_sky\(14) & \VGA_86_image|LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|rgb_sky\(14),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|rgb_2~3_combout\,
	combout => \VGA_86_image|rgb_2~10_combout\);

-- Location: FF_X18_Y30_N15
\VGA_86_image|rgb_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(14));

-- Location: LCCOMB_X3_Y30_N14
\VGA_86_image|g_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[6]~feeder_combout\ = \VGA_86_image|rgb_2\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(14),
	combout => \VGA_86_image|g_out[6]~feeder_combout\);

-- Location: FF_X3_Y30_N15
\VGA_86_image|g_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|g_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_out\(6));

-- Location: LCCOMB_X16_Y30_N16
\VGA_86_image|rgb_2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~11_combout\ = (!\VGA_86_image|blank_2~q\ & ((!\VGA_86_image|LessThan15~1_combout\) # (!\VGA_86_image|rgb_sky\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(15),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|rgb_2~11_combout\);

-- Location: FF_X16_Y30_N17
\VGA_86_image|rgb_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(15));

-- Location: LCCOMB_X8_Y30_N16
\VGA_86_image|g_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|g_out[7]~feeder_combout\ = \VGA_86_image|rgb_2\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(15),
	combout => \VGA_86_image|g_out[7]~feeder_combout\);

-- Location: FF_X8_Y30_N17
\VGA_86_image|g_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|g_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|g_out\(7));

-- Location: LCCOMB_X16_Y30_N22
\VGA_86_image|rgb_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~12_combout\ = (!\VGA_86_image|rgb_sky\(4) & (\VGA_86_image|LessThan15~1_combout\ & !\VGA_86_image|blank_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(4),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|rgb_2~12_combout\);

-- Location: FF_X16_Y30_N23
\VGA_86_image|rgb_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(4));

-- Location: LCCOMB_X4_Y30_N16
\VGA_86_image|b_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[4]~feeder_combout\ = \VGA_86_image|rgb_2\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(4),
	combout => \VGA_86_image|b_out[4]~feeder_combout\);

-- Location: FF_X4_Y30_N17
\VGA_86_image|b_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|b_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_out\(4));

-- Location: LCCOMB_X16_Y30_N4
\VGA_86_image|rgb_2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~13_combout\ = (!\VGA_86_image|rgb_sky\(5) & (\VGA_86_image|LessThan15~1_combout\ & !\VGA_86_image|blank_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_86_image|rgb_sky\(5),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|blank_2~q\,
	combout => \VGA_86_image|rgb_2~13_combout\);

-- Location: FF_X16_Y30_N5
\VGA_86_image|rgb_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(5));

-- Location: LCCOMB_X8_Y30_N10
\VGA_86_image|b_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[5]~feeder_combout\ = \VGA_86_image|rgb_2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(5),
	combout => \VGA_86_image|b_out[5]~feeder_combout\);

-- Location: FF_X8_Y30_N11
\VGA_86_image|b_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|b_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_out\(5));

-- Location: LCCOMB_X18_Y30_N10
\VGA_86_image|rgb_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~14_combout\ = (!\VGA_86_image|h_gap_1\(9) & ((\VGA_86_image|LessThan16~16_combout\) # ((\VGA_86_image|LessThan17~16_combout\) # (\VGA_86_image|LessThan18~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|h_gap_1\(9),
	datab => \VGA_86_image|LessThan16~16_combout\,
	datac => \VGA_86_image|LessThan17~16_combout\,
	datad => \VGA_86_image|LessThan18~16_combout\,
	combout => \VGA_86_image|rgb_2~14_combout\);

-- Location: LCCOMB_X18_Y30_N4
\VGA_86_image|rgb_2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~15_combout\ = (!\VGA_86_image|blank_2~q\ & ((\VGA_86_image|LessThan15~1_combout\ & (!\VGA_86_image|rgb_sky\(6))) # (!\VGA_86_image|LessThan15~1_combout\ & ((!\VGA_86_image|rgb_2~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|rgb_sky\(6),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|rgb_2~14_combout\,
	combout => \VGA_86_image|rgb_2~15_combout\);

-- Location: FF_X18_Y30_N5
\VGA_86_image|rgb_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(6));

-- Location: LCCOMB_X7_Y30_N20
\VGA_86_image|b_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[6]~feeder_combout\ = \VGA_86_image|rgb_2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_86_image|rgb_2\(6),
	combout => \VGA_86_image|b_out[6]~feeder_combout\);

-- Location: FF_X7_Y30_N21
\VGA_86_image|b_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|b_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_out\(6));

-- Location: LCCOMB_X18_Y30_N30
\VGA_86_image|rgb_2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|rgb_2~16_combout\ = (!\VGA_86_image|blank_2~q\ & ((\VGA_86_image|LessThan15~1_combout\ & (!\VGA_86_image|rgb_sky\(7))) # (!\VGA_86_image|LessThan15~1_combout\ & ((\VGA_86_image|rgb_2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_86_image|blank_2~q\,
	datab => \VGA_86_image|rgb_sky\(7),
	datac => \VGA_86_image|LessThan15~1_combout\,
	datad => \VGA_86_image|rgb_2~6_combout\,
	combout => \VGA_86_image|rgb_2~16_combout\);

-- Location: FF_X18_Y30_N31
\VGA_86_image|rgb_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|rgb_2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|rgb_2\(7));

-- Location: LCCOMB_X7_Y30_N30
\VGA_86_image|b_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_86_image|b_out[7]~feeder_combout\ = \VGA_86_image|rgb_2\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_86_image|rgb_2\(7),
	combout => \VGA_86_image|b_out[7]~feeder_combout\);

-- Location: FF_X7_Y30_N31
\VGA_86_image|b_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25~clkctrl_outclk\,
	d => \VGA_86_image|b_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_86_image|b_out\(7));

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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_vga_vs <= \vga_vs~output_o\;

ww_vga_hs <= \vga_hs~output_o\;

ww_vga_r(0) <= \vga_r[0]~output_o\;

ww_vga_r(1) <= \vga_r[1]~output_o\;

ww_vga_r(2) <= \vga_r[2]~output_o\;

ww_vga_r(3) <= \vga_r[3]~output_o\;

ww_vga_g(0) <= \vga_g[0]~output_o\;

ww_vga_g(1) <= \vga_g[1]~output_o\;

ww_vga_g(2) <= \vga_g[2]~output_o\;

ww_vga_g(3) <= \vga_g[3]~output_o\;

ww_vga_b(0) <= \vga_b[0]~output_o\;

ww_vga_b(1) <= \vga_b[1]~output_o\;

ww_vga_b(2) <= \vga_b[2]~output_o\;

ww_vga_b(3) <= \vga_b[3]~output_o\;
END structure;


