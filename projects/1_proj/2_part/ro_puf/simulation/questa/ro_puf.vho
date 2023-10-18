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

-- DATE "10/18/2023 12:14:22"

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

ENTITY 	ro_puf IS
    PORT (
	clock : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	pulse_in : IN std_logic;
	challenge : IN std_logic_vector(0 TO 11);
	response : OUT std_logic
	);
END ro_puf;

-- Design Ports Information
-- challenge[7]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- response	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[10]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- enable	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_in	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ro_puf IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_pulse_in : std_logic;
SIGNAL ww_challenge : std_logic_vector(0 TO 11);
SIGNAL ww_response : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \gen_ro:13:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:11:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:10:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:0:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:12:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:7:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:2:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:6:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:1:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:5:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:4:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:15:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:14:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:3:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:8:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:9:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \challenge[7]~input_o\ : std_logic;
SIGNAL \challenge[6]~input_o\ : std_logic;
SIGNAL \challenge[1]~input_o\ : std_logic;
SIGNAL \challenge[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \response~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \req_resp_sig~q\ : std_logic;
SIGNAL \challenge[8]~input_o\ : std_logic;
SIGNAL \challenge[11]~input_o\ : std_logic;
SIGNAL \pulse_in~input_o\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:15:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:13:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \challenge[10]~input_o\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:14:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:12:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:10:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:8:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:9:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:11:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \challenge[9]~input_o\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:5:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:7:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:4:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:6:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:3:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:0:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|inv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|ro_counter[0]~15_combout\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|ro_counter[1]~5_combout\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|ro_counter[1]~6\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|ro_counter[2]~7_combout\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|ro_counter[2]~8\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|ro_counter[3]~9_combout\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|ro_counter[3]~10\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|ro_counter[4]~11_combout\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|ro_counter[4]~12\ : std_logic;
SIGNAL \gen_ro:1:ro_inst|ro_counter[5]~13_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \challenge[2]~input_o\ : std_logic;
SIGNAL \challenge[5]~input_o\ : std_logic;
SIGNAL \challenge[4]~input_o\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \challenge[3]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \response~0_combout\ : std_logic;
SIGNAL \response~reg0_q\ : std_logic;
SIGNAL \gen_ro:2:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:4:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:6:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:8:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:10:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:7:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:5:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:11:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:9:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:1:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:0:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:3:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:13:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:14:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:12:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:15:ro_inst|ro_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gen_ro:15:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL count : std_logic_vector(30 DOWNTO 0);
SIGNAL \gen_ro:10:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:9:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:8:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:11:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:5:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:6:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:4:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:7:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:2:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:1:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:0:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:3:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:13:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:14:ro_inst|inv\ : std_logic_vector(0 TO 11);
SIGNAL \gen_ro:12:ro_inst|inv\ : std_logic_vector(0 TO 11);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_enable <= enable;
ww_reset <= reset;
ww_pulse_in <= pulse_in;
ww_challenge <= challenge;
response <= ww_response;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\gen_ro:13:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:13:ro_inst|inv\(11));

\gen_ro:11:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:11:ro_inst|inv\(11));

\gen_ro:10:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:10:ro_inst|inv\(11));

\gen_ro:0:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:0:ro_inst|inv\(11));

\gen_ro:12:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:12:ro_inst|inv\(11));

\gen_ro:7:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:7:ro_inst|inv\(11));

\gen_ro:2:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:2:ro_inst|inv\(11));

\gen_ro:6:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:6:ro_inst|inv\(11));

\gen_ro:1:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:1:ro_inst|inv\(11));

\gen_ro:5:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:5:ro_inst|inv\(11));

\gen_ro:4:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:4:ro_inst|inv\(11));

\gen_ro:15:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:15:ro_inst|inv\(11));

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\gen_ro:14:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:14:ro_inst|inv\(11));

\gen_ro:3:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:3:ro_inst|inv\(11));

\gen_ro:8:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:8:ro_inst|inv\(11));

\gen_ro:9:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:9:ro_inst|inv\(11));
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X31_Y39_N2
\response~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \response~reg0_q\,
	devoe => ww_devoe,
	o => \response~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G19
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y34_N2
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X37_Y34_N2
\count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~0_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~2_combout\);

-- Location: FF_X37_Y34_N3
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X36_Y34_N4
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X36_Y34_N0
\count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~2_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~1_combout\);

-- Location: FF_X36_Y34_N1
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X36_Y34_N6
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X36_Y34_N7
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X36_Y34_N8
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X37_Y34_N14
\count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~6_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~0_combout\);

-- Location: FF_X37_Y34_N15
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X36_Y34_N10
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X36_Y34_N11
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X36_Y34_N12
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X36_Y34_N13
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X36_Y34_N14
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X36_Y34_N15
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X36_Y34_N16
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X36_Y34_N17
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X36_Y34_N18
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X36_Y34_N19
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X36_Y34_N20
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X36_Y34_N21
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X36_Y34_N22
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X36_Y34_N23
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X37_Y34_N12
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(7) & (!count(9) & (!count(10) & !count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(9),
	datac => count(10),
	datad => count(8),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X36_Y34_N24
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X36_Y34_N25
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X36_Y34_N26
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X36_Y34_N27
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X36_Y34_N28
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X36_Y34_N29
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X36_Y34_N30
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X36_Y34_N31
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X36_Y33_N0
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X36_Y33_N1
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X36_Y33_N2
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X36_Y33_N3
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X36_Y33_N4
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X36_Y33_N5
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X36_Y33_N6
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X36_Y33_N7
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X37_Y33_N10
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(15) & (!count(17) & (!count(18) & !count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(17),
	datac => count(18),
	datad => count(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X36_Y33_N8
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X36_Y33_N9
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X36_Y33_N10
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X36_Y33_N11
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X36_Y33_N12
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X36_Y33_N13
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X36_Y33_N14
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X36_Y33_N15
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X36_Y33_N16
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X36_Y33_N17
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X36_Y33_N18
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X36_Y33_N19
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X36_Y33_N20
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X36_Y33_N21
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X36_Y33_N22
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X36_Y33_N23
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X37_Y33_N18
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(23) & (!count(25) & (!count(26) & !count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(25),
	datac => count(26),
	datad => count(24),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X37_Y33_N8
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(20) & (!count(22) & (!count(19) & !count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(22),
	datac => count(19),
	datad => count(21),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X36_Y33_N24
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(27) & (!\Add0~53\)) # (!count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X36_Y33_N25
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X36_Y33_N26
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(28) & (\Add0~55\ $ (GND))) # (!count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X36_Y33_N27
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X36_Y33_N28
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(29) & (!\Add0~57\)) # (!count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X36_Y33_N29
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X36_Y33_N30
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = count(30) $ (!\Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

-- Location: FF_X36_Y33_N31
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X37_Y33_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(28) & (!count(30) & (!count(27) & !count(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datab => count(30),
	datac => count(27),
	datad => count(29),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X37_Y33_N0
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X38_Y34_N12
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(12) & (!count(13) & (!count(11) & !count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(13),
	datac => count(11),
	datad => count(14),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X37_Y34_N28
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(4) & (count(3) & (!count(5) & !count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(3),
	datac => count(5),
	datad => count(6),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X38_Y34_N18
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(0) & (count(1) & (!count(2) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(2),
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X37_Y34_N6
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~4_combout\ & (\Equal0~5_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: FF_X37_Y34_N7
req_resp_sig : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_resp_sig~q\);

-- Location: IOIBUF_X31_Y39_N15
\challenge[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(8),
	o => \challenge[8]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\challenge[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(11),
	o => \challenge[11]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\pulse_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulse_in,
	o => \pulse_in~input_o\);

-- Location: LCCOMB_X59_Y39_N2
\gen_ro:15:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(0) = LCELL((\gen_ro:15:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:15:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:15:ro_inst|inv\(0));

-- Location: LCCOMB_X55_Y39_N18
\gen_ro:15:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(1) = LCELL(!\gen_ro:15:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(0),
	combout => \gen_ro:15:ro_inst|inv\(1));

-- Location: LCCOMB_X55_Y39_N2
\gen_ro:15:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(2) = LCELL(!\gen_ro:15:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(1),
	combout => \gen_ro:15:ro_inst|inv\(2));

-- Location: LCCOMB_X55_Y39_N10
\gen_ro:15:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(3) = LCELL(!\gen_ro:15:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(2),
	combout => \gen_ro:15:ro_inst|inv\(3));

-- Location: LCCOMB_X55_Y39_N14
\gen_ro:15:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(4) = LCELL(!\gen_ro:15:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(3),
	combout => \gen_ro:15:ro_inst|inv\(4));

-- Location: LCCOMB_X56_Y39_N10
\gen_ro:15:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(5) = LCELL(!\gen_ro:15:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(4),
	combout => \gen_ro:15:ro_inst|inv\(5));

-- Location: LCCOMB_X56_Y39_N28
\gen_ro:15:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(6) = LCELL(!\gen_ro:15:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(5),
	combout => \gen_ro:15:ro_inst|inv\(6));

-- Location: LCCOMB_X56_Y39_N18
\gen_ro:15:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(7) = LCELL(!\gen_ro:15:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(6),
	combout => \gen_ro:15:ro_inst|inv\(7));

-- Location: LCCOMB_X56_Y39_N16
\gen_ro:15:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(8) = LCELL(!\gen_ro:15:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(7),
	combout => \gen_ro:15:ro_inst|inv\(8));

-- Location: LCCOMB_X56_Y39_N14
\gen_ro:15:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(9) = LCELL(!\gen_ro:15:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(8),
	combout => \gen_ro:15:ro_inst|inv\(9));

-- Location: LCCOMB_X57_Y39_N20
\gen_ro:15:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(10) = LCELL(!\gen_ro:15:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(9),
	combout => \gen_ro:15:ro_inst|inv\(10));

-- Location: LCCOMB_X77_Y39_N20
\gen_ro:15:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(11) = LCELL(!\gen_ro:15:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:15:ro_inst|inv\(10),
	combout => \gen_ro:15:ro_inst|inv\(11));

-- Location: CLKCTRL_G6
\gen_ro:15:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:15:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:15:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y35_N12
\gen_ro:15:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:15:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:15:ro_inst|ro_counter\(0),
	combout => \gen_ro:15:ro_inst|ro_counter[0]~15_combout\);

-- Location: IOIBUF_X46_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X38_Y35_N13
\gen_ro:15:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:15:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:15:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:15:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X38_Y35_N0
\gen_ro:15:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:15:ro_inst|ro_counter\(0) & (\gen_ro:15:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:15:ro_inst|ro_counter\(0) & (\gen_ro:15:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:15:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:15:ro_inst|ro_counter\(0) & \gen_ro:15:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(0),
	datab => \gen_ro:15:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:15:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:15:ro_inst|ro_counter[1]~6\);

-- Location: FF_X38_Y35_N1
\gen_ro:15:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:15:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:15:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:15:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X38_Y35_N2
\gen_ro:15:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:15:ro_inst|ro_counter\(2) & (!\gen_ro:15:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:15:ro_inst|ro_counter\(2) & ((\gen_ro:15:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:15:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:15:ro_inst|ro_counter[1]~6\) # (!\gen_ro:15:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:15:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:15:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:15:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:15:ro_inst|ro_counter[2]~8\);

-- Location: FF_X38_Y35_N3
\gen_ro:15:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:15:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:15:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:15:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X38_Y35_N4
\gen_ro:15:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:15:ro_inst|ro_counter\(3) & (\gen_ro:15:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:15:ro_inst|ro_counter\(3) & (!\gen_ro:15:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:15:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:15:ro_inst|ro_counter\(3) & !\gen_ro:15:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:15:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:15:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:15:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:15:ro_inst|ro_counter[3]~10\);

-- Location: FF_X38_Y35_N5
\gen_ro:15:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:15:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:15:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:15:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X38_Y35_N6
\gen_ro:15:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:15:ro_inst|ro_counter\(4) & (!\gen_ro:15:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:15:ro_inst|ro_counter\(4) & ((\gen_ro:15:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:15:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:15:ro_inst|ro_counter[3]~10\) # (!\gen_ro:15:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:15:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:15:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:15:ro_inst|ro_counter[4]~12\);

-- Location: FF_X38_Y35_N7
\gen_ro:15:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:15:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:15:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:15:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X38_Y35_N8
\gen_ro:15:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:15:ro_inst|ro_counter[4]~12\ $ (!\gen_ro:15:ro_inst|ro_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|ro_counter\(5),
	cin => \gen_ro:15:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:15:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X38_Y35_N9
\gen_ro:15:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:15:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:15:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:15:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X40_Y23_N16
\gen_ro:13:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(0) = LCELL((\pulse_in~input_o\ & \gen_ro:13:ro_inst|inv\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_in~input_o\,
	datad => \gen_ro:13:ro_inst|inv\(11),
	combout => \gen_ro:13:ro_inst|inv\(0));

-- Location: LCCOMB_X39_Y20_N10
\gen_ro:13:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(1) = LCELL(!\gen_ro:13:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:13:ro_inst|inv\(0),
	combout => \gen_ro:13:ro_inst|inv\(1));

-- Location: LCCOMB_X39_Y20_N24
\gen_ro:13:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(2) = LCELL(!\gen_ro:13:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:13:ro_inst|inv\(1),
	combout => \gen_ro:13:ro_inst|inv\(2));

-- Location: LCCOMB_X39_Y20_N2
\gen_ro:13:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(3) = LCELL(!\gen_ro:13:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:13:ro_inst|inv\(2),
	combout => \gen_ro:13:ro_inst|inv\(3));

-- Location: LCCOMB_X39_Y20_N12
\gen_ro:13:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(4) = LCELL(!\gen_ro:13:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:13:ro_inst|inv\(3),
	combout => \gen_ro:13:ro_inst|inv\(4));

-- Location: LCCOMB_X39_Y20_N6
\gen_ro:13:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(5) = LCELL(!\gen_ro:13:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:13:ro_inst|inv\(4),
	combout => \gen_ro:13:ro_inst|inv\(5));

-- Location: LCCOMB_X39_Y20_N28
\gen_ro:13:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(6) = LCELL(!\gen_ro:13:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:13:ro_inst|inv\(5),
	combout => \gen_ro:13:ro_inst|inv\(6));

-- Location: LCCOMB_X39_Y20_N22
\gen_ro:13:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(7) = LCELL(!\gen_ro:13:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:13:ro_inst|inv\(6),
	combout => \gen_ro:13:ro_inst|inv\(7));

-- Location: LCCOMB_X39_Y20_N16
\gen_ro:13:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(8) = LCELL(!\gen_ro:13:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:13:ro_inst|inv\(7),
	combout => \gen_ro:13:ro_inst|inv\(8));

-- Location: LCCOMB_X39_Y20_N18
\gen_ro:13:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(9) = LCELL(!\gen_ro:13:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:13:ro_inst|inv\(8),
	combout => \gen_ro:13:ro_inst|inv\(9));

-- Location: LCCOMB_X39_Y20_N20
\gen_ro:13:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(10) = LCELL(!\gen_ro:13:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:13:ro_inst|inv\(9),
	combout => \gen_ro:13:ro_inst|inv\(10));

-- Location: LCCOMB_X43_Y2_N26
\gen_ro:13:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(11) = LCELL(!\gen_ro:13:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:13:ro_inst|inv\(10),
	combout => \gen_ro:13:ro_inst|inv\(11));

-- Location: CLKCTRL_G17
\gen_ro:13:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:13:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:13:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y37_N24
\gen_ro:13:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:13:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:13:ro_inst|ro_counter\(0),
	combout => \gen_ro:13:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X38_Y37_N25
\gen_ro:13:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:13:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:13:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:13:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X38_Y37_N10
\gen_ro:13:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:13:ro_inst|ro_counter\(1) & (\gen_ro:13:ro_inst|ro_counter\(0) $ (VCC))) # (!\gen_ro:13:ro_inst|ro_counter\(1) & (\gen_ro:13:ro_inst|ro_counter\(0) & VCC))
-- \gen_ro:13:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:13:ro_inst|ro_counter\(1) & \gen_ro:13:ro_inst|ro_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(1),
	datab => \gen_ro:13:ro_inst|ro_counter\(0),
	datad => VCC,
	combout => \gen_ro:13:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:13:ro_inst|ro_counter[1]~6\);

-- Location: FF_X38_Y37_N11
\gen_ro:13:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:13:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:13:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:13:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X38_Y37_N12
\gen_ro:13:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:13:ro_inst|ro_counter\(2) & (!\gen_ro:13:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:13:ro_inst|ro_counter\(2) & ((\gen_ro:13:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:13:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:13:ro_inst|ro_counter[1]~6\) # (!\gen_ro:13:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:13:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:13:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:13:ro_inst|ro_counter[2]~8\);

-- Location: FF_X38_Y37_N13
\gen_ro:13:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:13:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:13:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:13:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X38_Y37_N14
\gen_ro:13:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:13:ro_inst|ro_counter\(3) & (\gen_ro:13:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:13:ro_inst|ro_counter\(3) & (!\gen_ro:13:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:13:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:13:ro_inst|ro_counter\(3) & !\gen_ro:13:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:13:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:13:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:13:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:13:ro_inst|ro_counter[3]~10\);

-- Location: FF_X38_Y37_N15
\gen_ro:13:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:13:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:13:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:13:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X38_Y37_N16
\gen_ro:13:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:13:ro_inst|ro_counter\(4) & (!\gen_ro:13:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:13:ro_inst|ro_counter\(4) & ((\gen_ro:13:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:13:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:13:ro_inst|ro_counter[3]~10\) # (!\gen_ro:13:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:13:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:13:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:13:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:13:ro_inst|ro_counter[4]~12\);

-- Location: FF_X38_Y37_N17
\gen_ro:13:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:13:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:13:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:13:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X38_Y37_N18
\gen_ro:13:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:13:ro_inst|ro_counter\(5) $ (!\gen_ro:13:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(5),
	cin => \gen_ro:13:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:13:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X38_Y37_N19
\gen_ro:13:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:13:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:13:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:13:ro_inst|ro_counter\(5));

-- Location: IOIBUF_X34_Y39_N8
\challenge[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(10),
	o => \challenge[10]~input_o\);

-- Location: LCCOMB_X44_Y52_N0
\gen_ro:14:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(0) = LCELL((\gen_ro:14:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:14:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:14:ro_inst|inv\(0));

-- Location: LCCOMB_X44_Y53_N10
\gen_ro:14:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(1) = LCELL(!\gen_ro:14:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(0),
	combout => \gen_ro:14:ro_inst|inv\(1));

-- Location: LCCOMB_X44_Y53_N20
\gen_ro:14:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(2) = LCELL(!\gen_ro:14:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(1),
	combout => \gen_ro:14:ro_inst|inv\(2));

-- Location: LCCOMB_X44_Y53_N2
\gen_ro:14:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(3) = LCELL(!\gen_ro:14:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(2),
	combout => \gen_ro:14:ro_inst|inv\(3));

-- Location: LCCOMB_X44_Y53_N12
\gen_ro:14:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(4) = LCELL(!\gen_ro:14:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(3),
	combout => \gen_ro:14:ro_inst|inv\(4));

-- Location: LCCOMB_X44_Y53_N6
\gen_ro:14:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(5) = LCELL(!\gen_ro:14:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(4),
	combout => \gen_ro:14:ro_inst|inv\(5));

-- Location: LCCOMB_X44_Y53_N28
\gen_ro:14:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(6) = LCELL(!\gen_ro:14:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(5),
	combout => \gen_ro:14:ro_inst|inv\(6));

-- Location: LCCOMB_X44_Y53_N18
\gen_ro:14:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(7) = LCELL(!\gen_ro:14:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(6),
	combout => \gen_ro:14:ro_inst|inv\(7));

-- Location: LCCOMB_X44_Y53_N8
\gen_ro:14:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(8) = LCELL(!\gen_ro:14:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(7),
	combout => \gen_ro:14:ro_inst|inv\(8));

-- Location: LCCOMB_X45_Y53_N18
\gen_ro:14:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(9) = LCELL(!\gen_ro:14:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(8),
	combout => \gen_ro:14:ro_inst|inv\(9));

-- Location: LCCOMB_X45_Y53_N20
\gen_ro:14:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(10) = LCELL(!\gen_ro:14:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(9),
	combout => \gen_ro:14:ro_inst|inv\(10));

-- Location: LCCOMB_X45_Y53_N30
\gen_ro:14:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|inv\(11) = LCELL(!\gen_ro:14:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:14:ro_inst|inv\(10),
	combout => \gen_ro:14:ro_inst|inv\(11));

-- Location: CLKCTRL_G14
\gen_ro:14:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:14:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:14:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y35_N20
\gen_ro:14:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:14:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:14:ro_inst|ro_counter\(0),
	combout => \gen_ro:14:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X39_Y35_N21
\gen_ro:14:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:14:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:14:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:14:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X39_Y35_N10
\gen_ro:14:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:14:ro_inst|ro_counter\(1) & (\gen_ro:14:ro_inst|ro_counter\(0) $ (VCC))) # (!\gen_ro:14:ro_inst|ro_counter\(1) & (\gen_ro:14:ro_inst|ro_counter\(0) & VCC))
-- \gen_ro:14:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:14:ro_inst|ro_counter\(1) & \gen_ro:14:ro_inst|ro_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:14:ro_inst|ro_counter\(1),
	datab => \gen_ro:14:ro_inst|ro_counter\(0),
	datad => VCC,
	combout => \gen_ro:14:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:14:ro_inst|ro_counter[1]~6\);

-- Location: FF_X39_Y35_N11
\gen_ro:14:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:14:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:14:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:14:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X39_Y35_N12
\gen_ro:14:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:14:ro_inst|ro_counter\(2) & (!\gen_ro:14:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:14:ro_inst|ro_counter\(2) & ((\gen_ro:14:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:14:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:14:ro_inst|ro_counter[1]~6\) # (!\gen_ro:14:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:14:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:14:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:14:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:14:ro_inst|ro_counter[2]~8\);

-- Location: FF_X39_Y35_N13
\gen_ro:14:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:14:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:14:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:14:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X39_Y35_N14
\gen_ro:14:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:14:ro_inst|ro_counter\(3) & (\gen_ro:14:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:14:ro_inst|ro_counter\(3) & (!\gen_ro:14:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:14:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:14:ro_inst|ro_counter\(3) & !\gen_ro:14:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:14:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:14:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:14:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:14:ro_inst|ro_counter[3]~10\);

-- Location: FF_X39_Y35_N15
\gen_ro:14:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:14:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:14:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:14:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X39_Y35_N16
\gen_ro:14:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:14:ro_inst|ro_counter\(4) & (!\gen_ro:14:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:14:ro_inst|ro_counter\(4) & ((\gen_ro:14:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:14:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:14:ro_inst|ro_counter[3]~10\) # (!\gen_ro:14:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:14:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:14:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:14:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:14:ro_inst|ro_counter[4]~12\);

-- Location: FF_X39_Y35_N17
\gen_ro:14:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:14:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:14:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:14:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X39_Y35_N18
\gen_ro:14:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:14:ro_inst|ro_counter\(5) $ (!\gen_ro:14:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:14:ro_inst|ro_counter\(5),
	cin => \gen_ro:14:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:14:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X39_Y35_N19
\gen_ro:14:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:14:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:14:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:14:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X36_Y16_N26
\gen_ro:12:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(0) = LCELL((\pulse_in~input_o\ & \gen_ro:12:ro_inst|inv\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_in~input_o\,
	datad => \gen_ro:12:ro_inst|inv\(11),
	combout => \gen_ro:12:ro_inst|inv\(0));

-- Location: LCCOMB_X35_Y16_N12
\gen_ro:12:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(1) = LCELL(!\gen_ro:12:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(0),
	combout => \gen_ro:12:ro_inst|inv\(1));

-- Location: LCCOMB_X35_Y16_N10
\gen_ro:12:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(2) = LCELL(!\gen_ro:12:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(1),
	combout => \gen_ro:12:ro_inst|inv\(2));

-- Location: LCCOMB_X35_Y16_N28
\gen_ro:12:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(3) = LCELL(!\gen_ro:12:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(2),
	combout => \gen_ro:12:ro_inst|inv\(3));

-- Location: LCCOMB_X35_Y16_N2
\gen_ro:12:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(4) = LCELL(!\gen_ro:12:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(3),
	combout => \gen_ro:12:ro_inst|inv\(4));

-- Location: LCCOMB_X35_Y16_N16
\gen_ro:12:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(5) = LCELL(!\gen_ro:12:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(4),
	combout => \gen_ro:12:ro_inst|inv\(5));

-- Location: LCCOMB_X35_Y16_N6
\gen_ro:12:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(6) = LCELL(!\gen_ro:12:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(5),
	combout => \gen_ro:12:ro_inst|inv\(6));

-- Location: LCCOMB_X35_Y16_N20
\gen_ro:12:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(7) = LCELL(!\gen_ro:12:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(6),
	combout => \gen_ro:12:ro_inst|inv\(7));

-- Location: LCCOMB_X35_Y16_N18
\gen_ro:12:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(8) = LCELL(!\gen_ro:12:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(7),
	combout => \gen_ro:12:ro_inst|inv\(8));

-- Location: LCCOMB_X35_Y16_N8
\gen_ro:12:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(9) = LCELL(!\gen_ro:12:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(8),
	combout => \gen_ro:12:ro_inst|inv\(9));

-- Location: LCCOMB_X36_Y16_N4
\gen_ro:12:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(10) = LCELL(!\gen_ro:12:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(9),
	combout => \gen_ro:12:ro_inst|inv\(10));

-- Location: LCCOMB_X43_Y2_N30
\gen_ro:12:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(11) = LCELL(!\gen_ro:12:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|inv\(10),
	combout => \gen_ro:12:ro_inst|inv\(11));

-- Location: CLKCTRL_G18
\gen_ro:12:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:12:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:12:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y35_N22
\gen_ro:12:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:12:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:12:ro_inst|ro_counter\(0),
	combout => \gen_ro:12:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X39_Y35_N23
\gen_ro:12:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:12:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:12:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:12:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X39_Y35_N0
\gen_ro:12:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:12:ro_inst|ro_counter\(0) & (\gen_ro:12:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:12:ro_inst|ro_counter\(0) & (\gen_ro:12:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:12:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:12:ro_inst|ro_counter\(0) & \gen_ro:12:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:12:ro_inst|ro_counter\(0),
	datab => \gen_ro:12:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:12:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:12:ro_inst|ro_counter[1]~6\);

-- Location: FF_X39_Y35_N1
\gen_ro:12:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:12:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:12:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:12:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X39_Y35_N2
\gen_ro:12:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:12:ro_inst|ro_counter\(2) & (!\gen_ro:12:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:12:ro_inst|ro_counter\(2) & ((\gen_ro:12:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:12:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:12:ro_inst|ro_counter[1]~6\) # (!\gen_ro:12:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:12:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:12:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:12:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:12:ro_inst|ro_counter[2]~8\);

-- Location: FF_X39_Y35_N3
\gen_ro:12:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:12:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:12:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:12:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X39_Y35_N4
\gen_ro:12:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:12:ro_inst|ro_counter\(3) & (\gen_ro:12:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:12:ro_inst|ro_counter\(3) & (!\gen_ro:12:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:12:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:12:ro_inst|ro_counter\(3) & !\gen_ro:12:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:12:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:12:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:12:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:12:ro_inst|ro_counter[3]~10\);

-- Location: FF_X39_Y35_N5
\gen_ro:12:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:12:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:12:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:12:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X39_Y35_N6
\gen_ro:12:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:12:ro_inst|ro_counter\(4) & (!\gen_ro:12:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:12:ro_inst|ro_counter\(4) & ((\gen_ro:12:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:12:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:12:ro_inst|ro_counter[3]~10\) # (!\gen_ro:12:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:12:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:12:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:12:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:12:ro_inst|ro_counter[4]~12\);

-- Location: FF_X39_Y35_N7
\gen_ro:12:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:12:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:12:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:12:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X39_Y35_N8
\gen_ro:12:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:12:ro_inst|ro_counter[4]~12\ $ (!\gen_ro:12:ro_inst|ro_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:12:ro_inst|ro_counter\(5),
	cin => \gen_ro:12:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:12:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X39_Y35_N9
\gen_ro:12:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:12:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:12:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:12:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X37_Y35_N10
\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\challenge[10]~input_o\ & ((\challenge[11]~input_o\) # ((\gen_ro:14:ro_inst|ro_counter\(5))))) # (!\challenge[10]~input_o\ & (!\challenge[11]~input_o\ & ((\gen_ro:12:ro_inst|ro_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:14:ro_inst|ro_counter\(5),
	datad => \gen_ro:12:ro_inst|ro_counter\(5),
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X37_Y35_N24
\Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\challenge[11]~input_o\ & ((\Mux6~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(5))) # (!\Mux6~7_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(5)))))) # (!\challenge[11]~input_o\ & (((\Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[11]~input_o\,
	datab => \gen_ro:15:ro_inst|ro_counter\(5),
	datac => \gen_ro:13:ro_inst|ro_counter\(5),
	datad => \Mux6~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X58_Y39_N4
\gen_ro:10:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(0) = LCELL((\gen_ro:10:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:10:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:10:ro_inst|inv\(0));

-- Location: LCCOMB_X57_Y39_N10
\gen_ro:10:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(1) = LCELL(!\gen_ro:10:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(0),
	combout => \gen_ro:10:ro_inst|inv\(1));

-- Location: LCCOMB_X57_Y39_N24
\gen_ro:10:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(2) = LCELL(!\gen_ro:10:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(1),
	combout => \gen_ro:10:ro_inst|inv\(2));

-- Location: LCCOMB_X57_Y39_N2
\gen_ro:10:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(3) = LCELL(!\gen_ro:10:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(2),
	combout => \gen_ro:10:ro_inst|inv\(3));

-- Location: LCCOMB_X57_Y39_N12
\gen_ro:10:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(4) = LCELL(!\gen_ro:10:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(3),
	combout => \gen_ro:10:ro_inst|inv\(4));

-- Location: LCCOMB_X57_Y39_N6
\gen_ro:10:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(5) = LCELL(!\gen_ro:10:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(4),
	combout => \gen_ro:10:ro_inst|inv\(5));

-- Location: LCCOMB_X57_Y39_N16
\gen_ro:10:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(6) = LCELL(!\gen_ro:10:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(5),
	combout => \gen_ro:10:ro_inst|inv\(6));

-- Location: LCCOMB_X57_Y39_N18
\gen_ro:10:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(7) = LCELL(!\gen_ro:10:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(6),
	combout => \gen_ro:10:ro_inst|inv\(7));

-- Location: LCCOMB_X57_Y39_N28
\gen_ro:10:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(8) = LCELL(!\gen_ro:10:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(7),
	combout => \gen_ro:10:ro_inst|inv\(8));

-- Location: LCCOMB_X57_Y39_N14
\gen_ro:10:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(9) = LCELL(!\gen_ro:10:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(8),
	combout => \gen_ro:10:ro_inst|inv\(9));

-- Location: LCCOMB_X58_Y39_N30
\gen_ro:10:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(10) = LCELL(!\gen_ro:10:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(9),
	combout => \gen_ro:10:ro_inst|inv\(10));

-- Location: LCCOMB_X77_Y39_N26
\gen_ro:10:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(11) = LCELL(!\gen_ro:10:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|inv\(10),
	combout => \gen_ro:10:ro_inst|inv\(11));

-- Location: CLKCTRL_G5
\gen_ro:10:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:10:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:10:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y36_N28
\gen_ro:10:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:10:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:10:ro_inst|ro_counter\(0),
	combout => \gen_ro:10:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X36_Y36_N29
\gen_ro:10:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:10:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:10:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:10:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X36_Y36_N4
\gen_ro:10:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:10:ro_inst|ro_counter\(0) & (\gen_ro:10:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:10:ro_inst|ro_counter\(0) & (\gen_ro:10:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:10:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:10:ro_inst|ro_counter\(0) & \gen_ro:10:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(0),
	datab => \gen_ro:10:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:10:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:10:ro_inst|ro_counter[1]~6\);

-- Location: FF_X36_Y36_N5
\gen_ro:10:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:10:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:10:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:10:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X36_Y36_N6
\gen_ro:10:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:10:ro_inst|ro_counter\(2) & (!\gen_ro:10:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:10:ro_inst|ro_counter\(2) & ((\gen_ro:10:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:10:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:10:ro_inst|ro_counter[1]~6\) # (!\gen_ro:10:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:10:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:10:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:10:ro_inst|ro_counter[2]~8\);

-- Location: FF_X36_Y36_N7
\gen_ro:10:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:10:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:10:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:10:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X36_Y36_N8
\gen_ro:10:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:10:ro_inst|ro_counter\(3) & (\gen_ro:10:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:10:ro_inst|ro_counter\(3) & (!\gen_ro:10:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:10:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:10:ro_inst|ro_counter\(3) & !\gen_ro:10:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:10:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:10:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:10:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:10:ro_inst|ro_counter[3]~10\);

-- Location: FF_X36_Y36_N9
\gen_ro:10:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:10:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:10:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:10:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X36_Y36_N10
\gen_ro:10:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:10:ro_inst|ro_counter\(4) & (!\gen_ro:10:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:10:ro_inst|ro_counter\(4) & ((\gen_ro:10:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:10:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:10:ro_inst|ro_counter[3]~10\) # (!\gen_ro:10:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:10:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:10:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:10:ro_inst|ro_counter[4]~12\);

-- Location: FF_X36_Y36_N11
\gen_ro:10:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:10:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:10:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:10:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X36_Y36_N12
\gen_ro:10:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:10:ro_inst|ro_counter\(5) $ (!\gen_ro:10:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:10:ro_inst|ro_counter\(5),
	cin => \gen_ro:10:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:10:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X36_Y36_N13
\gen_ro:10:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:10:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:10:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:10:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X44_Y52_N24
\gen_ro:8:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(0) = LCELL((\gen_ro:8:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:8:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:8:ro_inst|inv\(0));

-- Location: LCCOMB_X44_Y52_N16
\gen_ro:8:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(1) = LCELL(!\gen_ro:8:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(0),
	combout => \gen_ro:8:ro_inst|inv\(1));

-- Location: LCCOMB_X44_Y52_N6
\gen_ro:8:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(2) = LCELL(!\gen_ro:8:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(1),
	combout => \gen_ro:8:ro_inst|inv\(2));

-- Location: LCCOMB_X44_Y52_N20
\gen_ro:8:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(3) = LCELL(!\gen_ro:8:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(2),
	combout => \gen_ro:8:ro_inst|inv\(3));

-- Location: LCCOMB_X44_Y52_N12
\gen_ro:8:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(4) = LCELL(!\gen_ro:8:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(3),
	combout => \gen_ro:8:ro_inst|inv\(4));

-- Location: LCCOMB_X44_Y52_N10
\gen_ro:8:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(5) = LCELL(!\gen_ro:8:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(4),
	combout => \gen_ro:8:ro_inst|inv\(5));

-- Location: LCCOMB_X44_Y52_N22
\gen_ro:8:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(6) = LCELL(!\gen_ro:8:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(5),
	combout => \gen_ro:8:ro_inst|inv\(6));

-- Location: LCCOMB_X44_Y49_N28
\gen_ro:8:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(7) = LCELL(!\gen_ro:8:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(6),
	combout => \gen_ro:8:ro_inst|inv\(7));

-- Location: LCCOMB_X44_Y49_N18
\gen_ro:8:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(8) = LCELL(!\gen_ro:8:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(7),
	combout => \gen_ro:8:ro_inst|inv\(8));

-- Location: LCCOMB_X44_Y49_N24
\gen_ro:8:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(9) = LCELL(!\gen_ro:8:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(8),
	combout => \gen_ro:8:ro_inst|inv\(9));

-- Location: LCCOMB_X44_Y52_N18
\gen_ro:8:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(10) = LCELL(!\gen_ro:8:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(9),
	combout => \gen_ro:8:ro_inst|inv\(10));

-- Location: LCCOMB_X44_Y52_N26
\gen_ro:8:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|inv\(11) = LCELL(!\gen_ro:8:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:8:ro_inst|inv\(10),
	combout => \gen_ro:8:ro_inst|inv\(11));

-- Location: CLKCTRL_G13
\gen_ro:8:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:8:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:8:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y34_N14
\gen_ro:8:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:8:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:8:ro_inst|ro_counter\(0),
	combout => \gen_ro:8:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X38_Y34_N15
\gen_ro:8:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:8:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:8:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:8:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X38_Y34_N22
\gen_ro:8:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:8:ro_inst|ro_counter\(1) & (\gen_ro:8:ro_inst|ro_counter\(0) $ (VCC))) # (!\gen_ro:8:ro_inst|ro_counter\(1) & (\gen_ro:8:ro_inst|ro_counter\(0) & VCC))
-- \gen_ro:8:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:8:ro_inst|ro_counter\(1) & \gen_ro:8:ro_inst|ro_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:8:ro_inst|ro_counter\(1),
	datab => \gen_ro:8:ro_inst|ro_counter\(0),
	datad => VCC,
	combout => \gen_ro:8:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:8:ro_inst|ro_counter[1]~6\);

-- Location: FF_X38_Y34_N23
\gen_ro:8:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:8:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:8:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:8:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X38_Y34_N24
\gen_ro:8:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:8:ro_inst|ro_counter\(2) & (!\gen_ro:8:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:8:ro_inst|ro_counter\(2) & ((\gen_ro:8:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:8:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:8:ro_inst|ro_counter[1]~6\) # (!\gen_ro:8:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:8:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:8:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:8:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:8:ro_inst|ro_counter[2]~8\);

-- Location: FF_X38_Y34_N25
\gen_ro:8:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:8:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:8:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:8:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X38_Y34_N26
\gen_ro:8:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:8:ro_inst|ro_counter\(3) & (\gen_ro:8:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:8:ro_inst|ro_counter\(3) & (!\gen_ro:8:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:8:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:8:ro_inst|ro_counter\(3) & !\gen_ro:8:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:8:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:8:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:8:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:8:ro_inst|ro_counter[3]~10\);

-- Location: FF_X38_Y34_N27
\gen_ro:8:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:8:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:8:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:8:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X38_Y34_N28
\gen_ro:8:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:8:ro_inst|ro_counter\(4) & (!\gen_ro:8:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:8:ro_inst|ro_counter\(4) & ((\gen_ro:8:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:8:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:8:ro_inst|ro_counter[3]~10\) # (!\gen_ro:8:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:8:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:8:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:8:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:8:ro_inst|ro_counter[4]~12\);

-- Location: FF_X38_Y34_N29
\gen_ro:8:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:8:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:8:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:8:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X38_Y34_N30
\gen_ro:8:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:8:ro_inst|ro_counter\(5) $ (!\gen_ro:8:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:8:ro_inst|ro_counter\(5),
	cin => \gen_ro:8:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:8:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X38_Y34_N31
\gen_ro:8:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:8:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:8:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:8:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X14_Y37_N20
\gen_ro:9:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(0) = LCELL((\gen_ro:9:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:9:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:9:ro_inst|inv\(0));

-- Location: LCCOMB_X14_Y37_N12
\gen_ro:9:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(1) = LCELL(!\gen_ro:9:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(0),
	combout => \gen_ro:9:ro_inst|inv\(1));

-- Location: LCCOMB_X14_Y37_N2
\gen_ro:9:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(2) = LCELL(!\gen_ro:9:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(1),
	combout => \gen_ro:9:ro_inst|inv\(2));

-- Location: LCCOMB_X14_Y37_N24
\gen_ro:9:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(3) = LCELL(!\gen_ro:9:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(2),
	combout => \gen_ro:9:ro_inst|inv\(3));

-- Location: LCCOMB_X14_Y37_N10
\gen_ro:9:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(4) = LCELL(!\gen_ro:9:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(3),
	combout => \gen_ro:9:ro_inst|inv\(4));

-- Location: LCCOMB_X14_Y37_N16
\gen_ro:9:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(5) = LCELL(!\gen_ro:9:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(4),
	combout => \gen_ro:9:ro_inst|inv\(5));

-- Location: LCCOMB_X14_Y37_N18
\gen_ro:9:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(6) = LCELL(!\gen_ro:9:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(5),
	combout => \gen_ro:9:ro_inst|inv\(6));

-- Location: LCCOMB_X14_Y37_N28
\gen_ro:9:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(7) = LCELL(!\gen_ro:9:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(6),
	combout => \gen_ro:9:ro_inst|inv\(7));

-- Location: LCCOMB_X14_Y37_N22
\gen_ro:9:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(8) = LCELL(!\gen_ro:9:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(7),
	combout => \gen_ro:9:ro_inst|inv\(8));

-- Location: LCCOMB_X10_Y37_N24
\gen_ro:9:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(9) = LCELL(!\gen_ro:9:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(8),
	combout => \gen_ro:9:ro_inst|inv\(9));

-- Location: LCCOMB_X9_Y37_N0
\gen_ro:9:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(10) = LCELL(!\gen_ro:9:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(9),
	combout => \gen_ro:9:ro_inst|inv\(10));

-- Location: LCCOMB_X1_Y38_N30
\gen_ro:9:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|inv\(11) = LCELL(!\gen_ro:9:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:9:ro_inst|inv\(10),
	combout => \gen_ro:9:ro_inst|inv\(11));

-- Location: CLKCTRL_G2
\gen_ro:9:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:9:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:9:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y36_N26
\gen_ro:9:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:9:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:9:ro_inst|ro_counter\(0),
	combout => \gen_ro:9:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X38_Y36_N27
\gen_ro:9:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:9:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:9:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:9:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X38_Y36_N2
\gen_ro:9:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:9:ro_inst|ro_counter\(0) & (\gen_ro:9:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:9:ro_inst|ro_counter\(0) & (\gen_ro:9:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:9:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:9:ro_inst|ro_counter\(0) & \gen_ro:9:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:9:ro_inst|ro_counter\(0),
	datab => \gen_ro:9:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:9:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:9:ro_inst|ro_counter[1]~6\);

-- Location: FF_X38_Y36_N3
\gen_ro:9:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:9:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:9:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:9:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X38_Y36_N4
\gen_ro:9:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:9:ro_inst|ro_counter\(2) & (!\gen_ro:9:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:9:ro_inst|ro_counter\(2) & ((\gen_ro:9:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:9:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:9:ro_inst|ro_counter[1]~6\) # (!\gen_ro:9:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:9:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:9:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:9:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:9:ro_inst|ro_counter[2]~8\);

-- Location: FF_X38_Y36_N5
\gen_ro:9:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:9:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:9:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:9:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X38_Y36_N6
\gen_ro:9:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:9:ro_inst|ro_counter\(3) & (\gen_ro:9:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:9:ro_inst|ro_counter\(3) & (!\gen_ro:9:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:9:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:9:ro_inst|ro_counter\(3) & !\gen_ro:9:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:9:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:9:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:9:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:9:ro_inst|ro_counter[3]~10\);

-- Location: FF_X38_Y36_N7
\gen_ro:9:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:9:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:9:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:9:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X38_Y36_N8
\gen_ro:9:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:9:ro_inst|ro_counter\(4) & (!\gen_ro:9:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:9:ro_inst|ro_counter\(4) & ((\gen_ro:9:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:9:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:9:ro_inst|ro_counter[3]~10\) # (!\gen_ro:9:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:9:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:9:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:9:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:9:ro_inst|ro_counter[4]~12\);

-- Location: FF_X38_Y36_N9
\gen_ro:9:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:9:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:9:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:9:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X38_Y36_N10
\gen_ro:9:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:9:ro_inst|ro_counter\(5) $ (!\gen_ro:9:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:9:ro_inst|ro_counter\(5),
	cin => \gen_ro:9:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:9:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X38_Y36_N11
\gen_ro:9:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:9:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:9:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:9:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X37_Y35_N8
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\challenge[10]~input_o\ & (((\challenge[11]~input_o\)))) # (!\challenge[10]~input_o\ & ((\challenge[11]~input_o\ & ((\gen_ro:9:ro_inst|ro_counter\(5)))) # (!\challenge[11]~input_o\ & (\gen_ro:8:ro_inst|ro_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \gen_ro:8:ro_inst|ro_counter\(5),
	datac => \challenge[11]~input_o\,
	datad => \gen_ro:9:ro_inst|ro_counter\(5),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X15_Y38_N24
\gen_ro:11:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(0) = LCELL((\gen_ro:11:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:11:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:11:ro_inst|inv\(0));

-- Location: LCCOMB_X16_Y38_N20
\gen_ro:11:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(1) = LCELL(!\gen_ro:11:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(0),
	combout => \gen_ro:11:ro_inst|inv\(1));

-- Location: LCCOMB_X16_Y38_N6
\gen_ro:11:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(2) = LCELL(!\gen_ro:11:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(1),
	combout => \gen_ro:11:ro_inst|inv\(2));

-- Location: LCCOMB_X16_Y38_N12
\gen_ro:11:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(3) = LCELL(!\gen_ro:11:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(2),
	combout => \gen_ro:11:ro_inst|inv\(3));

-- Location: LCCOMB_X16_Y38_N2
\gen_ro:11:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(4) = LCELL(!\gen_ro:11:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(3),
	combout => \gen_ro:11:ro_inst|inv\(4));

-- Location: LCCOMB_X16_Y38_N24
\gen_ro:11:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(5) = LCELL(!\gen_ro:11:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(4),
	combout => \gen_ro:11:ro_inst|inv\(5));

-- Location: LCCOMB_X16_Y38_N10
\gen_ro:11:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(6) = LCELL(!\gen_ro:11:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(5),
	combout => \gen_ro:11:ro_inst|inv\(6));

-- Location: LCCOMB_X16_Y38_N28
\gen_ro:11:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(7) = LCELL(!\gen_ro:11:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(6),
	combout => \gen_ro:11:ro_inst|inv\(7));

-- Location: LCCOMB_X16_Y38_N18
\gen_ro:11:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(8) = LCELL(!\gen_ro:11:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(7),
	combout => \gen_ro:11:ro_inst|inv\(8));

-- Location: LCCOMB_X16_Y38_N4
\gen_ro:11:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(9) = LCELL(!\gen_ro:11:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(8),
	combout => \gen_ro:11:ro_inst|inv\(9));

-- Location: LCCOMB_X4_Y38_N12
\gen_ro:11:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(10) = LCELL(!\gen_ro:11:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(9),
	combout => \gen_ro:11:ro_inst|inv\(10));

-- Location: LCCOMB_X1_Y38_N10
\gen_ro:11:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(11) = LCELL(!\gen_ro:11:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|inv\(10),
	combout => \gen_ro:11:ro_inst|inv\(11));

-- Location: CLKCTRL_G1
\gen_ro:11:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:11:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:11:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y38_N18
\gen_ro:11:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:11:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:11:ro_inst|ro_counter\(0),
	combout => \gen_ro:11:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X37_Y38_N19
\gen_ro:11:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:11:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:11:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:11:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X37_Y38_N6
\gen_ro:11:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:11:ro_inst|ro_counter\(1) & (\gen_ro:11:ro_inst|ro_counter\(0) $ (VCC))) # (!\gen_ro:11:ro_inst|ro_counter\(1) & (\gen_ro:11:ro_inst|ro_counter\(0) & VCC))
-- \gen_ro:11:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:11:ro_inst|ro_counter\(1) & \gen_ro:11:ro_inst|ro_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:11:ro_inst|ro_counter\(1),
	datab => \gen_ro:11:ro_inst|ro_counter\(0),
	datad => VCC,
	combout => \gen_ro:11:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:11:ro_inst|ro_counter[1]~6\);

-- Location: FF_X37_Y38_N7
\gen_ro:11:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:11:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:11:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:11:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X37_Y38_N8
\gen_ro:11:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:11:ro_inst|ro_counter\(2) & (!\gen_ro:11:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:11:ro_inst|ro_counter\(2) & ((\gen_ro:11:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:11:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:11:ro_inst|ro_counter[1]~6\) # (!\gen_ro:11:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:11:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:11:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:11:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:11:ro_inst|ro_counter[2]~8\);

-- Location: FF_X37_Y38_N9
\gen_ro:11:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:11:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:11:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:11:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X37_Y38_N10
\gen_ro:11:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:11:ro_inst|ro_counter\(3) & (\gen_ro:11:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:11:ro_inst|ro_counter\(3) & (!\gen_ro:11:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:11:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:11:ro_inst|ro_counter\(3) & !\gen_ro:11:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:11:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:11:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:11:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:11:ro_inst|ro_counter[3]~10\);

-- Location: FF_X37_Y38_N11
\gen_ro:11:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:11:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:11:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:11:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X37_Y38_N12
\gen_ro:11:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:11:ro_inst|ro_counter\(4) & (!\gen_ro:11:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:11:ro_inst|ro_counter\(4) & ((\gen_ro:11:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:11:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:11:ro_inst|ro_counter[3]~10\) # (!\gen_ro:11:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:11:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:11:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:11:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:11:ro_inst|ro_counter[4]~12\);

-- Location: FF_X37_Y38_N13
\gen_ro:11:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:11:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:11:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:11:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X37_Y38_N14
\gen_ro:11:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:11:ro_inst|ro_counter[4]~12\ $ (!\gen_ro:11:ro_inst|ro_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:11:ro_inst|ro_counter\(5),
	cin => \gen_ro:11:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:11:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X37_Y38_N15
\gen_ro:11:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:11:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:11:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:11:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X37_Y35_N26
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\challenge[10]~input_o\ & ((\Mux6~0_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(5)))) # (!\Mux6~0_combout\ & (\gen_ro:10:ro_inst|ro_counter\(5))))) # (!\challenge[10]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \gen_ro:10:ro_inst|ro_counter\(5),
	datac => \Mux6~0_combout\,
	datad => \gen_ro:11:ro_inst|ro_counter\(5),
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X31_Y39_N8
\challenge[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(9),
	o => \challenge[9]~input_o\);

-- Location: LCCOMB_X59_Y39_N16
\gen_ro:5:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(0) = LCELL((\gen_ro:5:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:5:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:5:ro_inst|inv\(0));

-- Location: LCCOMB_X55_Y39_N16
\gen_ro:5:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(1) = LCELL(!\gen_ro:5:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(0),
	combout => \gen_ro:5:ro_inst|inv\(1));

-- Location: LCCOMB_X55_Y39_N20
\gen_ro:5:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(2) = LCELL(!\gen_ro:5:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(1),
	combout => \gen_ro:5:ro_inst|inv\(2));

-- Location: LCCOMB_X55_Y39_N0
\gen_ro:5:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(3) = LCELL(!\gen_ro:5:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(2),
	combout => \gen_ro:5:ro_inst|inv\(3));

-- Location: LCCOMB_X55_Y39_N12
\gen_ro:5:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(4) = LCELL(!\gen_ro:5:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(3),
	combout => \gen_ro:5:ro_inst|inv\(4));

-- Location: LCCOMB_X55_Y39_N28
\gen_ro:5:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(5) = LCELL(!\gen_ro:5:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(4),
	combout => \gen_ro:5:ro_inst|inv\(5));

-- Location: LCCOMB_X55_Y39_N24
\gen_ro:5:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(6) = LCELL(!\gen_ro:5:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(5),
	combout => \gen_ro:5:ro_inst|inv\(6));

-- Location: LCCOMB_X55_Y39_N4
\gen_ro:5:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(7) = LCELL(!\gen_ro:5:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(6),
	combout => \gen_ro:5:ro_inst|inv\(7));

-- Location: LCCOMB_X55_Y39_N26
\gen_ro:5:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(8) = LCELL(!\gen_ro:5:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:5:ro_inst|inv\(7),
	combout => \gen_ro:5:ro_inst|inv\(8));

-- Location: LCCOMB_X55_Y39_N8
\gen_ro:5:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(9) = LCELL(!\gen_ro:5:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:5:ro_inst|inv\(8),
	combout => \gen_ro:5:ro_inst|inv\(9));

-- Location: LCCOMB_X56_Y39_N12
\gen_ro:5:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(10) = LCELL(!\gen_ro:5:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(9),
	combout => \gen_ro:5:ro_inst|inv\(10));

-- Location: LCCOMB_X77_Y39_N16
\gen_ro:5:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(11) = LCELL(!\gen_ro:5:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(10),
	combout => \gen_ro:5:ro_inst|inv\(11));

-- Location: CLKCTRL_G7
\gen_ro:5:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:5:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:5:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y37_N20
\gen_ro:5:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:5:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:5:ro_inst|ro_counter\(0),
	combout => \gen_ro:5:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X38_Y37_N21
\gen_ro:5:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:5:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:5:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:5:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X38_Y37_N0
\gen_ro:5:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:5:ro_inst|ro_counter\(0) & (\gen_ro:5:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:5:ro_inst|ro_counter\(0) & (\gen_ro:5:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:5:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:5:ro_inst|ro_counter\(0) & \gen_ro:5:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:5:ro_inst|ro_counter\(0),
	datab => \gen_ro:5:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:5:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:5:ro_inst|ro_counter[1]~6\);

-- Location: FF_X38_Y37_N1
\gen_ro:5:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:5:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:5:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:5:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X38_Y37_N2
\gen_ro:5:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:5:ro_inst|ro_counter\(2) & (!\gen_ro:5:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:5:ro_inst|ro_counter\(2) & ((\gen_ro:5:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:5:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:5:ro_inst|ro_counter[1]~6\) # (!\gen_ro:5:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:5:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:5:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:5:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:5:ro_inst|ro_counter[2]~8\);

-- Location: FF_X38_Y37_N3
\gen_ro:5:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:5:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:5:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:5:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X38_Y37_N4
\gen_ro:5:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:5:ro_inst|ro_counter\(3) & (\gen_ro:5:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:5:ro_inst|ro_counter\(3) & (!\gen_ro:5:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:5:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:5:ro_inst|ro_counter\(3) & !\gen_ro:5:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:5:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:5:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:5:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:5:ro_inst|ro_counter[3]~10\);

-- Location: FF_X38_Y37_N5
\gen_ro:5:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:5:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:5:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:5:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X38_Y37_N6
\gen_ro:5:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:5:ro_inst|ro_counter\(4) & (!\gen_ro:5:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:5:ro_inst|ro_counter\(4) & ((\gen_ro:5:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:5:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:5:ro_inst|ro_counter[3]~10\) # (!\gen_ro:5:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:5:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:5:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:5:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:5:ro_inst|ro_counter[4]~12\);

-- Location: FF_X38_Y37_N7
\gen_ro:5:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:5:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:5:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:5:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X38_Y37_N8
\gen_ro:5:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:5:ro_inst|ro_counter[4]~12\ $ (!\gen_ro:5:ro_inst|ro_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|ro_counter\(5),
	cin => \gen_ro:5:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:5:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X38_Y37_N9
\gen_ro:5:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:5:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:5:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:5:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X12_Y38_N24
\gen_ro:7:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(0) = LCELL((\gen_ro:7:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:7:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:7:ro_inst|inv\(0));

-- Location: LCCOMB_X13_Y38_N6
\gen_ro:7:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(1) = LCELL(!\gen_ro:7:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|inv\(0),
	combout => \gen_ro:7:ro_inst|inv\(1));

-- Location: LCCOMB_X13_Y38_N28
\gen_ro:7:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(2) = LCELL(!\gen_ro:7:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|inv\(1),
	combout => \gen_ro:7:ro_inst|inv\(2));

-- Location: LCCOMB_X13_Y38_N2
\gen_ro:7:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(3) = LCELL(!\gen_ro:7:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|inv\(2),
	combout => \gen_ro:7:ro_inst|inv\(3));

-- Location: LCCOMB_X13_Y38_N24
\gen_ro:7:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(4) = LCELL(!\gen_ro:7:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|inv\(3),
	combout => \gen_ro:7:ro_inst|inv\(4));

-- Location: LCCOMB_X13_Y38_N22
\gen_ro:7:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(5) = LCELL(!\gen_ro:7:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|inv\(4),
	combout => \gen_ro:7:ro_inst|inv\(5));

-- Location: LCCOMB_X13_Y38_N12
\gen_ro:7:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(6) = LCELL(!\gen_ro:7:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:7:ro_inst|inv\(5),
	combout => \gen_ro:7:ro_inst|inv\(6));

-- Location: LCCOMB_X13_Y38_N10
\gen_ro:7:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(7) = LCELL(!\gen_ro:7:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|inv\(6),
	combout => \gen_ro:7:ro_inst|inv\(7));

-- Location: LCCOMB_X13_Y38_N20
\gen_ro:7:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(8) = LCELL(!\gen_ro:7:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|inv\(7),
	combout => \gen_ro:7:ro_inst|inv\(8));

-- Location: LCCOMB_X13_Y38_N18
\gen_ro:7:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(9) = LCELL(!\gen_ro:7:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|inv\(8),
	combout => \gen_ro:7:ro_inst|inv\(9));

-- Location: LCCOMB_X13_Y38_N4
\gen_ro:7:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(10) = LCELL(!\gen_ro:7:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|inv\(9),
	combout => \gen_ro:7:ro_inst|inv\(10));

-- Location: LCCOMB_X1_Y38_N28
\gen_ro:7:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(11) = LCELL(!\gen_ro:7:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:7:ro_inst|inv\(10),
	combout => \gen_ro:7:ro_inst|inv\(11));

-- Location: CLKCTRL_G0
\gen_ro:7:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:7:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:7:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y37_N10
\gen_ro:7:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:7:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:7:ro_inst|ro_counter\(0),
	combout => \gen_ro:7:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X39_Y37_N11
\gen_ro:7:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:7:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:7:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:7:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X39_Y37_N0
\gen_ro:7:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:7:ro_inst|ro_counter\(0) & (\gen_ro:7:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:7:ro_inst|ro_counter\(0) & (\gen_ro:7:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:7:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:7:ro_inst|ro_counter\(0) & \gen_ro:7:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:7:ro_inst|ro_counter\(0),
	datab => \gen_ro:7:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:7:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:7:ro_inst|ro_counter[1]~6\);

-- Location: FF_X39_Y37_N1
\gen_ro:7:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:7:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:7:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:7:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X39_Y37_N2
\gen_ro:7:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:7:ro_inst|ro_counter\(2) & (!\gen_ro:7:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:7:ro_inst|ro_counter\(2) & ((\gen_ro:7:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:7:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:7:ro_inst|ro_counter[1]~6\) # (!\gen_ro:7:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:7:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:7:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:7:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:7:ro_inst|ro_counter[2]~8\);

-- Location: FF_X39_Y37_N3
\gen_ro:7:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:7:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:7:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:7:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X39_Y37_N4
\gen_ro:7:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:7:ro_inst|ro_counter\(3) & (\gen_ro:7:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:7:ro_inst|ro_counter\(3) & (!\gen_ro:7:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:7:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:7:ro_inst|ro_counter\(3) & !\gen_ro:7:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:7:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:7:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:7:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:7:ro_inst|ro_counter[3]~10\);

-- Location: FF_X39_Y37_N5
\gen_ro:7:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:7:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:7:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:7:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X39_Y37_N6
\gen_ro:7:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:7:ro_inst|ro_counter\(4) & (!\gen_ro:7:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:7:ro_inst|ro_counter\(4) & ((\gen_ro:7:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:7:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:7:ro_inst|ro_counter[3]~10\) # (!\gen_ro:7:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:7:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:7:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:7:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:7:ro_inst|ro_counter[4]~12\);

-- Location: FF_X39_Y37_N7
\gen_ro:7:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:7:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:7:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:7:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X39_Y37_N8
\gen_ro:7:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:7:ro_inst|ro_counter[4]~12\ $ (!\gen_ro:7:ro_inst|ro_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|ro_counter\(5),
	cin => \gen_ro:7:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:7:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X39_Y37_N9
\gen_ro:7:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:7:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:7:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:7:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X44_Y47_N12
\gen_ro:4:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(0) = LCELL((\gen_ro:4:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:4:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:4:ro_inst|inv\(0));

-- Location: LCCOMB_X44_Y47_N16
\gen_ro:4:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(1) = LCELL(!\gen_ro:4:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(0),
	combout => \gen_ro:4:ro_inst|inv\(1));

-- Location: LCCOMB_X44_Y47_N10
\gen_ro:4:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(2) = LCELL(!\gen_ro:4:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(1),
	combout => \gen_ro:4:ro_inst|inv\(2));

-- Location: LCCOMB_X44_Y47_N20
\gen_ro:4:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(3) = LCELL(!\gen_ro:4:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(2),
	combout => \gen_ro:4:ro_inst|inv\(3));

-- Location: LCCOMB_X44_Y47_N2
\gen_ro:4:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(4) = LCELL(!\gen_ro:4:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(3),
	combout => \gen_ro:4:ro_inst|inv\(4));

-- Location: LCCOMB_X44_Y47_N24
\gen_ro:4:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(5) = LCELL(!\gen_ro:4:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(4),
	combout => \gen_ro:4:ro_inst|inv\(5));

-- Location: LCCOMB_X44_Y47_N6
\gen_ro:4:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(6) = LCELL(!\gen_ro:4:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(5),
	combout => \gen_ro:4:ro_inst|inv\(6));

-- Location: LCCOMB_X44_Y47_N28
\gen_ro:4:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(7) = LCELL(!\gen_ro:4:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(6),
	combout => \gen_ro:4:ro_inst|inv\(7));

-- Location: LCCOMB_X44_Y47_N18
\gen_ro:4:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(8) = LCELL(!\gen_ro:4:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(7),
	combout => \gen_ro:4:ro_inst|inv\(8));

-- Location: LCCOMB_X44_Y47_N8
\gen_ro:4:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(9) = LCELL(!\gen_ro:4:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(8),
	combout => \gen_ro:4:ro_inst|inv\(9));

-- Location: LCCOMB_X45_Y47_N16
\gen_ro:4:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(10) = LCELL(!\gen_ro:4:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(9),
	combout => \gen_ro:4:ro_inst|inv\(10));

-- Location: LCCOMB_X45_Y51_N12
\gen_ro:4:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|inv\(11) = LCELL(!\gen_ro:4:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|inv\(10),
	combout => \gen_ro:4:ro_inst|inv\(11));

-- Location: CLKCTRL_G10
\gen_ro:4:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:4:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:4:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y37_N24
\gen_ro:4:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:4:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:4:ro_inst|ro_counter\(0),
	combout => \gen_ro:4:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X39_Y37_N25
\gen_ro:4:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:4:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:4:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:4:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X39_Y37_N12
\gen_ro:4:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:4:ro_inst|ro_counter\(1) & (\gen_ro:4:ro_inst|ro_counter\(0) $ (VCC))) # (!\gen_ro:4:ro_inst|ro_counter\(1) & (\gen_ro:4:ro_inst|ro_counter\(0) & VCC))
-- \gen_ro:4:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:4:ro_inst|ro_counter\(1) & \gen_ro:4:ro_inst|ro_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:4:ro_inst|ro_counter\(1),
	datab => \gen_ro:4:ro_inst|ro_counter\(0),
	datad => VCC,
	combout => \gen_ro:4:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:4:ro_inst|ro_counter[1]~6\);

-- Location: FF_X39_Y37_N13
\gen_ro:4:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:4:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:4:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:4:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X39_Y37_N14
\gen_ro:4:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:4:ro_inst|ro_counter\(2) & (!\gen_ro:4:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:4:ro_inst|ro_counter\(2) & ((\gen_ro:4:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:4:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:4:ro_inst|ro_counter[1]~6\) # (!\gen_ro:4:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:4:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:4:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:4:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:4:ro_inst|ro_counter[2]~8\);

-- Location: FF_X39_Y37_N15
\gen_ro:4:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:4:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:4:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:4:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X39_Y37_N16
\gen_ro:4:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:4:ro_inst|ro_counter\(3) & (\gen_ro:4:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:4:ro_inst|ro_counter\(3) & (!\gen_ro:4:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:4:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:4:ro_inst|ro_counter\(3) & !\gen_ro:4:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:4:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:4:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:4:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:4:ro_inst|ro_counter[3]~10\);

-- Location: FF_X39_Y37_N17
\gen_ro:4:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:4:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:4:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:4:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X39_Y37_N18
\gen_ro:4:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:4:ro_inst|ro_counter\(4) & (!\gen_ro:4:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:4:ro_inst|ro_counter\(4) & ((\gen_ro:4:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:4:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:4:ro_inst|ro_counter[3]~10\) # (!\gen_ro:4:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:4:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:4:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:4:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:4:ro_inst|ro_counter[4]~12\);

-- Location: FF_X39_Y37_N19
\gen_ro:4:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:4:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:4:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:4:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X39_Y37_N20
\gen_ro:4:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:4:ro_inst|ro_counter\(5) $ (!\gen_ro:4:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:4:ro_inst|ro_counter\(5),
	cin => \gen_ro:4:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:4:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X39_Y37_N21
\gen_ro:4:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:4:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:4:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:4:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X59_Y39_N10
\gen_ro:6:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(0) = LCELL((\gen_ro:6:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:6:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:6:ro_inst|inv\(0));

-- Location: LCCOMB_X59_Y39_N6
\gen_ro:6:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(1) = LCELL(!\gen_ro:6:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(0),
	combout => \gen_ro:6:ro_inst|inv\(1));

-- Location: LCCOMB_X59_Y39_N12
\gen_ro:6:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(2) = LCELL(!\gen_ro:6:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(1),
	combout => \gen_ro:6:ro_inst|inv\(2));

-- Location: LCCOMB_X59_Y39_N18
\gen_ro:6:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(3) = LCELL(!\gen_ro:6:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(2),
	combout => \gen_ro:6:ro_inst|inv\(3));

-- Location: LCCOMB_X59_Y39_N0
\gen_ro:6:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(4) = LCELL(!\gen_ro:6:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(3),
	combout => \gen_ro:6:ro_inst|inv\(4));

-- Location: LCCOMB_X55_Y39_N6
\gen_ro:6:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(5) = LCELL(!\gen_ro:6:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(4),
	combout => \gen_ro:6:ro_inst|inv\(5));

-- Location: LCCOMB_X55_Y39_N22
\gen_ro:6:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(6) = LCELL(!\gen_ro:6:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(5),
	combout => \gen_ro:6:ro_inst|inv\(6));

-- Location: LCCOMB_X55_Y39_N30
\gen_ro:6:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(7) = LCELL(!\gen_ro:6:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:6:ro_inst|inv\(6),
	combout => \gen_ro:6:ro_inst|inv\(7));

-- Location: LCCOMB_X59_Y39_N22
\gen_ro:6:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(8) = LCELL(!\gen_ro:6:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(7),
	combout => \gen_ro:6:ro_inst|inv\(8));

-- Location: LCCOMB_X70_Y39_N12
\gen_ro:6:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(9) = LCELL(!\gen_ro:6:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(8),
	combout => \gen_ro:6:ro_inst|inv\(9));

-- Location: LCCOMB_X77_Y39_N18
\gen_ro:6:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(10) = LCELL(!\gen_ro:6:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(9),
	combout => \gen_ro:6:ro_inst|inv\(10));

-- Location: LCCOMB_X77_Y39_N24
\gen_ro:6:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(11) = LCELL(!\gen_ro:6:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(10),
	combout => \gen_ro:6:ro_inst|inv\(11));

-- Location: CLKCTRL_G8
\gen_ro:6:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:6:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:6:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y37_N30
\gen_ro:6:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:6:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:6:ro_inst|ro_counter\(0),
	combout => \gen_ro:6:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X36_Y37_N31
\gen_ro:6:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:6:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:6:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:6:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X36_Y37_N0
\gen_ro:6:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:6:ro_inst|ro_counter\(0) & (\gen_ro:6:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:6:ro_inst|ro_counter\(0) & (\gen_ro:6:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:6:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:6:ro_inst|ro_counter\(0) & \gen_ro:6:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:6:ro_inst|ro_counter\(0),
	datab => \gen_ro:6:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:6:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:6:ro_inst|ro_counter[1]~6\);

-- Location: FF_X36_Y37_N1
\gen_ro:6:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:6:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:6:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:6:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X36_Y37_N2
\gen_ro:6:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:6:ro_inst|ro_counter\(2) & (!\gen_ro:6:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:6:ro_inst|ro_counter\(2) & ((\gen_ro:6:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:6:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:6:ro_inst|ro_counter[1]~6\) # (!\gen_ro:6:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:6:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:6:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:6:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:6:ro_inst|ro_counter[2]~8\);

-- Location: FF_X36_Y37_N3
\gen_ro:6:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:6:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:6:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:6:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X36_Y37_N4
\gen_ro:6:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:6:ro_inst|ro_counter\(3) & (\gen_ro:6:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:6:ro_inst|ro_counter\(3) & (!\gen_ro:6:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:6:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:6:ro_inst|ro_counter\(3) & !\gen_ro:6:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:6:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:6:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:6:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:6:ro_inst|ro_counter[3]~10\);

-- Location: FF_X36_Y37_N5
\gen_ro:6:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:6:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:6:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:6:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X36_Y37_N6
\gen_ro:6:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:6:ro_inst|ro_counter\(4) & (!\gen_ro:6:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:6:ro_inst|ro_counter\(4) & ((\gen_ro:6:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:6:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:6:ro_inst|ro_counter[3]~10\) # (!\gen_ro:6:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:6:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:6:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:6:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:6:ro_inst|ro_counter[4]~12\);

-- Location: FF_X36_Y37_N7
\gen_ro:6:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:6:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:6:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:6:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X36_Y37_N8
\gen_ro:6:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:6:ro_inst|ro_counter\(5) $ (!\gen_ro:6:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:6:ro_inst|ro_counter\(5),
	cin => \gen_ro:6:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:6:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X36_Y37_N9
\gen_ro:6:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:6:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:6:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:6:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X37_Y37_N28
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\challenge[11]~input_o\ & (((\challenge[10]~input_o\)))) # (!\challenge[11]~input_o\ & ((\challenge[10]~input_o\ & ((\gen_ro:6:ro_inst|ro_counter\(5)))) # (!\challenge[10]~input_o\ & (\gen_ro:4:ro_inst|ro_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:4:ro_inst|ro_counter\(5),
	datab => \challenge[11]~input_o\,
	datac => \challenge[10]~input_o\,
	datad => \gen_ro:6:ro_inst|ro_counter\(5),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X37_Y37_N16
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\challenge[11]~input_o\ & ((\Mux6~2_combout\ & ((\gen_ro:7:ro_inst|ro_counter\(5)))) # (!\Mux6~2_combout\ & (\gen_ro:5:ro_inst|ro_counter\(5))))) # (!\challenge[11]~input_o\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:5:ro_inst|ro_counter\(5),
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:7:ro_inst|ro_counter\(5),
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X44_Y47_N30
\gen_ro:2:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(0) = LCELL((\gen_ro:2:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:2:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:2:ro_inst|inv\(0));

-- Location: LCCOMB_X44_Y46_N28
\gen_ro:2:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(1) = LCELL(!\gen_ro:2:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:2:ro_inst|inv\(0),
	combout => \gen_ro:2:ro_inst|inv\(1));

-- Location: LCCOMB_X44_Y46_N10
\gen_ro:2:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(2) = LCELL(!\gen_ro:2:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(1),
	combout => \gen_ro:2:ro_inst|inv\(2));

-- Location: LCCOMB_X44_Y46_N20
\gen_ro:2:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(3) = LCELL(!\gen_ro:2:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(2),
	combout => \gen_ro:2:ro_inst|inv\(3));

-- Location: LCCOMB_X44_Y46_N2
\gen_ro:2:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(4) = LCELL(!\gen_ro:2:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(3),
	combout => \gen_ro:2:ro_inst|inv\(4));

-- Location: LCCOMB_X44_Y46_N16
\gen_ro:2:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(5) = LCELL(!\gen_ro:2:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(4),
	combout => \gen_ro:2:ro_inst|inv\(5));

-- Location: LCCOMB_X44_Y46_N6
\gen_ro:2:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(6) = LCELL(!\gen_ro:2:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(5),
	combout => \gen_ro:2:ro_inst|inv\(6));

-- Location: LCCOMB_X44_Y46_N12
\gen_ro:2:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(7) = LCELL(!\gen_ro:2:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(6),
	combout => \gen_ro:2:ro_inst|inv\(7));

-- Location: LCCOMB_X44_Y46_N18
\gen_ro:2:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(8) = LCELL(!\gen_ro:2:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(7),
	combout => \gen_ro:2:ro_inst|inv\(8));

-- Location: LCCOMB_X44_Y46_N8
\gen_ro:2:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(9) = LCELL(!\gen_ro:2:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(8),
	combout => \gen_ro:2:ro_inst|inv\(9));

-- Location: LCCOMB_X45_Y46_N16
\gen_ro:2:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(10) = LCELL(!\gen_ro:2:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(9),
	combout => \gen_ro:2:ro_inst|inv\(10));

-- Location: LCCOMB_X45_Y50_N8
\gen_ro:2:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(11) = LCELL(!\gen_ro:2:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(10),
	combout => \gen_ro:2:ro_inst|inv\(11));

-- Location: CLKCTRL_G12
\gen_ro:2:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:2:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:2:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y36_N26
\gen_ro:2:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:2:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:2:ro_inst|ro_counter\(0),
	combout => \gen_ro:2:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X36_Y36_N27
\gen_ro:2:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:2:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:2:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:2:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X36_Y36_N16
\gen_ro:2:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:2:ro_inst|ro_counter\(0) & (\gen_ro:2:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:2:ro_inst|ro_counter\(0) & (\gen_ro:2:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:2:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:2:ro_inst|ro_counter\(0) & \gen_ro:2:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:2:ro_inst|ro_counter\(0),
	datab => \gen_ro:2:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:2:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:2:ro_inst|ro_counter[1]~6\);

-- Location: FF_X36_Y36_N17
\gen_ro:2:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:2:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:2:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:2:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X36_Y36_N18
\gen_ro:2:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:2:ro_inst|ro_counter\(2) & (!\gen_ro:2:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:2:ro_inst|ro_counter\(2) & ((\gen_ro:2:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:2:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:2:ro_inst|ro_counter[1]~6\) # (!\gen_ro:2:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:2:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:2:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:2:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:2:ro_inst|ro_counter[2]~8\);

-- Location: FF_X36_Y36_N19
\gen_ro:2:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:2:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:2:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:2:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X36_Y36_N20
\gen_ro:2:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:2:ro_inst|ro_counter\(3) & (\gen_ro:2:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:2:ro_inst|ro_counter\(3) & (!\gen_ro:2:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:2:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:2:ro_inst|ro_counter\(3) & !\gen_ro:2:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:2:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:2:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:2:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:2:ro_inst|ro_counter[3]~10\);

-- Location: FF_X36_Y36_N21
\gen_ro:2:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:2:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:2:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:2:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X36_Y36_N22
\gen_ro:2:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:2:ro_inst|ro_counter\(4) & (!\gen_ro:2:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:2:ro_inst|ro_counter\(4) & ((\gen_ro:2:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:2:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:2:ro_inst|ro_counter[3]~10\) # (!\gen_ro:2:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:2:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:2:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:2:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:2:ro_inst|ro_counter[4]~12\);

-- Location: FF_X36_Y36_N23
\gen_ro:2:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:2:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:2:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:2:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X36_Y36_N24
\gen_ro:2:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:2:ro_inst|ro_counter\(5) $ (!\gen_ro:2:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:2:ro_inst|ro_counter\(5),
	cin => \gen_ro:2:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:2:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X36_Y36_N25
\gen_ro:2:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:2:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:2:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:2:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X59_Y39_N28
\gen_ro:3:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(0) = LCELL((\gen_ro:3:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:3:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:3:ro_inst|inv\(0));

-- Location: LCCOMB_X58_Y39_N20
\gen_ro:3:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(1) = LCELL(!\gen_ro:3:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(0),
	combout => \gen_ro:3:ro_inst|inv\(1));

-- Location: LCCOMB_X58_Y39_N10
\gen_ro:3:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(2) = LCELL(!\gen_ro:3:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(1),
	combout => \gen_ro:3:ro_inst|inv\(2));

-- Location: LCCOMB_X58_Y39_N12
\gen_ro:3:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(3) = LCELL(!\gen_ro:3:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(2),
	combout => \gen_ro:3:ro_inst|inv\(3));

-- Location: LCCOMB_X58_Y39_N2
\gen_ro:3:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(4) = LCELL(!\gen_ro:3:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(3),
	combout => \gen_ro:3:ro_inst|inv\(4));

-- Location: LCCOMB_X58_Y39_N16
\gen_ro:3:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(5) = LCELL(!\gen_ro:3:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(4),
	combout => \gen_ro:3:ro_inst|inv\(5));

-- Location: LCCOMB_X58_Y39_N6
\gen_ro:3:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(6) = LCELL(!\gen_ro:3:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(5),
	combout => \gen_ro:3:ro_inst|inv\(6));

-- Location: LCCOMB_X58_Y39_N28
\gen_ro:3:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(7) = LCELL(!\gen_ro:3:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(6),
	combout => \gen_ro:3:ro_inst|inv\(7));

-- Location: LCCOMB_X58_Y39_N18
\gen_ro:3:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(8) = LCELL(!\gen_ro:3:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(7),
	combout => \gen_ro:3:ro_inst|inv\(8));

-- Location: LCCOMB_X58_Y39_N8
\gen_ro:3:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(9) = LCELL(!\gen_ro:3:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(8),
	combout => \gen_ro:3:ro_inst|inv\(9));

-- Location: LCCOMB_X59_Y39_N20
\gen_ro:3:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(10) = LCELL(!\gen_ro:3:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(9),
	combout => \gen_ro:3:ro_inst|inv\(10));

-- Location: LCCOMB_X77_Y39_N22
\gen_ro:3:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(11) = LCELL(!\gen_ro:3:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|inv\(10),
	combout => \gen_ro:3:ro_inst|inv\(11));

-- Location: CLKCTRL_G9
\gen_ro:3:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:3:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:3:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y35_N10
\gen_ro:3:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:3:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:3:ro_inst|ro_counter\(0),
	combout => \gen_ro:3:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X38_Y35_N11
\gen_ro:3:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:3:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:3:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:3:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X38_Y35_N18
\gen_ro:3:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:3:ro_inst|ro_counter\(0) & (\gen_ro:3:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:3:ro_inst|ro_counter\(0) & (\gen_ro:3:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:3:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:3:ro_inst|ro_counter\(0) & \gen_ro:3:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:3:ro_inst|ro_counter\(0),
	datab => \gen_ro:3:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:3:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:3:ro_inst|ro_counter[1]~6\);

-- Location: FF_X38_Y35_N19
\gen_ro:3:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:3:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:3:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:3:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X38_Y35_N20
\gen_ro:3:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:3:ro_inst|ro_counter\(2) & (!\gen_ro:3:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:3:ro_inst|ro_counter\(2) & ((\gen_ro:3:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:3:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:3:ro_inst|ro_counter[1]~6\) # (!\gen_ro:3:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:3:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:3:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:3:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:3:ro_inst|ro_counter[2]~8\);

-- Location: FF_X38_Y35_N21
\gen_ro:3:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:3:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:3:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:3:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X38_Y35_N22
\gen_ro:3:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:3:ro_inst|ro_counter\(3) & (\gen_ro:3:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:3:ro_inst|ro_counter\(3) & (!\gen_ro:3:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:3:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:3:ro_inst|ro_counter\(3) & !\gen_ro:3:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:3:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:3:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:3:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:3:ro_inst|ro_counter[3]~10\);

-- Location: FF_X38_Y35_N23
\gen_ro:3:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:3:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:3:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:3:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X38_Y35_N24
\gen_ro:3:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:3:ro_inst|ro_counter\(4) & (!\gen_ro:3:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:3:ro_inst|ro_counter\(4) & ((\gen_ro:3:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:3:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:3:ro_inst|ro_counter[3]~10\) # (!\gen_ro:3:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:3:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:3:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:3:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:3:ro_inst|ro_counter[4]~12\);

-- Location: FF_X38_Y35_N25
\gen_ro:3:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:3:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:3:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:3:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X38_Y35_N26
\gen_ro:3:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:3:ro_inst|ro_counter\(5) $ (!\gen_ro:3:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:3:ro_inst|ro_counter\(5),
	cin => \gen_ro:3:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:3:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X38_Y35_N27
\gen_ro:3:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:3:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:3:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:3:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X44_Y52_N8
\gen_ro:0:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(0) = LCELL((\gen_ro:0:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:0:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:0:ro_inst|inv\(0));

-- Location: LCCOMB_X44_Y50_N18
\gen_ro:0:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(1) = LCELL(!\gen_ro:0:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:0:ro_inst|inv\(0),
	combout => \gen_ro:0:ro_inst|inv\(1));

-- Location: LCCOMB_X44_Y50_N20
\gen_ro:0:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(2) = LCELL(!\gen_ro:0:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:0:ro_inst|inv\(1),
	combout => \gen_ro:0:ro_inst|inv\(2));

-- Location: LCCOMB_X44_Y50_N10
\gen_ro:0:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(3) = LCELL(!\gen_ro:0:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:0:ro_inst|inv\(2),
	combout => \gen_ro:0:ro_inst|inv\(3));

-- Location: LCCOMB_X44_Y50_N12
\gen_ro:0:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(4) = LCELL(!\gen_ro:0:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:0:ro_inst|inv\(3),
	combout => \gen_ro:0:ro_inst|inv\(4));

-- Location: LCCOMB_X44_Y50_N2
\gen_ro:0:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(5) = LCELL(!\gen_ro:0:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:0:ro_inst|inv\(4),
	combout => \gen_ro:0:ro_inst|inv\(5));

-- Location: LCCOMB_X44_Y50_N16
\gen_ro:0:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(6) = LCELL(!\gen_ro:0:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:0:ro_inst|inv\(5),
	combout => \gen_ro:0:ro_inst|inv\(6));

-- Location: LCCOMB_X44_Y50_N6
\gen_ro:0:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(7) = LCELL(!\gen_ro:0:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:0:ro_inst|inv\(6),
	combout => \gen_ro:0:ro_inst|inv\(7));

-- Location: LCCOMB_X44_Y50_N28
\gen_ro:0:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(8) = LCELL(!\gen_ro:0:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:0:ro_inst|inv\(7),
	combout => \gen_ro:0:ro_inst|inv\(8));

-- Location: LCCOMB_X44_Y50_N22
\gen_ro:0:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(9) = LCELL(!\gen_ro:0:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:0:ro_inst|inv\(8),
	combout => \gen_ro:0:ro_inst|inv\(9));

-- Location: LCCOMB_X44_Y50_N8
\gen_ro:0:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(10) = LCELL(!\gen_ro:0:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:0:ro_inst|inv\(9),
	combout => \gen_ro:0:ro_inst|inv\(10));

-- Location: LCCOMB_X45_Y50_N2
\gen_ro:0:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(11) = LCELL(!\gen_ro:0:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:0:ro_inst|inv\(10),
	combout => \gen_ro:0:ro_inst|inv\(11));

-- Location: CLKCTRL_G11
\gen_ro:0:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:0:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:0:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y37_N12
\gen_ro:0:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:0:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:0:ro_inst|ro_counter\(0),
	combout => \gen_ro:0:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X37_Y37_N13
\gen_ro:0:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:0:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:0:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:0:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X37_Y37_N2
\gen_ro:0:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:0:ro_inst|ro_counter\(0) & (\gen_ro:0:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:0:ro_inst|ro_counter\(0) & (\gen_ro:0:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:0:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:0:ro_inst|ro_counter\(0) & \gen_ro:0:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:0:ro_inst|ro_counter\(0),
	datab => \gen_ro:0:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:0:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:0:ro_inst|ro_counter[1]~6\);

-- Location: FF_X37_Y37_N3
\gen_ro:0:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:0:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:0:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:0:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X37_Y37_N4
\gen_ro:0:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:0:ro_inst|ro_counter\(2) & (!\gen_ro:0:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:0:ro_inst|ro_counter\(2) & ((\gen_ro:0:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:0:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:0:ro_inst|ro_counter[1]~6\) # (!\gen_ro:0:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:0:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:0:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:0:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:0:ro_inst|ro_counter[2]~8\);

-- Location: FF_X37_Y37_N5
\gen_ro:0:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:0:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:0:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:0:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X37_Y37_N6
\gen_ro:0:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:0:ro_inst|ro_counter\(3) & (\gen_ro:0:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:0:ro_inst|ro_counter\(3) & (!\gen_ro:0:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:0:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:0:ro_inst|ro_counter\(3) & !\gen_ro:0:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:0:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:0:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:0:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:0:ro_inst|ro_counter[3]~10\);

-- Location: FF_X37_Y37_N7
\gen_ro:0:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:0:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:0:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:0:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X37_Y37_N8
\gen_ro:0:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:0:ro_inst|ro_counter\(4) & (!\gen_ro:0:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:0:ro_inst|ro_counter\(4) & ((\gen_ro:0:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:0:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:0:ro_inst|ro_counter[3]~10\) # (!\gen_ro:0:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:0:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:0:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:0:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:0:ro_inst|ro_counter[4]~12\);

-- Location: FF_X37_Y37_N9
\gen_ro:0:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:0:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:0:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:0:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X37_Y37_N10
\gen_ro:0:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:0:ro_inst|ro_counter\(5) $ (!\gen_ro:0:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:0:ro_inst|ro_counter\(5),
	cin => \gen_ro:0:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:0:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X37_Y37_N11
\gen_ro:0:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:0:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:0:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:0:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X36_Y16_N24
\gen_ro:1:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(0) = LCELL((\gen_ro:1:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:1:ro_inst|inv\(11),
	datac => \pulse_in~input_o\,
	combout => \gen_ro:1:ro_inst|inv\(0));

-- Location: LCCOMB_X37_Y16_N16
\gen_ro:1:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(1) = LCELL(!\gen_ro:1:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(0),
	combout => \gen_ro:1:ro_inst|inv\(1));

-- Location: LCCOMB_X37_Y16_N10
\gen_ro:1:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(2) = LCELL(!\gen_ro:1:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(1),
	combout => \gen_ro:1:ro_inst|inv\(2));

-- Location: LCCOMB_X37_Y16_N20
\gen_ro:1:ro_inst|inv[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(3) = LCELL(!\gen_ro:1:ro_inst|inv\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(2),
	combout => \gen_ro:1:ro_inst|inv\(3));

-- Location: LCCOMB_X37_Y16_N2
\gen_ro:1:ro_inst|inv[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(4) = LCELL(!\gen_ro:1:ro_inst|inv\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(3),
	combout => \gen_ro:1:ro_inst|inv\(4));

-- Location: LCCOMB_X37_Y16_N28
\gen_ro:1:ro_inst|inv[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(5) = LCELL(!\gen_ro:1:ro_inst|inv\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(4),
	combout => \gen_ro:1:ro_inst|inv\(5));

-- Location: LCCOMB_X37_Y16_N6
\gen_ro:1:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(6) = LCELL(!\gen_ro:1:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(5),
	combout => \gen_ro:1:ro_inst|inv\(6));

-- Location: LCCOMB_X37_Y16_N12
\gen_ro:1:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(7) = LCELL(!\gen_ro:1:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(6),
	combout => \gen_ro:1:ro_inst|inv\(7));

-- Location: LCCOMB_X37_Y16_N18
\gen_ro:1:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(8) = LCELL(!\gen_ro:1:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(7),
	combout => \gen_ro:1:ro_inst|inv\(8));

-- Location: LCCOMB_X37_Y16_N0
\gen_ro:1:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(9) = LCELL(!\gen_ro:1:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(8),
	combout => \gen_ro:1:ro_inst|inv\(9));

-- Location: LCCOMB_X44_Y1_N18
\gen_ro:1:ro_inst|inv[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(10) = LCELL(!\gen_ro:1:ro_inst|inv\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(9),
	combout => \gen_ro:1:ro_inst|inv\(10));

-- Location: LCCOMB_X44_Y1_N24
\gen_ro:1:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(11) = LCELL(!\gen_ro:1:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:1:ro_inst|inv\(10),
	combout => \gen_ro:1:ro_inst|inv\(11));

-- Location: CLKCTRL_G15
\gen_ro:1:ro_inst|inv[11]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen_ro:1:ro_inst|inv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen_ro:1:ro_inst|inv[11]~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y34_N12
\gen_ro:1:ro_inst|ro_counter[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|ro_counter[0]~15_combout\ = !\gen_ro:1:ro_inst|ro_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:1:ro_inst|ro_counter\(0),
	combout => \gen_ro:1:ro_inst|ro_counter[0]~15_combout\);

-- Location: FF_X39_Y34_N13
\gen_ro:1:ro_inst|ro_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:1:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:1:ro_inst|ro_counter[0]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:1:ro_inst|ro_counter\(0));

-- Location: LCCOMB_X39_Y34_N0
\gen_ro:1:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:1:ro_inst|ro_counter\(0) & (\gen_ro:1:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:1:ro_inst|ro_counter\(0) & (\gen_ro:1:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:1:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:1:ro_inst|ro_counter\(0) & \gen_ro:1:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:1:ro_inst|ro_counter\(0),
	datab => \gen_ro:1:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:1:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:1:ro_inst|ro_counter[1]~6\);

-- Location: FF_X39_Y34_N1
\gen_ro:1:ro_inst|ro_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:1:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:1:ro_inst|ro_counter[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:1:ro_inst|ro_counter\(1));

-- Location: LCCOMB_X39_Y34_N2
\gen_ro:1:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:1:ro_inst|ro_counter\(2) & (!\gen_ro:1:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:1:ro_inst|ro_counter\(2) & ((\gen_ro:1:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:1:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:1:ro_inst|ro_counter[1]~6\) # (!\gen_ro:1:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:1:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:1:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:1:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:1:ro_inst|ro_counter[2]~8\);

-- Location: FF_X39_Y34_N3
\gen_ro:1:ro_inst|ro_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:1:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:1:ro_inst|ro_counter[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:1:ro_inst|ro_counter\(2));

-- Location: LCCOMB_X39_Y34_N4
\gen_ro:1:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:1:ro_inst|ro_counter\(3) & (\gen_ro:1:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:1:ro_inst|ro_counter\(3) & (!\gen_ro:1:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:1:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:1:ro_inst|ro_counter\(3) & !\gen_ro:1:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:1:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:1:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:1:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:1:ro_inst|ro_counter[3]~10\);

-- Location: FF_X39_Y34_N5
\gen_ro:1:ro_inst|ro_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:1:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:1:ro_inst|ro_counter[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:1:ro_inst|ro_counter\(3));

-- Location: LCCOMB_X39_Y34_N6
\gen_ro:1:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:1:ro_inst|ro_counter\(4) & (!\gen_ro:1:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:1:ro_inst|ro_counter\(4) & ((\gen_ro:1:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:1:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:1:ro_inst|ro_counter[3]~10\) # (!\gen_ro:1:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:1:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:1:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:1:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:1:ro_inst|ro_counter[4]~12\);

-- Location: FF_X39_Y34_N7
\gen_ro:1:ro_inst|ro_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:1:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:1:ro_inst|ro_counter[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:1:ro_inst|ro_counter\(4));

-- Location: LCCOMB_X39_Y34_N8
\gen_ro:1:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:1:ro_inst|ro_counter\(5) $ (!\gen_ro:1:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:1:ro_inst|ro_counter\(5),
	cin => \gen_ro:1:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:1:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X39_Y34_N9
\gen_ro:1:ro_inst|ro_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen_ro:1:ro_inst|inv[11]~clkctrl_outclk\,
	d => \gen_ro:1:ro_inst|ro_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_ro:1:ro_inst|ro_counter\(5));

-- Location: LCCOMB_X37_Y35_N12
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\challenge[11]~input_o\ & (((\challenge[10]~input_o\) # (\gen_ro:1:ro_inst|ro_counter\(5))))) # (!\challenge[11]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(5) & (!\challenge[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:0:ro_inst|ro_counter\(5),
	datab => \challenge[11]~input_o\,
	datac => \challenge[10]~input_o\,
	datad => \gen_ro:1:ro_inst|ro_counter\(5),
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X37_Y35_N18
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\challenge[10]~input_o\ & ((\Mux6~4_combout\ & ((\gen_ro:3:ro_inst|ro_counter\(5)))) # (!\Mux6~4_combout\ & (\gen_ro:2:ro_inst|ro_counter\(5))))) # (!\challenge[10]~input_o\ & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \gen_ro:2:ro_inst|ro_counter\(5),
	datac => \gen_ro:3:ro_inst|ro_counter\(5),
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X37_Y35_N16
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\challenge[8]~input_o\ & (\challenge[9]~input_o\)) # (!\challenge[8]~input_o\ & ((\challenge[9]~input_o\ & (\Mux6~3_combout\)) # (!\challenge[9]~input_o\ & ((\Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \challenge[9]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \Mux6~5_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X37_Y35_N30
\Mux6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\challenge[8]~input_o\ & ((\Mux6~6_combout\ & (\Mux6~8_combout\)) # (!\Mux6~6_combout\ & ((\Mux6~1_combout\))))) # (!\challenge[8]~input_o\ & (((\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \Mux6~8_combout\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~9_combout\);

-- Location: IOIBUF_X36_Y39_N29
\challenge[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(2),
	o => \challenge[2]~input_o\);

-- Location: IOIBUF_X34_Y39_N15
\challenge[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(5),
	o => \challenge[5]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\challenge[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(4),
	o => \challenge[4]~input_o\);

-- Location: LCCOMB_X37_Y35_N6
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\challenge[5]~input_o\ & (((\challenge[4]~input_o\)))) # (!\challenge[5]~input_o\ & ((\challenge[4]~input_o\ & (\gen_ro:14:ro_inst|ro_counter\(5))) # (!\challenge[4]~input_o\ & ((\gen_ro:12:ro_inst|ro_counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \gen_ro:14:ro_inst|ro_counter\(5),
	datac => \challenge[4]~input_o\,
	datad => \gen_ro:12:ro_inst|ro_counter\(5),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X37_Y35_N0
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\challenge[5]~input_o\ & ((\Mux0~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(5))) # (!\Mux0~7_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(5)))))) # (!\challenge[5]~input_o\ & (((\Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \gen_ro:15:ro_inst|ro_counter\(5),
	datac => \gen_ro:13:ro_inst|ro_counter\(5),
	datad => \Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X37_Y35_N4
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\challenge[5]~input_o\ & (((\challenge[4]~input_o\) # (\gen_ro:9:ro_inst|ro_counter\(5))))) # (!\challenge[5]~input_o\ & (\gen_ro:8:ro_inst|ro_counter\(5) & (!\challenge[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \gen_ro:8:ro_inst|ro_counter\(5),
	datac => \challenge[4]~input_o\,
	datad => \gen_ro:9:ro_inst|ro_counter\(5),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X37_Y35_N22
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\challenge[4]~input_o\ & ((\Mux0~0_combout\ & (\gen_ro:11:ro_inst|ro_counter\(5))) # (!\Mux0~0_combout\ & ((\gen_ro:10:ro_inst|ro_counter\(5)))))) # (!\challenge[4]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:11:ro_inst|ro_counter\(5),
	datab => \challenge[4]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \gen_ro:10:ro_inst|ro_counter\(5),
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X36_Y39_N15
\challenge[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(3),
	o => \challenge[3]~input_o\);

-- Location: LCCOMB_X36_Y37_N18
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\challenge[5]~input_o\ & (\challenge[4]~input_o\)) # (!\challenge[5]~input_o\ & ((\challenge[4]~input_o\ & (\gen_ro:6:ro_inst|ro_counter\(5))) # (!\challenge[4]~input_o\ & ((\gen_ro:4:ro_inst|ro_counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \challenge[4]~input_o\,
	datac => \gen_ro:6:ro_inst|ro_counter\(5),
	datad => \gen_ro:4:ro_inst|ro_counter\(5),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X36_Y37_N28
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\challenge[5]~input_o\ & ((\Mux0~2_combout\ & (\gen_ro:7:ro_inst|ro_counter\(5))) # (!\Mux0~2_combout\ & ((\gen_ro:5:ro_inst|ro_counter\(5)))))) # (!\challenge[5]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \gen_ro:7:ro_inst|ro_counter\(5),
	datac => \gen_ro:5:ro_inst|ro_counter\(5),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X37_Y35_N28
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\challenge[5]~input_o\ & ((\challenge[4]~input_o\) # ((\gen_ro:1:ro_inst|ro_counter\(5))))) # (!\challenge[5]~input_o\ & (!\challenge[4]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \challenge[4]~input_o\,
	datac => \gen_ro:0:ro_inst|ro_counter\(5),
	datad => \gen_ro:1:ro_inst|ro_counter\(5),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X37_Y35_N2
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\challenge[4]~input_o\ & ((\Mux0~4_combout\ & (\gen_ro:3:ro_inst|ro_counter\(5))) # (!\Mux0~4_combout\ & ((\gen_ro:2:ro_inst|ro_counter\(5)))))) # (!\challenge[4]~input_o\ & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:3:ro_inst|ro_counter\(5),
	datab => \gen_ro:2:ro_inst|ro_counter\(5),
	datac => \challenge[4]~input_o\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X37_Y35_N20
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\challenge[3]~input_o\ & ((\challenge[2]~input_o\) # ((\Mux0~3_combout\)))) # (!\challenge[3]~input_o\ & (!\challenge[2]~input_o\ & ((\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \challenge[2]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X37_Y35_N14
\Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\challenge[2]~input_o\ & ((\Mux0~6_combout\ & (\Mux0~8_combout\)) # (!\Mux0~6_combout\ & ((\Mux0~1_combout\))))) # (!\challenge[2]~input_o\ & (((\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \Mux0~8_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X39_Y36_N28
\Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\challenge[8]~input_o\ & (((\challenge[9]~input_o\)))) # (!\challenge[8]~input_o\ & ((\challenge[9]~input_o\ & (\gen_ro:7:ro_inst|ro_counter\(4))) # (!\challenge[9]~input_o\ & ((\gen_ro:3:ro_inst|ro_counter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:7:ro_inst|ro_counter\(4),
	datab => \challenge[8]~input_o\,
	datac => \challenge[9]~input_o\,
	datad => \gen_ro:3:ro_inst|ro_counter\(4),
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X39_Y36_N30
\Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\challenge[8]~input_o\ & ((\Mux7~7_combout\ & ((\gen_ro:15:ro_inst|ro_counter\(4)))) # (!\Mux7~7_combout\ & (\gen_ro:11:ro_inst|ro_counter\(4))))) # (!\challenge[8]~input_o\ & (((\Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:11:ro_inst|ro_counter\(4),
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:15:ro_inst|ro_counter\(4),
	datad => \Mux7~7_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X37_Y36_N24
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\challenge[9]~input_o\ & (((\challenge[8]~input_o\)))) # (!\challenge[9]~input_o\ & ((\challenge[8]~input_o\ & (\gen_ro:10:ro_inst|ro_counter\(4))) # (!\challenge[8]~input_o\ & ((\gen_ro:2:ro_inst|ro_counter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(4),
	datab => \challenge[9]~input_o\,
	datac => \challenge[8]~input_o\,
	datad => \gen_ro:2:ro_inst|ro_counter\(4),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X39_Y36_N8
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\gen_ro:14:ro_inst|ro_counter\(4))) # (!\challenge[9]~input_o\))) # (!\Mux7~0_combout\ & (\challenge[9]~input_o\ & ((\gen_ro:6:ro_inst|ro_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \challenge[9]~input_o\,
	datac => \gen_ro:14:ro_inst|ro_counter\(4),
	datad => \gen_ro:6:ro_inst|ro_counter\(4),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X39_Y36_N6
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\challenge[8]~input_o\ & (((\challenge[9]~input_o\) # (\gen_ro:8:ro_inst|ro_counter\(4))))) # (!\challenge[8]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(4) & (!\challenge[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:0:ro_inst|ro_counter\(4),
	datab => \challenge[8]~input_o\,
	datac => \challenge[9]~input_o\,
	datad => \gen_ro:8:ro_inst|ro_counter\(4),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X39_Y36_N4
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\ & (((\gen_ro:12:ro_inst|ro_counter\(4))) # (!\challenge[9]~input_o\))) # (!\Mux7~4_combout\ & (\challenge[9]~input_o\ & (\gen_ro:4:ro_inst|ro_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \challenge[9]~input_o\,
	datac => \gen_ro:4:ro_inst|ro_counter\(4),
	datad => \gen_ro:12:ro_inst|ro_counter\(4),
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X39_Y36_N22
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\challenge[8]~input_o\ & (((\challenge[9]~input_o\)))) # (!\challenge[8]~input_o\ & ((\challenge[9]~input_o\ & (\gen_ro:5:ro_inst|ro_counter\(4))) # (!\challenge[9]~input_o\ & ((\gen_ro:1:ro_inst|ro_counter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:5:ro_inst|ro_counter\(4),
	datab => \challenge[8]~input_o\,
	datac => \challenge[9]~input_o\,
	datad => \gen_ro:1:ro_inst|ro_counter\(4),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X39_Y36_N20
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\challenge[8]~input_o\ & ((\Mux7~2_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(4)))) # (!\Mux7~2_combout\ & (\gen_ro:9:ro_inst|ro_counter\(4))))) # (!\challenge[8]~input_o\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:9:ro_inst|ro_counter\(4),
	datab => \challenge[8]~input_o\,
	datac => \Mux7~2_combout\,
	datad => \gen_ro:13:ro_inst|ro_counter\(4),
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X39_Y36_N10
\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\challenge[11]~input_o\ & ((\challenge[10]~input_o\) # ((\Mux7~3_combout\)))) # (!\challenge[11]~input_o\ & (!\challenge[10]~input_o\ & (\Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[11]~input_o\,
	datab => \challenge[10]~input_o\,
	datac => \Mux7~5_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X39_Y36_N12
\Mux7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\challenge[10]~input_o\ & ((\Mux7~6_combout\ & (\Mux7~8_combout\)) # (!\Mux7~6_combout\ & ((\Mux7~1_combout\))))) # (!\challenge[10]~input_o\ & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~8_combout\,
	datab => \challenge[10]~input_o\,
	datac => \Mux7~1_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X39_Y35_N24
\Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\challenge[2]~input_o\ & (((\challenge[3]~input_o\)))) # (!\challenge[2]~input_o\ & ((\challenge[3]~input_o\ & (\gen_ro:7:ro_inst|ro_counter\(4))) # (!\challenge[3]~input_o\ & ((\gen_ro:3:ro_inst|ro_counter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \gen_ro:7:ro_inst|ro_counter\(4),
	datac => \challenge[3]~input_o\,
	datad => \gen_ro:3:ro_inst|ro_counter\(4),
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X39_Y35_N30
\Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\challenge[2]~input_o\ & ((\Mux1~7_combout\ & ((\gen_ro:15:ro_inst|ro_counter\(4)))) # (!\Mux1~7_combout\ & (\gen_ro:11:ro_inst|ro_counter\(4))))) # (!\challenge[2]~input_o\ & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \gen_ro:11:ro_inst|ro_counter\(4),
	datac => \gen_ro:15:ro_inst|ro_counter\(4),
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X37_Y36_N28
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\challenge[2]~input_o\ & (((\challenge[3]~input_o\) # (\gen_ro:10:ro_inst|ro_counter\(4))))) # (!\challenge[2]~input_o\ & (\gen_ro:2:ro_inst|ro_counter\(4) & (!\challenge[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \gen_ro:2:ro_inst|ro_counter\(4),
	datac => \challenge[3]~input_o\,
	datad => \gen_ro:10:ro_inst|ro_counter\(4),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X37_Y36_N18
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\challenge[3]~input_o\ & ((\Mux1~0_combout\ & (\gen_ro:14:ro_inst|ro_counter\(4))) # (!\Mux1~0_combout\ & ((\gen_ro:6:ro_inst|ro_counter\(4)))))) # (!\challenge[3]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:14:ro_inst|ro_counter\(4),
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:6:ro_inst|ro_counter\(4),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X38_Y34_N10
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\challenge[2]~input_o\ & (((\challenge[3]~input_o\) # (\gen_ro:8:ro_inst|ro_counter\(4))))) # (!\challenge[2]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(4) & (!\challenge[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:0:ro_inst|ro_counter\(4),
	datab => \challenge[2]~input_o\,
	datac => \challenge[3]~input_o\,
	datad => \gen_ro:8:ro_inst|ro_counter\(4),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X38_Y34_N4
\Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\challenge[3]~input_o\ & ((\Mux1~4_combout\ & (\gen_ro:12:ro_inst|ro_counter\(4))) # (!\Mux1~4_combout\ & ((\gen_ro:4:ro_inst|ro_counter\(4)))))) # (!\challenge[3]~input_o\ & (((\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \gen_ro:12:ro_inst|ro_counter\(4),
	datac => \gen_ro:4:ro_inst|ro_counter\(4),
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X39_Y34_N30
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\challenge[2]~input_o\ & (((\challenge[3]~input_o\)))) # (!\challenge[2]~input_o\ & ((\challenge[3]~input_o\ & (\gen_ro:5:ro_inst|ro_counter\(4))) # (!\challenge[3]~input_o\ & ((\gen_ro:1:ro_inst|ro_counter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \gen_ro:5:ro_inst|ro_counter\(4),
	datac => \challenge[3]~input_o\,
	datad => \gen_ro:1:ro_inst|ro_counter\(4),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X38_Y34_N20
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\challenge[2]~input_o\ & ((\Mux1~2_combout\ & (\gen_ro:13:ro_inst|ro_counter\(4))) # (!\Mux1~2_combout\ & ((\gen_ro:9:ro_inst|ro_counter\(4)))))) # (!\challenge[2]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(4),
	datab => \challenge[2]~input_o\,
	datac => \Mux1~2_combout\,
	datad => \gen_ro:9:ro_inst|ro_counter\(4),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X38_Y34_N6
\Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\challenge[5]~input_o\ & (((\challenge[4]~input_o\) # (\Mux1~3_combout\)))) # (!\challenge[5]~input_o\ & (\Mux1~5_combout\ & (!\challenge[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \Mux1~5_combout\,
	datac => \challenge[4]~input_o\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X38_Y34_N8
\Mux1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\challenge[4]~input_o\ & ((\Mux1~6_combout\ & (\Mux1~8_combout\)) # (!\Mux1~6_combout\ & ((\Mux1~1_combout\))))) # (!\challenge[4]~input_o\ & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~8_combout\,
	datab => \challenge[4]~input_o\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X38_Y38_N4
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\challenge[11]~input_o\ & (((\challenge[10]~input_o\)))) # (!\challenge[11]~input_o\ & ((\challenge[10]~input_o\ & ((\gen_ro:2:ro_inst|ro_counter\(3)))) # (!\challenge[10]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:0:ro_inst|ro_counter\(3),
	datab => \challenge[11]~input_o\,
	datac => \challenge[10]~input_o\,
	datad => \gen_ro:2:ro_inst|ro_counter\(3),
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X38_Y38_N30
\Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\challenge[11]~input_o\ & ((\Mux8~4_combout\ & ((\gen_ro:3:ro_inst|ro_counter\(3)))) # (!\Mux8~4_combout\ & (\gen_ro:1:ro_inst|ro_counter\(3))))) # (!\challenge[11]~input_o\ & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:1:ro_inst|ro_counter\(3),
	datab => \challenge[11]~input_o\,
	datac => \Mux8~4_combout\,
	datad => \gen_ro:3:ro_inst|ro_counter\(3),
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X37_Y38_N24
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\challenge[11]~input_o\ & (((\challenge[10]~input_o\)))) # (!\challenge[11]~input_o\ & ((\challenge[10]~input_o\ & ((\gen_ro:10:ro_inst|ro_counter\(3)))) # (!\challenge[10]~input_o\ & (\gen_ro:8:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[11]~input_o\,
	datab => \gen_ro:8:ro_inst|ro_counter\(3),
	datac => \challenge[10]~input_o\,
	datad => \gen_ro:10:ro_inst|ro_counter\(3),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X37_Y38_N28
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\challenge[11]~input_o\ & ((\Mux8~2_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(3)))) # (!\Mux8~2_combout\ & (\gen_ro:9:ro_inst|ro_counter\(3))))) # (!\challenge[11]~input_o\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:9:ro_inst|ro_counter\(3),
	datab => \gen_ro:11:ro_inst|ro_counter\(3),
	datac => \challenge[11]~input_o\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X38_Y38_N12
\Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\challenge[8]~input_o\ & ((\challenge[9]~input_o\) # ((\Mux8~3_combout\)))) # (!\challenge[8]~input_o\ & (!\challenge[9]~input_o\ & (\Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \challenge[9]~input_o\,
	datac => \Mux8~5_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X38_Y38_N0
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\challenge[10]~input_o\ & (\challenge[11]~input_o\)) # (!\challenge[10]~input_o\ & ((\challenge[11]~input_o\ & (\gen_ro:5:ro_inst|ro_counter\(3))) # (!\challenge[11]~input_o\ & ((\gen_ro:4:ro_inst|ro_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:5:ro_inst|ro_counter\(3),
	datad => \gen_ro:4:ro_inst|ro_counter\(3),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X38_Y38_N14
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\challenge[10]~input_o\ & ((\Mux8~0_combout\ & (\gen_ro:7:ro_inst|ro_counter\(3))) # (!\Mux8~0_combout\ & ((\gen_ro:6:ro_inst|ro_counter\(3)))))) # (!\challenge[10]~input_o\ & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \Mux8~0_combout\,
	datac => \gen_ro:7:ro_inst|ro_counter\(3),
	datad => \gen_ro:6:ro_inst|ro_counter\(3),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X38_Y38_N18
\Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\challenge[10]~input_o\ & (\challenge[11]~input_o\)) # (!\challenge[10]~input_o\ & ((\challenge[11]~input_o\ & (\gen_ro:13:ro_inst|ro_counter\(3))) # (!\challenge[11]~input_o\ & ((\gen_ro:12:ro_inst|ro_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:13:ro_inst|ro_counter\(3),
	datad => \gen_ro:12:ro_inst|ro_counter\(3),
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X38_Y38_N16
\Mux8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\challenge[10]~input_o\ & ((\Mux8~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(3))) # (!\Mux8~7_combout\ & ((\gen_ro:14:ro_inst|ro_counter\(3)))))) # (!\challenge[10]~input_o\ & (((\Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(3),
	datab => \gen_ro:14:ro_inst|ro_counter\(3),
	datac => \challenge[10]~input_o\,
	datad => \Mux8~7_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X38_Y38_N6
\Mux8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\Mux8~6_combout\ & (((\Mux8~8_combout\)) # (!\challenge[9]~input_o\))) # (!\Mux8~6_combout\ & (\challenge[9]~input_o\ & (\Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \challenge[9]~input_o\,
	datac => \Mux8~1_combout\,
	datad => \Mux8~8_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X37_Y38_N20
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\challenge[5]~input_o\ & (((\challenge[4]~input_o\)))) # (!\challenge[5]~input_o\ & ((\challenge[4]~input_o\ & (\gen_ro:10:ro_inst|ro_counter\(3))) # (!\challenge[4]~input_o\ & ((\gen_ro:8:ro_inst|ro_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(3),
	datab => \challenge[5]~input_o\,
	datac => \challenge[4]~input_o\,
	datad => \gen_ro:8:ro_inst|ro_counter\(3),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X37_Y38_N26
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\challenge[5]~input_o\ & ((\Mux2~2_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(3)))) # (!\Mux2~2_combout\ & (\gen_ro:9:ro_inst|ro_counter\(3))))) # (!\challenge[5]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:9:ro_inst|ro_counter\(3),
	datab => \challenge[5]~input_o\,
	datac => \gen_ro:11:ro_inst|ro_counter\(3),
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X38_Y38_N8
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\challenge[5]~input_o\ & (((\challenge[4]~input_o\)))) # (!\challenge[5]~input_o\ & ((\challenge[4]~input_o\ & ((\gen_ro:2:ro_inst|ro_counter\(3)))) # (!\challenge[4]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:0:ro_inst|ro_counter\(3),
	datab => \challenge[5]~input_o\,
	datac => \challenge[4]~input_o\,
	datad => \gen_ro:2:ro_inst|ro_counter\(3),
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X38_Y38_N10
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\challenge[5]~input_o\ & ((\Mux2~4_combout\ & (\gen_ro:3:ro_inst|ro_counter\(3))) # (!\Mux2~4_combout\ & ((\gen_ro:1:ro_inst|ro_counter\(3)))))) # (!\challenge[5]~input_o\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \gen_ro:3:ro_inst|ro_counter\(3),
	datac => \Mux2~4_combout\,
	datad => \gen_ro:1:ro_inst|ro_counter\(3),
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X38_Y38_N24
\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\challenge[3]~input_o\ & (\challenge[2]~input_o\)) # (!\challenge[3]~input_o\ & ((\challenge[2]~input_o\ & (\Mux2~3_combout\)) # (!\challenge[2]~input_o\ & ((\Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \challenge[2]~input_o\,
	datac => \Mux2~3_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X38_Y38_N28
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\challenge[5]~input_o\ & ((\gen_ro:5:ro_inst|ro_counter\(3)) # ((\challenge[4]~input_o\)))) # (!\challenge[5]~input_o\ & (((!\challenge[4]~input_o\ & \gen_ro:4:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \gen_ro:5:ro_inst|ro_counter\(3),
	datac => \challenge[4]~input_o\,
	datad => \gen_ro:4:ro_inst|ro_counter\(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X38_Y38_N22
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\challenge[4]~input_o\ & ((\Mux2~0_combout\ & (\gen_ro:7:ro_inst|ro_counter\(3))) # (!\Mux2~0_combout\ & ((\gen_ro:6:ro_inst|ro_counter\(3)))))) # (!\challenge[4]~input_o\ & (\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \gen_ro:7:ro_inst|ro_counter\(3),
	datad => \gen_ro:6:ro_inst|ro_counter\(3),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X38_Y38_N2
\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\challenge[4]~input_o\ & (((\challenge[5]~input_o\)))) # (!\challenge[4]~input_o\ & ((\challenge[5]~input_o\ & (\gen_ro:13:ro_inst|ro_counter\(3))) # (!\challenge[5]~input_o\ & ((\gen_ro:12:ro_inst|ro_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \gen_ro:13:ro_inst|ro_counter\(3),
	datac => \challenge[5]~input_o\,
	datad => \gen_ro:12:ro_inst|ro_counter\(3),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X38_Y38_N20
\Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\challenge[4]~input_o\ & ((\Mux2~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(3))) # (!\Mux2~7_combout\ & ((\gen_ro:14:ro_inst|ro_counter\(3)))))) # (!\challenge[4]~input_o\ & (((\Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(3),
	datab => \gen_ro:14:ro_inst|ro_counter\(3),
	datac => \challenge[4]~input_o\,
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X38_Y38_N26
\Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\challenge[3]~input_o\ & ((\Mux2~6_combout\ & ((\Mux2~8_combout\))) # (!\Mux2~6_combout\ & (\Mux2~1_combout\)))) # (!\challenge[3]~input_o\ & (\Mux2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \Mux2~6_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X38_Y36_N16
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\challenge[2]~input_o\ & ((\challenge[3]~input_o\) # ((\gen_ro:9:ro_inst|ro_counter\(2))))) # (!\challenge[2]~input_o\ & (!\challenge[3]~input_o\ & ((\gen_ro:1:ro_inst|ro_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:9:ro_inst|ro_counter\(2),
	datad => \gen_ro:1:ro_inst|ro_counter\(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X38_Y36_N28
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\challenge[3]~input_o\ & ((\Mux3~0_combout\ & (\gen_ro:13:ro_inst|ro_counter\(2))) # (!\Mux3~0_combout\ & ((\gen_ro:5:ro_inst|ro_counter\(2)))))) # (!\challenge[3]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(2),
	datab => \gen_ro:5:ro_inst|ro_counter\(2),
	datac => \challenge[3]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X37_Y36_N20
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\challenge[2]~input_o\ & ((\challenge[3]~input_o\) # ((\gen_ro:11:ro_inst|ro_counter\(2))))) # (!\challenge[2]~input_o\ & (!\challenge[3]~input_o\ & (\gen_ro:3:ro_inst|ro_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:3:ro_inst|ro_counter\(2),
	datad => \gen_ro:11:ro_inst|ro_counter\(2),
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X38_Y36_N14
\Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\challenge[3]~input_o\ & ((\Mux3~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(2))) # (!\Mux3~7_combout\ & ((\gen_ro:7:ro_inst|ro_counter\(2)))))) # (!\challenge[3]~input_o\ & (((\Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(2),
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:7:ro_inst|ro_counter\(2),
	datad => \Mux3~7_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X39_Y37_N22
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\challenge[2]~input_o\ & (\challenge[3]~input_o\)) # (!\challenge[2]~input_o\ & ((\challenge[3]~input_o\ & ((\gen_ro:4:ro_inst|ro_counter\(2)))) # (!\challenge[3]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:0:ro_inst|ro_counter\(2),
	datad => \gen_ro:4:ro_inst|ro_counter\(2),
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X39_Y37_N30
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\challenge[2]~input_o\ & ((\Mux3~4_combout\ & ((\gen_ro:12:ro_inst|ro_counter\(2)))) # (!\Mux3~4_combout\ & (\gen_ro:8:ro_inst|ro_counter\(2))))) # (!\challenge[2]~input_o\ & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:8:ro_inst|ro_counter\(2),
	datab => \challenge[2]~input_o\,
	datac => \Mux3~4_combout\,
	datad => \gen_ro:12:ro_inst|ro_counter\(2),
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X37_Y36_N14
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\challenge[2]~input_o\ & (((\challenge[3]~input_o\)))) # (!\challenge[2]~input_o\ & ((\challenge[3]~input_o\ & ((\gen_ro:6:ro_inst|ro_counter\(2)))) # (!\challenge[3]~input_o\ & (\gen_ro:2:ro_inst|ro_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \gen_ro:2:ro_inst|ro_counter\(2),
	datac => \challenge[3]~input_o\,
	datad => \gen_ro:6:ro_inst|ro_counter\(2),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X38_Y36_N18
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\challenge[2]~input_o\ & ((\Mux3~2_combout\ & (\gen_ro:14:ro_inst|ro_counter\(2))) # (!\Mux3~2_combout\ & ((\gen_ro:10:ro_inst|ro_counter\(2)))))) # (!\challenge[2]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \gen_ro:14:ro_inst|ro_counter\(2),
	datac => \gen_ro:10:ro_inst|ro_counter\(2),
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X38_Y36_N12
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\challenge[5]~input_o\ & (\challenge[4]~input_o\)) # (!\challenge[5]~input_o\ & ((\challenge[4]~input_o\ & ((\Mux3~3_combout\))) # (!\challenge[4]~input_o\ & (\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \challenge[4]~input_o\,
	datac => \Mux3~5_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X38_Y36_N24
\Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\challenge[5]~input_o\ & ((\Mux3~6_combout\ & ((\Mux3~8_combout\))) # (!\Mux3~6_combout\ & (\Mux3~1_combout\)))) # (!\challenge[5]~input_o\ & (((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~8_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X37_Y36_N30
\Mux9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\challenge[8]~input_o\ & (((\challenge[9]~input_o\) # (\gen_ro:11:ro_inst|ro_counter\(2))))) # (!\challenge[8]~input_o\ & (\gen_ro:3:ro_inst|ro_counter\(2) & (!\challenge[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \gen_ro:3:ro_inst|ro_counter\(2),
	datac => \challenge[9]~input_o\,
	datad => \gen_ro:11:ro_inst|ro_counter\(2),
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X37_Y36_N4
\Mux9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\Mux9~7_combout\ & ((\gen_ro:15:ro_inst|ro_counter\(2)) # ((!\challenge[9]~input_o\)))) # (!\Mux9~7_combout\ & (((\challenge[9]~input_o\ & \gen_ro:7:ro_inst|ro_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~7_combout\,
	datab => \gen_ro:15:ro_inst|ro_counter\(2),
	datac => \challenge[9]~input_o\,
	datad => \gen_ro:7:ro_inst|ro_counter\(2),
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X37_Y36_N2
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\challenge[8]~input_o\ & ((\challenge[9]~input_o\) # ((\gen_ro:9:ro_inst|ro_counter\(2))))) # (!\challenge[8]~input_o\ & (!\challenge[9]~input_o\ & (\gen_ro:1:ro_inst|ro_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \challenge[9]~input_o\,
	datac => \gen_ro:1:ro_inst|ro_counter\(2),
	datad => \gen_ro:9:ro_inst|ro_counter\(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X37_Y36_N8
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\challenge[9]~input_o\ & ((\Mux9~0_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(2)))) # (!\Mux9~0_combout\ & (\gen_ro:5:ro_inst|ro_counter\(2))))) # (!\challenge[9]~input_o\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:5:ro_inst|ro_counter\(2),
	datab => \gen_ro:13:ro_inst|ro_counter\(2),
	datac => \challenge[9]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X37_Y37_N30
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\challenge[9]~input_o\ & ((\challenge[8]~input_o\) # ((\gen_ro:4:ro_inst|ro_counter\(2))))) # (!\challenge[9]~input_o\ & (!\challenge[8]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:0:ro_inst|ro_counter\(2),
	datad => \gen_ro:4:ro_inst|ro_counter\(2),
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X37_Y36_N22
\Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\challenge[8]~input_o\ & ((\Mux9~4_combout\ & ((\gen_ro:12:ro_inst|ro_counter\(2)))) # (!\Mux9~4_combout\ & (\gen_ro:8:ro_inst|ro_counter\(2))))) # (!\challenge[8]~input_o\ & (((\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \gen_ro:8:ro_inst|ro_counter\(2),
	datac => \Mux9~4_combout\,
	datad => \gen_ro:12:ro_inst|ro_counter\(2),
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X37_Y36_N6
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\challenge[8]~input_o\ & (((\challenge[9]~input_o\)))) # (!\challenge[8]~input_o\ & ((\challenge[9]~input_o\ & ((\gen_ro:6:ro_inst|ro_counter\(2)))) # (!\challenge[9]~input_o\ & (\gen_ro:2:ro_inst|ro_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \gen_ro:2:ro_inst|ro_counter\(2),
	datac => \challenge[9]~input_o\,
	datad => \gen_ro:6:ro_inst|ro_counter\(2),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X37_Y36_N12
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\challenge[8]~input_o\ & ((\Mux9~2_combout\ & (\gen_ro:14:ro_inst|ro_counter\(2))) # (!\Mux9~2_combout\ & ((\gen_ro:10:ro_inst|ro_counter\(2)))))) # (!\challenge[8]~input_o\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \gen_ro:14:ro_inst|ro_counter\(2),
	datac => \gen_ro:10:ro_inst|ro_counter\(2),
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X37_Y36_N16
\Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\challenge[10]~input_o\ & ((\challenge[11]~input_o\) # ((\Mux9~3_combout\)))) # (!\challenge[10]~input_o\ & (!\challenge[11]~input_o\ & (\Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \Mux9~5_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X37_Y36_N10
\Mux9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\challenge[11]~input_o\ & ((\Mux9~6_combout\ & (\Mux9~8_combout\)) # (!\Mux9~6_combout\ & ((\Mux9~1_combout\))))) # (!\challenge[11]~input_o\ & (((\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[11]~input_o\,
	datab => \Mux9~8_combout\,
	datac => \Mux9~1_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X38_Y36_N22
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\challenge[5]~input_o\ & ((\challenge[4]~input_o\) # ((\gen_ro:9:ro_inst|ro_counter\(1))))) # (!\challenge[5]~input_o\ & (!\challenge[4]~input_o\ & ((\gen_ro:8:ro_inst|ro_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \challenge[4]~input_o\,
	datac => \gen_ro:9:ro_inst|ro_counter\(1),
	datad => \gen_ro:8:ro_inst|ro_counter\(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X38_Y36_N20
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\challenge[4]~input_o\ & ((\Mux4~0_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(1)))) # (!\Mux4~0_combout\ & (\gen_ro:10:ro_inst|ro_counter\(1))))) # (!\challenge[4]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(1),
	datab => \challenge[4]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \gen_ro:11:ro_inst|ro_counter\(1),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X39_Y35_N28
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\challenge[5]~input_o\ & (\challenge[4]~input_o\)) # (!\challenge[5]~input_o\ & ((\challenge[4]~input_o\ & (\gen_ro:14:ro_inst|ro_counter\(1))) # (!\challenge[4]~input_o\ & ((\gen_ro:12:ro_inst|ro_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \challenge[4]~input_o\,
	datac => \gen_ro:14:ro_inst|ro_counter\(1),
	datad => \gen_ro:12:ro_inst|ro_counter\(1),
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X38_Y35_N30
\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\challenge[5]~input_o\ & ((\Mux4~7_combout\ & ((\gen_ro:15:ro_inst|ro_counter\(1)))) # (!\Mux4~7_combout\ & (\gen_ro:13:ro_inst|ro_counter\(1))))) # (!\challenge[5]~input_o\ & (((\Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \gen_ro:13:ro_inst|ro_counter\(1),
	datac => \gen_ro:15:ro_inst|ro_counter\(1),
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X39_Y34_N28
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\challenge[4]~input_o\ & (((\challenge[5]~input_o\)))) # (!\challenge[4]~input_o\ & ((\challenge[5]~input_o\ & ((\gen_ro:1:ro_inst|ro_counter\(1)))) # (!\challenge[5]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:0:ro_inst|ro_counter\(1),
	datab => \challenge[4]~input_o\,
	datac => \challenge[5]~input_o\,
	datad => \gen_ro:1:ro_inst|ro_counter\(1),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X39_Y34_N14
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\ & ((\gen_ro:3:ro_inst|ro_counter\(1)) # ((!\challenge[4]~input_o\)))) # (!\Mux4~4_combout\ & (((\challenge[4]~input_o\ & \gen_ro:2:ro_inst|ro_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \gen_ro:3:ro_inst|ro_counter\(1),
	datac => \challenge[4]~input_o\,
	datad => \gen_ro:2:ro_inst|ro_counter\(1),
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X39_Y37_N28
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\challenge[4]~input_o\ & (((\challenge[5]~input_o\) # (\gen_ro:6:ro_inst|ro_counter\(1))))) # (!\challenge[4]~input_o\ & (\gen_ro:4:ro_inst|ro_counter\(1) & (!\challenge[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \gen_ro:4:ro_inst|ro_counter\(1),
	datac => \challenge[5]~input_o\,
	datad => \gen_ro:6:ro_inst|ro_counter\(1),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X39_Y37_N26
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\challenge[5]~input_o\ & ((\Mux4~2_combout\ & (\gen_ro:7:ro_inst|ro_counter\(1))) # (!\Mux4~2_combout\ & ((\gen_ro:5:ro_inst|ro_counter\(1)))))) # (!\challenge[5]~input_o\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \gen_ro:7:ro_inst|ro_counter\(1),
	datac => \gen_ro:5:ro_inst|ro_counter\(1),
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X39_Y34_N20
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\challenge[2]~input_o\ & (((\challenge[3]~input_o\)))) # (!\challenge[2]~input_o\ & ((\challenge[3]~input_o\ & ((\Mux4~3_combout\))) # (!\challenge[3]~input_o\ & (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \Mux4~5_combout\,
	datac => \challenge[3]~input_o\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X37_Y34_N30
\Mux4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\challenge[2]~input_o\ & ((\Mux4~6_combout\ & ((\Mux4~8_combout\))) # (!\Mux4~6_combout\ & (\Mux4~1_combout\)))) # (!\challenge[2]~input_o\ & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \challenge[2]~input_o\,
	datac => \Mux4~8_combout\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X38_Y36_N30
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\challenge[11]~input_o\ & ((\challenge[10]~input_o\) # ((\gen_ro:9:ro_inst|ro_counter\(1))))) # (!\challenge[11]~input_o\ & (!\challenge[10]~input_o\ & ((\gen_ro:8:ro_inst|ro_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[11]~input_o\,
	datab => \challenge[10]~input_o\,
	datac => \gen_ro:9:ro_inst|ro_counter\(1),
	datad => \gen_ro:8:ro_inst|ro_counter\(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X38_Y36_N0
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\challenge[10]~input_o\ & ((\Mux10~0_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(1)))) # (!\Mux10~0_combout\ & (\gen_ro:10:ro_inst|ro_counter\(1))))) # (!\challenge[10]~input_o\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(1),
	datab => \challenge[10]~input_o\,
	datac => \Mux10~0_combout\,
	datad => \gen_ro:11:ro_inst|ro_counter\(1),
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X39_Y35_N26
\Mux10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\challenge[10]~input_o\ & ((\challenge[11]~input_o\) # ((\gen_ro:14:ro_inst|ro_counter\(1))))) # (!\challenge[10]~input_o\ & (!\challenge[11]~input_o\ & ((\gen_ro:12:ro_inst|ro_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:14:ro_inst|ro_counter\(1),
	datad => \gen_ro:12:ro_inst|ro_counter\(1),
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X38_Y35_N16
\Mux10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\challenge[11]~input_o\ & ((\Mux10~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(1))) # (!\Mux10~7_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(1)))))) # (!\challenge[11]~input_o\ & (((\Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(1),
	datab => \gen_ro:13:ro_inst|ro_counter\(1),
	datac => \challenge[11]~input_o\,
	datad => \Mux10~7_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X39_Y34_N26
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\challenge[10]~input_o\ & (\challenge[11]~input_o\)) # (!\challenge[10]~input_o\ & ((\challenge[11]~input_o\ & (\gen_ro:1:ro_inst|ro_counter\(1))) # (!\challenge[11]~input_o\ & ((\gen_ro:0:ro_inst|ro_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:1:ro_inst|ro_counter\(1),
	datad => \gen_ro:0:ro_inst|ro_counter\(1),
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X39_Y34_N16
\Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\challenge[10]~input_o\ & ((\Mux10~4_combout\ & (\gen_ro:3:ro_inst|ro_counter\(1))) # (!\Mux10~4_combout\ & ((\gen_ro:2:ro_inst|ro_counter\(1)))))) # (!\challenge[10]~input_o\ & (((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \gen_ro:3:ro_inst|ro_counter\(1),
	datac => \Mux10~4_combout\,
	datad => \gen_ro:2:ro_inst|ro_counter\(1),
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X39_Y34_N10
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\challenge[10]~input_o\ & ((\challenge[11]~input_o\) # ((\gen_ro:6:ro_inst|ro_counter\(1))))) # (!\challenge[10]~input_o\ & (!\challenge[11]~input_o\ & (\gen_ro:4:ro_inst|ro_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:4:ro_inst|ro_counter\(1),
	datad => \gen_ro:6:ro_inst|ro_counter\(1),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X39_Y34_N24
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\challenge[11]~input_o\ & ((\Mux10~2_combout\ & ((\gen_ro:7:ro_inst|ro_counter\(1)))) # (!\Mux10~2_combout\ & (\gen_ro:5:ro_inst|ro_counter\(1))))) # (!\challenge[11]~input_o\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:5:ro_inst|ro_counter\(1),
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:7:ro_inst|ro_counter\(1),
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X39_Y34_N18
\Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\challenge[8]~input_o\ & (((\challenge[9]~input_o\)))) # (!\challenge[8]~input_o\ & ((\challenge[9]~input_o\ & ((\Mux10~3_combout\))) # (!\challenge[9]~input_o\ & (\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \Mux10~5_combout\,
	datac => \challenge[9]~input_o\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X37_Y34_N4
\Mux10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\challenge[8]~input_o\ & ((\Mux10~6_combout\ & ((\Mux10~8_combout\))) # (!\Mux10~6_combout\ & (\Mux10~1_combout\)))) # (!\challenge[8]~input_o\ & (((\Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \Mux10~1_combout\,
	datac => \Mux10~8_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X37_Y37_N24
\Mux11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\challenge[9]~input_o\ & ((\challenge[8]~input_o\) # ((\gen_ro:7:ro_inst|ro_counter\(0))))) # (!\challenge[9]~input_o\ & (!\challenge[8]~input_o\ & (\gen_ro:3:ro_inst|ro_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:3:ro_inst|ro_counter\(0),
	datad => \gen_ro:7:ro_inst|ro_counter\(0),
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X37_Y37_N18
\Mux11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\challenge[8]~input_o\ & ((\Mux11~7_combout\ & ((\gen_ro:15:ro_inst|ro_counter\(0)))) # (!\Mux11~7_combout\ & (\gen_ro:11:ro_inst|ro_counter\(0))))) # (!\challenge[8]~input_o\ & (((\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:11:ro_inst|ro_counter\(0),
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:15:ro_inst|ro_counter\(0),
	datad => \Mux11~7_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X38_Y37_N28
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\challenge[8]~input_o\ & (\challenge[9]~input_o\)) # (!\challenge[8]~input_o\ & ((\challenge[9]~input_o\ & ((\gen_ro:5:ro_inst|ro_counter\(0)))) # (!\challenge[9]~input_o\ & (\gen_ro:1:ro_inst|ro_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \challenge[9]~input_o\,
	datac => \gen_ro:1:ro_inst|ro_counter\(0),
	datad => \gen_ro:5:ro_inst|ro_counter\(0),
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X38_Y37_N30
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\challenge[8]~input_o\ & ((\Mux11~2_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(0)))) # (!\Mux11~2_combout\ & (\gen_ro:9:ro_inst|ro_counter\(0))))) # (!\challenge[8]~input_o\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \gen_ro:9:ro_inst|ro_counter\(0),
	datac => \gen_ro:13:ro_inst|ro_counter\(0),
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X37_Y37_N22
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\challenge[9]~input_o\ & (\challenge[8]~input_o\)) # (!\challenge[9]~input_o\ & ((\challenge[8]~input_o\ & ((\gen_ro:8:ro_inst|ro_counter\(0)))) # (!\challenge[8]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:0:ro_inst|ro_counter\(0),
	datad => \gen_ro:8:ro_inst|ro_counter\(0),
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X37_Y37_N0
\Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\challenge[9]~input_o\ & ((\Mux11~4_combout\ & ((\gen_ro:12:ro_inst|ro_counter\(0)))) # (!\Mux11~4_combout\ & (\gen_ro:4:ro_inst|ro_counter\(0))))) # (!\challenge[9]~input_o\ & (((\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \gen_ro:4:ro_inst|ro_counter\(0),
	datac => \Mux11~4_combout\,
	datad => \gen_ro:12:ro_inst|ro_counter\(0),
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X37_Y37_N26
\Mux11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\challenge[10]~input_o\ & (\challenge[11]~input_o\)) # (!\challenge[10]~input_o\ & ((\challenge[11]~input_o\ & (\Mux11~3_combout\)) # (!\challenge[11]~input_o\ & ((\Mux11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \Mux11~3_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X36_Y36_N0
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\challenge[9]~input_o\ & (((\challenge[8]~input_o\)))) # (!\challenge[9]~input_o\ & ((\challenge[8]~input_o\ & ((\gen_ro:10:ro_inst|ro_counter\(0)))) # (!\challenge[8]~input_o\ & (\gen_ro:2:ro_inst|ro_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \gen_ro:2:ro_inst|ro_counter\(0),
	datac => \challenge[8]~input_o\,
	datad => \gen_ro:10:ro_inst|ro_counter\(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X36_Y36_N14
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\challenge[9]~input_o\ & ((\Mux11~0_combout\ & (\gen_ro:14:ro_inst|ro_counter\(0))) # (!\Mux11~0_combout\ & ((\gen_ro:6:ro_inst|ro_counter\(0)))))) # (!\challenge[9]~input_o\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \gen_ro:14:ro_inst|ro_counter\(0),
	datac => \gen_ro:6:ro_inst|ro_counter\(0),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X37_Y37_N20
\Mux11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\challenge[10]~input_o\ & ((\Mux11~6_combout\ & (\Mux11~8_combout\)) # (!\Mux11~6_combout\ & ((\Mux11~1_combout\))))) # (!\challenge[10]~input_o\ & (((\Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \Mux11~8_combout\,
	datac => \Mux11~6_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X36_Y36_N2
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\challenge[2]~input_o\ & ((\challenge[3]~input_o\) # ((\gen_ro:10:ro_inst|ro_counter\(0))))) # (!\challenge[2]~input_o\ & (!\challenge[3]~input_o\ & ((\gen_ro:2:ro_inst|ro_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:10:ro_inst|ro_counter\(0),
	datad => \gen_ro:2:ro_inst|ro_counter\(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X36_Y36_N30
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\challenge[3]~input_o\ & ((\Mux5~0_combout\ & (\gen_ro:14:ro_inst|ro_counter\(0))) # (!\Mux5~0_combout\ & ((\gen_ro:6:ro_inst|ro_counter\(0)))))) # (!\challenge[3]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:14:ro_inst|ro_counter\(0),
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:6:ro_inst|ro_counter\(0),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X38_Y35_N28
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\challenge[3]~input_o\ & (((\challenge[2]~input_o\) # (\gen_ro:7:ro_inst|ro_counter\(0))))) # (!\challenge[3]~input_o\ & (\gen_ro:3:ro_inst|ro_counter\(0) & (!\challenge[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \gen_ro:3:ro_inst|ro_counter\(0),
	datac => \challenge[2]~input_o\,
	datad => \gen_ro:7:ro_inst|ro_counter\(0),
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X38_Y35_N14
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\challenge[2]~input_o\ & ((\Mux5~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(0))) # (!\Mux5~7_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(0)))))) # (!\challenge[2]~input_o\ & (((\Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \gen_ro:15:ro_inst|ro_counter\(0),
	datac => \gen_ro:11:ro_inst|ro_counter\(0),
	datad => \Mux5~7_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X38_Y37_N22
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\challenge[2]~input_o\ & (\challenge[3]~input_o\)) # (!\challenge[2]~input_o\ & ((\challenge[3]~input_o\ & ((\gen_ro:5:ro_inst|ro_counter\(0)))) # (!\challenge[3]~input_o\ & (\gen_ro:1:ro_inst|ro_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:1:ro_inst|ro_counter\(0),
	datad => \gen_ro:5:ro_inst|ro_counter\(0),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X38_Y37_N26
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\challenge[2]~input_o\ & ((\Mux5~2_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(0)))) # (!\Mux5~2_combout\ & (\gen_ro:9:ro_inst|ro_counter\(0))))) # (!\challenge[2]~input_o\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \gen_ro:9:ro_inst|ro_counter\(0),
	datac => \gen_ro:13:ro_inst|ro_counter\(0),
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X38_Y34_N16
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\challenge[3]~input_o\ & (\challenge[2]~input_o\)) # (!\challenge[3]~input_o\ & ((\challenge[2]~input_o\ & (\gen_ro:8:ro_inst|ro_counter\(0))) # (!\challenge[2]~input_o\ & ((\gen_ro:0:ro_inst|ro_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \challenge[2]~input_o\,
	datac => \gen_ro:8:ro_inst|ro_counter\(0),
	datad => \gen_ro:0:ro_inst|ro_counter\(0),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X38_Y34_N2
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\challenge[3]~input_o\ & ((\Mux5~4_combout\ & ((\gen_ro:12:ro_inst|ro_counter\(0)))) # (!\Mux5~4_combout\ & (\gen_ro:4:ro_inst|ro_counter\(0))))) # (!\challenge[3]~input_o\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \gen_ro:4:ro_inst|ro_counter\(0),
	datac => \gen_ro:12:ro_inst|ro_counter\(0),
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X37_Y34_N10
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\challenge[5]~input_o\ & ((\Mux5~3_combout\) # ((\challenge[4]~input_o\)))) # (!\challenge[5]~input_o\ & (((!\challenge[4]~input_o\ & \Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \challenge[5]~input_o\,
	datac => \challenge[4]~input_o\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X37_Y34_N8
\Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\challenge[4]~input_o\ & ((\Mux5~6_combout\ & ((\Mux5~8_combout\))) # (!\Mux5~6_combout\ & (\Mux5~1_combout\)))) # (!\challenge[4]~input_o\ & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \challenge[4]~input_o\,
	datac => \Mux5~8_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X37_Y34_N16
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\Mux11~9_combout\ & !\Mux5~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~9_combout\,
	datab => \Mux5~9_combout\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X37_Y34_N18
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\Mux4~9_combout\ & ((!\LessThan0~1_cout\) # (!\Mux10~9_combout\))) # (!\Mux4~9_combout\ & (!\Mux10~9_combout\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~9_combout\,
	datab => \Mux10~9_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X37_Y34_N20
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\Mux3~9_combout\ & (\Mux9~9_combout\ & !\LessThan0~3_cout\)) # (!\Mux3~9_combout\ & ((\Mux9~9_combout\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~9_combout\,
	datab => \Mux9~9_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X37_Y34_N22
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Mux8~9_combout\ & (\Mux2~9_combout\ & !\LessThan0~5_cout\)) # (!\Mux8~9_combout\ & ((\Mux2~9_combout\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~9_combout\,
	datab => \Mux2~9_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X37_Y34_N24
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\Mux7~9_combout\ & ((!\LessThan0~7_cout\) # (!\Mux1~9_combout\))) # (!\Mux7~9_combout\ & (!\Mux1~9_combout\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~9_combout\,
	datab => \Mux1~9_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X37_Y34_N26
\LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\Mux6~9_combout\ & ((\LessThan0~9_cout\) # (!\Mux0~9_combout\))) # (!\Mux6~9_combout\ & (\LessThan0~9_cout\ & !\Mux0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~9_combout\,
	datad => \Mux0~9_combout\,
	cin => \LessThan0~9_cout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X37_Y34_N0
\response~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \response~0_combout\ = (\req_resp_sig~q\ & ((\LessThan0~10_combout\))) # (!\req_resp_sig~q\ & (\response~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \req_resp_sig~q\,
	datac => \response~reg0_q\,
	datad => \LessThan0~10_combout\,
	combout => \response~0_combout\);

-- Location: FF_X37_Y34_N1
\response~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \response~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \response~reg0_q\);

-- Location: IOIBUF_X78_Y31_N1
\challenge[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(7),
	o => \challenge[7]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\challenge[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(6),
	o => \challenge[6]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\challenge[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(1),
	o => \challenge[1]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\challenge[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_challenge(0),
	o => \challenge[0]~input_o\);

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

ww_response <= \response~output_o\;
END structure;


