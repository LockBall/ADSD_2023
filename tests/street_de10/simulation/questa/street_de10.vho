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

-- DATE "10/28/2023 12:40:43"

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

ENTITY 	street_de10 IS
    PORT (
	max10_clk1_50 : IN std_logic;
	key : IN std_logic_vector(0 DOWNTO 0);
	vga_vs : BUFFER std_logic;
	vga_hs : BUFFER std_logic;
	vga_r : BUFFER std_logic_vector(3 DOWNTO 0);
	vga_g : BUFFER std_logic_vector(3 DOWNTO 0);
	vga_b : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END street_de10;

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


ARCHITECTURE structure OF street_de10 IS
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
SIGNAL \street|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \street|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \street|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \street|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \street|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \street|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_25~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \max10_clk1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \street|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
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
SIGNAL \clk_25~0_combout\ : std_logic;
SIGNAL \clk_25~feeder_combout\ : std_logic;
SIGNAL \clk_25~q\ : std_logic;
SIGNAL \clk_25~clkctrl_outclk\ : std_logic;
SIGNAL \street|v_count[0]~10_combout\ : std_logic;
SIGNAL \street|v_count[3]~19\ : std_logic;
SIGNAL \street|v_count[4]~20_combout\ : std_logic;
SIGNAL \street|h_count[0]~10_combout\ : std_logic;
SIGNAL \street|h_count[0]~11\ : std_logic;
SIGNAL \street|h_count[1]~12_combout\ : std_logic;
SIGNAL \street|h_count[1]~13\ : std_logic;
SIGNAL \street|h_count[2]~14_combout\ : std_logic;
SIGNAL \street|h_count[2]~15\ : std_logic;
SIGNAL \street|h_count[3]~16_combout\ : std_logic;
SIGNAL \street|h_count[3]~17\ : std_logic;
SIGNAL \street|h_count[4]~18_combout\ : std_logic;
SIGNAL \street|h_count[4]~19\ : std_logic;
SIGNAL \street|h_count[5]~20_combout\ : std_logic;
SIGNAL \street|h_count[5]~21\ : std_logic;
SIGNAL \street|h_count[6]~22_combout\ : std_logic;
SIGNAL \street|h_count[6]~23\ : std_logic;
SIGNAL \street|h_count[7]~24_combout\ : std_logic;
SIGNAL \street|h_count[7]~25\ : std_logic;
SIGNAL \street|h_count[8]~26_combout\ : std_logic;
SIGNAL \street|h_count[8]~27\ : std_logic;
SIGNAL \street|h_count[9]~28_combout\ : std_logic;
SIGNAL \street|Equal0~0_combout\ : std_logic;
SIGNAL \street|Equal0~1_combout\ : std_logic;
SIGNAL \street|Equal0~2_combout\ : std_logic;
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
SIGNAL \street|v_count[3]~15_combout\ : std_logic;
SIGNAL \street|v_count[4]~21\ : std_logic;
SIGNAL \street|v_count[5]~22_combout\ : std_logic;
SIGNAL \street|v_count[5]~23\ : std_logic;
SIGNAL \street|v_count[6]~24_combout\ : std_logic;
SIGNAL \street|v_count[6]~25\ : std_logic;
SIGNAL \street|v_count[7]~26_combout\ : std_logic;
SIGNAL \street|v_count[7]~27\ : std_logic;
SIGNAL \street|v_count[8]~28_combout\ : std_logic;
SIGNAL \street|v_count[8]~29\ : std_logic;
SIGNAL \street|v_count[9]~30_combout\ : std_logic;
SIGNAL \street|Equal1~1_combout\ : std_logic;
SIGNAL \street|LessThan12~0_combout\ : std_logic;
SIGNAL \street|Equal1~0_combout\ : std_logic;
SIGNAL \street|v_count[3]~14_combout\ : std_logic;
SIGNAL \street|v_count[0]~11\ : std_logic;
SIGNAL \street|v_count[1]~12_combout\ : std_logic;
SIGNAL \street|v_count[1]~13\ : std_logic;
SIGNAL \street|v_count[2]~16_combout\ : std_logic;
SIGNAL \street|v_count[2]~17\ : std_logic;
SIGNAL \street|v_count[3]~18_combout\ : std_logic;
SIGNAL \street|LessThan12~1_combout\ : std_logic;
SIGNAL \street|LessThan9~0_combout\ : std_logic;
SIGNAL \street|vs_1~q\ : std_logic;
SIGNAL \street|vs_2~feeder_combout\ : std_logic;
SIGNAL \street|vs_2~q\ : std_logic;
SIGNAL \street|vs_out~q\ : std_logic;
SIGNAL \street|LessThan8~0_combout\ : std_logic;
SIGNAL \street|LessThan8~1_combout\ : std_logic;
SIGNAL \street|hs_1~q\ : std_logic;
SIGNAL \street|hs_2~q\ : std_logic;
SIGNAL \street|hs_out~q\ : std_logic;
SIGNAL \street|v_factor_a[0]~9_combout\ : std_logic;
SIGNAL \street|Add12~1_cout\ : std_logic;
SIGNAL \street|Add12~3\ : std_logic;
SIGNAL \street|Add12~5\ : std_logic;
SIGNAL \street|Add12~7\ : std_logic;
SIGNAL \street|Add12~9\ : std_logic;
SIGNAL \street|Add12~11\ : std_logic;
SIGNAL \street|Add12~13\ : std_logic;
SIGNAL \street|Add12~14_combout\ : std_logic;
SIGNAL \street|v_pos_1[9]~0_combout\ : std_logic;
SIGNAL \street|Add12~12_combout\ : std_logic;
SIGNAL \street|v_pos_1[8]~1_combout\ : std_logic;
SIGNAL \street|Add12~6_combout\ : std_logic;
SIGNAL \street|v_pos_1[5]~2_combout\ : std_logic;
SIGNAL \street|Add12~8_combout\ : std_logic;
SIGNAL \street|Add12~10_combout\ : std_logic;
SIGNAL \street|v_factor_a~11_combout\ : std_logic;
SIGNAL \street|Add12~15\ : std_logic;
SIGNAL \street|Add12~16_combout\ : std_logic;
SIGNAL \street|v_pos_1[10]~3_combout\ : std_logic;
SIGNAL \street|v_factor_a~12_combout\ : std_logic;
SIGNAL \street|v_factor_a[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \street|v_factor_a[0]~10\ : std_logic;
SIGNAL \street|v_factor_a[1]~13_combout\ : std_logic;
SIGNAL \street|v_factor_a[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \street|x_value_b[0]~24_combout\ : std_logic;
SIGNAL \street|v_factor_a[1]~14\ : std_logic;
SIGNAL \street|v_factor_a[2]~15_combout\ : std_logic;
SIGNAL \street|v_factor_a[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \street|Add12~2_combout\ : std_logic;
SIGNAL \street|v_pos_1[3]~4_combout\ : std_logic;
SIGNAL \street|v_factor_a[2]~16\ : std_logic;
SIGNAL \street|v_factor_a[3]~17_combout\ : std_logic;
SIGNAL \street|v_factor_a[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \street|Add12~4_combout\ : std_logic;
SIGNAL \street|v_pos_1[4]~5_combout\ : std_logic;
SIGNAL \street|v_factor_a[3]~18\ : std_logic;
SIGNAL \street|v_factor_a[4]~19_combout\ : std_logic;
SIGNAL \street|v_factor_a[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \street|v_factor_a[4]~20\ : std_logic;
SIGNAL \street|v_factor_a[5]~21_combout\ : std_logic;
SIGNAL \street|v_factor_a[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \street|v_factor_a[5]~22\ : std_logic;
SIGNAL \street|v_factor_a[6]~23_combout\ : std_logic;
SIGNAL \street|v_factor_a[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \street|v_factor_a[6]~24\ : std_logic;
SIGNAL \street|v_factor_a[7]~25_combout\ : std_logic;
SIGNAL \street|v_factor_a[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \street|v_factor_a[7]~26\ : std_logic;
SIGNAL \street|v_factor_a[8]~27_combout\ : std_logic;
SIGNAL \street|v_factor_a[8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \street|frame_num[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \street|frame_num[7]~25\ : std_logic;
SIGNAL \street|frame_num[8]~26_combout\ : std_logic;
SIGNAL \street|new_frame~0_combout\ : std_logic;
SIGNAL \street|new_frame~1_combout\ : std_logic;
SIGNAL \street|new_frame~q\ : std_logic;
SIGNAL \street|frame_num[1]~31_combout\ : std_logic;
SIGNAL \street|Equal2~0_combout\ : std_logic;
SIGNAL \street|frame_num[8]~27\ : std_logic;
SIGNAL \street|frame_num[9]~28_combout\ : std_logic;
SIGNAL \street|Equal2~2_combout\ : std_logic;
SIGNAL \street|Equal2~1_combout\ : std_logic;
SIGNAL \street|frame_num[1]~30_combout\ : std_logic;
SIGNAL \street|frame_num[0]~11\ : std_logic;
SIGNAL \street|frame_num[1]~12_combout\ : std_logic;
SIGNAL \street|frame_num[1]~13\ : std_logic;
SIGNAL \street|frame_num[2]~14_combout\ : std_logic;
SIGNAL \street|frame_num[2]~15\ : std_logic;
SIGNAL \street|frame_num[3]~16_combout\ : std_logic;
SIGNAL \street|frame_num[3]~17\ : std_logic;
SIGNAL \street|frame_num[4]~18_combout\ : std_logic;
SIGNAL \street|frame_num[4]~19\ : std_logic;
SIGNAL \street|frame_num[5]~20_combout\ : std_logic;
SIGNAL \street|frame_num[5]~21\ : std_logic;
SIGNAL \street|frame_num[6]~22_combout\ : std_logic;
SIGNAL \street|frame_num[6]~23\ : std_logic;
SIGNAL \street|frame_num[7]~24_combout\ : std_logic;
SIGNAL \street|LessThan3~0_combout\ : std_logic;
SIGNAL \street|process_1~3_combout\ : std_logic;
SIGNAL \street|process_1~4_combout\ : std_logic;
SIGNAL \street|process_1~5_combout\ : std_logic;
SIGNAL \street|LessThan2~0_combout\ : std_logic;
SIGNAL \street|Add3~0_combout\ : std_logic;
SIGNAL \street|LessThan2~1_combout\ : std_logic;
SIGNAL \street|LessThan1~0_combout\ : std_logic;
SIGNAL \street|LessThan1~1_combout\ : std_logic;
SIGNAL \street|LessThan1~2_combout\ : std_logic;
SIGNAL \street|process_1~6_combout\ : std_logic;
SIGNAL \street|Add4~0_combout\ : std_logic;
SIGNAL \street|curve[7]~0_combout\ : std_logic;
SIGNAL \street|curve[7]~2_combout\ : std_logic;
SIGNAL \street|curve[7]~1_combout\ : std_logic;
SIGNAL \street|curve[7]~3_combout\ : std_logic;
SIGNAL \street|curve~4_combout\ : std_logic;
SIGNAL \street|Add4~2_cout\ : std_logic;
SIGNAL \street|Add4~3_combout\ : std_logic;
SIGNAL \street|Add4~5_combout\ : std_logic;
SIGNAL \street|Add5~0_combout\ : std_logic;
SIGNAL \street|Add4~6_combout\ : std_logic;
SIGNAL \street|Add4~4\ : std_logic;
SIGNAL \street|Add4~7_combout\ : std_logic;
SIGNAL \street|Add4~9_combout\ : std_logic;
SIGNAL \street|Add4~13_combout\ : std_logic;
SIGNAL \street|Add4~8\ : std_logic;
SIGNAL \street|Add4~14_combout\ : std_logic;
SIGNAL \street|Add5~1\ : std_logic;
SIGNAL \street|Add5~2_combout\ : std_logic;
SIGNAL \street|Add6~0_combout\ : std_logic;
SIGNAL \street|Add4~10_combout\ : std_logic;
SIGNAL \street|Add4~11_combout\ : std_logic;
SIGNAL \street|Add4~12_combout\ : std_logic;
SIGNAL \street|Add4~16_combout\ : std_logic;
SIGNAL \street|Add4~15\ : std_logic;
SIGNAL \street|Add4~18_combout\ : std_logic;
SIGNAL \street|Add5~3\ : std_logic;
SIGNAL \street|Add5~4_combout\ : std_logic;
SIGNAL \street|Add6~1\ : std_logic;
SIGNAL \street|Add6~2_combout\ : std_logic;
SIGNAL \street|Add4~17_combout\ : std_logic;
SIGNAL \street|Add4~20_combout\ : std_logic;
SIGNAL \street|Add4~19\ : std_logic;
SIGNAL \street|Add4~22_combout\ : std_logic;
SIGNAL \street|Add5~5\ : std_logic;
SIGNAL \street|Add5~6_combout\ : std_logic;
SIGNAL \street|Add6~3\ : std_logic;
SIGNAL \street|Add6~4_combout\ : std_logic;
SIGNAL \street|Add4~21_combout\ : std_logic;
SIGNAL \street|Add4~24_combout\ : std_logic;
SIGNAL \street|Add4~23\ : std_logic;
SIGNAL \street|Add4~26_combout\ : std_logic;
SIGNAL \street|Add5~7\ : std_logic;
SIGNAL \street|Add5~8_combout\ : std_logic;
SIGNAL \street|Add6~5\ : std_logic;
SIGNAL \street|Add6~6_combout\ : std_logic;
SIGNAL \street|Add4~25_combout\ : std_logic;
SIGNAL \street|Add4~28_combout\ : std_logic;
SIGNAL \street|Add4~27\ : std_logic;
SIGNAL \street|Add4~30_combout\ : std_logic;
SIGNAL \street|Add5~9\ : std_logic;
SIGNAL \street|Add5~10_combout\ : std_logic;
SIGNAL \street|Add6~7\ : std_logic;
SIGNAL \street|Add6~8_combout\ : std_logic;
SIGNAL \street|Add4~29_combout\ : std_logic;
SIGNAL \street|Add4~32_combout\ : std_logic;
SIGNAL \street|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \street|WideOr0~1_combout\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \street|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \street|WideOr0~0_combout\ : std_logic;
SIGNAL \street|WideOr0~combout\ : std_logic;
SIGNAL \street|Add10~1_cout\ : std_logic;
SIGNAL \street|Add10~3\ : std_logic;
SIGNAL \street|Add10~5\ : std_logic;
SIGNAL \street|Add10~7\ : std_logic;
SIGNAL \street|Add10~9\ : std_logic;
SIGNAL \street|Add10~11\ : std_logic;
SIGNAL \street|Add10~13\ : std_logic;
SIGNAL \street|Add10~15\ : std_logic;
SIGNAL \street|Add10~16_combout\ : std_logic;
SIGNAL \street|this_curve[7]~0_combout\ : std_logic;
SIGNAL \street|Add10~14_combout\ : std_logic;
SIGNAL \street|Add10~10_combout\ : std_logic;
SIGNAL \street|Add10~12_combout\ : std_logic;
SIGNAL \street|Add11~0_combout\ : std_logic;
SIGNAL \street|center_pos[8]~0_combout\ : std_logic;
SIGNAL \street|Add11~1_combout\ : std_logic;
SIGNAL \street|Add11~2_combout\ : std_logic;
SIGNAL \street|Add11~3_combout\ : std_logic;
SIGNAL \street|center_pos[4]~3_combout\ : std_logic;
SIGNAL \street|Add10~8_combout\ : std_logic;
SIGNAL \street|Add10~6_combout\ : std_logic;
SIGNAL \street|Add10~4_combout\ : std_logic;
SIGNAL \street|Add10~2_combout\ : std_logic;
SIGNAL \street|h_gap_1[0]~11\ : std_logic;
SIGNAL \street|h_gap_1[1]~13\ : std_logic;
SIGNAL \street|h_gap_1[2]~15\ : std_logic;
SIGNAL \street|h_gap_1[3]~17\ : std_logic;
SIGNAL \street|h_gap_1[4]~19\ : std_logic;
SIGNAL \street|h_gap_1[5]~21\ : std_logic;
SIGNAL \street|h_gap_1[6]~23\ : std_logic;
SIGNAL \street|h_gap_1[7]~25\ : std_logic;
SIGNAL \street|h_gap_1[8]~26_combout\ : std_logic;
SIGNAL \street|Add13~1\ : std_logic;
SIGNAL \street|Add13~3\ : std_logic;
SIGNAL \street|Add13~5\ : std_logic;
SIGNAL \street|Add13~7\ : std_logic;
SIGNAL \street|Add13~9\ : std_logic;
SIGNAL \street|Add13~11\ : std_logic;
SIGNAL \street|Add13~13\ : std_logic;
SIGNAL \street|Add13~15\ : std_logic;
SIGNAL \street|Add13~16_combout\ : std_logic;
SIGNAL \street|LessThan14~1_cout\ : std_logic;
SIGNAL \street|LessThan14~3_cout\ : std_logic;
SIGNAL \street|LessThan14~5_cout\ : std_logic;
SIGNAL \street|LessThan14~7_cout\ : std_logic;
SIGNAL \street|LessThan14~9_cout\ : std_logic;
SIGNAL \street|LessThan14~11_cout\ : std_logic;
SIGNAL \street|LessThan14~13_cout\ : std_logic;
SIGNAL \street|LessThan14~15_cout\ : std_logic;
SIGNAL \street|LessThan14~17_cout\ : std_logic;
SIGNAL \street|LessThan14~18_combout\ : std_logic;
SIGNAL \street|x_value_a[3]~7\ : std_logic;
SIGNAL \street|x_value_a[4]~9\ : std_logic;
SIGNAL \street|x_value_a[5]~11\ : std_logic;
SIGNAL \street|x_value_a[6]~13\ : std_logic;
SIGNAL \street|x_value_a[7]~15\ : std_logic;
SIGNAL \street|x_value_a[8]~16_combout\ : std_logic;
SIGNAL \street|x_value_a[7]~14_combout\ : std_logic;
SIGNAL \street|h_gap_1[7]~24_combout\ : std_logic;
SIGNAL \street|Add13~14_combout\ : std_logic;
SIGNAL \street|x_value_a[6]~12_combout\ : std_logic;
SIGNAL \street|h_gap_1[6]~22_combout\ : std_logic;
SIGNAL \street|Add13~12_combout\ : std_logic;
SIGNAL \street|x_value_a[5]~10_combout\ : std_logic;
SIGNAL \street|h_gap_1[5]~20_combout\ : std_logic;
SIGNAL \street|Add13~10_combout\ : std_logic;
SIGNAL \street|h_gap_1[4]~18_combout\ : std_logic;
SIGNAL \street|Add13~8_combout\ : std_logic;
SIGNAL \street|x_value_a[4]~8_combout\ : std_logic;
SIGNAL \street|h_gap_1[3]~16_combout\ : std_logic;
SIGNAL \street|Add13~6_combout\ : std_logic;
SIGNAL \street|x_value_a[3]~6_combout\ : std_logic;
SIGNAL \street|x_value_a[2]~18_combout\ : std_logic;
SIGNAL \street|h_gap_1[2]~14_combout\ : std_logic;
SIGNAL \street|Add13~4_combout\ : std_logic;
SIGNAL \street|x_value_c[1]~feeder_combout\ : std_logic;
SIGNAL \street|h_gap_1[1]~12_combout\ : std_logic;
SIGNAL \street|Add13~2_combout\ : std_logic;
SIGNAL \street|x_value_c[0]~feeder_combout\ : std_logic;
SIGNAL \street|h_gap_1[0]~10_combout\ : std_logic;
SIGNAL \street|Add13~0_combout\ : std_logic;
SIGNAL \street|LessThan16~1_cout\ : std_logic;
SIGNAL \street|LessThan16~3_cout\ : std_logic;
SIGNAL \street|LessThan16~5_cout\ : std_logic;
SIGNAL \street|LessThan16~7_cout\ : std_logic;
SIGNAL \street|LessThan16~9_cout\ : std_logic;
SIGNAL \street|LessThan16~11_cout\ : std_logic;
SIGNAL \street|LessThan16~13_cout\ : std_logic;
SIGNAL \street|LessThan16~15_cout\ : std_logic;
SIGNAL \street|LessThan16~16_combout\ : std_logic;
SIGNAL \street|h_gap_1[8]~27\ : std_logic;
SIGNAL \street|h_gap_1[9]~28_combout\ : std_logic;
SIGNAL \street|Add13~17\ : std_logic;
SIGNAL \street|Add13~18_combout\ : std_logic;
SIGNAL \street|LessThan15~0_combout\ : std_logic;
SIGNAL \street|LessThan15~1_combout\ : std_logic;
SIGNAL \street|x_value_b[1]~9\ : std_logic;
SIGNAL \street|x_value_b[2]~11\ : std_logic;
SIGNAL \street|x_value_b[3]~13\ : std_logic;
SIGNAL \street|x_value_b[4]~15\ : std_logic;
SIGNAL \street|x_value_b[5]~17\ : std_logic;
SIGNAL \street|x_value_b[6]~19\ : std_logic;
SIGNAL \street|x_value_b[7]~21\ : std_logic;
SIGNAL \street|x_value_b[8]~22_combout\ : std_logic;
SIGNAL \street|x_value_b[7]~20_combout\ : std_logic;
SIGNAL \street|x_value_b[6]~18_combout\ : std_logic;
SIGNAL \street|x_value_b[5]~16_combout\ : std_logic;
SIGNAL \street|x_value_b[4]~14_combout\ : std_logic;
SIGNAL \street|x_value_b[3]~12_combout\ : std_logic;
SIGNAL \street|x_value_b[2]~10_combout\ : std_logic;
SIGNAL \street|x_value_b[1]~8_combout\ : std_logic;
SIGNAL \street|LessThan17~1_cout\ : std_logic;
SIGNAL \street|LessThan17~3_cout\ : std_logic;
SIGNAL \street|LessThan17~5_cout\ : std_logic;
SIGNAL \street|LessThan17~7_cout\ : std_logic;
SIGNAL \street|LessThan17~9_cout\ : std_logic;
SIGNAL \street|LessThan17~11_cout\ : std_logic;
SIGNAL \street|LessThan17~13_cout\ : std_logic;
SIGNAL \street|LessThan17~15_cout\ : std_logic;
SIGNAL \street|LessThan17~16_combout\ : std_logic;
SIGNAL \street|LessThan10~0_combout\ : std_logic;
SIGNAL \street|process_1~0_combout\ : std_logic;
SIGNAL \street|LessThan12~2_combout\ : std_logic;
SIGNAL \street|process_1~1_combout\ : std_logic;
SIGNAL \street|process_1~2_combout\ : std_logic;
SIGNAL \street|de_1~q\ : std_logic;
SIGNAL \street|rgb_2~4_combout\ : std_logic;
SIGNAL \street|rgb_2~5_combout\ : std_logic;
SIGNAL \street|r_out[4]~feeder_combout\ : std_logic;
SIGNAL \street|rgb_2[21]~7_combout\ : std_logic;
SIGNAL \street|rgb_2[21]~8_combout\ : std_logic;
SIGNAL \street|rgb_2~6_combout\ : std_logic;
SIGNAL \street|Add17~0_combout\ : std_logic;
SIGNAL \street|Add17~1_combout\ : std_logic;
SIGNAL \street|Add17~2_combout\ : std_logic;
SIGNAL \street|x_value_c[5]~0_combout\ : std_logic;
SIGNAL \street|LessThan18~1_cout\ : std_logic;
SIGNAL \street|LessThan18~3_cout\ : std_logic;
SIGNAL \street|LessThan18~5_cout\ : std_logic;
SIGNAL \street|LessThan18~7_cout\ : std_logic;
SIGNAL \street|LessThan18~9_cout\ : std_logic;
SIGNAL \street|LessThan18~11_cout\ : std_logic;
SIGNAL \street|LessThan18~13_cout\ : std_logic;
SIGNAL \street|LessThan18~15_cout\ : std_logic;
SIGNAL \street|LessThan18~16_combout\ : std_logic;
SIGNAL \street|rgb_2~9_combout\ : std_logic;
SIGNAL \street|rgb_2~10_combout\ : std_logic;
SIGNAL \street|r_out[5]~feeder_combout\ : std_logic;
SIGNAL \street|r_out[6]~feeder_combout\ : std_logic;
SIGNAL \street|rgb_2~13_combout\ : std_logic;
SIGNAL \street|r_out[7]~feeder_combout\ : std_logic;
SIGNAL \street|rgb_2~11_combout\ : std_logic;
SIGNAL \street|rgb_2~12_combout\ : std_logic;
SIGNAL \street|g_out[5]~feeder_combout\ : std_logic;
SIGNAL \street|g_out[6]~feeder_combout\ : std_logic;
SIGNAL \street|rgb_2[15]~feeder_combout\ : std_logic;
SIGNAL \street|g_out[7]~feeder_combout\ : std_logic;
SIGNAL \street|rgb_2[5]~feeder_combout\ : std_logic;
SIGNAL \street|b_out[4]~feeder_combout\ : std_logic;
SIGNAL \street|b_out[5]~feeder_combout\ : std_logic;
SIGNAL \street|rgb_2~14_combout\ : std_logic;
SIGNAL \street|b_out[7]~feeder_combout\ : std_logic;
SIGNAL \street|x_value_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \street|h_gap_1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \street|r_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \street|x_value_b\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \street|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \street|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \street|frame_num\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \street|g_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \street|b_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \street|rgb_2\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \street|v_pos_1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \street|x_value_c\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \street|center_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \street|this_curve\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \street|curve\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \street|ALT_INV_curve\ : std_logic_vector(7 DOWNTO 7);

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

\street|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\street|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT14\ & 
\street|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT10\ & 
\street|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT5\ & 
\street|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \street|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \street|Mult1|auto_generated|mac_mult1~dataout\ & 
\street|Mult1|auto_generated|mac_mult1~0\);

\street|Mult1|auto_generated|mac_out2~0\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\street|Mult1|auto_generated|mac_out2~dataout\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\street|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\street|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\street|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\street|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\street|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\street|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\street|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\street|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\street|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\street|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\street|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\street|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\street|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\street|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\street|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\street|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);

\street|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \street|Mult0|auto_generated|mac_out2~DATAOUT16\ & \street|Mult0|auto_generated|mac_out2~DATAOUT15\ & \street|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
\street|Mult0|auto_generated|mac_out2~DATAOUT13\ & \street|Mult0|auto_generated|mac_out2~DATAOUT12\ & \street|Mult0|auto_generated|mac_out2~DATAOUT11\ & \street|Mult0|auto_generated|mac_out2~DATAOUT10\ & \street|Mult0|auto_generated|mac_out2~DATAOUT9\);

\street|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (NOT \street|curve\(7) & \street|curve\(6) & \street|curve\(5) & \street|curve\(4) & \street|curve\(3) & \street|curve\(2) & \street|curve\(1) & \street|curve\(0) & gnd);

\street|Mult1|auto_generated|mac_mult1~0\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\street|Mult1|auto_generated|mac_mult1~dataout\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\street|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\street|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\street|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\street|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\street|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\street|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\street|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\street|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\street|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\street|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\street|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\street|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\street|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\street|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\street|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\street|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);

\street|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\street|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\street|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\street|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT6\
& \street|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \street|Mult0|auto_generated|mac_mult1~DATAOUT1\
& \street|Mult0|auto_generated|mac_mult1~dataout\);

\street|Mult0|auto_generated|mac_out2~dataout\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\street|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\street|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\street|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\street|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\street|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\street|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\street|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\street|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\street|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\street|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\street|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\street|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\street|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\street|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\street|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\street|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\street|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\street|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\street|v_factor_a[8]~SCLR_LUT_combout\ & \street|v_factor_a[7]~SCLR_LUT_combout\ & \street|v_factor_a[6]~SCLR_LUT_combout\ & \street|v_factor_a[5]~SCLR_LUT_combout\ & 
\street|v_factor_a[4]~SCLR_LUT_combout\ & \street|v_factor_a[3]~SCLR_LUT_combout\ & \street|v_factor_a[2]~SCLR_LUT_combout\ & \street|v_factor_a[1]~SCLR_LUT_combout\ & \street|v_factor_a[0]~SCLR_LUT_combout\);

\street|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\street|v_factor_a[8]~SCLR_LUT_combout\ & \street|v_factor_a[7]~SCLR_LUT_combout\ & \street|v_factor_a[6]~SCLR_LUT_combout\ & \street|v_factor_a[5]~SCLR_LUT_combout\ & 
\street|v_factor_a[4]~SCLR_LUT_combout\ & \street|v_factor_a[3]~SCLR_LUT_combout\ & \street|v_factor_a[2]~SCLR_LUT_combout\ & \street|v_factor_a[1]~SCLR_LUT_combout\ & \street|v_factor_a[0]~SCLR_LUT_combout\);

\street|Mult0|auto_generated|mac_mult1~dataout\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\street|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\street|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\street|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\street|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\street|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\street|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\street|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\street|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\street|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\street|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\street|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\street|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\street|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\street|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\street|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\street|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\street|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\clk_25~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_25~q\);

\max10_clk1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \max10_clk1_50~input_o\);
\street|ALT_INV_curve\(7) <= NOT \street|curve\(7);
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
	i => \street|vs_out~q\,
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
	i => \street|hs_out~q\,
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
	i => \street|r_out\(4),
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
	i => \street|r_out\(5),
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
	i => \street|r_out\(6),
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
	i => \street|r_out\(7),
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
	i => \street|g_out\(4),
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
	i => \street|g_out\(5),
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
	i => \street|g_out\(6),
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
	i => \street|g_out\(7),
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
	i => \street|b_out\(4),
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
	i => \street|b_out\(5),
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
	i => \street|b_out\(6),
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
	i => \street|b_out\(7),
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

-- Location: LCCOMB_X77_Y35_N4
\clk_25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_25~0_combout\ = (\key[0]~input_o\ & !\clk_25~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[0]~input_o\,
	datad => \clk_25~q\,
	combout => \clk_25~0_combout\);

-- Location: LCCOMB_X77_Y35_N2
\clk_25~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_25~feeder_combout\ = \clk_25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_25~0_combout\,
	combout => \clk_25~feeder_combout\);

-- Location: FF_X77_Y35_N3
clk_25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \clk_25~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_25~q\);

-- Location: CLKCTRL_G6
\clk_25~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_25~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_25~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y35_N10
\street|v_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[0]~10_combout\ = \street|v_count\(0) $ (VCC)
-- \street|v_count[0]~11\ = CARRY(\street|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(0),
	datad => VCC,
	combout => \street|v_count[0]~10_combout\,
	cout => \street|v_count[0]~11\);

-- Location: LCCOMB_X58_Y35_N16
\street|v_count[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[3]~18_combout\ = (\street|v_count\(3) & (!\street|v_count[2]~17\)) # (!\street|v_count\(3) & ((\street|v_count[2]~17\) # (GND)))
-- \street|v_count[3]~19\ = CARRY((!\street|v_count[2]~17\) # (!\street|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(3),
	datad => VCC,
	cin => \street|v_count[2]~17\,
	combout => \street|v_count[3]~18_combout\,
	cout => \street|v_count[3]~19\);

-- Location: LCCOMB_X58_Y35_N18
\street|v_count[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[4]~20_combout\ = (\street|v_count\(4) & (\street|v_count[3]~19\ $ (GND))) # (!\street|v_count\(4) & (!\street|v_count[3]~19\ & VCC))
-- \street|v_count[4]~21\ = CARRY((\street|v_count\(4) & !\street|v_count[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(4),
	datad => VCC,
	cin => \street|v_count[3]~19\,
	combout => \street|v_count[4]~20_combout\,
	cout => \street|v_count[4]~21\);

-- Location: LCCOMB_X59_Y35_N6
\street|h_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_count[0]~10_combout\ = \street|h_count\(0) $ (VCC)
-- \street|h_count[0]~11\ = CARRY(\street|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(0),
	datad => VCC,
	combout => \street|h_count[0]~10_combout\,
	cout => \street|h_count[0]~11\);

-- Location: FF_X59_Y35_N7
\street|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_count[0]~10_combout\,
	sclr => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_count\(0));

-- Location: LCCOMB_X59_Y35_N8
\street|h_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_count[1]~12_combout\ = (\street|h_count\(1) & (!\street|h_count[0]~11\)) # (!\street|h_count\(1) & ((\street|h_count[0]~11\) # (GND)))
-- \street|h_count[1]~13\ = CARRY((!\street|h_count[0]~11\) # (!\street|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|h_count\(1),
	datad => VCC,
	cin => \street|h_count[0]~11\,
	combout => \street|h_count[1]~12_combout\,
	cout => \street|h_count[1]~13\);

-- Location: FF_X59_Y35_N9
\street|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_count[1]~12_combout\,
	sclr => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_count\(1));

-- Location: LCCOMB_X59_Y35_N10
\street|h_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_count[2]~14_combout\ = (\street|h_count\(2) & (\street|h_count[1]~13\ $ (GND))) # (!\street|h_count\(2) & (!\street|h_count[1]~13\ & VCC))
-- \street|h_count[2]~15\ = CARRY((\street|h_count\(2) & !\street|h_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(2),
	datad => VCC,
	cin => \street|h_count[1]~13\,
	combout => \street|h_count[2]~14_combout\,
	cout => \street|h_count[2]~15\);

-- Location: FF_X59_Y35_N11
\street|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_count[2]~14_combout\,
	sclr => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_count\(2));

-- Location: LCCOMB_X59_Y35_N12
\street|h_count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_count[3]~16_combout\ = (\street|h_count\(3) & (!\street|h_count[2]~15\)) # (!\street|h_count\(3) & ((\street|h_count[2]~15\) # (GND)))
-- \street|h_count[3]~17\ = CARRY((!\street|h_count[2]~15\) # (!\street|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(3),
	datad => VCC,
	cin => \street|h_count[2]~15\,
	combout => \street|h_count[3]~16_combout\,
	cout => \street|h_count[3]~17\);

-- Location: FF_X59_Y35_N13
\street|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_count[3]~16_combout\,
	sclr => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_count\(3));

-- Location: LCCOMB_X59_Y35_N14
\street|h_count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_count[4]~18_combout\ = (\street|h_count\(4) & (\street|h_count[3]~17\ $ (GND))) # (!\street|h_count\(4) & (!\street|h_count[3]~17\ & VCC))
-- \street|h_count[4]~19\ = CARRY((\street|h_count\(4) & !\street|h_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|h_count\(4),
	datad => VCC,
	cin => \street|h_count[3]~17\,
	combout => \street|h_count[4]~18_combout\,
	cout => \street|h_count[4]~19\);

-- Location: FF_X59_Y35_N15
\street|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_count[4]~18_combout\,
	sclr => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_count\(4));

-- Location: LCCOMB_X59_Y35_N16
\street|h_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_count[5]~20_combout\ = (\street|h_count\(5) & (!\street|h_count[4]~19\)) # (!\street|h_count\(5) & ((\street|h_count[4]~19\) # (GND)))
-- \street|h_count[5]~21\ = CARRY((!\street|h_count[4]~19\) # (!\street|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|h_count\(5),
	datad => VCC,
	cin => \street|h_count[4]~19\,
	combout => \street|h_count[5]~20_combout\,
	cout => \street|h_count[5]~21\);

-- Location: FF_X59_Y35_N17
\street|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_count[5]~20_combout\,
	sclr => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_count\(5));

-- Location: LCCOMB_X59_Y35_N18
\street|h_count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_count[6]~22_combout\ = (\street|h_count\(6) & (\street|h_count[5]~21\ $ (GND))) # (!\street|h_count\(6) & (!\street|h_count[5]~21\ & VCC))
-- \street|h_count[6]~23\ = CARRY((\street|h_count\(6) & !\street|h_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|h_count\(6),
	datad => VCC,
	cin => \street|h_count[5]~21\,
	combout => \street|h_count[6]~22_combout\,
	cout => \street|h_count[6]~23\);

-- Location: FF_X59_Y35_N19
\street|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_count[6]~22_combout\,
	sclr => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_count\(6));

-- Location: LCCOMB_X59_Y35_N20
\street|h_count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_count[7]~24_combout\ = (\street|h_count\(7) & (!\street|h_count[6]~23\)) # (!\street|h_count\(7) & ((\street|h_count[6]~23\) # (GND)))
-- \street|h_count[7]~25\ = CARRY((!\street|h_count[6]~23\) # (!\street|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|h_count\(7),
	datad => VCC,
	cin => \street|h_count[6]~23\,
	combout => \street|h_count[7]~24_combout\,
	cout => \street|h_count[7]~25\);

-- Location: FF_X59_Y35_N21
\street|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_count[7]~24_combout\,
	sclr => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_count\(7));

-- Location: LCCOMB_X59_Y35_N22
\street|h_count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_count[8]~26_combout\ = (\street|h_count\(8) & (\street|h_count[7]~25\ $ (GND))) # (!\street|h_count\(8) & (!\street|h_count[7]~25\ & VCC))
-- \street|h_count[8]~27\ = CARRY((\street|h_count\(8) & !\street|h_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(8),
	datad => VCC,
	cin => \street|h_count[7]~25\,
	combout => \street|h_count[8]~26_combout\,
	cout => \street|h_count[8]~27\);

-- Location: FF_X59_Y35_N23
\street|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_count[8]~26_combout\,
	sclr => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_count\(8));

-- Location: LCCOMB_X59_Y35_N24
\street|h_count[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_count[9]~28_combout\ = \street|h_count[8]~27\ $ (\street|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \street|h_count\(9),
	cin => \street|h_count[8]~27\,
	combout => \street|h_count[9]~28_combout\);

-- Location: FF_X59_Y35_N25
\street|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_count[9]~28_combout\,
	sclr => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_count\(9));

-- Location: LCCOMB_X59_Y35_N4
\street|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Equal0~0_combout\ = (\street|h_count\(6)) # ((\street|h_count\(5)) # ((!\street|h_count\(9)) # (!\street|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(6),
	datab => \street|h_count\(5),
	datac => \street|h_count\(8),
	datad => \street|h_count\(9),
	combout => \street|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y35_N14
\street|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Equal0~1_combout\ = ((\street|h_count\(7)) # ((!\street|h_count\(1)) # (!\street|h_count\(0)))) # (!\street|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(4),
	datab => \street|h_count\(7),
	datac => \street|h_count\(0),
	datad => \street|h_count\(1),
	combout => \street|Equal0~1_combout\);

-- Location: LCCOMB_X60_Y35_N12
\street|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Equal0~2_combout\ = (!\street|h_count\(2)) # (!\street|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|h_count\(3),
	datad => \street|h_count\(2),
	combout => \street|Equal0~2_combout\);

-- Location: LCCOMB_X60_Y35_N28
\reset_a~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_a~0_combout\ = !\key[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[0]~input_o\,
	combout => \reset_a~0_combout\);

-- Location: FF_X60_Y35_N29
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

-- Location: LCCOMB_X60_Y35_N10
\reset_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_b~0_combout\ = (\reset_a~q\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[0]~input_o\,
	datad => \reset_a~q\,
	combout => \reset_b~0_combout\);

-- Location: FF_X60_Y35_N11
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

-- Location: LCCOMB_X60_Y35_N24
\reset_c~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_c~0_combout\ = (\reset_b~q\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[0]~input_o\,
	datad => \reset_b~q\,
	combout => \reset_c~0_combout\);

-- Location: FF_X60_Y35_N25
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

-- Location: LCCOMB_X60_Y35_N18
\reset_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_d~0_combout\ = (\reset_c~q\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[0]~input_o\,
	datad => \reset_c~q\,
	combout => \reset_d~0_combout\);

-- Location: FF_X60_Y35_N19
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

-- Location: LCCOMB_X60_Y35_N16
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

-- Location: FF_X60_Y35_N17
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

-- Location: LCCOMB_X59_Y35_N26
\street|v_count[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[3]~15_combout\ = (\reset_e~q\) # ((!\street|Equal0~0_combout\ & (!\street|Equal0~1_combout\ & !\street|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Equal0~0_combout\,
	datab => \street|Equal0~1_combout\,
	datac => \street|Equal0~2_combout\,
	datad => \reset_e~q\,
	combout => \street|v_count[3]~15_combout\);

-- Location: FF_X58_Y35_N19
\street|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_count[4]~20_combout\,
	sclr => \street|v_count[3]~14_combout\,
	ena => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_count\(4));

-- Location: LCCOMB_X58_Y35_N20
\street|v_count[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[5]~22_combout\ = (\street|v_count\(5) & (!\street|v_count[4]~21\)) # (!\street|v_count\(5) & ((\street|v_count[4]~21\) # (GND)))
-- \street|v_count[5]~23\ = CARRY((!\street|v_count[4]~21\) # (!\street|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(5),
	datad => VCC,
	cin => \street|v_count[4]~21\,
	combout => \street|v_count[5]~22_combout\,
	cout => \street|v_count[5]~23\);

-- Location: FF_X58_Y35_N21
\street|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_count[5]~22_combout\,
	sclr => \street|v_count[3]~14_combout\,
	ena => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_count\(5));

-- Location: LCCOMB_X58_Y35_N22
\street|v_count[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[6]~24_combout\ = (\street|v_count\(6) & (\street|v_count[5]~23\ $ (GND))) # (!\street|v_count\(6) & (!\street|v_count[5]~23\ & VCC))
-- \street|v_count[6]~25\ = CARRY((\street|v_count\(6) & !\street|v_count[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(6),
	datad => VCC,
	cin => \street|v_count[5]~23\,
	combout => \street|v_count[6]~24_combout\,
	cout => \street|v_count[6]~25\);

-- Location: FF_X58_Y35_N23
\street|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_count[6]~24_combout\,
	sclr => \street|v_count[3]~14_combout\,
	ena => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_count\(6));

-- Location: LCCOMB_X58_Y35_N24
\street|v_count[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[7]~26_combout\ = (\street|v_count\(7) & (!\street|v_count[6]~25\)) # (!\street|v_count\(7) & ((\street|v_count[6]~25\) # (GND)))
-- \street|v_count[7]~27\ = CARRY((!\street|v_count[6]~25\) # (!\street|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(7),
	datad => VCC,
	cin => \street|v_count[6]~25\,
	combout => \street|v_count[7]~26_combout\,
	cout => \street|v_count[7]~27\);

-- Location: FF_X58_Y35_N25
\street|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_count[7]~26_combout\,
	sclr => \street|v_count[3]~14_combout\,
	ena => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_count\(7));

-- Location: LCCOMB_X58_Y35_N26
\street|v_count[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[8]~28_combout\ = (\street|v_count\(8) & (\street|v_count[7]~27\ $ (GND))) # (!\street|v_count\(8) & (!\street|v_count[7]~27\ & VCC))
-- \street|v_count[8]~29\ = CARRY((\street|v_count\(8) & !\street|v_count[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(8),
	datad => VCC,
	cin => \street|v_count[7]~27\,
	combout => \street|v_count[8]~28_combout\,
	cout => \street|v_count[8]~29\);

-- Location: FF_X58_Y35_N27
\street|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_count[8]~28_combout\,
	sclr => \street|v_count[3]~14_combout\,
	ena => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_count\(8));

-- Location: LCCOMB_X58_Y35_N28
\street|v_count[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[9]~30_combout\ = \street|v_count[8]~29\ $ (\street|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \street|v_count\(9),
	cin => \street|v_count[8]~29\,
	combout => \street|v_count[9]~30_combout\);

-- Location: FF_X58_Y35_N29
\street|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_count[9]~30_combout\,
	sclr => \street|v_count[3]~14_combout\,
	ena => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_count\(9));

-- Location: LCCOMB_X58_Y35_N4
\street|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Equal1~1_combout\ = (!\street|v_count\(1) & (\street|v_count\(9) & (\street|v_count\(2) & \street|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(1),
	datab => \street|v_count\(9),
	datac => \street|v_count\(2),
	datad => \street|v_count\(3),
	combout => \street|Equal1~1_combout\);

-- Location: LCCOMB_X56_Y34_N28
\street|LessThan12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan12~0_combout\ = (!\street|v_count\(6) & (!\street|v_count\(8) & !\street|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(6),
	datac => \street|v_count\(8),
	datad => \street|v_count\(7),
	combout => \street|LessThan12~0_combout\);

-- Location: LCCOMB_X56_Y34_N0
\street|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Equal1~0_combout\ = (\street|LessThan12~0_combout\ & (!\street|v_count\(4) & !\street|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|LessThan12~0_combout\,
	datac => \street|v_count\(4),
	datad => \street|v_count\(5),
	combout => \street|Equal1~0_combout\);

-- Location: LCCOMB_X58_Y35_N30
\street|v_count[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[3]~14_combout\ = (\reset_e~q\) # ((!\street|v_count\(0) & (\street|Equal1~1_combout\ & \street|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(0),
	datab => \street|Equal1~1_combout\,
	datac => \street|Equal1~0_combout\,
	datad => \reset_e~q\,
	combout => \street|v_count[3]~14_combout\);

-- Location: FF_X58_Y35_N11
\street|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_count[0]~10_combout\,
	sclr => \street|v_count[3]~14_combout\,
	ena => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_count\(0));

-- Location: LCCOMB_X58_Y35_N12
\street|v_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[1]~12_combout\ = (\street|v_count\(1) & (!\street|v_count[0]~11\)) # (!\street|v_count\(1) & ((\street|v_count[0]~11\) # (GND)))
-- \street|v_count[1]~13\ = CARRY((!\street|v_count[0]~11\) # (!\street|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(1),
	datad => VCC,
	cin => \street|v_count[0]~11\,
	combout => \street|v_count[1]~12_combout\,
	cout => \street|v_count[1]~13\);

-- Location: FF_X58_Y35_N13
\street|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_count[1]~12_combout\,
	sclr => \street|v_count[3]~14_combout\,
	ena => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_count\(1));

-- Location: LCCOMB_X58_Y35_N14
\street|v_count[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_count[2]~16_combout\ = (\street|v_count\(2) & (\street|v_count[1]~13\ $ (GND))) # (!\street|v_count\(2) & (!\street|v_count[1]~13\ & VCC))
-- \street|v_count[2]~17\ = CARRY((\street|v_count\(2) & !\street|v_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(2),
	datad => VCC,
	cin => \street|v_count[1]~13\,
	combout => \street|v_count[2]~16_combout\,
	cout => \street|v_count[2]~17\);

-- Location: FF_X58_Y35_N15
\street|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_count[2]~16_combout\,
	sclr => \street|v_count[3]~14_combout\,
	ena => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_count\(2));

-- Location: FF_X58_Y35_N17
\street|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_count[3]~18_combout\,
	sclr => \street|v_count[3]~14_combout\,
	ena => \street|v_count[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_count\(3));

-- Location: LCCOMB_X56_Y34_N24
\street|LessThan12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan12~1_combout\ = (!\street|v_count\(3) & (!\street|v_count\(2) & \street|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(3),
	datab => \street|v_count\(2),
	datad => \street|Equal1~0_combout\,
	combout => \street|LessThan12~1_combout\);

-- Location: LCCOMB_X56_Y34_N20
\street|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan9~0_combout\ = (\street|LessThan12~1_combout\ & (!\street|v_count\(1) & !\street|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|LessThan12~1_combout\,
	datac => \street|v_count\(1),
	datad => \street|v_count\(9),
	combout => \street|LessThan9~0_combout\);

-- Location: FF_X56_Y34_N21
\street|vs_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|LessThan9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|vs_1~q\);

-- Location: LCCOMB_X56_Y34_N30
\street|vs_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|vs_2~feeder_combout\ = \street|vs_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|vs_1~q\,
	combout => \street|vs_2~feeder_combout\);

-- Location: FF_X56_Y34_N31
\street|vs_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|vs_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|vs_2~q\);

-- Location: FF_X56_Y34_N25
\street|vs_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|vs_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|vs_out~q\);

-- Location: LCCOMB_X59_Y34_N30
\street|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan8~0_combout\ = (!\street|h_count\(8) & (!\street|h_count\(9) & ((!\street|h_count\(5)) # (!\street|h_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(6),
	datab => \street|h_count\(5),
	datac => \street|h_count\(8),
	datad => \street|h_count\(9),
	combout => \street|LessThan8~0_combout\);

-- Location: LCCOMB_X59_Y34_N0
\street|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan8~1_combout\ = (\street|LessThan8~0_combout\ & !\street|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|LessThan8~0_combout\,
	datad => \street|h_count\(7),
	combout => \street|LessThan8~1_combout\);

-- Location: FF_X59_Y34_N1
\street|hs_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|hs_1~q\);

-- Location: FF_X58_Y34_N15
\street|hs_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|hs_1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|hs_2~q\);

-- Location: FF_X57_Y34_N13
\street|hs_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|hs_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|hs_out~q\);

-- Location: FF_X63_Y33_N5
\street|v_pos_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|v_count\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_pos_1\(0));

-- Location: LCCOMB_X63_Y33_N4
\street|v_factor_a[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[0]~9_combout\ = \street|v_pos_1\(0) $ (GND)
-- \street|v_factor_a[0]~10\ = CARRY(!\street|v_pos_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|v_pos_1\(0),
	datad => VCC,
	combout => \street|v_factor_a[0]~9_combout\,
	cout => \street|v_factor_a[0]~10\);

-- Location: LCCOMB_X58_Y33_N10
\street|Add12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add12~1_cout\ = CARRY(\street|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(2),
	datad => VCC,
	cout => \street|Add12~1_cout\);

-- Location: LCCOMB_X58_Y33_N12
\street|Add12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add12~2_combout\ = (\street|v_count\(3) & (\street|Add12~1_cout\ & VCC)) # (!\street|v_count\(3) & (!\street|Add12~1_cout\))
-- \street|Add12~3\ = CARRY((!\street|v_count\(3) & !\street|Add12~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(3),
	datad => VCC,
	cin => \street|Add12~1_cout\,
	combout => \street|Add12~2_combout\,
	cout => \street|Add12~3\);

-- Location: LCCOMB_X58_Y33_N14
\street|Add12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add12~4_combout\ = (\street|v_count\(4) & ((GND) # (!\street|Add12~3\))) # (!\street|v_count\(4) & (\street|Add12~3\ $ (GND)))
-- \street|Add12~5\ = CARRY((\street|v_count\(4)) # (!\street|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(4),
	datad => VCC,
	cin => \street|Add12~3\,
	combout => \street|Add12~4_combout\,
	cout => \street|Add12~5\);

-- Location: LCCOMB_X58_Y33_N16
\street|Add12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add12~6_combout\ = (\street|v_count\(5) & (!\street|Add12~5\)) # (!\street|v_count\(5) & ((\street|Add12~5\) # (GND)))
-- \street|Add12~7\ = CARRY((!\street|Add12~5\) # (!\street|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(5),
	datad => VCC,
	cin => \street|Add12~5\,
	combout => \street|Add12~6_combout\,
	cout => \street|Add12~7\);

-- Location: LCCOMB_X58_Y33_N18
\street|Add12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add12~8_combout\ = (\street|v_count\(6) & ((GND) # (!\street|Add12~7\))) # (!\street|v_count\(6) & (\street|Add12~7\ $ (GND)))
-- \street|Add12~9\ = CARRY((\street|v_count\(6)) # (!\street|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(6),
	datad => VCC,
	cin => \street|Add12~7\,
	combout => \street|Add12~8_combout\,
	cout => \street|Add12~9\);

-- Location: LCCOMB_X58_Y33_N20
\street|Add12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add12~10_combout\ = (\street|v_count\(7) & (\street|Add12~9\ & VCC)) # (!\street|v_count\(7) & (!\street|Add12~9\))
-- \street|Add12~11\ = CARRY((!\street|v_count\(7) & !\street|Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(7),
	datad => VCC,
	cin => \street|Add12~9\,
	combout => \street|Add12~10_combout\,
	cout => \street|Add12~11\);

-- Location: LCCOMB_X58_Y33_N22
\street|Add12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add12~12_combout\ = (\street|v_count\(8) & ((GND) # (!\street|Add12~11\))) # (!\street|v_count\(8) & (\street|Add12~11\ $ (GND)))
-- \street|Add12~13\ = CARRY((\street|v_count\(8)) # (!\street|Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(8),
	datad => VCC,
	cin => \street|Add12~11\,
	combout => \street|Add12~12_combout\,
	cout => \street|Add12~13\);

-- Location: LCCOMB_X58_Y33_N24
\street|Add12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add12~14_combout\ = (\street|v_count\(9) & (\street|Add12~13\ & VCC)) # (!\street|v_count\(9) & (!\street|Add12~13\))
-- \street|Add12~15\ = CARRY((!\street|v_count\(9) & !\street|Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(9),
	datad => VCC,
	cin => \street|Add12~13\,
	combout => \street|Add12~14_combout\,
	cout => \street|Add12~15\);

-- Location: LCCOMB_X58_Y33_N0
\street|v_pos_1[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_pos_1[9]~0_combout\ = !\street|Add12~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|Add12~14_combout\,
	combout => \street|v_pos_1[9]~0_combout\);

-- Location: FF_X58_Y33_N1
\street|v_pos_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_pos_1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_pos_1\(9));

-- Location: LCCOMB_X58_Y33_N6
\street|v_pos_1[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_pos_1[8]~1_combout\ = !\street|Add12~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|Add12~12_combout\,
	combout => \street|v_pos_1[8]~1_combout\);

-- Location: FF_X58_Y33_N7
\street|v_pos_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_pos_1[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_pos_1\(8));

-- Location: LCCOMB_X58_Y33_N4
\street|v_pos_1[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_pos_1[5]~2_combout\ = !\street|Add12~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|Add12~6_combout\,
	combout => \street|v_pos_1[5]~2_combout\);

-- Location: FF_X58_Y33_N5
\street|v_pos_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_pos_1[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_pos_1\(5));

-- Location: FF_X58_Y33_N19
\street|v_pos_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add12~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_pos_1\(6));

-- Location: FF_X58_Y33_N21
\street|v_pos_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add12~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_pos_1\(7));

-- Location: LCCOMB_X58_Y33_N8
\street|v_factor_a~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a~11_combout\ = (\street|v_pos_1\(8) & (\street|v_pos_1\(7) & ((\street|v_pos_1\(6)) # (!\street|v_pos_1\(5))))) # (!\street|v_pos_1\(8) & ((\street|v_pos_1\(5)) # ((!\street|v_pos_1\(7)) # (!\street|v_pos_1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_pos_1\(8),
	datab => \street|v_pos_1\(5),
	datac => \street|v_pos_1\(6),
	datad => \street|v_pos_1\(7),
	combout => \street|v_factor_a~11_combout\);

-- Location: LCCOMB_X58_Y33_N26
\street|Add12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add12~16_combout\ = \street|Add12~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \street|Add12~15\,
	combout => \street|Add12~16_combout\);

-- Location: LCCOMB_X58_Y33_N28
\street|v_pos_1[10]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_pos_1[10]~3_combout\ = !\street|Add12~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|Add12~16_combout\,
	combout => \street|v_pos_1[10]~3_combout\);

-- Location: FF_X58_Y33_N29
\street|v_pos_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_pos_1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_pos_1\(10));

-- Location: LCCOMB_X58_Y33_N2
\street|v_factor_a~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a~12_combout\ = ((!\street|v_pos_1\(10)) # (!\street|v_factor_a~11_combout\)) # (!\street|v_pos_1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|v_pos_1\(9),
	datac => \street|v_factor_a~11_combout\,
	datad => \street|v_pos_1\(10),
	combout => \street|v_factor_a~12_combout\);

-- Location: LCCOMB_X64_Y33_N0
\street|v_factor_a[0]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[0]~SCLR_LUT_combout\ = (\street|v_factor_a[0]~9_combout\ & !\street|v_factor_a~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|v_factor_a[0]~9_combout\,
	datad => \street|v_factor_a~12_combout\,
	combout => \street|v_factor_a[0]~SCLR_LUT_combout\);

-- Location: FF_X63_Y33_N7
\street|v_pos_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|v_count\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_pos_1\(1));

-- Location: LCCOMB_X63_Y33_N6
\street|v_factor_a[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[1]~13_combout\ = (\street|v_pos_1\(1) & ((\street|v_factor_a[0]~10\) # (GND))) # (!\street|v_pos_1\(1) & (!\street|v_factor_a[0]~10\))
-- \street|v_factor_a[1]~14\ = CARRY((\street|v_pos_1\(1)) # (!\street|v_factor_a[0]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_pos_1\(1),
	datad => VCC,
	cin => \street|v_factor_a[0]~10\,
	combout => \street|v_factor_a[1]~13_combout\,
	cout => \street|v_factor_a[1]~14\);

-- Location: LCCOMB_X64_Y33_N2
\street|v_factor_a[1]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[1]~SCLR_LUT_combout\ = (\street|v_factor_a[1]~13_combout\ & !\street|v_factor_a~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|v_factor_a[1]~13_combout\,
	datad => \street|v_factor_a~12_combout\,
	combout => \street|v_factor_a[1]~SCLR_LUT_combout\);

-- Location: LCCOMB_X55_Y34_N4
\street|x_value_b[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_b[0]~24_combout\ = !\street|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|v_count\(2),
	combout => \street|x_value_b[0]~24_combout\);

-- Location: FF_X55_Y34_N5
\street|x_value_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_b[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_b\(0));

-- Location: LCCOMB_X63_Y33_N8
\street|v_factor_a[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[2]~15_combout\ = (\street|x_value_b\(0) & (!\street|v_factor_a[1]~14\ & VCC)) # (!\street|x_value_b\(0) & (\street|v_factor_a[1]~14\ $ (GND)))
-- \street|v_factor_a[2]~16\ = CARRY((!\street|x_value_b\(0) & !\street|v_factor_a[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|x_value_b\(0),
	datad => VCC,
	cin => \street|v_factor_a[1]~14\,
	combout => \street|v_factor_a[2]~15_combout\,
	cout => \street|v_factor_a[2]~16\);

-- Location: LCCOMB_X64_Y33_N4
\street|v_factor_a[2]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[2]~SCLR_LUT_combout\ = (!\street|v_factor_a~12_combout\ & \street|v_factor_a[2]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_factor_a~12_combout\,
	datad => \street|v_factor_a[2]~15_combout\,
	combout => \street|v_factor_a[2]~SCLR_LUT_combout\);

-- Location: LCCOMB_X59_Y33_N12
\street|v_pos_1[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_pos_1[3]~4_combout\ = !\street|Add12~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|Add12~2_combout\,
	combout => \street|v_pos_1[3]~4_combout\);

-- Location: FF_X59_Y33_N13
\street|v_pos_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_pos_1[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_pos_1\(3));

-- Location: LCCOMB_X63_Y33_N10
\street|v_factor_a[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[3]~17_combout\ = (\street|v_pos_1\(3) & (\street|v_factor_a[2]~16\ & VCC)) # (!\street|v_pos_1\(3) & (!\street|v_factor_a[2]~16\))
-- \street|v_factor_a[3]~18\ = CARRY((!\street|v_pos_1\(3) & !\street|v_factor_a[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_pos_1\(3),
	datad => VCC,
	cin => \street|v_factor_a[2]~16\,
	combout => \street|v_factor_a[3]~17_combout\,
	cout => \street|v_factor_a[3]~18\);

-- Location: LCCOMB_X64_Y33_N10
\street|v_factor_a[3]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[3]~SCLR_LUT_combout\ = (!\street|v_factor_a~12_combout\ & \street|v_factor_a[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_factor_a~12_combout\,
	datad => \street|v_factor_a[3]~17_combout\,
	combout => \street|v_factor_a[3]~SCLR_LUT_combout\);

-- Location: LCCOMB_X59_Y33_N6
\street|v_pos_1[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_pos_1[4]~5_combout\ = !\street|Add12~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|Add12~4_combout\,
	combout => \street|v_pos_1[4]~5_combout\);

-- Location: FF_X59_Y33_N7
\street|v_pos_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|v_pos_1[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|v_pos_1\(4));

-- Location: LCCOMB_X63_Y33_N12
\street|v_factor_a[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[4]~19_combout\ = (\street|v_pos_1\(4) & (\street|v_factor_a[3]~18\ $ (GND))) # (!\street|v_pos_1\(4) & (!\street|v_factor_a[3]~18\ & VCC))
-- \street|v_factor_a[4]~20\ = CARRY((\street|v_pos_1\(4) & !\street|v_factor_a[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_pos_1\(4),
	datad => VCC,
	cin => \street|v_factor_a[3]~18\,
	combout => \street|v_factor_a[4]~19_combout\,
	cout => \street|v_factor_a[4]~20\);

-- Location: LCCOMB_X64_Y33_N24
\street|v_factor_a[4]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[4]~SCLR_LUT_combout\ = (!\street|v_factor_a~12_combout\ & \street|v_factor_a[4]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_factor_a~12_combout\,
	datad => \street|v_factor_a[4]~19_combout\,
	combout => \street|v_factor_a[4]~SCLR_LUT_combout\);

-- Location: LCCOMB_X63_Y33_N14
\street|v_factor_a[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[5]~21_combout\ = (\street|v_pos_1\(5) & (!\street|v_factor_a[4]~20\)) # (!\street|v_pos_1\(5) & ((\street|v_factor_a[4]~20\) # (GND)))
-- \street|v_factor_a[5]~22\ = CARRY((!\street|v_factor_a[4]~20\) # (!\street|v_pos_1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_pos_1\(5),
	datad => VCC,
	cin => \street|v_factor_a[4]~20\,
	combout => \street|v_factor_a[5]~21_combout\,
	cout => \street|v_factor_a[5]~22\);

-- Location: LCCOMB_X64_Y33_N18
\street|v_factor_a[5]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[5]~SCLR_LUT_combout\ = (!\street|v_factor_a~12_combout\ & \street|v_factor_a[5]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_factor_a~12_combout\,
	datad => \street|v_factor_a[5]~21_combout\,
	combout => \street|v_factor_a[5]~SCLR_LUT_combout\);

-- Location: LCCOMB_X63_Y33_N16
\street|v_factor_a[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[6]~23_combout\ = (\street|v_pos_1\(6) & (!\street|v_factor_a[5]~22\ & VCC)) # (!\street|v_pos_1\(6) & (\street|v_factor_a[5]~22\ $ (GND)))
-- \street|v_factor_a[6]~24\ = CARRY((!\street|v_pos_1\(6) & !\street|v_factor_a[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_pos_1\(6),
	datad => VCC,
	cin => \street|v_factor_a[5]~22\,
	combout => \street|v_factor_a[6]~23_combout\,
	cout => \street|v_factor_a[6]~24\);

-- Location: LCCOMB_X64_Y33_N12
\street|v_factor_a[6]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[6]~SCLR_LUT_combout\ = (\street|v_factor_a[6]~23_combout\ & !\street|v_factor_a~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|v_factor_a[6]~23_combout\,
	datad => \street|v_factor_a~12_combout\,
	combout => \street|v_factor_a[6]~SCLR_LUT_combout\);

-- Location: LCCOMB_X63_Y33_N18
\street|v_factor_a[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[7]~25_combout\ = (\street|v_pos_1\(7) & ((\street|v_factor_a[6]~24\) # (GND))) # (!\street|v_pos_1\(7) & (!\street|v_factor_a[6]~24\))
-- \street|v_factor_a[7]~26\ = CARRY((\street|v_pos_1\(7)) # (!\street|v_factor_a[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_pos_1\(7),
	datad => VCC,
	cin => \street|v_factor_a[6]~24\,
	combout => \street|v_factor_a[7]~25_combout\,
	cout => \street|v_factor_a[7]~26\);

-- Location: LCCOMB_X64_Y33_N22
\street|v_factor_a[7]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[7]~SCLR_LUT_combout\ = (!\street|v_factor_a~12_combout\ & \street|v_factor_a[7]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_factor_a~12_combout\,
	datad => \street|v_factor_a[7]~25_combout\,
	combout => \street|v_factor_a[7]~SCLR_LUT_combout\);

-- Location: LCCOMB_X63_Y33_N20
\street|v_factor_a[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[8]~27_combout\ = \street|v_pos_1\(8) $ (!\street|v_factor_a[7]~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_pos_1\(8),
	cin => \street|v_factor_a[7]~26\,
	combout => \street|v_factor_a[8]~27_combout\);

-- Location: LCCOMB_X64_Y33_N20
\street|v_factor_a[8]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|v_factor_a[8]~SCLR_LUT_combout\ = (!\street|v_factor_a~12_combout\ & \street|v_factor_a[8]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_factor_a~12_combout\,
	datad => \street|v_factor_a[8]~27_combout\,
	combout => \street|v_factor_a[8]~SCLR_LUT_combout\);

-- Location: DSPMULT_X68_Y33_N0
\street|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
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
	clk => \clk_25~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \street|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \street|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \street|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y33_N2
\street|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \street|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \street|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X61_Y35_N4
\street|frame_num[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[0]~10_combout\ = \street|frame_num\(0) $ (VCC)
-- \street|frame_num[0]~11\ = CARRY(\street|frame_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(0),
	datad => VCC,
	combout => \street|frame_num[0]~10_combout\,
	cout => \street|frame_num[0]~11\);

-- Location: LCCOMB_X50_Y35_N28
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

-- Location: LCCOMB_X61_Y35_N18
\street|frame_num[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[7]~24_combout\ = (\street|frame_num\(7) & (!\street|frame_num[6]~23\)) # (!\street|frame_num\(7) & ((\street|frame_num[6]~23\) # (GND)))
-- \street|frame_num[7]~25\ = CARRY((!\street|frame_num[6]~23\) # (!\street|frame_num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(7),
	datad => VCC,
	cin => \street|frame_num[6]~23\,
	combout => \street|frame_num[7]~24_combout\,
	cout => \street|frame_num[7]~25\);

-- Location: LCCOMB_X61_Y35_N20
\street|frame_num[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[8]~26_combout\ = (\street|frame_num\(8) & (\street|frame_num[7]~25\ $ (GND))) # (!\street|frame_num\(8) & (!\street|frame_num[7]~25\ & VCC))
-- \street|frame_num[8]~27\ = CARRY((\street|frame_num\(8) & !\street|frame_num[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(8),
	datad => VCC,
	cin => \street|frame_num[7]~25\,
	combout => \street|frame_num[8]~26_combout\,
	cout => \street|frame_num[8]~27\);

-- Location: LCCOMB_X59_Y35_N28
\street|new_frame~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|new_frame~0_combout\ = (!\street|Equal0~0_combout\ & (!\street|Equal0~1_combout\ & (!\street|Equal0~2_combout\ & !\reset_e~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Equal0~0_combout\,
	datab => \street|Equal0~1_combout\,
	datac => \street|Equal0~2_combout\,
	datad => \reset_e~q\,
	combout => \street|new_frame~0_combout\);

-- Location: LCCOMB_X58_Y35_N8
\street|new_frame~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|new_frame~1_combout\ = (!\street|v_count\(0) & (\street|Equal1~1_combout\ & (\street|Equal1~0_combout\ & \street|new_frame~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(0),
	datab => \street|Equal1~1_combout\,
	datac => \street|Equal1~0_combout\,
	datad => \street|new_frame~0_combout\,
	combout => \street|new_frame~1_combout\);

-- Location: FF_X58_Y35_N9
\street|new_frame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|new_frame~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|new_frame~q\);

-- Location: LCCOMB_X61_Y35_N26
\street|frame_num[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[1]~31_combout\ = (\street|new_frame~q\) # (\reset_e~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|new_frame~q\,
	datac => \reset_e~q\,
	combout => \street|frame_num[1]~31_combout\);

-- Location: FF_X61_Y35_N21
\street|frame_num[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|frame_num[8]~26_combout\,
	asdata => \reset_e~q\,
	sload => \street|frame_num[1]~30_combout\,
	ena => \street|frame_num[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|frame_num\(8));

-- Location: LCCOMB_X62_Y35_N2
\street|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Equal2~0_combout\ = (((!\street|frame_num\(2)) # (!\street|frame_num\(8))) # (!\street|frame_num\(7))) # (!\street|frame_num\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(3),
	datab => \street|frame_num\(7),
	datac => \street|frame_num\(8),
	datad => \street|frame_num\(2),
	combout => \street|Equal2~0_combout\);

-- Location: LCCOMB_X61_Y35_N22
\street|frame_num[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[9]~28_combout\ = \street|frame_num[8]~27\ $ (\street|frame_num\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \street|frame_num\(9),
	cin => \street|frame_num[8]~27\,
	combout => \street|frame_num[9]~28_combout\);

-- Location: FF_X61_Y35_N23
\street|frame_num[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|frame_num[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \street|frame_num[1]~30_combout\,
	ena => \street|frame_num[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|frame_num\(9));

-- Location: LCCOMB_X62_Y35_N16
\street|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Equal2~2_combout\ = (!\street|frame_num\(9)) # (!\street|frame_num\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|frame_num\(6),
	datad => \street|frame_num\(9),
	combout => \street|Equal2~2_combout\);

-- Location: LCCOMB_X61_Y35_N2
\street|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Equal2~1_combout\ = (((!\street|frame_num\(1)) # (!\street|frame_num\(0))) # (!\street|frame_num\(5))) # (!\street|frame_num\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(4),
	datab => \street|frame_num\(5),
	datac => \street|frame_num\(0),
	datad => \street|frame_num\(1),
	combout => \street|Equal2~1_combout\);

-- Location: LCCOMB_X61_Y35_N0
\street|frame_num[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[1]~30_combout\ = (\reset_e~q\) # ((!\street|Equal2~0_combout\ & (!\street|Equal2~2_combout\ & !\street|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Equal2~0_combout\,
	datab => \street|Equal2~2_combout\,
	datac => \reset_e~q\,
	datad => \street|Equal2~1_combout\,
	combout => \street|frame_num[1]~30_combout\);

-- Location: FF_X61_Y35_N5
\street|frame_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|frame_num[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \street|frame_num[1]~30_combout\,
	ena => \street|frame_num[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|frame_num\(0));

-- Location: LCCOMB_X61_Y35_N6
\street|frame_num[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[1]~12_combout\ = (\street|frame_num\(1) & (!\street|frame_num[0]~11\)) # (!\street|frame_num\(1) & ((\street|frame_num[0]~11\) # (GND)))
-- \street|frame_num[1]~13\ = CARRY((!\street|frame_num[0]~11\) # (!\street|frame_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(1),
	datad => VCC,
	cin => \street|frame_num[0]~11\,
	combout => \street|frame_num[1]~12_combout\,
	cout => \street|frame_num[1]~13\);

-- Location: FF_X61_Y35_N7
\street|frame_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|frame_num[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \street|frame_num[1]~30_combout\,
	ena => \street|frame_num[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|frame_num\(1));

-- Location: LCCOMB_X61_Y35_N8
\street|frame_num[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[2]~14_combout\ = (\street|frame_num\(2) & (\street|frame_num[1]~13\ $ (GND))) # (!\street|frame_num\(2) & (!\street|frame_num[1]~13\ & VCC))
-- \street|frame_num[2]~15\ = CARRY((\street|frame_num\(2) & !\street|frame_num[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(2),
	datad => VCC,
	cin => \street|frame_num[1]~13\,
	combout => \street|frame_num[2]~14_combout\,
	cout => \street|frame_num[2]~15\);

-- Location: FF_X61_Y35_N9
\street|frame_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|frame_num[2]~14_combout\,
	asdata => \reset_e~q\,
	sload => \street|frame_num[1]~30_combout\,
	ena => \street|frame_num[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|frame_num\(2));

-- Location: LCCOMB_X61_Y35_N10
\street|frame_num[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[3]~16_combout\ = (\street|frame_num\(3) & (!\street|frame_num[2]~15\)) # (!\street|frame_num\(3) & ((\street|frame_num[2]~15\) # (GND)))
-- \street|frame_num[3]~17\ = CARRY((!\street|frame_num[2]~15\) # (!\street|frame_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(3),
	datad => VCC,
	cin => \street|frame_num[2]~15\,
	combout => \street|frame_num[3]~16_combout\,
	cout => \street|frame_num[3]~17\);

-- Location: FF_X61_Y35_N11
\street|frame_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|frame_num[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \street|frame_num[1]~30_combout\,
	ena => \street|frame_num[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|frame_num\(3));

-- Location: LCCOMB_X61_Y35_N12
\street|frame_num[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[4]~18_combout\ = (\street|frame_num\(4) & (\street|frame_num[3]~17\ $ (GND))) # (!\street|frame_num\(4) & (!\street|frame_num[3]~17\ & VCC))
-- \street|frame_num[4]~19\ = CARRY((\street|frame_num\(4) & !\street|frame_num[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(4),
	datad => VCC,
	cin => \street|frame_num[3]~17\,
	combout => \street|frame_num[4]~18_combout\,
	cout => \street|frame_num[4]~19\);

-- Location: FF_X61_Y35_N13
\street|frame_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|frame_num[4]~18_combout\,
	asdata => \reset_e~q\,
	sload => \street|frame_num[1]~30_combout\,
	ena => \street|frame_num[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|frame_num\(4));

-- Location: LCCOMB_X61_Y35_N14
\street|frame_num[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[5]~20_combout\ = (\street|frame_num\(5) & (!\street|frame_num[4]~19\)) # (!\street|frame_num\(5) & ((\street|frame_num[4]~19\) # (GND)))
-- \street|frame_num[5]~21\ = CARRY((!\street|frame_num[4]~19\) # (!\street|frame_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(5),
	datad => VCC,
	cin => \street|frame_num[4]~19\,
	combout => \street|frame_num[5]~20_combout\,
	cout => \street|frame_num[5]~21\);

-- Location: FF_X61_Y35_N15
\street|frame_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|frame_num[5]~20_combout\,
	asdata => \reset_e~q\,
	sload => \street|frame_num[1]~30_combout\,
	ena => \street|frame_num[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|frame_num\(5));

-- Location: LCCOMB_X61_Y35_N16
\street|frame_num[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|frame_num[6]~22_combout\ = (\street|frame_num\(6) & (\street|frame_num[5]~21\ $ (GND))) # (!\street|frame_num\(6) & (!\street|frame_num[5]~21\ & VCC))
-- \street|frame_num[6]~23\ = CARRY((\street|frame_num\(6) & !\street|frame_num[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(6),
	datad => VCC,
	cin => \street|frame_num[5]~21\,
	combout => \street|frame_num[6]~22_combout\,
	cout => \street|frame_num[6]~23\);

-- Location: FF_X61_Y35_N17
\street|frame_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|frame_num[6]~22_combout\,
	asdata => \reset_e~q\,
	sload => \street|frame_num[1]~30_combout\,
	ena => \street|frame_num[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|frame_num\(6));

-- Location: FF_X61_Y35_N19
\street|frame_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|frame_num[7]~24_combout\,
	asdata => \reset_e~q\,
	sload => \street|frame_num[1]~30_combout\,
	ena => \street|frame_num[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|frame_num\(7));

-- Location: LCCOMB_X61_Y35_N30
\street|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan3~0_combout\ = (\street|frame_num\(3) & (\street|frame_num\(2) & ((\street|frame_num\(0)) # (\street|frame_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(3),
	datab => \street|frame_num\(2),
	datac => \street|frame_num\(0),
	datad => \street|frame_num\(1),
	combout => \street|LessThan3~0_combout\);

-- Location: LCCOMB_X61_Y35_N28
\street|process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|process_1~3_combout\ = (\street|frame_num\(8) & (\street|LessThan3~0_combout\ & \street|frame_num\(4))) # (!\street|frame_num\(8) & ((\street|LessThan3~0_combout\) # (\street|frame_num\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(8),
	datac => \street|LessThan3~0_combout\,
	datad => \street|frame_num\(4),
	combout => \street|process_1~3_combout\);

-- Location: LCCOMB_X65_Y34_N12
\street|process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|process_1~4_combout\ = (\street|frame_num\(6) & ((\street|frame_num\(5) & ((\street|frame_num\(8)) # (\street|process_1~3_combout\))) # (!\street|frame_num\(5) & (\street|frame_num\(8) & \street|process_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(5),
	datab => \street|frame_num\(8),
	datac => \street|process_1~3_combout\,
	datad => \street|frame_num\(6),
	combout => \street|process_1~4_combout\);

-- Location: LCCOMB_X65_Y34_N0
\street|process_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|process_1~5_combout\ = (\street|frame_num\(8) $ (((!\street|frame_num\(7) & !\street|process_1~4_combout\)))) # (!\street|frame_num\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(7),
	datab => \street|frame_num\(9),
	datac => \street|frame_num\(8),
	datad => \street|process_1~4_combout\,
	combout => \street|process_1~5_combout\);

-- Location: LCCOMB_X67_Y34_N16
\street|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan2~0_combout\ = (\street|frame_num\(3) & ((\street|frame_num\(1)) # ((\street|frame_num\(2)) # (\street|frame_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(3),
	datab => \street|frame_num\(1),
	datac => \street|frame_num\(2),
	datad => \street|frame_num\(0),
	combout => \street|LessThan2~0_combout\);

-- Location: LCCOMB_X67_Y34_N2
\street|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add3~0_combout\ = (!\street|frame_num\(5) & !\street|frame_num\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|frame_num\(5),
	datad => \street|frame_num\(4),
	combout => \street|Add3~0_combout\);

-- Location: LCCOMB_X67_Y34_N12
\street|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan2~1_combout\ = (\street|frame_num\(6)) # ((\street|LessThan2~0_combout\) # ((\street|frame_num\(7)) # (!\street|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(6),
	datab => \street|LessThan2~0_combout\,
	datac => \street|frame_num\(7),
	datad => \street|Add3~0_combout\,
	combout => \street|LessThan2~1_combout\);

-- Location: LCCOMB_X61_Y35_N24
\street|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan1~0_combout\ = (\street|frame_num\(3)) # ((\street|frame_num\(2)) # ((\street|frame_num\(0)) # (\street|frame_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(3),
	datab => \street|frame_num\(2),
	datac => \street|frame_num\(0),
	datad => \street|frame_num\(1),
	combout => \street|LessThan1~0_combout\);

-- Location: LCCOMB_X62_Y35_N28
\street|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan1~1_combout\ = (\street|frame_num\(5)) # ((\street|frame_num\(6)) # ((\street|LessThan1~0_combout\ & \street|frame_num\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(5),
	datab => \street|LessThan1~0_combout\,
	datac => \street|frame_num\(6),
	datad => \street|frame_num\(4),
	combout => \street|LessThan1~1_combout\);

-- Location: LCCOMB_X66_Y34_N28
\street|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan1~2_combout\ = (\street|frame_num\(9)) # ((\street|frame_num\(7) & (\street|frame_num\(8) & \street|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(7),
	datab => \street|frame_num\(9),
	datac => \street|frame_num\(8),
	datad => \street|LessThan1~1_combout\,
	combout => \street|LessThan1~2_combout\);

-- Location: LCCOMB_X67_Y34_N26
\street|process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|process_1~6_combout\ = ((\street|frame_num\(9) & ((\street|LessThan2~1_combout\) # (\street|frame_num\(8))))) # (!\street|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|LessThan2~1_combout\,
	datab => \street|frame_num\(8),
	datac => \street|frame_num\(9),
	datad => \street|LessThan1~2_combout\,
	combout => \street|process_1~6_combout\);

-- Location: LCCOMB_X67_Y34_N0
\street|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~0_combout\ = (\street|LessThan1~2_combout\ & (\street|frame_num\(0) $ (((\street|process_1~5_combout\ & \street|process_1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|process_1~5_combout\,
	datab => \street|frame_num\(0),
	datac => \street|process_1~6_combout\,
	datad => \street|LessThan1~2_combout\,
	combout => \street|Add4~0_combout\);

-- Location: LCCOMB_X65_Y34_N14
\street|curve[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|curve[7]~0_combout\ = (!\street|frame_num\(4) & (!\street|frame_num\(5) & !\street|frame_num\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(4),
	datac => \street|frame_num\(5),
	datad => \street|frame_num\(6),
	combout => \street|curve[7]~0_combout\);

-- Location: LCCOMB_X65_Y34_N16
\street|curve[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|curve[7]~2_combout\ = (\street|frame_num\(8) & (((!\street|frame_num\(3) & \street|curve[7]~0_combout\)) # (!\street|frame_num\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(3),
	datab => \street|frame_num\(8),
	datac => \street|frame_num\(7),
	datad => \street|curve[7]~0_combout\,
	combout => \street|curve[7]~2_combout\);

-- Location: LCCOMB_X67_Y34_N28
\street|curve[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|curve[7]~1_combout\ = (!\street|frame_num\(8) & (((\street|frame_num\(7)) # (\street|LessThan2~0_combout\)) # (!\street|curve[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|curve[7]~0_combout\,
	datab => \street|frame_num\(7),
	datac => \street|frame_num\(8),
	datad => \street|LessThan2~0_combout\,
	combout => \street|curve[7]~1_combout\);

-- Location: LCCOMB_X67_Y34_N22
\street|curve[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|curve[7]~3_combout\ = (((!\street|curve[7]~2_combout\ & !\street|curve[7]~1_combout\)) # (!\street|process_1~5_combout\)) # (!\street|frame_num\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|curve[7]~2_combout\,
	datab => \street|curve[7]~1_combout\,
	datac => \street|frame_num\(9),
	datad => \street|process_1~5_combout\,
	combout => \street|curve[7]~3_combout\);

-- Location: FF_X67_Y34_N1
\street|curve[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add4~0_combout\,
	ena => \street|curve[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|curve\(0));

-- Location: LCCOMB_X67_Y34_N8
\street|curve~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|curve~4_combout\ = \street|frame_num\(1) $ (\street|process_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|frame_num\(1),
	datad => \street|process_1~5_combout\,
	combout => \street|curve~4_combout\);

-- Location: LCCOMB_X66_Y34_N12
\street|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~2_cout\ = CARRY(!\street|frame_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(0),
	datad => VCC,
	cout => \street|Add4~2_cout\);

-- Location: LCCOMB_X66_Y34_N14
\street|Add4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~3_combout\ = (\street|frame_num\(1) & ((\street|Add4~2_cout\) # (GND))) # (!\street|frame_num\(1) & (!\street|Add4~2_cout\))
-- \street|Add4~4\ = CARRY((\street|frame_num\(1)) # (!\street|Add4~2_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(1),
	datad => VCC,
	cin => \street|Add4~2_cout\,
	combout => \street|Add4~3_combout\,
	cout => \street|Add4~4\);

-- Location: LCCOMB_X67_Y34_N18
\street|Add4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~5_combout\ = (\street|LessThan1~2_combout\ & ((\street|process_1~6_combout\ & (\street|curve~4_combout\)) # (!\street|process_1~6_combout\ & ((\street|Add4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|process_1~6_combout\,
	datab => \street|LessThan1~2_combout\,
	datac => \street|curve~4_combout\,
	datad => \street|Add4~3_combout\,
	combout => \street|Add4~5_combout\);

-- Location: FF_X67_Y34_N19
\street|curve[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add4~5_combout\,
	ena => \street|curve[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|curve\(1));

-- Location: LCCOMB_X65_Y34_N18
\street|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add5~0_combout\ = \street|frame_num\(2) $ (VCC)
-- \street|Add5~1\ = CARRY(\street|frame_num\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(2),
	datad => VCC,
	combout => \street|Add5~0_combout\,
	cout => \street|Add5~1\);

-- Location: LCCOMB_X65_Y34_N30
\street|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~6_combout\ = (\street|process_1~5_combout\ & ((!\street|frame_num\(2)))) # (!\street|process_1~5_combout\ & (\street|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|Add5~0_combout\,
	datac => \street|frame_num\(2),
	datad => \street|process_1~5_combout\,
	combout => \street|Add4~6_combout\);

-- Location: LCCOMB_X66_Y34_N16
\street|Add4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~7_combout\ = (\street|frame_num\(2) & (!\street|Add4~4\ & VCC)) # (!\street|frame_num\(2) & (\street|Add4~4\ $ (GND)))
-- \street|Add4~8\ = CARRY((!\street|frame_num\(2) & !\street|Add4~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(2),
	datad => VCC,
	cin => \street|Add4~4\,
	combout => \street|Add4~7_combout\,
	cout => \street|Add4~8\);

-- Location: LCCOMB_X67_Y34_N24
\street|Add4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~9_combout\ = (\street|LessThan1~2_combout\ & ((\street|process_1~6_combout\ & (\street|Add4~6_combout\)) # (!\street|process_1~6_combout\ & ((\street|Add4~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|process_1~6_combout\,
	datab => \street|Add4~6_combout\,
	datac => \street|Add4~7_combout\,
	datad => \street|LessThan1~2_combout\,
	combout => \street|Add4~9_combout\);

-- Location: FF_X67_Y34_N25
\street|curve[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add4~9_combout\,
	ena => \street|curve[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|curve\(2));

-- Location: LCCOMB_X67_Y34_N10
\street|Add4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~13_combout\ = (\street|LessThan1~2_combout\ & (((!\street|LessThan2~1_combout\ & !\street|frame_num\(8))) # (!\street|frame_num\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|LessThan2~1_combout\,
	datab => \street|frame_num\(8),
	datac => \street|frame_num\(9),
	datad => \street|LessThan1~2_combout\,
	combout => \street|Add4~13_combout\);

-- Location: LCCOMB_X66_Y34_N18
\street|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~14_combout\ = (\street|frame_num\(3) & ((\street|Add4~8\) # (GND))) # (!\street|frame_num\(3) & (!\street|Add4~8\))
-- \street|Add4~15\ = CARRY((\street|frame_num\(3)) # (!\street|Add4~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(3),
	datad => VCC,
	cin => \street|Add4~8\,
	combout => \street|Add4~14_combout\,
	cout => \street|Add4~15\);

-- Location: LCCOMB_X65_Y34_N20
\street|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add5~2_combout\ = (\street|frame_num\(3) & (!\street|Add5~1\)) # (!\street|frame_num\(3) & ((\street|Add5~1\) # (GND)))
-- \street|Add5~3\ = CARRY((!\street|Add5~1\) # (!\street|frame_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(3),
	datad => VCC,
	cin => \street|Add5~1\,
	combout => \street|Add5~2_combout\,
	cout => \street|Add5~3\);

-- Location: LCCOMB_X65_Y34_N2
\street|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add6~0_combout\ = \street|Add5~2_combout\ $ (VCC)
-- \street|Add6~1\ = CARRY(\street|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|Add5~2_combout\,
	datad => VCC,
	combout => \street|Add6~0_combout\,
	cout => \street|Add6~1\);

-- Location: LCCOMB_X66_Y34_N30
\street|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~10_combout\ = (\street|LessThan1~2_combout\ & (!\street|process_1~5_combout\ & \street|process_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|LessThan1~2_combout\,
	datac => \street|process_1~5_combout\,
	datad => \street|process_1~6_combout\,
	combout => \street|Add4~10_combout\);

-- Location: LCCOMB_X66_Y34_N0
\street|Add4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~11_combout\ = (\street|LessThan1~2_combout\ & (\street|process_1~5_combout\ & \street|process_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|LessThan1~2_combout\,
	datac => \street|process_1~5_combout\,
	datad => \street|process_1~6_combout\,
	combout => \street|Add4~11_combout\);

-- Location: LCCOMB_X66_Y34_N10
\street|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~12_combout\ = (\street|Add6~0_combout\ & ((\street|Add4~10_combout\) # ((!\street|frame_num\(3) & \street|Add4~11_combout\)))) # (!\street|Add6~0_combout\ & (!\street|frame_num\(3) & ((\street|Add4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Add6~0_combout\,
	datab => \street|frame_num\(3),
	datac => \street|Add4~10_combout\,
	datad => \street|Add4~11_combout\,
	combout => \street|Add4~12_combout\);

-- Location: LCCOMB_X67_Y34_N14
\street|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~16_combout\ = (\street|Add4~12_combout\) # ((\street|Add4~13_combout\ & \street|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Add4~13_combout\,
	datab => \street|Add4~14_combout\,
	datad => \street|Add4~12_combout\,
	combout => \street|Add4~16_combout\);

-- Location: FF_X67_Y34_N15
\street|curve[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add4~16_combout\,
	ena => \street|curve[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|curve\(3));

-- Location: LCCOMB_X66_Y34_N20
\street|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~18_combout\ = (\street|frame_num\(4) & (\street|Add4~15\ $ (GND))) # (!\street|frame_num\(4) & (!\street|Add4~15\ & VCC))
-- \street|Add4~19\ = CARRY((\street|frame_num\(4) & !\street|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(4),
	datad => VCC,
	cin => \street|Add4~15\,
	combout => \street|Add4~18_combout\,
	cout => \street|Add4~19\);

-- Location: LCCOMB_X65_Y34_N22
\street|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add5~4_combout\ = (\street|frame_num\(4) & ((GND) # (!\street|Add5~3\))) # (!\street|frame_num\(4) & (\street|Add5~3\ $ (GND)))
-- \street|Add5~5\ = CARRY((\street|frame_num\(4)) # (!\street|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|frame_num\(4),
	datad => VCC,
	cin => \street|Add5~3\,
	combout => \street|Add5~4_combout\,
	cout => \street|Add5~5\);

-- Location: LCCOMB_X65_Y34_N4
\street|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add6~2_combout\ = (\street|Add5~4_combout\ & (!\street|Add6~1\)) # (!\street|Add5~4_combout\ & ((\street|Add6~1\) # (GND)))
-- \street|Add6~3\ = CARRY((!\street|Add6~1\) # (!\street|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|Add5~4_combout\,
	datad => VCC,
	cin => \street|Add6~1\,
	combout => \street|Add6~2_combout\,
	cout => \street|Add6~3\);

-- Location: LCCOMB_X66_Y34_N4
\street|Add4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~17_combout\ = (\street|Add4~10_combout\ & ((\street|Add6~2_combout\) # ((!\street|frame_num\(4) & \street|Add4~11_combout\)))) # (!\street|Add4~10_combout\ & (!\street|frame_num\(4) & ((\street|Add4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Add4~10_combout\,
	datab => \street|frame_num\(4),
	datac => \street|Add6~2_combout\,
	datad => \street|Add4~11_combout\,
	combout => \street|Add4~17_combout\);

-- Location: LCCOMB_X67_Y34_N4
\street|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~20_combout\ = (\street|Add4~17_combout\) # ((\street|Add4~18_combout\ & \street|Add4~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|Add4~18_combout\,
	datac => \street|Add4~17_combout\,
	datad => \street|Add4~13_combout\,
	combout => \street|Add4~20_combout\);

-- Location: FF_X67_Y34_N5
\street|curve[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add4~20_combout\,
	ena => \street|curve[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|curve\(4));

-- Location: LCCOMB_X66_Y34_N22
\street|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~22_combout\ = (\street|Add4~19\ & (\street|frame_num\(5) $ ((!\street|frame_num\(4))))) # (!\street|Add4~19\ & ((\street|frame_num\(5) $ (\street|frame_num\(4))) # (GND)))
-- \street|Add4~23\ = CARRY((\street|frame_num\(5) $ (!\street|frame_num\(4))) # (!\street|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(5),
	datab => \street|frame_num\(4),
	datad => VCC,
	cin => \street|Add4~19\,
	combout => \street|Add4~22_combout\,
	cout => \street|Add4~23\);

-- Location: LCCOMB_X65_Y34_N24
\street|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add5~6_combout\ = (\street|frame_num\(5) & (!\street|Add5~5\)) # (!\street|frame_num\(5) & ((\street|Add5~5\) # (GND)))
-- \street|Add5~7\ = CARRY((!\street|Add5~5\) # (!\street|frame_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(5),
	datad => VCC,
	cin => \street|Add5~5\,
	combout => \street|Add5~6_combout\,
	cout => \street|Add5~7\);

-- Location: LCCOMB_X65_Y34_N6
\street|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add6~4_combout\ = (\street|Add5~6_combout\ & (\street|Add6~3\ $ (GND))) # (!\street|Add5~6_combout\ & (!\street|Add6~3\ & VCC))
-- \street|Add6~5\ = CARRY((\street|Add5~6_combout\ & !\street|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|Add5~6_combout\,
	datad => VCC,
	cin => \street|Add6~3\,
	combout => \street|Add6~4_combout\,
	cout => \street|Add6~5\);

-- Location: LCCOMB_X66_Y34_N6
\street|Add4~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~21_combout\ = (\street|frame_num\(5) & (\street|Add6~4_combout\ & (\street|Add4~10_combout\))) # (!\street|frame_num\(5) & ((\street|Add4~11_combout\) # ((\street|Add6~4_combout\ & \street|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(5),
	datab => \street|Add6~4_combout\,
	datac => \street|Add4~10_combout\,
	datad => \street|Add4~11_combout\,
	combout => \street|Add4~21_combout\);

-- Location: LCCOMB_X67_Y34_N30
\street|Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~24_combout\ = (\street|Add4~21_combout\) # ((\street|Add4~22_combout\ & \street|Add4~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|Add4~22_combout\,
	datac => \street|Add4~21_combout\,
	datad => \street|Add4~13_combout\,
	combout => \street|Add4~24_combout\);

-- Location: FF_X67_Y34_N31
\street|curve[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add4~24_combout\,
	ena => \street|curve[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|curve\(5));

-- Location: LCCOMB_X66_Y34_N24
\street|Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~26_combout\ = (\street|Add4~23\ & ((\street|Add3~0_combout\ $ (!\street|frame_num\(6))))) # (!\street|Add4~23\ & (\street|Add3~0_combout\ $ (\street|frame_num\(6) $ (GND))))
-- \street|Add4~27\ = CARRY((!\street|Add4~23\ & (\street|Add3~0_combout\ $ (!\street|frame_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|Add3~0_combout\,
	datab => \street|frame_num\(6),
	datad => VCC,
	cin => \street|Add4~23\,
	combout => \street|Add4~26_combout\,
	cout => \street|Add4~27\);

-- Location: LCCOMB_X65_Y34_N26
\street|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add5~8_combout\ = (\street|frame_num\(6) & (\street|Add5~7\ $ (GND))) # (!\street|frame_num\(6) & (!\street|Add5~7\ & VCC))
-- \street|Add5~9\ = CARRY((\street|frame_num\(6) & !\street|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(6),
	datad => VCC,
	cin => \street|Add5~7\,
	combout => \street|Add5~8_combout\,
	cout => \street|Add5~9\);

-- Location: LCCOMB_X65_Y34_N8
\street|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add6~6_combout\ = (\street|Add5~8_combout\ & (!\street|Add6~5\)) # (!\street|Add5~8_combout\ & ((\street|Add6~5\) # (GND)))
-- \street|Add6~7\ = CARRY((!\street|Add6~5\) # (!\street|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|Add5~8_combout\,
	datad => VCC,
	cin => \street|Add6~5\,
	combout => \street|Add6~6_combout\,
	cout => \street|Add6~7\);

-- Location: LCCOMB_X66_Y34_N8
\street|Add4~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~25_combout\ = (\street|Add6~6_combout\ & ((\street|Add4~10_combout\) # ((!\street|frame_num\(6) & \street|Add4~11_combout\)))) # (!\street|Add6~6_combout\ & (!\street|frame_num\(6) & ((\street|Add4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Add6~6_combout\,
	datab => \street|frame_num\(6),
	datac => \street|Add4~10_combout\,
	datad => \street|Add4~11_combout\,
	combout => \street|Add4~25_combout\);

-- Location: LCCOMB_X67_Y34_N20
\street|Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~28_combout\ = (\street|Add4~25_combout\) # ((\street|Add4~13_combout\ & \street|Add4~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Add4~13_combout\,
	datac => \street|Add4~26_combout\,
	datad => \street|Add4~25_combout\,
	combout => \street|Add4~28_combout\);

-- Location: FF_X67_Y34_N21
\street|curve[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add4~28_combout\,
	ena => \street|curve[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|curve\(6));

-- Location: LCCOMB_X66_Y34_N26
\street|Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~30_combout\ = \street|frame_num\(7) $ (\street|Add4~27\ $ (\street|curve[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(7),
	datad => \street|curve[7]~0_combout\,
	cin => \street|Add4~27\,
	combout => \street|Add4~30_combout\);

-- Location: LCCOMB_X65_Y34_N28
\street|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add5~10_combout\ = \street|frame_num\(7) $ (!\street|Add5~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(7),
	cin => \street|Add5~9\,
	combout => \street|Add5~10_combout\);

-- Location: LCCOMB_X65_Y34_N10
\street|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add6~8_combout\ = \street|Add6~7\ $ (\street|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \street|Add5~10_combout\,
	cin => \street|Add6~7\,
	combout => \street|Add6~8_combout\);

-- Location: LCCOMB_X66_Y34_N2
\street|Add4~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~29_combout\ = (\street|frame_num\(7) & (((\street|Add4~10_combout\ & \street|Add6~8_combout\)))) # (!\street|frame_num\(7) & ((\street|Add4~11_combout\) # ((\street|Add4~10_combout\ & \street|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|frame_num\(7),
	datab => \street|Add4~11_combout\,
	datac => \street|Add4~10_combout\,
	datad => \street|Add6~8_combout\,
	combout => \street|Add4~29_combout\);

-- Location: LCCOMB_X67_Y34_N6
\street|Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add4~32_combout\ = (!\street|Add4~29_combout\ & ((!\street|Add4~30_combout\) # (!\street|Add4~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Add4~13_combout\,
	datac => \street|Add4~30_combout\,
	datad => \street|Add4~29_combout\,
	combout => \street|Add4~32_combout\);

-- Location: FF_X67_Y34_N7
\street|curve[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add4~32_combout\,
	ena => \street|curve[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|curve\(7));

-- Location: DSPMULT_X68_Y34_N0
\street|Mult1|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
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
	clk => \clk_25~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \street|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \street|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \street|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y34_N2
\street|Mult1|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \street|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \street|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X69_Y34_N4
\street|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|WideOr0~1_combout\ = (\street|Mult1|auto_generated|mac_out2~DATAOUT2\) # ((\street|Mult1|auto_generated|mac_out2~DATAOUT3\) # ((\street|Mult1|auto_generated|mac_out2~DATAOUT4\) # (\street|Mult1|auto_generated|mac_out2~DATAOUT6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datab => \street|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datac => \street|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => \street|Mult1|auto_generated|mac_out2~DATAOUT6\,
	combout => \street|WideOr0~1_combout\);

-- Location: LCCOMB_X69_Y34_N2
\street|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|WideOr0~0_combout\ = (\street|Mult1|auto_generated|mac_out2~DATAOUT7\) # ((\street|Mult1|auto_generated|mac_out2~dataout\) # ((\street|Mult1|auto_generated|mac_out2~DATAOUT5\) # (\street|Mult1|auto_generated|mac_out2~DATAOUT1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datab => \street|Mult1|auto_generated|mac_out2~dataout\,
	datac => \street|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => \street|Mult1|auto_generated|mac_out2~DATAOUT1\,
	combout => \street|WideOr0~0_combout\);

-- Location: LCCOMB_X69_Y34_N24
\street|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|WideOr0~combout\ = (\street|WideOr0~1_combout\) # (\street|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|WideOr0~1_combout\,
	datad => \street|WideOr0~0_combout\,
	combout => \street|WideOr0~combout\);

-- Location: LCCOMB_X69_Y34_N6
\street|Add10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add10~1_cout\ = CARRY((\street|Mult1|auto_generated|mac_out2~DATAOUT16\ & \street|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \street|WideOr0~combout\,
	datad => VCC,
	cout => \street|Add10~1_cout\);

-- Location: LCCOMB_X69_Y34_N8
\street|Add10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add10~2_combout\ = (\street|Mult1|auto_generated|mac_out2~DATAOUT8\ & (!\street|Add10~1_cout\)) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\street|Add10~1_cout\) # (GND)))
-- \street|Add10~3\ = CARRY((!\street|Add10~1_cout\) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \street|Add10~1_cout\,
	combout => \street|Add10~2_combout\,
	cout => \street|Add10~3\);

-- Location: LCCOMB_X69_Y34_N10
\street|Add10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add10~4_combout\ = (\street|Mult1|auto_generated|mac_out2~DATAOUT9\ & (\street|Add10~3\ $ (GND))) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\street|Add10~3\ & VCC))
-- \street|Add10~5\ = CARRY((\street|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\street|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \street|Add10~3\,
	combout => \street|Add10~4_combout\,
	cout => \street|Add10~5\);

-- Location: LCCOMB_X69_Y34_N12
\street|Add10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add10~6_combout\ = (\street|Mult1|auto_generated|mac_out2~DATAOUT10\ & (!\street|Add10~5\)) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT10\ & ((\street|Add10~5\) # (GND)))
-- \street|Add10~7\ = CARRY((!\street|Add10~5\) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \street|Add10~5\,
	combout => \street|Add10~6_combout\,
	cout => \street|Add10~7\);

-- Location: LCCOMB_X69_Y34_N14
\street|Add10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add10~8_combout\ = (\street|Mult1|auto_generated|mac_out2~DATAOUT11\ & (\street|Add10~7\ $ (GND))) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\street|Add10~7\ & VCC))
-- \street|Add10~9\ = CARRY((\street|Mult1|auto_generated|mac_out2~DATAOUT11\ & !\street|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \street|Add10~7\,
	combout => \street|Add10~8_combout\,
	cout => \street|Add10~9\);

-- Location: LCCOMB_X69_Y34_N16
\street|Add10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add10~10_combout\ = (\street|Mult1|auto_generated|mac_out2~DATAOUT12\ & (!\street|Add10~9\)) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT12\ & ((\street|Add10~9\) # (GND)))
-- \street|Add10~11\ = CARRY((!\street|Add10~9\) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \street|Add10~9\,
	combout => \street|Add10~10_combout\,
	cout => \street|Add10~11\);

-- Location: LCCOMB_X69_Y34_N18
\street|Add10~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add10~12_combout\ = (\street|Mult1|auto_generated|mac_out2~DATAOUT13\ & (\street|Add10~11\ $ (GND))) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\street|Add10~11\ & VCC))
-- \street|Add10~13\ = CARRY((\street|Mult1|auto_generated|mac_out2~DATAOUT13\ & !\street|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \street|Add10~11\,
	combout => \street|Add10~12_combout\,
	cout => \street|Add10~13\);

-- Location: LCCOMB_X69_Y34_N20
\street|Add10~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add10~14_combout\ = (\street|Mult1|auto_generated|mac_out2~DATAOUT14\ & (!\street|Add10~13\)) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\street|Add10~13\) # (GND)))
-- \street|Add10~15\ = CARRY((!\street|Add10~13\) # (!\street|Mult1|auto_generated|mac_out2~DATAOUT14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \street|Add10~13\,
	combout => \street|Add10~14_combout\,
	cout => \street|Add10~15\);

-- Location: LCCOMB_X69_Y34_N22
\street|Add10~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add10~16_combout\ = \street|Add10~15\ $ (!\street|Mult1|auto_generated|mac_out2~DATAOUT15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \street|Mult1|auto_generated|mac_out2~DATAOUT15\,
	cin => \street|Add10~15\,
	combout => \street|Add10~16_combout\);

-- Location: LCCOMB_X69_Y34_N28
\street|this_curve[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|this_curve[7]~0_combout\ = !\street|Add10~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|Add10~16_combout\,
	combout => \street|this_curve[7]~0_combout\);

-- Location: FF_X69_Y34_N29
\street|this_curve[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|this_curve[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|this_curve\(7));

-- Location: FF_X69_Y34_N21
\street|this_curve[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add10~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|this_curve\(6));

-- Location: FF_X69_Y34_N17
\street|this_curve[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add10~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|this_curve\(4));

-- Location: FF_X69_Y34_N19
\street|this_curve[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add10~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|this_curve\(5));

-- Location: LCCOMB_X61_Y34_N26
\street|Add11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add11~0_combout\ = (\street|this_curve\(7) & ((\street|this_curve\(6)) # ((\street|this_curve\(4) & \street|this_curve\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|this_curve\(7),
	datab => \street|this_curve\(6),
	datac => \street|this_curve\(4),
	datad => \street|this_curve\(5),
	combout => \street|Add11~0_combout\);

-- Location: LCCOMB_X61_Y34_N20
\street|center_pos[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|center_pos[8]~0_combout\ = !\street|Add11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|Add11~0_combout\,
	combout => \street|center_pos[8]~0_combout\);

-- Location: FF_X61_Y34_N21
\street|center_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|center_pos[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|center_pos\(8));

-- Location: LCCOMB_X61_Y34_N30
\street|Add11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add11~1_combout\ = \street|this_curve\(7) $ (((\street|this_curve\(6)) # ((\street|this_curve\(4) & \street|this_curve\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|this_curve\(7),
	datab => \street|this_curve\(6),
	datac => \street|this_curve\(4),
	datad => \street|this_curve\(5),
	combout => \street|Add11~1_combout\);

-- Location: FF_X61_Y34_N31
\street|center_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|center_pos\(7));

-- Location: LCCOMB_X61_Y34_N24
\street|Add11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add11~2_combout\ = \street|this_curve\(6) $ (((!\street|this_curve\(5)) # (!\street|this_curve\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|this_curve\(6),
	datac => \street|this_curve\(4),
	datad => \street|this_curve\(5),
	combout => \street|Add11~2_combout\);

-- Location: FF_X61_Y34_N25
\street|center_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|center_pos\(6));

-- Location: LCCOMB_X61_Y34_N22
\street|Add11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add11~3_combout\ = \street|this_curve\(4) $ (\street|this_curve\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|this_curve\(4),
	datad => \street|this_curve\(5),
	combout => \street|Add11~3_combout\);

-- Location: FF_X61_Y34_N23
\street|center_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|center_pos\(5));

-- Location: LCCOMB_X61_Y34_N28
\street|center_pos[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|center_pos[4]~3_combout\ = !\street|this_curve\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|this_curve\(4),
	combout => \street|center_pos[4]~3_combout\);

-- Location: FF_X61_Y34_N29
\street|center_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|center_pos[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|center_pos\(4));

-- Location: FF_X69_Y34_N15
\street|this_curve[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add10~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|this_curve\(3));

-- Location: FF_X61_Y34_N7
\street|center_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|this_curve\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|center_pos\(3));

-- Location: FF_X69_Y34_N13
\street|this_curve[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|this_curve\(2));

-- Location: FF_X61_Y34_N5
\street|center_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|this_curve\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|center_pos\(2));

-- Location: FF_X69_Y34_N11
\street|this_curve[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|this_curve\(1));

-- Location: FF_X61_Y34_N3
\street|center_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|this_curve\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|center_pos\(1));

-- Location: FF_X69_Y34_N9
\street|this_curve[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|this_curve\(0));

-- Location: FF_X61_Y34_N1
\street|center_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|this_curve\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|center_pos\(0));

-- Location: LCCOMB_X59_Y34_N6
\street|h_gap_1[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_gap_1[0]~10_combout\ = (\street|h_count\(0) & (\street|center_pos\(0) $ (VCC))) # (!\street|h_count\(0) & ((\street|center_pos\(0)) # (GND)))
-- \street|h_gap_1[0]~11\ = CARRY((\street|center_pos\(0)) # (!\street|h_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(0),
	datab => \street|center_pos\(0),
	datad => VCC,
	combout => \street|h_gap_1[0]~10_combout\,
	cout => \street|h_gap_1[0]~11\);

-- Location: LCCOMB_X59_Y34_N8
\street|h_gap_1[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_gap_1[1]~12_combout\ = (\street|center_pos\(1) & ((\street|h_count\(1) & (!\street|h_gap_1[0]~11\)) # (!\street|h_count\(1) & (\street|h_gap_1[0]~11\ & VCC)))) # (!\street|center_pos\(1) & ((\street|h_count\(1) & ((\street|h_gap_1[0]~11\) # 
-- (GND))) # (!\street|h_count\(1) & (!\street|h_gap_1[0]~11\))))
-- \street|h_gap_1[1]~13\ = CARRY((\street|center_pos\(1) & (\street|h_count\(1) & !\street|h_gap_1[0]~11\)) # (!\street|center_pos\(1) & ((\street|h_count\(1)) # (!\street|h_gap_1[0]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(1),
	datab => \street|h_count\(1),
	datad => VCC,
	cin => \street|h_gap_1[0]~11\,
	combout => \street|h_gap_1[1]~12_combout\,
	cout => \street|h_gap_1[1]~13\);

-- Location: LCCOMB_X59_Y34_N10
\street|h_gap_1[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_gap_1[2]~14_combout\ = ((\street|center_pos\(2) $ (\street|h_count\(2) $ (\street|h_gap_1[1]~13\)))) # (GND)
-- \street|h_gap_1[2]~15\ = CARRY((\street|center_pos\(2) & ((!\street|h_gap_1[1]~13\) # (!\street|h_count\(2)))) # (!\street|center_pos\(2) & (!\street|h_count\(2) & !\street|h_gap_1[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(2),
	datab => \street|h_count\(2),
	datad => VCC,
	cin => \street|h_gap_1[1]~13\,
	combout => \street|h_gap_1[2]~14_combout\,
	cout => \street|h_gap_1[2]~15\);

-- Location: LCCOMB_X59_Y34_N12
\street|h_gap_1[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_gap_1[3]~16_combout\ = (\street|center_pos\(3) & ((\street|h_count\(3) & (!\street|h_gap_1[2]~15\)) # (!\street|h_count\(3) & (\street|h_gap_1[2]~15\ & VCC)))) # (!\street|center_pos\(3) & ((\street|h_count\(3) & ((\street|h_gap_1[2]~15\) # 
-- (GND))) # (!\street|h_count\(3) & (!\street|h_gap_1[2]~15\))))
-- \street|h_gap_1[3]~17\ = CARRY((\street|center_pos\(3) & (\street|h_count\(3) & !\street|h_gap_1[2]~15\)) # (!\street|center_pos\(3) & ((\street|h_count\(3)) # (!\street|h_gap_1[2]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(3),
	datab => \street|h_count\(3),
	datad => VCC,
	cin => \street|h_gap_1[2]~15\,
	combout => \street|h_gap_1[3]~16_combout\,
	cout => \street|h_gap_1[3]~17\);

-- Location: LCCOMB_X59_Y34_N14
\street|h_gap_1[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_gap_1[4]~18_combout\ = ((\street|center_pos\(4) $ (\street|h_count\(4) $ (\street|h_gap_1[3]~17\)))) # (GND)
-- \street|h_gap_1[4]~19\ = CARRY((\street|center_pos\(4) & ((!\street|h_gap_1[3]~17\) # (!\street|h_count\(4)))) # (!\street|center_pos\(4) & (!\street|h_count\(4) & !\street|h_gap_1[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(4),
	datab => \street|h_count\(4),
	datad => VCC,
	cin => \street|h_gap_1[3]~17\,
	combout => \street|h_gap_1[4]~18_combout\,
	cout => \street|h_gap_1[4]~19\);

-- Location: LCCOMB_X59_Y34_N16
\street|h_gap_1[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_gap_1[5]~20_combout\ = (\street|center_pos\(5) & ((\street|h_count\(5) & (!\street|h_gap_1[4]~19\)) # (!\street|h_count\(5) & (\street|h_gap_1[4]~19\ & VCC)))) # (!\street|center_pos\(5) & ((\street|h_count\(5) & ((\street|h_gap_1[4]~19\) # 
-- (GND))) # (!\street|h_count\(5) & (!\street|h_gap_1[4]~19\))))
-- \street|h_gap_1[5]~21\ = CARRY((\street|center_pos\(5) & (\street|h_count\(5) & !\street|h_gap_1[4]~19\)) # (!\street|center_pos\(5) & ((\street|h_count\(5)) # (!\street|h_gap_1[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(5),
	datab => \street|h_count\(5),
	datad => VCC,
	cin => \street|h_gap_1[4]~19\,
	combout => \street|h_gap_1[5]~20_combout\,
	cout => \street|h_gap_1[5]~21\);

-- Location: LCCOMB_X59_Y34_N18
\street|h_gap_1[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_gap_1[6]~22_combout\ = ((\street|h_count\(6) $ (\street|center_pos\(6) $ (\street|h_gap_1[5]~21\)))) # (GND)
-- \street|h_gap_1[6]~23\ = CARRY((\street|h_count\(6) & (\street|center_pos\(6) & !\street|h_gap_1[5]~21\)) # (!\street|h_count\(6) & ((\street|center_pos\(6)) # (!\street|h_gap_1[5]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(6),
	datab => \street|center_pos\(6),
	datad => VCC,
	cin => \street|h_gap_1[5]~21\,
	combout => \street|h_gap_1[6]~22_combout\,
	cout => \street|h_gap_1[6]~23\);

-- Location: LCCOMB_X59_Y34_N20
\street|h_gap_1[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_gap_1[7]~24_combout\ = (\street|h_count\(7) & ((\street|center_pos\(7) & (!\street|h_gap_1[6]~23\)) # (!\street|center_pos\(7) & ((\street|h_gap_1[6]~23\) # (GND))))) # (!\street|h_count\(7) & ((\street|center_pos\(7) & (\street|h_gap_1[6]~23\ & 
-- VCC)) # (!\street|center_pos\(7) & (!\street|h_gap_1[6]~23\))))
-- \street|h_gap_1[7]~25\ = CARRY((\street|h_count\(7) & ((!\street|h_gap_1[6]~23\) # (!\street|center_pos\(7)))) # (!\street|h_count\(7) & (!\street|center_pos\(7) & !\street|h_gap_1[6]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(7),
	datab => \street|center_pos\(7),
	datad => VCC,
	cin => \street|h_gap_1[6]~23\,
	combout => \street|h_gap_1[7]~24_combout\,
	cout => \street|h_gap_1[7]~25\);

-- Location: LCCOMB_X59_Y34_N22
\street|h_gap_1[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_gap_1[8]~26_combout\ = ((\street|center_pos\(8) $ (\street|h_count\(8) $ (\street|h_gap_1[7]~25\)))) # (GND)
-- \street|h_gap_1[8]~27\ = CARRY((\street|center_pos\(8) & ((!\street|h_gap_1[7]~25\) # (!\street|h_count\(8)))) # (!\street|center_pos\(8) & (!\street|h_count\(8) & !\street|h_gap_1[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(8),
	datab => \street|h_count\(8),
	datad => VCC,
	cin => \street|h_gap_1[7]~25\,
	combout => \street|h_gap_1[8]~26_combout\,
	cout => \street|h_gap_1[8]~27\);

-- Location: LCCOMB_X60_Y34_N6
\street|Add13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add13~0_combout\ = (\street|h_count\(0) & ((GND) # (!\street|center_pos\(0)))) # (!\street|h_count\(0) & (\street|center_pos\(0) $ (GND)))
-- \street|Add13~1\ = CARRY((\street|h_count\(0)) # (!\street|center_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(0),
	datab => \street|center_pos\(0),
	datad => VCC,
	combout => \street|Add13~0_combout\,
	cout => \street|Add13~1\);

-- Location: LCCOMB_X60_Y34_N8
\street|Add13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add13~2_combout\ = (\street|center_pos\(1) & ((\street|h_count\(1) & (!\street|Add13~1\)) # (!\street|h_count\(1) & ((\street|Add13~1\) # (GND))))) # (!\street|center_pos\(1) & ((\street|h_count\(1) & (\street|Add13~1\ & VCC)) # 
-- (!\street|h_count\(1) & (!\street|Add13~1\))))
-- \street|Add13~3\ = CARRY((\street|center_pos\(1) & ((!\street|Add13~1\) # (!\street|h_count\(1)))) # (!\street|center_pos\(1) & (!\street|h_count\(1) & !\street|Add13~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(1),
	datab => \street|h_count\(1),
	datad => VCC,
	cin => \street|Add13~1\,
	combout => \street|Add13~2_combout\,
	cout => \street|Add13~3\);

-- Location: LCCOMB_X60_Y34_N10
\street|Add13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add13~4_combout\ = ((\street|center_pos\(2) $ (\street|h_count\(2) $ (\street|Add13~3\)))) # (GND)
-- \street|Add13~5\ = CARRY((\street|center_pos\(2) & (\street|h_count\(2) & !\street|Add13~3\)) # (!\street|center_pos\(2) & ((\street|h_count\(2)) # (!\street|Add13~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(2),
	datab => \street|h_count\(2),
	datad => VCC,
	cin => \street|Add13~3\,
	combout => \street|Add13~4_combout\,
	cout => \street|Add13~5\);

-- Location: LCCOMB_X60_Y34_N12
\street|Add13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add13~6_combout\ = (\street|center_pos\(3) & ((\street|h_count\(3) & (!\street|Add13~5\)) # (!\street|h_count\(3) & ((\street|Add13~5\) # (GND))))) # (!\street|center_pos\(3) & ((\street|h_count\(3) & (\street|Add13~5\ & VCC)) # 
-- (!\street|h_count\(3) & (!\street|Add13~5\))))
-- \street|Add13~7\ = CARRY((\street|center_pos\(3) & ((!\street|Add13~5\) # (!\street|h_count\(3)))) # (!\street|center_pos\(3) & (!\street|h_count\(3) & !\street|Add13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(3),
	datab => \street|h_count\(3),
	datad => VCC,
	cin => \street|Add13~5\,
	combout => \street|Add13~6_combout\,
	cout => \street|Add13~7\);

-- Location: LCCOMB_X60_Y34_N14
\street|Add13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add13~8_combout\ = ((\street|h_count\(4) $ (\street|center_pos\(4) $ (\street|Add13~7\)))) # (GND)
-- \street|Add13~9\ = CARRY((\street|h_count\(4) & ((!\street|Add13~7\) # (!\street|center_pos\(4)))) # (!\street|h_count\(4) & (!\street|center_pos\(4) & !\street|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(4),
	datab => \street|center_pos\(4),
	datad => VCC,
	cin => \street|Add13~7\,
	combout => \street|Add13~8_combout\,
	cout => \street|Add13~9\);

-- Location: LCCOMB_X60_Y34_N16
\street|Add13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add13~10_combout\ = (\street|h_count\(5) & ((\street|center_pos\(5) & (!\street|Add13~9\)) # (!\street|center_pos\(5) & (\street|Add13~9\ & VCC)))) # (!\street|h_count\(5) & ((\street|center_pos\(5) & ((\street|Add13~9\) # (GND))) # 
-- (!\street|center_pos\(5) & (!\street|Add13~9\))))
-- \street|Add13~11\ = CARRY((\street|h_count\(5) & (\street|center_pos\(5) & !\street|Add13~9\)) # (!\street|h_count\(5) & ((\street|center_pos\(5)) # (!\street|Add13~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(5),
	datab => \street|center_pos\(5),
	datad => VCC,
	cin => \street|Add13~9\,
	combout => \street|Add13~10_combout\,
	cout => \street|Add13~11\);

-- Location: LCCOMB_X60_Y34_N18
\street|Add13~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add13~12_combout\ = ((\street|center_pos\(6) $ (\street|h_count\(6) $ (\street|Add13~11\)))) # (GND)
-- \street|Add13~13\ = CARRY((\street|center_pos\(6) & (\street|h_count\(6) & !\street|Add13~11\)) # (!\street|center_pos\(6) & ((\street|h_count\(6)) # (!\street|Add13~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(6),
	datab => \street|h_count\(6),
	datad => VCC,
	cin => \street|Add13~11\,
	combout => \street|Add13~12_combout\,
	cout => \street|Add13~13\);

-- Location: LCCOMB_X60_Y34_N20
\street|Add13~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add13~14_combout\ = (\street|center_pos\(7) & ((\street|h_count\(7) & (!\street|Add13~13\)) # (!\street|h_count\(7) & ((\street|Add13~13\) # (GND))))) # (!\street|center_pos\(7) & ((\street|h_count\(7) & (\street|Add13~13\ & VCC)) # 
-- (!\street|h_count\(7) & (!\street|Add13~13\))))
-- \street|Add13~15\ = CARRY((\street|center_pos\(7) & ((!\street|Add13~13\) # (!\street|h_count\(7)))) # (!\street|center_pos\(7) & (!\street|h_count\(7) & !\street|Add13~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(7),
	datab => \street|h_count\(7),
	datad => VCC,
	cin => \street|Add13~13\,
	combout => \street|Add13~14_combout\,
	cout => \street|Add13~15\);

-- Location: LCCOMB_X60_Y34_N22
\street|Add13~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add13~16_combout\ = ((\street|center_pos\(8) $ (\street|h_count\(8) $ (\street|Add13~15\)))) # (GND)
-- \street|Add13~17\ = CARRY((\street|center_pos\(8) & (\street|h_count\(8) & !\street|Add13~15\)) # (!\street|center_pos\(8) & ((\street|h_count\(8)) # (!\street|Add13~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(8),
	datab => \street|h_count\(8),
	datad => VCC,
	cin => \street|Add13~15\,
	combout => \street|Add13~16_combout\,
	cout => \street|Add13~17\);

-- Location: FF_X61_Y34_N27
\street|center_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|center_pos\(9));

-- Location: LCCOMB_X61_Y34_N0
\street|LessThan14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan14~1_cout\ = CARRY((\street|h_count\(0) & !\street|center_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(0),
	datab => \street|center_pos\(0),
	datad => VCC,
	cout => \street|LessThan14~1_cout\);

-- Location: LCCOMB_X61_Y34_N2
\street|LessThan14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan14~3_cout\ = CARRY((\street|h_count\(1) & (\street|center_pos\(1) & !\street|LessThan14~1_cout\)) # (!\street|h_count\(1) & ((\street|center_pos\(1)) # (!\street|LessThan14~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(1),
	datab => \street|center_pos\(1),
	datad => VCC,
	cin => \street|LessThan14~1_cout\,
	cout => \street|LessThan14~3_cout\);

-- Location: LCCOMB_X61_Y34_N4
\street|LessThan14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan14~5_cout\ = CARRY((\street|h_count\(2) & ((!\street|LessThan14~3_cout\) # (!\street|center_pos\(2)))) # (!\street|h_count\(2) & (!\street|center_pos\(2) & !\street|LessThan14~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(2),
	datab => \street|center_pos\(2),
	datad => VCC,
	cin => \street|LessThan14~3_cout\,
	cout => \street|LessThan14~5_cout\);

-- Location: LCCOMB_X61_Y34_N6
\street|LessThan14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan14~7_cout\ = CARRY((\street|center_pos\(3) & ((!\street|LessThan14~5_cout\) # (!\street|h_count\(3)))) # (!\street|center_pos\(3) & (!\street|h_count\(3) & !\street|LessThan14~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(3),
	datab => \street|h_count\(3),
	datad => VCC,
	cin => \street|LessThan14~5_cout\,
	cout => \street|LessThan14~7_cout\);

-- Location: LCCOMB_X61_Y34_N8
\street|LessThan14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan14~9_cout\ = CARRY((\street|center_pos\(4) & (\street|h_count\(4) & !\street|LessThan14~7_cout\)) # (!\street|center_pos\(4) & ((\street|h_count\(4)) # (!\street|LessThan14~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(4),
	datab => \street|h_count\(4),
	datad => VCC,
	cin => \street|LessThan14~7_cout\,
	cout => \street|LessThan14~9_cout\);

-- Location: LCCOMB_X61_Y34_N10
\street|LessThan14~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan14~11_cout\ = CARRY((\street|center_pos\(5) & ((!\street|LessThan14~9_cout\) # (!\street|h_count\(5)))) # (!\street|center_pos\(5) & (!\street|h_count\(5) & !\street|LessThan14~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(5),
	datab => \street|h_count\(5),
	datad => VCC,
	cin => \street|LessThan14~9_cout\,
	cout => \street|LessThan14~11_cout\);

-- Location: LCCOMB_X61_Y34_N12
\street|LessThan14~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan14~13_cout\ = CARRY((\street|h_count\(6) & ((!\street|LessThan14~11_cout\) # (!\street|center_pos\(6)))) # (!\street|h_count\(6) & (!\street|center_pos\(6) & !\street|LessThan14~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(6),
	datab => \street|center_pos\(6),
	datad => VCC,
	cin => \street|LessThan14~11_cout\,
	cout => \street|LessThan14~13_cout\);

-- Location: LCCOMB_X61_Y34_N14
\street|LessThan14~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan14~15_cout\ = CARRY((\street|center_pos\(7) & ((!\street|LessThan14~13_cout\) # (!\street|h_count\(7)))) # (!\street|center_pos\(7) & (!\street|h_count\(7) & !\street|LessThan14~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(7),
	datab => \street|h_count\(7),
	datad => VCC,
	cin => \street|LessThan14~13_cout\,
	cout => \street|LessThan14~15_cout\);

-- Location: LCCOMB_X61_Y34_N16
\street|LessThan14~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan14~17_cout\ = CARRY((\street|h_count\(8) & ((!\street|LessThan14~15_cout\) # (!\street|center_pos\(8)))) # (!\street|h_count\(8) & (!\street|center_pos\(8) & !\street|LessThan14~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(8),
	datab => \street|center_pos\(8),
	datad => VCC,
	cin => \street|LessThan14~15_cout\,
	cout => \street|LessThan14~17_cout\);

-- Location: LCCOMB_X61_Y34_N18
\street|LessThan14~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan14~18_combout\ = (\street|center_pos\(9) & (\street|LessThan14~17_cout\ & \street|h_count\(9))) # (!\street|center_pos\(9) & ((\street|LessThan14~17_cout\) # (\street|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|center_pos\(9),
	datad => \street|h_count\(9),
	cin => \street|LessThan14~17_cout\,
	combout => \street|LessThan14~18_combout\);

-- Location: FF_X59_Y34_N23
\street|h_gap_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_gap_1[8]~26_combout\,
	asdata => \street|Add13~16_combout\,
	sload => \street|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_gap_1\(8));

-- Location: LCCOMB_X57_Y34_N18
\street|x_value_a[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_a[3]~6_combout\ = (\street|v_count\(5) & (\street|v_count\(4) $ (VCC))) # (!\street|v_count\(5) & (\street|v_count\(4) & VCC))
-- \street|x_value_a[3]~7\ = CARRY((\street|v_count\(5) & \street|v_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(5),
	datab => \street|v_count\(4),
	datad => VCC,
	combout => \street|x_value_a[3]~6_combout\,
	cout => \street|x_value_a[3]~7\);

-- Location: LCCOMB_X57_Y34_N20
\street|x_value_a[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_a[4]~8_combout\ = (\street|v_count\(6) & (\street|x_value_a[3]~7\ & VCC)) # (!\street|v_count\(6) & (!\street|x_value_a[3]~7\))
-- \street|x_value_a[4]~9\ = CARRY((!\street|v_count\(6) & !\street|x_value_a[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(6),
	datad => VCC,
	cin => \street|x_value_a[3]~7\,
	combout => \street|x_value_a[4]~8_combout\,
	cout => \street|x_value_a[4]~9\);

-- Location: LCCOMB_X57_Y34_N22
\street|x_value_a[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_a[5]~10_combout\ = (\street|v_count\(7) & (\street|x_value_a[4]~9\ $ (GND))) # (!\street|v_count\(7) & (!\street|x_value_a[4]~9\ & VCC))
-- \street|x_value_a[5]~11\ = CARRY((\street|v_count\(7) & !\street|x_value_a[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(7),
	datad => VCC,
	cin => \street|x_value_a[4]~9\,
	combout => \street|x_value_a[5]~10_combout\,
	cout => \street|x_value_a[5]~11\);

-- Location: LCCOMB_X57_Y34_N24
\street|x_value_a[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_a[6]~12_combout\ = (\street|v_count\(8) & (!\street|x_value_a[5]~11\)) # (!\street|v_count\(8) & ((\street|x_value_a[5]~11\) # (GND)))
-- \street|x_value_a[6]~13\ = CARRY((!\street|x_value_a[5]~11\) # (!\street|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(8),
	datad => VCC,
	cin => \street|x_value_a[5]~11\,
	combout => \street|x_value_a[6]~12_combout\,
	cout => \street|x_value_a[6]~13\);

-- Location: LCCOMB_X57_Y34_N26
\street|x_value_a[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_a[7]~14_combout\ = (\street|v_count\(9) & (\street|x_value_a[6]~13\ $ (GND))) # (!\street|v_count\(9) & (!\street|x_value_a[6]~13\ & VCC))
-- \street|x_value_a[7]~15\ = CARRY((\street|v_count\(9) & !\street|x_value_a[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(9),
	datad => VCC,
	cin => \street|x_value_a[6]~13\,
	combout => \street|x_value_a[7]~14_combout\,
	cout => \street|x_value_a[7]~15\);

-- Location: LCCOMB_X57_Y34_N28
\street|x_value_a[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_a[8]~16_combout\ = \street|x_value_a[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \street|x_value_a[7]~15\,
	combout => \street|x_value_a[8]~16_combout\);

-- Location: FF_X57_Y34_N29
\street|x_value_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_a[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_a\(8));

-- Location: FF_X57_Y34_N27
\street|x_value_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_a[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_a\(7));

-- Location: FF_X59_Y34_N21
\street|h_gap_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_gap_1[7]~24_combout\,
	asdata => \street|Add13~14_combout\,
	sload => \street|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_gap_1\(7));

-- Location: FF_X57_Y34_N25
\street|x_value_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_a[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_a\(6));

-- Location: FF_X59_Y34_N19
\street|h_gap_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_gap_1[6]~22_combout\,
	asdata => \street|Add13~12_combout\,
	sload => \street|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_gap_1\(6));

-- Location: FF_X57_Y34_N23
\street|x_value_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_a[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_a\(5));

-- Location: FF_X59_Y34_N17
\street|h_gap_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_gap_1[5]~20_combout\,
	asdata => \street|Add13~10_combout\,
	sload => \street|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_gap_1\(5));

-- Location: FF_X59_Y34_N15
\street|h_gap_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_gap_1[4]~18_combout\,
	asdata => \street|Add13~8_combout\,
	sload => \street|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_gap_1\(4));

-- Location: FF_X57_Y34_N21
\street|x_value_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_a[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_a\(4));

-- Location: FF_X59_Y34_N13
\street|h_gap_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_gap_1[3]~16_combout\,
	asdata => \street|Add13~6_combout\,
	sload => \street|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_gap_1\(3));

-- Location: FF_X57_Y34_N19
\street|x_value_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_a[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_a\(3));

-- Location: LCCOMB_X57_Y34_N30
\street|x_value_a[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_a[2]~18_combout\ = !\street|v_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|v_count\(4),
	combout => \street|x_value_a[2]~18_combout\);

-- Location: FF_X57_Y34_N31
\street|x_value_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_a[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_a\(2));

-- Location: FF_X59_Y34_N11
\street|h_gap_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_gap_1[2]~14_combout\,
	asdata => \street|Add13~4_combout\,
	sload => \street|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_gap_1\(2));

-- Location: LCCOMB_X58_Y34_N4
\street|x_value_c[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_c[1]~feeder_combout\ = \street|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|v_count\(3),
	combout => \street|x_value_c[1]~feeder_combout\);

-- Location: FF_X58_Y34_N5
\street|x_value_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_c[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_c\(1));

-- Location: FF_X59_Y34_N9
\street|h_gap_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_gap_1[1]~12_combout\,
	asdata => \street|Add13~2_combout\,
	sload => \street|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_gap_1\(1));

-- Location: LCCOMB_X58_Y34_N30
\street|x_value_c[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_c[0]~feeder_combout\ = \street|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|v_count\(2),
	combout => \street|x_value_c[0]~feeder_combout\);

-- Location: FF_X58_Y34_N31
\street|x_value_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_c[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_c\(0));

-- Location: FF_X59_Y34_N7
\street|h_gap_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_gap_1[0]~10_combout\,
	asdata => \street|Add13~0_combout\,
	sload => \street|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_gap_1\(0));

-- Location: LCCOMB_X57_Y34_N0
\street|LessThan16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan16~1_cout\ = CARRY((\street|x_value_c\(0) & !\street|h_gap_1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_c\(0),
	datab => \street|h_gap_1\(0),
	datad => VCC,
	cout => \street|LessThan16~1_cout\);

-- Location: LCCOMB_X57_Y34_N2
\street|LessThan16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan16~3_cout\ = CARRY((\street|x_value_c\(1) & (\street|h_gap_1\(1) & !\street|LessThan16~1_cout\)) # (!\street|x_value_c\(1) & ((\street|h_gap_1\(1)) # (!\street|LessThan16~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_c\(1),
	datab => \street|h_gap_1\(1),
	datad => VCC,
	cin => \street|LessThan16~1_cout\,
	cout => \street|LessThan16~3_cout\);

-- Location: LCCOMB_X57_Y34_N4
\street|LessThan16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan16~5_cout\ = CARRY((\street|x_value_a\(2) & ((!\street|LessThan16~3_cout\) # (!\street|h_gap_1\(2)))) # (!\street|x_value_a\(2) & (!\street|h_gap_1\(2) & !\street|LessThan16~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_a\(2),
	datab => \street|h_gap_1\(2),
	datad => VCC,
	cin => \street|LessThan16~3_cout\,
	cout => \street|LessThan16~5_cout\);

-- Location: LCCOMB_X57_Y34_N6
\street|LessThan16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan16~7_cout\ = CARRY((\street|h_gap_1\(3) & ((!\street|LessThan16~5_cout\) # (!\street|x_value_a\(3)))) # (!\street|h_gap_1\(3) & (!\street|x_value_a\(3) & !\street|LessThan16~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(3),
	datab => \street|x_value_a\(3),
	datad => VCC,
	cin => \street|LessThan16~5_cout\,
	cout => \street|LessThan16~7_cout\);

-- Location: LCCOMB_X57_Y34_N8
\street|LessThan16~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan16~9_cout\ = CARRY((\street|h_gap_1\(4) & (\street|x_value_a\(4) & !\street|LessThan16~7_cout\)) # (!\street|h_gap_1\(4) & ((\street|x_value_a\(4)) # (!\street|LessThan16~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(4),
	datab => \street|x_value_a\(4),
	datad => VCC,
	cin => \street|LessThan16~7_cout\,
	cout => \street|LessThan16~9_cout\);

-- Location: LCCOMB_X57_Y34_N10
\street|LessThan16~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan16~11_cout\ = CARRY((\street|x_value_a\(5) & (\street|h_gap_1\(5) & !\street|LessThan16~9_cout\)) # (!\street|x_value_a\(5) & ((\street|h_gap_1\(5)) # (!\street|LessThan16~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_a\(5),
	datab => \street|h_gap_1\(5),
	datad => VCC,
	cin => \street|LessThan16~9_cout\,
	cout => \street|LessThan16~11_cout\);

-- Location: LCCOMB_X57_Y34_N12
\street|LessThan16~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan16~13_cout\ = CARRY((\street|x_value_a\(6) & ((!\street|LessThan16~11_cout\) # (!\street|h_gap_1\(6)))) # (!\street|x_value_a\(6) & (!\street|h_gap_1\(6) & !\street|LessThan16~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_a\(6),
	datab => \street|h_gap_1\(6),
	datad => VCC,
	cin => \street|LessThan16~11_cout\,
	cout => \street|LessThan16~13_cout\);

-- Location: LCCOMB_X57_Y34_N14
\street|LessThan16~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan16~15_cout\ = CARRY((\street|x_value_a\(7) & (\street|h_gap_1\(7) & !\street|LessThan16~13_cout\)) # (!\street|x_value_a\(7) & ((\street|h_gap_1\(7)) # (!\street|LessThan16~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_a\(7),
	datab => \street|h_gap_1\(7),
	datad => VCC,
	cin => \street|LessThan16~13_cout\,
	cout => \street|LessThan16~15_cout\);

-- Location: LCCOMB_X57_Y34_N16
\street|LessThan16~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan16~16_combout\ = (\street|h_gap_1\(8) & (!\street|LessThan16~15_cout\ & \street|x_value_a\(8))) # (!\street|h_gap_1\(8) & ((\street|x_value_a\(8)) # (!\street|LessThan16~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(8),
	datad => \street|x_value_a\(8),
	cin => \street|LessThan16~15_cout\,
	combout => \street|LessThan16~16_combout\);

-- Location: LCCOMB_X59_Y34_N24
\street|h_gap_1[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|h_gap_1[9]~28_combout\ = \street|h_count\(9) $ (\street|h_gap_1[8]~27\ $ (!\street|center_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|h_count\(9),
	datad => \street|center_pos\(9),
	cin => \street|h_gap_1[8]~27\,
	combout => \street|h_gap_1[9]~28_combout\);

-- Location: LCCOMB_X60_Y34_N24
\street|Add13~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add13~18_combout\ = \street|center_pos\(9) $ (\street|Add13~17\ $ (!\street|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|center_pos\(9),
	datad => \street|h_count\(9),
	cin => \street|Add13~17\,
	combout => \street|Add13~18_combout\);

-- Location: FF_X59_Y34_N25
\street|h_gap_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|h_gap_1[9]~28_combout\,
	asdata => \street|Add13~18_combout\,
	sload => \street|LessThan14~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|h_gap_1\(9));

-- Location: LCCOMB_X58_Y33_N30
\street|LessThan15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan15~0_combout\ = (\street|v_pos_1\(8) & (((!\street|v_pos_1\(6) & \street|v_pos_1\(5))) # (!\street|v_pos_1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_pos_1\(6),
	datab => \street|v_pos_1\(7),
	datac => \street|v_pos_1\(5),
	datad => \street|v_pos_1\(8),
	combout => \street|LessThan15~0_combout\);

-- Location: LCCOMB_X57_Y33_N0
\street|LessThan15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan15~1_combout\ = ((\street|v_pos_1\(9) & \street|LessThan15~0_combout\)) # (!\street|v_pos_1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|v_pos_1\(9),
	datac => \street|LessThan15~0_combout\,
	datad => \street|v_pos_1\(10),
	combout => \street|LessThan15~1_combout\);

-- Location: LCCOMB_X56_Y34_N4
\street|x_value_b[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_b[1]~8_combout\ = (\street|v_count\(3) & (\street|v_count\(2) $ (VCC))) # (!\street|v_count\(3) & (\street|v_count\(2) & VCC))
-- \street|x_value_b[1]~9\ = CARRY((\street|v_count\(3) & \street|v_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(3),
	datab => \street|v_count\(2),
	datad => VCC,
	combout => \street|x_value_b[1]~8_combout\,
	cout => \street|x_value_b[1]~9\);

-- Location: LCCOMB_X56_Y34_N6
\street|x_value_b[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_b[2]~10_combout\ = (\street|v_count\(4) & (!\street|x_value_b[1]~9\)) # (!\street|v_count\(4) & ((\street|x_value_b[1]~9\) # (GND)))
-- \street|x_value_b[2]~11\ = CARRY((!\street|x_value_b[1]~9\) # (!\street|v_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(4),
	datad => VCC,
	cin => \street|x_value_b[1]~9\,
	combout => \street|x_value_b[2]~10_combout\,
	cout => \street|x_value_b[2]~11\);

-- Location: LCCOMB_X56_Y34_N8
\street|x_value_b[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_b[3]~12_combout\ = (\street|v_count\(5) & ((GND) # (!\street|x_value_b[2]~11\))) # (!\street|v_count\(5) & (\street|x_value_b[2]~11\ $ (GND)))
-- \street|x_value_b[3]~13\ = CARRY((\street|v_count\(5)) # (!\street|x_value_b[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(5),
	datad => VCC,
	cin => \street|x_value_b[2]~11\,
	combout => \street|x_value_b[3]~12_combout\,
	cout => \street|x_value_b[3]~13\);

-- Location: LCCOMB_X56_Y34_N10
\street|x_value_b[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_b[4]~14_combout\ = (\street|v_count\(6) & (\street|x_value_b[3]~13\ & VCC)) # (!\street|v_count\(6) & (!\street|x_value_b[3]~13\))
-- \street|x_value_b[4]~15\ = CARRY((!\street|v_count\(6) & !\street|x_value_b[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(6),
	datad => VCC,
	cin => \street|x_value_b[3]~13\,
	combout => \street|x_value_b[4]~14_combout\,
	cout => \street|x_value_b[4]~15\);

-- Location: LCCOMB_X56_Y34_N12
\street|x_value_b[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_b[5]~16_combout\ = (\street|v_count\(7) & (\street|x_value_b[4]~15\ $ (GND))) # (!\street|v_count\(7) & (!\street|x_value_b[4]~15\ & VCC))
-- \street|x_value_b[5]~17\ = CARRY((\street|v_count\(7) & !\street|x_value_b[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(7),
	datad => VCC,
	cin => \street|x_value_b[4]~15\,
	combout => \street|x_value_b[5]~16_combout\,
	cout => \street|x_value_b[5]~17\);

-- Location: LCCOMB_X56_Y34_N14
\street|x_value_b[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_b[6]~18_combout\ = (\street|v_count\(8) & (!\street|x_value_b[5]~17\)) # (!\street|v_count\(8) & ((\street|x_value_b[5]~17\) # (GND)))
-- \street|x_value_b[6]~19\ = CARRY((!\street|x_value_b[5]~17\) # (!\street|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(8),
	datad => VCC,
	cin => \street|x_value_b[5]~17\,
	combout => \street|x_value_b[6]~18_combout\,
	cout => \street|x_value_b[6]~19\);

-- Location: LCCOMB_X56_Y34_N16
\street|x_value_b[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_b[7]~20_combout\ = (\street|v_count\(9) & (\street|x_value_b[6]~19\ $ (GND))) # (!\street|v_count\(9) & (!\street|x_value_b[6]~19\ & VCC))
-- \street|x_value_b[7]~21\ = CARRY((\street|v_count\(9) & !\street|x_value_b[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(9),
	datad => VCC,
	cin => \street|x_value_b[6]~19\,
	combout => \street|x_value_b[7]~20_combout\,
	cout => \street|x_value_b[7]~21\);

-- Location: LCCOMB_X56_Y34_N18
\street|x_value_b[8]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_b[8]~22_combout\ = \street|x_value_b[7]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \street|x_value_b[7]~21\,
	combout => \street|x_value_b[8]~22_combout\);

-- Location: FF_X56_Y34_N19
\street|x_value_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_b[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_b\(8));

-- Location: FF_X56_Y34_N17
\street|x_value_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_b[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_b\(7));

-- Location: FF_X56_Y34_N15
\street|x_value_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_b[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_b\(6));

-- Location: FF_X56_Y34_N13
\street|x_value_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_b[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_b\(5));

-- Location: FF_X56_Y34_N11
\street|x_value_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_b[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_b\(4));

-- Location: FF_X56_Y34_N9
\street|x_value_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_b[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_b\(3));

-- Location: FF_X56_Y34_N7
\street|x_value_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_b[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_b\(2));

-- Location: FF_X56_Y34_N5
\street|x_value_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_b[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_b\(1));

-- Location: LCCOMB_X55_Y34_N8
\street|LessThan17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan17~1_cout\ = CARRY((\street|x_value_b\(0) & !\street|h_gap_1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_b\(0),
	datab => \street|h_gap_1\(0),
	datad => VCC,
	cout => \street|LessThan17~1_cout\);

-- Location: LCCOMB_X55_Y34_N10
\street|LessThan17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan17~3_cout\ = CARRY((\street|x_value_b\(1) & (\street|h_gap_1\(1) & !\street|LessThan17~1_cout\)) # (!\street|x_value_b\(1) & ((\street|h_gap_1\(1)) # (!\street|LessThan17~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_b\(1),
	datab => \street|h_gap_1\(1),
	datad => VCC,
	cin => \street|LessThan17~1_cout\,
	cout => \street|LessThan17~3_cout\);

-- Location: LCCOMB_X55_Y34_N12
\street|LessThan17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan17~5_cout\ = CARRY((\street|x_value_b\(2) & ((!\street|LessThan17~3_cout\) # (!\street|h_gap_1\(2)))) # (!\street|x_value_b\(2) & (!\street|h_gap_1\(2) & !\street|LessThan17~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_b\(2),
	datab => \street|h_gap_1\(2),
	datad => VCC,
	cin => \street|LessThan17~3_cout\,
	cout => \street|LessThan17~5_cout\);

-- Location: LCCOMB_X55_Y34_N14
\street|LessThan17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan17~7_cout\ = CARRY((\street|h_gap_1\(3) & ((!\street|LessThan17~5_cout\) # (!\street|x_value_b\(3)))) # (!\street|h_gap_1\(3) & (!\street|x_value_b\(3) & !\street|LessThan17~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(3),
	datab => \street|x_value_b\(3),
	datad => VCC,
	cin => \street|LessThan17~5_cout\,
	cout => \street|LessThan17~7_cout\);

-- Location: LCCOMB_X55_Y34_N16
\street|LessThan17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan17~9_cout\ = CARRY((\street|h_gap_1\(4) & (\street|x_value_b\(4) & !\street|LessThan17~7_cout\)) # (!\street|h_gap_1\(4) & ((\street|x_value_b\(4)) # (!\street|LessThan17~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(4),
	datab => \street|x_value_b\(4),
	datad => VCC,
	cin => \street|LessThan17~7_cout\,
	cout => \street|LessThan17~9_cout\);

-- Location: LCCOMB_X55_Y34_N18
\street|LessThan17~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan17~11_cout\ = CARRY((\street|h_gap_1\(5) & ((!\street|LessThan17~9_cout\) # (!\street|x_value_b\(5)))) # (!\street|h_gap_1\(5) & (!\street|x_value_b\(5) & !\street|LessThan17~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(5),
	datab => \street|x_value_b\(5),
	datad => VCC,
	cin => \street|LessThan17~9_cout\,
	cout => \street|LessThan17~11_cout\);

-- Location: LCCOMB_X55_Y34_N20
\street|LessThan17~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan17~13_cout\ = CARRY((\street|h_gap_1\(6) & (\street|x_value_b\(6) & !\street|LessThan17~11_cout\)) # (!\street|h_gap_1\(6) & ((\street|x_value_b\(6)) # (!\street|LessThan17~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(6),
	datab => \street|x_value_b\(6),
	datad => VCC,
	cin => \street|LessThan17~11_cout\,
	cout => \street|LessThan17~13_cout\);

-- Location: LCCOMB_X55_Y34_N22
\street|LessThan17~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan17~15_cout\ = CARRY((\street|h_gap_1\(7) & ((!\street|LessThan17~13_cout\) # (!\street|x_value_b\(7)))) # (!\street|h_gap_1\(7) & (!\street|x_value_b\(7) & !\street|LessThan17~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(7),
	datab => \street|x_value_b\(7),
	datad => VCC,
	cin => \street|LessThan17~13_cout\,
	cout => \street|LessThan17~15_cout\);

-- Location: LCCOMB_X55_Y34_N24
\street|LessThan17~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan17~16_combout\ = (\street|x_value_b\(8) & ((!\street|h_gap_1\(8)) # (!\street|LessThan17~15_cout\))) # (!\street|x_value_b\(8) & (!\street|LessThan17~15_cout\ & !\street|h_gap_1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|x_value_b\(8),
	datad => \street|h_gap_1\(8),
	cin => \street|LessThan17~15_cout\,
	combout => \street|LessThan17~16_combout\);

-- Location: LCCOMB_X60_Y35_N20
\street|LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan10~0_combout\ = (!\street|h_count\(6) & (!\street|h_count\(5) & !\street|h_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|h_count\(6),
	datac => \street|h_count\(5),
	datad => \street|h_count\(4),
	combout => \street|LessThan10~0_combout\);

-- Location: LCCOMB_X60_Y35_N30
\street|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|process_1~0_combout\ = (\street|h_count\(8) & (((\street|LessThan10~0_combout\ & !\street|h_count\(7))) # (!\street|h_count\(9)))) # (!\street|h_count\(8) & ((\street|h_count\(9)) # ((!\street|LessThan10~0_combout\ & \street|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_count\(8),
	datab => \street|h_count\(9),
	datac => \street|LessThan10~0_combout\,
	datad => \street|h_count\(7),
	combout => \street|process_1~0_combout\);

-- Location: LCCOMB_X56_Y34_N26
\street|LessThan12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan12~2_combout\ = ((!\street|v_count\(3) & (!\street|v_count\(4) & !\street|v_count\(2)))) # (!\street|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(3),
	datab => \street|v_count\(5),
	datac => \street|v_count\(4),
	datad => \street|v_count\(2),
	combout => \street|LessThan12~2_combout\);

-- Location: LCCOMB_X56_Y34_N22
\street|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|process_1~1_combout\ = (\street|process_1~0_combout\ & ((\street|v_count\(9)) # ((!\street|LessThan12~0_combout\) # (!\street|LessThan12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|process_1~0_combout\,
	datab => \street|v_count\(9),
	datac => \street|LessThan12~2_combout\,
	datad => \street|LessThan12~0_combout\,
	combout => \street|process_1~1_combout\);

-- Location: LCCOMB_X56_Y34_N2
\street|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|process_1~2_combout\ = (\street|process_1~1_combout\ & ((\street|LessThan12~1_combout\) # (!\street|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|LessThan12~1_combout\,
	datac => \street|process_1~1_combout\,
	datad => \street|v_count\(9),
	combout => \street|process_1~2_combout\);

-- Location: FF_X56_Y34_N3
\street|de_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|de_1~q\);

-- Location: LCCOMB_X47_Y34_N18
\street|rgb_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2~4_combout\ = (\street|LessThan17~16_combout\ & (\street|de_1~q\ & !\street|h_gap_1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|LessThan17~16_combout\,
	datab => \street|de_1~q\,
	datad => \street|h_gap_1\(9),
	combout => \street|rgb_2~4_combout\);

-- Location: LCCOMB_X47_Y34_N0
\street|rgb_2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2~5_combout\ = (!\street|LessThan15~1_combout\ & (\street|rgb_2~4_combout\ & ((\street|h_gap_1\(9)) # (!\street|LessThan16~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|LessThan16~16_combout\,
	datab => \street|h_gap_1\(9),
	datac => \street|LessThan15~1_combout\,
	datad => \street|rgb_2~4_combout\,
	combout => \street|rgb_2~5_combout\);

-- Location: FF_X47_Y34_N1
\street|rgb_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|rgb_2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|rgb_2\(22));

-- Location: LCCOMB_X16_Y14_N4
\street|r_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|r_out[4]~feeder_combout\ = \street|rgb_2\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2\(22),
	combout => \street|r_out[4]~feeder_combout\);

-- Location: FF_X16_Y14_N5
\street|r_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|r_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|r_out\(4));

-- Location: LCCOMB_X47_Y34_N26
\street|rgb_2[21]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2[21]~7_combout\ = (\street|de_1~q\ & ((\street|h_gap_1\(9)) # (!\street|LessThan17~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|de_1~q\,
	datac => \street|LessThan17~16_combout\,
	datad => \street|h_gap_1\(9),
	combout => \street|rgb_2[21]~7_combout\);

-- Location: LCCOMB_X47_Y34_N22
\street|rgb_2[21]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2[21]~8_combout\ = (!\street|LessThan15~1_combout\ & (\street|rgb_2[21]~7_combout\ & ((\street|h_gap_1\(9)) # (!\street|LessThan16~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|LessThan15~1_combout\,
	datab => \street|h_gap_1\(9),
	datac => \street|rgb_2[21]~7_combout\,
	datad => \street|LessThan16~16_combout\,
	combout => \street|rgb_2[21]~8_combout\);

-- Location: LCCOMB_X47_Y34_N24
\street|rgb_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2~6_combout\ = (\street|h_gap_1\(9)) # ((\street|LessThan15~1_combout\) # (!\street|LessThan16~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|h_gap_1\(9),
	datac => \street|LessThan15~1_combout\,
	datad => \street|LessThan16~16_combout\,
	combout => \street|rgb_2~6_combout\);

-- Location: LCCOMB_X58_Y34_N8
\street|Add17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add17~0_combout\ = (\street|v_count\(7) & (\street|v_count\(8) & \street|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(7),
	datab => \street|v_count\(8),
	datad => \street|v_count\(9),
	combout => \street|Add17~0_combout\);

-- Location: FF_X58_Y34_N9
\street|x_value_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_c\(8));

-- Location: LCCOMB_X58_Y34_N2
\street|Add17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add17~1_combout\ = \street|v_count\(9) $ (((\street|v_count\(7) & \street|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|v_count\(7),
	datab => \street|v_count\(8),
	datad => \street|v_count\(9),
	combout => \street|Add17~1_combout\);

-- Location: FF_X58_Y34_N3
\street|x_value_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_c\(7));

-- Location: LCCOMB_X58_Y34_N0
\street|Add17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|Add17~2_combout\ = \street|v_count\(8) $ (\street|v_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \street|v_count\(8),
	datad => \street|v_count\(7),
	combout => \street|Add17~2_combout\);

-- Location: FF_X58_Y34_N1
\street|x_value_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|Add17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_c\(6));

-- Location: LCCOMB_X58_Y34_N10
\street|x_value_c[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|x_value_c[5]~0_combout\ = !\street|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|v_count\(7),
	combout => \street|x_value_c[5]~0_combout\);

-- Location: FF_X58_Y34_N11
\street|x_value_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|x_value_c[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_c\(5));

-- Location: FF_X58_Y34_N21
\street|x_value_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|v_count\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_c\(4));

-- Location: FF_X58_Y34_N19
\street|x_value_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|v_count\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_c\(3));

-- Location: FF_X58_Y34_N17
\street|x_value_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|v_count\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|x_value_c\(2));

-- Location: LCCOMB_X58_Y34_N12
\street|LessThan18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan18~1_cout\ = CARRY((\street|x_value_c\(0) & !\street|h_gap_1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_c\(0),
	datab => \street|h_gap_1\(0),
	datad => VCC,
	cout => \street|LessThan18~1_cout\);

-- Location: LCCOMB_X58_Y34_N14
\street|LessThan18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan18~3_cout\ = CARRY((\street|h_gap_1\(1) & ((!\street|LessThan18~1_cout\) # (!\street|x_value_c\(1)))) # (!\street|h_gap_1\(1) & (!\street|x_value_c\(1) & !\street|LessThan18~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(1),
	datab => \street|x_value_c\(1),
	datad => VCC,
	cin => \street|LessThan18~1_cout\,
	cout => \street|LessThan18~3_cout\);

-- Location: LCCOMB_X58_Y34_N16
\street|LessThan18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan18~5_cout\ = CARRY((\street|h_gap_1\(2) & (\street|x_value_c\(2) & !\street|LessThan18~3_cout\)) # (!\street|h_gap_1\(2) & ((\street|x_value_c\(2)) # (!\street|LessThan18~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(2),
	datab => \street|x_value_c\(2),
	datad => VCC,
	cin => \street|LessThan18~3_cout\,
	cout => \street|LessThan18~5_cout\);

-- Location: LCCOMB_X58_Y34_N18
\street|LessThan18~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan18~7_cout\ = CARRY((\street|x_value_c\(3) & (\street|h_gap_1\(3) & !\street|LessThan18~5_cout\)) # (!\street|x_value_c\(3) & ((\street|h_gap_1\(3)) # (!\street|LessThan18~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_c\(3),
	datab => \street|h_gap_1\(3),
	datad => VCC,
	cin => \street|LessThan18~5_cout\,
	cout => \street|LessThan18~7_cout\);

-- Location: LCCOMB_X58_Y34_N20
\street|LessThan18~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan18~9_cout\ = CARRY((\street|h_gap_1\(4) & (\street|x_value_c\(4) & !\street|LessThan18~7_cout\)) # (!\street|h_gap_1\(4) & ((\street|x_value_c\(4)) # (!\street|LessThan18~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(4),
	datab => \street|x_value_c\(4),
	datad => VCC,
	cin => \street|LessThan18~7_cout\,
	cout => \street|LessThan18~9_cout\);

-- Location: LCCOMB_X58_Y34_N22
\street|LessThan18~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan18~11_cout\ = CARRY((\street|x_value_c\(5) & (\street|h_gap_1\(5) & !\street|LessThan18~9_cout\)) # (!\street|x_value_c\(5) & ((\street|h_gap_1\(5)) # (!\street|LessThan18~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|x_value_c\(5),
	datab => \street|h_gap_1\(5),
	datad => VCC,
	cin => \street|LessThan18~9_cout\,
	cout => \street|LessThan18~11_cout\);

-- Location: LCCOMB_X58_Y34_N24
\street|LessThan18~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan18~13_cout\ = CARRY((\street|h_gap_1\(6) & (\street|x_value_c\(6) & !\street|LessThan18~11_cout\)) # (!\street|h_gap_1\(6) & ((\street|x_value_c\(6)) # (!\street|LessThan18~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(6),
	datab => \street|x_value_c\(6),
	datad => VCC,
	cin => \street|LessThan18~11_cout\,
	cout => \street|LessThan18~13_cout\);

-- Location: LCCOMB_X58_Y34_N26
\street|LessThan18~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan18~15_cout\ = CARRY((\street|h_gap_1\(7) & ((!\street|LessThan18~13_cout\) # (!\street|x_value_c\(7)))) # (!\street|h_gap_1\(7) & (!\street|x_value_c\(7) & !\street|LessThan18~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \street|h_gap_1\(7),
	datab => \street|x_value_c\(7),
	datad => VCC,
	cin => \street|LessThan18~13_cout\,
	cout => \street|LessThan18~15_cout\);

-- Location: LCCOMB_X58_Y34_N28
\street|LessThan18~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|LessThan18~16_combout\ = (\street|x_value_c\(8) & ((!\street|h_gap_1\(8)) # (!\street|LessThan18~15_cout\))) # (!\street|x_value_c\(8) & (!\street|LessThan18~15_cout\ & !\street|h_gap_1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \street|x_value_c\(8),
	datad => \street|h_gap_1\(8),
	cin => \street|LessThan18~15_cout\,
	combout => \street|LessThan18~16_combout\);

-- Location: LCCOMB_X47_Y34_N20
\street|rgb_2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2~9_combout\ = (\street|LessThan18~16_combout\ & !\street|h_gap_1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|LessThan18~16_combout\,
	datad => \street|h_gap_1\(9),
	combout => \street|rgb_2~9_combout\);

-- Location: LCCOMB_X47_Y34_N10
\street|rgb_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2~10_combout\ = (\street|rgb_2[21]~8_combout\ & (((!\street|rgb_2~9_combout\)))) # (!\street|rgb_2[21]~8_combout\ & (\street|rgb_2~6_combout\ & (\street|de_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|rgb_2[21]~8_combout\,
	datab => \street|rgb_2~6_combout\,
	datac => \street|de_1~q\,
	datad => \street|rgb_2~9_combout\,
	combout => \street|rgb_2~10_combout\);

-- Location: FF_X47_Y34_N11
\street|rgb_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|rgb_2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|rgb_2\(21));

-- Location: LCCOMB_X47_Y34_N2
\street|r_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|r_out[5]~feeder_combout\ = \street|rgb_2\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2\(21),
	combout => \street|r_out[5]~feeder_combout\);

-- Location: FF_X47_Y34_N3
\street|r_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|r_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|r_out\(5));

-- Location: LCCOMB_X16_Y14_N10
\street|r_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|r_out[6]~feeder_combout\ = \street|rgb_2\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2\(22),
	combout => \street|r_out[6]~feeder_combout\);

-- Location: FF_X16_Y14_N11
\street|r_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|r_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|r_out\(6));

-- Location: LCCOMB_X47_Y34_N16
\street|rgb_2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2~13_combout\ = (\street|rgb_2[21]~8_combout\ & (\street|LessThan18~16_combout\ & ((!\street|h_gap_1\(9))))) # (!\street|rgb_2[21]~8_combout\ & (((\street|de_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|LessThan18~16_combout\,
	datab => \street|de_1~q\,
	datac => \street|rgb_2[21]~8_combout\,
	datad => \street|h_gap_1\(9),
	combout => \street|rgb_2~13_combout\);

-- Location: FF_X47_Y34_N17
\street|rgb_2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|rgb_2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|rgb_2\(23));

-- Location: LCCOMB_X16_Y14_N8
\street|r_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|r_out[7]~feeder_combout\ = \street|rgb_2\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2\(23),
	combout => \street|r_out[7]~feeder_combout\);

-- Location: FF_X16_Y14_N9
\street|r_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|r_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|r_out\(7));

-- Location: LCCOMB_X57_Y33_N10
\street|rgb_2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2~11_combout\ = (\street|de_1~q\ & (((\street|LessThan15~0_combout\ & \street|v_pos_1\(9))) # (!\street|v_pos_1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|LessThan15~0_combout\,
	datab => \street|de_1~q\,
	datac => \street|v_pos_1\(9),
	datad => \street|v_pos_1\(10),
	combout => \street|rgb_2~11_combout\);

-- Location: LCCOMB_X47_Y34_N8
\street|rgb_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2~12_combout\ = (\street|rgb_2~11_combout\) # ((!\street|LessThan16~16_combout\ & \street|rgb_2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|rgb_2~11_combout\,
	datac => \street|LessThan16~16_combout\,
	datad => \street|rgb_2~4_combout\,
	combout => \street|rgb_2~12_combout\);

-- Location: FF_X47_Y34_N9
\street|rgb_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|rgb_2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|rgb_2\(12));

-- Location: FF_X47_Y34_N19
\street|g_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|rgb_2\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|g_out\(4));

-- Location: LCCOMB_X16_Y14_N14
\street|g_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|g_out[5]~feeder_combout\ = \street|rgb_2\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2\(22),
	combout => \street|g_out[5]~feeder_combout\);

-- Location: FF_X16_Y14_N15
\street|g_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|g_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|g_out\(5));

-- Location: LCCOMB_X47_Y34_N30
\street|g_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|g_out[6]~feeder_combout\ = \street|rgb_2\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2\(21),
	combout => \street|g_out[6]~feeder_combout\);

-- Location: FF_X47_Y34_N31
\street|g_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|g_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|g_out\(6));

-- Location: LCCOMB_X47_Y34_N12
\street|rgb_2[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2[15]~feeder_combout\ = \street|de_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \street|de_1~q\,
	combout => \street|rgb_2[15]~feeder_combout\);

-- Location: FF_X47_Y34_N13
\street|rgb_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|rgb_2[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|rgb_2\(15));

-- Location: LCCOMB_X47_Y34_N14
\street|g_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|g_out[7]~feeder_combout\ = \street|rgb_2\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2\(15),
	combout => \street|g_out[7]~feeder_combout\);

-- Location: FF_X47_Y34_N15
\street|g_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|g_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|g_out\(7));

-- Location: LCCOMB_X47_Y34_N28
\street|rgb_2[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2[5]~feeder_combout\ = \street|rgb_2~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2~11_combout\,
	combout => \street|rgb_2[5]~feeder_combout\);

-- Location: FF_X47_Y34_N29
\street|rgb_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|rgb_2[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|rgb_2\(5));

-- Location: LCCOMB_X1_Y14_N8
\street|b_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|b_out[4]~feeder_combout\ = \street|rgb_2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2\(5),
	combout => \street|b_out[4]~feeder_combout\);

-- Location: FF_X1_Y14_N9
\street|b_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|b_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|b_out\(4));

-- Location: LCCOMB_X1_Y14_N10
\street|b_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|b_out[5]~feeder_combout\ = \street|rgb_2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2\(5),
	combout => \street|b_out[5]~feeder_combout\);

-- Location: FF_X1_Y14_N11
\street|b_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|b_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|b_out\(5));

-- Location: LCCOMB_X47_Y34_N4
\street|rgb_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|rgb_2~14_combout\ = (\street|rgb_2~11_combout\) # ((\street|rgb_2[21]~8_combout\ & ((\street|h_gap_1\(9)) # (!\street|LessThan18~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \street|rgb_2[21]~8_combout\,
	datab => \street|h_gap_1\(9),
	datac => \street|LessThan18~16_combout\,
	datad => \street|rgb_2~11_combout\,
	combout => \street|rgb_2~14_combout\);

-- Location: FF_X47_Y34_N5
\street|rgb_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|rgb_2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|rgb_2\(6));

-- Location: FF_X47_Y34_N7
\street|b_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	asdata => \street|rgb_2\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|b_out\(6));

-- Location: LCCOMB_X16_Y14_N0
\street|b_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \street|b_out[7]~feeder_combout\ = \street|rgb_2\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \street|rgb_2\(23),
	combout => \street|b_out[7]~feeder_combout\);

-- Location: FF_X16_Y14_N1
\street|b_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25~clkctrl_outclk\,
	d => \street|b_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \street|b_out\(7));

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


