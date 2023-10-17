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

-- DATE "10/17/2023 18:52:32"

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
	req_resp_in : IN std_logic;
	response : OUT std_logic
	);
END ro_puf;

-- Design Ports Information
-- challenge[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[6]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- response	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[10]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[11]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[8]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- challenge[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- req_resp_in	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- enable	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_in	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_req_resp_in : std_logic;
SIGNAL ww_response : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \gen_ro:13:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:11:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:10:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:0:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:12:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:8:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:2:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:7:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:1:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:6:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:5:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:15:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:4:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:14:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen_ro:3:ro_inst|inv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \req_resp_in~input_o\ : std_logic;
SIGNAL \challenge[8]~input_o\ : std_logic;
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
SIGNAL \challenge[11]~input_o\ : std_logic;
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
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \challenge[9]~input_o\ : std_logic;
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
SIGNAL \Mux6~5_combout\ : std_logic;
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
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \challenge[2]~input_o\ : std_logic;
SIGNAL \challenge[4]~input_o\ : std_logic;
SIGNAL \challenge[5]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \challenge[3]~input_o\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
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
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
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
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
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
SIGNAL \gen_ro:15:ro_inst|inv\ : std_logic_vector(0 TO 11);

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
ww_req_resp_in <= req_resp_in;
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

\gen_ro:8:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:8:ro_inst|inv\(11));

\gen_ro:2:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:2:ro_inst|inv\(11));

\gen_ro:7:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:7:ro_inst|inv\(11));

\gen_ro:1:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:1:ro_inst|inv\(11));

\gen_ro:6:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:6:ro_inst|inv\(11));

\gen_ro:5:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:5:ro_inst|inv\(11));

\gen_ro:15:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:15:ro_inst|inv\(11));

\gen_ro:4:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:4:ro_inst|inv\(11));

\gen_ro:14:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:14:ro_inst|inv\(11));

\gen_ro:3:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:3:ro_inst|inv\(11));

\gen_ro:9:ro_inst|inv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen_ro:9:ro_inst|inv\(11));
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X31_Y39_N16
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

-- Location: IOIBUF_X36_Y39_N22
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

-- Location: IOIBUF_X31_Y39_N8
\req_resp_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req_resp_in,
	o => \req_resp_in~input_o\);

-- Location: IOIBUF_X34_Y39_N1
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

-- Location: IOIBUF_X36_Y39_N15
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

-- Location: LCCOMB_X44_Y53_N24
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

-- Location: LCCOMB_X44_Y53_N2
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

-- Location: LCCOMB_X44_Y53_N20
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

-- Location: LCCOMB_X44_Y53_N10
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

-- Location: LCCOMB_X44_Y53_N16
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

-- Location: LCCOMB_X44_Y53_N6
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

-- Location: LCCOMB_X44_Y53_N4
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

-- Location: LCCOMB_X44_Y53_N8
\gen_ro:15:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(7) = LCELL(!\gen_ro:15:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:15:ro_inst|inv\(6),
	combout => \gen_ro:15:ro_inst|inv\(7));

-- Location: LCCOMB_X44_Y53_N14
\gen_ro:15:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(8) = LCELL(!\gen_ro:15:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:15:ro_inst|inv\(7),
	combout => \gen_ro:15:ro_inst|inv\(8));

-- Location: LCCOMB_X44_Y53_N18
\gen_ro:15:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(9) = LCELL(!\gen_ro:15:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:15:ro_inst|inv\(8),
	combout => \gen_ro:15:ro_inst|inv\(9));

-- Location: LCCOMB_X44_Y53_N12
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

-- Location: LCCOMB_X44_Y53_N22
\gen_ro:15:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|inv\(11) = LCELL(!\gen_ro:15:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:15:ro_inst|inv\(10),
	combout => \gen_ro:15:ro_inst|inv\(11));

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X35_Y35_N2
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

-- Location: FF_X35_Y35_N3
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

-- Location: LCCOMB_X35_Y35_N10
\gen_ro:15:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:15:ro_inst|ro_counter\(1) & (\gen_ro:15:ro_inst|ro_counter\(0) $ (VCC))) # (!\gen_ro:15:ro_inst|ro_counter\(1) & (\gen_ro:15:ro_inst|ro_counter\(0) & VCC))
-- \gen_ro:15:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:15:ro_inst|ro_counter\(1) & \gen_ro:15:ro_inst|ro_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(1),
	datab => \gen_ro:15:ro_inst|ro_counter\(0),
	datad => VCC,
	combout => \gen_ro:15:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:15:ro_inst|ro_counter[1]~6\);

-- Location: FF_X35_Y35_N11
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

-- Location: LCCOMB_X35_Y35_N12
\gen_ro:15:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:15:ro_inst|ro_counter\(2) & (!\gen_ro:15:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:15:ro_inst|ro_counter\(2) & ((\gen_ro:15:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:15:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:15:ro_inst|ro_counter[1]~6\) # (!\gen_ro:15:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:15:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:15:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:15:ro_inst|ro_counter[2]~8\);

-- Location: FF_X35_Y35_N13
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

-- Location: LCCOMB_X35_Y35_N14
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

-- Location: FF_X35_Y35_N15
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

-- Location: LCCOMB_X35_Y35_N16
\gen_ro:15:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:15:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:15:ro_inst|ro_counter\(4) & (!\gen_ro:15:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:15:ro_inst|ro_counter\(4) & ((\gen_ro:15:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:15:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:15:ro_inst|ro_counter[3]~10\) # (!\gen_ro:15:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:15:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:15:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:15:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:15:ro_inst|ro_counter[4]~12\);

-- Location: FF_X35_Y35_N17
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

-- Location: LCCOMB_X35_Y35_N18
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

-- Location: FF_X35_Y35_N19
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

-- Location: IOIBUF_X34_Y39_N15
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

-- Location: LCCOMB_X44_Y50_N20
\gen_ro:13:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(0) = LCELL((\gen_ro:13:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:13:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:13:ro_inst|inv\(0));

-- Location: LCCOMB_X44_Y50_N10
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

-- Location: LCCOMB_X44_Y50_N28
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

-- Location: LCCOMB_X44_Y50_N12
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

-- Location: LCCOMB_X44_Y50_N24
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

-- Location: LCCOMB_X44_Y50_N2
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

-- Location: LCCOMB_X44_Y50_N6
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

-- Location: LCCOMB_X44_Y50_N4
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

-- Location: LCCOMB_X44_Y50_N8
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

-- Location: LCCOMB_X44_Y50_N18
\gen_ro:13:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|inv\(9) = LCELL(!\gen_ro:13:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:13:ro_inst|inv\(8),
	combout => \gen_ro:13:ro_inst|inv\(9));

-- Location: LCCOMB_X44_Y50_N16
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

-- Location: LCCOMB_X44_Y50_N26
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

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X37_Y35_N30
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

-- Location: FF_X37_Y35_N31
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

-- Location: LCCOMB_X37_Y35_N0
\gen_ro:13:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:13:ro_inst|ro_counter\(0) & (\gen_ro:13:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:13:ro_inst|ro_counter\(0) & (\gen_ro:13:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:13:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:13:ro_inst|ro_counter\(0) & \gen_ro:13:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(0),
	datab => \gen_ro:13:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:13:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:13:ro_inst|ro_counter[1]~6\);

-- Location: FF_X37_Y35_N1
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

-- Location: LCCOMB_X37_Y35_N2
\gen_ro:13:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:13:ro_inst|ro_counter\(2) & (!\gen_ro:13:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:13:ro_inst|ro_counter\(2) & ((\gen_ro:13:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:13:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:13:ro_inst|ro_counter[1]~6\) # (!\gen_ro:13:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:13:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:13:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:13:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:13:ro_inst|ro_counter[2]~8\);

-- Location: FF_X37_Y35_N3
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

-- Location: LCCOMB_X37_Y35_N4
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

-- Location: FF_X37_Y35_N5
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

-- Location: LCCOMB_X37_Y35_N6
\gen_ro:13:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:13:ro_inst|ro_counter\(4) & (!\gen_ro:13:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:13:ro_inst|ro_counter\(4) & ((\gen_ro:13:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:13:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:13:ro_inst|ro_counter[3]~10\) # (!\gen_ro:13:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:13:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:13:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:13:ro_inst|ro_counter[4]~12\);

-- Location: FF_X37_Y35_N7
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

-- Location: LCCOMB_X37_Y35_N8
\gen_ro:13:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:13:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:13:ro_inst|ro_counter\(5) $ (!\gen_ro:13:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:13:ro_inst|ro_counter\(5),
	cin => \gen_ro:13:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:13:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X37_Y35_N9
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

-- Location: LCCOMB_X15_Y38_N14
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

-- Location: LCCOMB_X19_Y38_N10
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

-- Location: LCCOMB_X19_Y38_N28
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

-- Location: LCCOMB_X19_Y38_N2
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

-- Location: LCCOMB_X19_Y38_N20
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

-- Location: LCCOMB_X19_Y38_N6
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

-- Location: LCCOMB_X19_Y38_N12
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

-- Location: LCCOMB_X19_Y38_N18
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

-- Location: LCCOMB_X19_Y38_N24
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

-- Location: LCCOMB_X18_Y38_N28
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

-- Location: LCCOMB_X2_Y38_N24
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

-- Location: LCCOMB_X1_Y38_N4
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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X35_Y34_N10
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

-- Location: FF_X35_Y34_N11
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

-- Location: LCCOMB_X35_Y34_N16
\gen_ro:14:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:14:ro_inst|ro_counter\(0) & (\gen_ro:14:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:14:ro_inst|ro_counter\(0) & (\gen_ro:14:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:14:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:14:ro_inst|ro_counter\(0) & \gen_ro:14:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:14:ro_inst|ro_counter\(0),
	datab => \gen_ro:14:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:14:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:14:ro_inst|ro_counter[1]~6\);

-- Location: FF_X35_Y34_N17
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

-- Location: LCCOMB_X35_Y34_N18
\gen_ro:14:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:14:ro_inst|ro_counter\(2) & (!\gen_ro:14:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:14:ro_inst|ro_counter\(2) & ((\gen_ro:14:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:14:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:14:ro_inst|ro_counter[1]~6\) # (!\gen_ro:14:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:14:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:14:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:14:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:14:ro_inst|ro_counter[2]~8\);

-- Location: FF_X35_Y34_N19
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

-- Location: LCCOMB_X35_Y34_N20
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

-- Location: FF_X35_Y34_N21
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

-- Location: LCCOMB_X35_Y34_N22
\gen_ro:14:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:14:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:14:ro_inst|ro_counter\(4) & (!\gen_ro:14:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:14:ro_inst|ro_counter\(4) & ((\gen_ro:14:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:14:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:14:ro_inst|ro_counter[3]~10\) # (!\gen_ro:14:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:14:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:14:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:14:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:14:ro_inst|ro_counter[4]~12\);

-- Location: FF_X35_Y34_N23
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

-- Location: LCCOMB_X35_Y34_N24
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

-- Location: FF_X35_Y34_N25
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

-- Location: LCCOMB_X15_Y38_N24
\gen_ro:12:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|inv\(0) = LCELL((\gen_ro:12:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:12:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:12:ro_inst|inv\(0));

-- Location: LCCOMB_X14_Y38_N24
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

-- Location: LCCOMB_X13_Y38_N10
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

-- Location: LCCOMB_X13_Y38_N12
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

-- Location: LCCOMB_X13_Y38_N2
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

-- Location: LCCOMB_X13_Y38_N20
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

-- Location: LCCOMB_X13_Y38_N6
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

-- Location: LCCOMB_X13_Y38_N28
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

-- Location: LCCOMB_X13_Y38_N18
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

-- Location: LCCOMB_X13_Y38_N8
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

-- Location: LCCOMB_X9_Y38_N22
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

-- Location: LCCOMB_X1_Y38_N16
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X37_Y35_N10
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

-- Location: FF_X37_Y35_N11
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

-- Location: LCCOMB_X37_Y35_N20
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

-- Location: FF_X37_Y35_N21
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

-- Location: LCCOMB_X37_Y35_N22
\gen_ro:12:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:12:ro_inst|ro_counter\(2) & (!\gen_ro:12:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:12:ro_inst|ro_counter\(2) & ((\gen_ro:12:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:12:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:12:ro_inst|ro_counter[1]~6\) # (!\gen_ro:12:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:12:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:12:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:12:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:12:ro_inst|ro_counter[2]~8\);

-- Location: FF_X37_Y35_N23
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

-- Location: LCCOMB_X37_Y35_N24
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

-- Location: FF_X37_Y35_N25
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

-- Location: LCCOMB_X37_Y35_N26
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

-- Location: FF_X37_Y35_N27
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

-- Location: LCCOMB_X37_Y35_N28
\gen_ro:12:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:12:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:12:ro_inst|ro_counter\(5) $ (!\gen_ro:12:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:12:ro_inst|ro_counter\(5),
	cin => \gen_ro:12:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:12:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X37_Y35_N29
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

-- Location: LCCOMB_X37_Y34_N28
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

-- Location: LCCOMB_X37_Y34_N22
\Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\challenge[11]~input_o\ & ((\Mux6~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(5))) # (!\Mux6~7_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(5)))))) # (!\challenge[11]~input_o\ & (((\Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(5),
	datab => \challenge[11]~input_o\,
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

-- Location: LCCOMB_X57_Y39_N12
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

-- Location: LCCOMB_X57_Y39_N10
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

-- Location: LCCOMB_X57_Y39_N16
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

-- Location: LCCOMB_X57_Y39_N2
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

-- Location: LCCOMB_X57_Y39_N28
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

-- Location: LCCOMB_X57_Y39_N6
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

-- Location: LCCOMB_X57_Y39_N20
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

-- Location: LCCOMB_X57_Y39_N18
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

-- Location: LCCOMB_X57_Y39_N8
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

-- Location: LCCOMB_X58_Y39_N8
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

-- Location: LCCOMB_X77_Y39_N28
\gen_ro:10:ro_inst|inv[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|inv\(11) = LCELL(!\gen_ro:10:ro_inst|inv\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:10:ro_inst|inv\(10),
	combout => \gen_ro:10:ro_inst|inv\(11));

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X35_Y36_N30
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

-- Location: FF_X35_Y36_N31
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

-- Location: LCCOMB_X35_Y36_N18
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

-- Location: FF_X35_Y36_N19
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

-- Location: LCCOMB_X35_Y36_N20
\gen_ro:10:ro_inst|ro_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|ro_counter[2]~7_combout\ = (\gen_ro:10:ro_inst|ro_counter\(2) & (!\gen_ro:10:ro_inst|ro_counter[1]~6\)) # (!\gen_ro:10:ro_inst|ro_counter\(2) & ((\gen_ro:10:ro_inst|ro_counter[1]~6\) # (GND)))
-- \gen_ro:10:ro_inst|ro_counter[2]~8\ = CARRY((!\gen_ro:10:ro_inst|ro_counter[1]~6\) # (!\gen_ro:10:ro_inst|ro_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:10:ro_inst|ro_counter\(2),
	datad => VCC,
	cin => \gen_ro:10:ro_inst|ro_counter[1]~6\,
	combout => \gen_ro:10:ro_inst|ro_counter[2]~7_combout\,
	cout => \gen_ro:10:ro_inst|ro_counter[2]~8\);

-- Location: FF_X35_Y36_N21
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

-- Location: LCCOMB_X35_Y36_N22
\gen_ro:10:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:10:ro_inst|ro_counter\(3) & (\gen_ro:10:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:10:ro_inst|ro_counter\(3) & (!\gen_ro:10:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:10:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:10:ro_inst|ro_counter\(3) & !\gen_ro:10:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:10:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:10:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:10:ro_inst|ro_counter[3]~10\);

-- Location: FF_X35_Y36_N23
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

-- Location: LCCOMB_X35_Y36_N24
\gen_ro:10:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:10:ro_inst|ro_counter\(4) & (!\gen_ro:10:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:10:ro_inst|ro_counter\(4) & ((\gen_ro:10:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:10:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:10:ro_inst|ro_counter[3]~10\) # (!\gen_ro:10:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:10:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:10:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:10:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:10:ro_inst|ro_counter[4]~12\);

-- Location: FF_X35_Y36_N25
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

-- Location: LCCOMB_X35_Y36_N26
\gen_ro:10:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:10:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:10:ro_inst|ro_counter[4]~12\ $ (!\gen_ro:10:ro_inst|ro_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:10:ro_inst|ro_counter\(5),
	cin => \gen_ro:10:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:10:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X35_Y36_N27
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

-- Location: LCCOMB_X58_Y39_N22
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

-- Location: LCCOMB_X58_Y39_N0
\gen_ro:11:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|inv\(1) = LCELL(!\gen_ro:11:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:11:ro_inst|inv\(0),
	combout => \gen_ro:11:ro_inst|inv\(1));

-- Location: LCCOMB_X58_Y39_N24
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

-- Location: LCCOMB_X58_Y39_N18
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

-- Location: LCCOMB_X58_Y39_N28
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

-- Location: LCCOMB_X58_Y39_N6
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

-- Location: LCCOMB_X58_Y39_N20
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

-- Location: LCCOMB_X58_Y39_N10
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

-- Location: LCCOMB_X58_Y39_N16
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

-- Location: LCCOMB_X58_Y39_N14
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

-- Location: LCCOMB_X59_Y39_N20
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

-- Location: LCCOMB_X77_Y39_N2
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

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X35_Y38_N18
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

-- Location: FF_X35_Y38_N19
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

-- Location: LCCOMB_X35_Y38_N22
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

-- Location: FF_X35_Y38_N23
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

-- Location: LCCOMB_X35_Y38_N24
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

-- Location: FF_X35_Y38_N25
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

-- Location: LCCOMB_X35_Y38_N26
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

-- Location: FF_X35_Y38_N27
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

-- Location: LCCOMB_X35_Y38_N28
\gen_ro:11:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:11:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:11:ro_inst|ro_counter\(4) & (!\gen_ro:11:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:11:ro_inst|ro_counter\(4) & ((\gen_ro:11:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:11:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:11:ro_inst|ro_counter[3]~10\) # (!\gen_ro:11:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:11:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:11:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:11:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:11:ro_inst|ro_counter[4]~12\);

-- Location: FF_X35_Y38_N29
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

-- Location: LCCOMB_X35_Y38_N30
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

-- Location: FF_X35_Y38_N31
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

-- Location: LCCOMB_X37_Y19_N12
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

-- Location: LCCOMB_X37_Y19_N10
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

-- Location: LCCOMB_X37_Y19_N20
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

-- Location: LCCOMB_X37_Y19_N2
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

-- Location: LCCOMB_X37_Y19_N28
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

-- Location: LCCOMB_X37_Y19_N18
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

-- Location: LCCOMB_X37_Y19_N4
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

-- Location: LCCOMB_X41_Y19_N16
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

-- Location: LCCOMB_X45_Y1_N10
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

-- Location: LCCOMB_X45_Y1_N20
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

-- Location: LCCOMB_X45_Y1_N18
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

-- Location: LCCOMB_X45_Y1_N14
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

-- Location: CLKCTRL_G16
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

-- Location: LCCOMB_X35_Y37_N12
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

-- Location: FF_X35_Y37_N13
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

-- Location: LCCOMB_X35_Y37_N2
\gen_ro:8:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:8:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:8:ro_inst|ro_counter\(0) & (\gen_ro:8:ro_inst|ro_counter\(1) $ (VCC))) # (!\gen_ro:8:ro_inst|ro_counter\(0) & (\gen_ro:8:ro_inst|ro_counter\(1) & VCC))
-- \gen_ro:8:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:8:ro_inst|ro_counter\(0) & \gen_ro:8:ro_inst|ro_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:8:ro_inst|ro_counter\(0),
	datab => \gen_ro:8:ro_inst|ro_counter\(1),
	datad => VCC,
	combout => \gen_ro:8:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:8:ro_inst|ro_counter[1]~6\);

-- Location: FF_X35_Y37_N3
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

-- Location: LCCOMB_X35_Y37_N4
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

-- Location: FF_X35_Y37_N5
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

-- Location: LCCOMB_X35_Y37_N6
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

-- Location: FF_X35_Y37_N7
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

-- Location: LCCOMB_X35_Y37_N8
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

-- Location: FF_X35_Y37_N9
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

-- Location: LCCOMB_X35_Y37_N10
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

-- Location: FF_X35_Y37_N11
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

-- Location: LCCOMB_X15_Y38_N4
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

-- Location: LCCOMB_X13_Y37_N20
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

-- Location: LCCOMB_X13_Y37_N18
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

-- Location: LCCOMB_X13_Y37_N12
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

-- Location: LCCOMB_X13_Y37_N10
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

-- Location: LCCOMB_X13_Y37_N16
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

-- Location: LCCOMB_X13_Y37_N6
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

-- Location: LCCOMB_X13_Y37_N28
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

-- Location: LCCOMB_X13_Y37_N2
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

-- Location: LCCOMB_X13_Y37_N0
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

-- Location: LCCOMB_X9_Y38_N20
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

-- Location: LCCOMB_X1_Y38_N14
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

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X36_Y36_N2
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

-- Location: FF_X36_Y36_N3
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

-- Location: LCCOMB_X36_Y36_N6
\gen_ro:9:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:9:ro_inst|ro_counter\(1) & (\gen_ro:9:ro_inst|ro_counter\(0) $ (VCC))) # (!\gen_ro:9:ro_inst|ro_counter\(1) & (\gen_ro:9:ro_inst|ro_counter\(0) & VCC))
-- \gen_ro:9:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:9:ro_inst|ro_counter\(1) & \gen_ro:9:ro_inst|ro_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:9:ro_inst|ro_counter\(1),
	datab => \gen_ro:9:ro_inst|ro_counter\(0),
	datad => VCC,
	combout => \gen_ro:9:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:9:ro_inst|ro_counter[1]~6\);

-- Location: FF_X36_Y36_N7
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

-- Location: LCCOMB_X36_Y36_N8
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

-- Location: FF_X36_Y36_N9
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

-- Location: LCCOMB_X36_Y36_N10
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

-- Location: FF_X36_Y36_N11
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

-- Location: LCCOMB_X36_Y36_N12
\gen_ro:9:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:9:ro_inst|ro_counter\(4) & (!\gen_ro:9:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:9:ro_inst|ro_counter\(4) & ((\gen_ro:9:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:9:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:9:ro_inst|ro_counter[3]~10\) # (!\gen_ro:9:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:9:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:9:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:9:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:9:ro_inst|ro_counter[4]~12\);

-- Location: FF_X36_Y36_N13
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

-- Location: LCCOMB_X36_Y36_N14
\gen_ro:9:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:9:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:9:ro_inst|ro_counter\(5) $ (!\gen_ro:9:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:9:ro_inst|ro_counter\(5),
	cin => \gen_ro:9:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:9:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X36_Y36_N15
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

-- Location: LCCOMB_X36_Y34_N12
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\challenge[10]~input_o\ & (((\challenge[11]~input_o\)))) # (!\challenge[10]~input_o\ & ((\challenge[11]~input_o\ & ((\gen_ro:9:ro_inst|ro_counter\(5)))) # (!\challenge[11]~input_o\ & (\gen_ro:8:ro_inst|ro_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:8:ro_inst|ro_counter\(5),
	datab => \challenge[10]~input_o\,
	datac => \challenge[11]~input_o\,
	datad => \gen_ro:9:ro_inst|ro_counter\(5),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X36_Y34_N26
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\challenge[10]~input_o\ & ((\Mux6~0_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(5)))) # (!\Mux6~0_combout\ & (\gen_ro:10:ro_inst|ro_counter\(5))))) # (!\challenge[10]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(5),
	datab => \challenge[10]~input_o\,
	datac => \gen_ro:11:ro_inst|ro_counter\(5),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X31_Y39_N22
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

-- Location: LCCOMB_X45_Y53_N24
\gen_ro:0:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|inv\(0) = LCELL((\gen_ro:0:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:0:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:0:ro_inst|inv\(0));

-- Location: LCCOMB_X45_Y53_N12
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

-- Location: LCCOMB_X45_Y53_N28
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

-- Location: LCCOMB_X45_Y53_N16
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

-- Location: LCCOMB_X45_Y53_N20
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

-- Location: LCCOMB_X45_Y53_N10
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

-- Location: LCCOMB_X45_Y53_N2
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

-- Location: LCCOMB_X45_Y53_N0
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

-- Location: LCCOMB_X45_Y53_N6
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

-- Location: LCCOMB_X45_Y53_N4
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

-- Location: LCCOMB_X45_Y53_N18
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

-- Location: LCCOMB_X45_Y53_N26
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

-- Location: LCCOMB_X36_Y35_N22
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

-- Location: FF_X36_Y35_N23
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

-- Location: LCCOMB_X36_Y35_N12
\gen_ro:0:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:0:ro_inst|ro_counter\(1) & (\gen_ro:0:ro_inst|ro_counter\(0) $ (VCC))) # (!\gen_ro:0:ro_inst|ro_counter\(1) & (\gen_ro:0:ro_inst|ro_counter\(0) & VCC))
-- \gen_ro:0:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:0:ro_inst|ro_counter\(1) & \gen_ro:0:ro_inst|ro_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:0:ro_inst|ro_counter\(1),
	datab => \gen_ro:0:ro_inst|ro_counter\(0),
	datad => VCC,
	combout => \gen_ro:0:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:0:ro_inst|ro_counter[1]~6\);

-- Location: FF_X36_Y35_N13
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

-- Location: LCCOMB_X36_Y35_N14
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

-- Location: FF_X36_Y35_N15
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

-- Location: LCCOMB_X36_Y35_N16
\gen_ro:0:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:0:ro_inst|ro_counter\(3) & (\gen_ro:0:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:0:ro_inst|ro_counter\(3) & (!\gen_ro:0:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:0:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:0:ro_inst|ro_counter\(3) & !\gen_ro:0:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:0:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:0:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:0:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:0:ro_inst|ro_counter[3]~10\);

-- Location: FF_X36_Y35_N17
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

-- Location: LCCOMB_X36_Y35_N18
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

-- Location: FF_X36_Y35_N19
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

-- Location: LCCOMB_X36_Y35_N20
\gen_ro:0:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:0:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:0:ro_inst|ro_counter\(5) $ (!\gen_ro:0:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:0:ro_inst|ro_counter\(5),
	cin => \gen_ro:0:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:0:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X36_Y35_N21
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

-- Location: LCCOMB_X44_Y53_N26
\gen_ro:1:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(0) = LCELL((\gen_ro:1:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:1:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:1:ro_inst|inv\(0));

-- Location: LCCOMB_X45_Y52_N26
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

-- Location: LCCOMB_X45_Y52_N12
\gen_ro:1:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(2) = LCELL(!\gen_ro:1:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:1:ro_inst|inv\(1),
	combout => \gen_ro:1:ro_inst|inv\(2));

-- Location: LCCOMB_X45_Y52_N24
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

-- Location: LCCOMB_X45_Y52_N16
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

-- Location: LCCOMB_X45_Y52_N22
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

-- Location: LCCOMB_X45_Y52_N20
\gen_ro:1:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:1:ro_inst|inv\(6) = LCELL(!\gen_ro:1:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:1:ro_inst|inv\(5),
	combout => \gen_ro:1:ro_inst|inv\(6));

-- Location: LCCOMB_X45_Y52_N10
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

-- Location: LCCOMB_X45_Y52_N6
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

-- Location: LCCOMB_X45_Y52_N18
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

-- Location: LCCOMB_X45_Y52_N28
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

-- Location: LCCOMB_X45_Y52_N0
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

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X36_Y37_N26
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

-- Location: FF_X36_Y37_N27
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

-- Location: LCCOMB_X36_Y37_N16
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

-- Location: FF_X36_Y37_N17
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

-- Location: LCCOMB_X36_Y37_N18
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

-- Location: FF_X36_Y37_N19
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

-- Location: LCCOMB_X36_Y37_N20
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

-- Location: FF_X36_Y37_N21
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

-- Location: LCCOMB_X36_Y37_N22
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

-- Location: FF_X36_Y37_N23
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

-- Location: LCCOMB_X36_Y37_N24
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

-- Location: FF_X36_Y37_N25
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

-- Location: LCCOMB_X36_Y34_N0
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\challenge[10]~input_o\ & (((\challenge[11]~input_o\)))) # (!\challenge[10]~input_o\ & ((\challenge[11]~input_o\ & ((\gen_ro:1:ro_inst|ro_counter\(5)))) # (!\challenge[11]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \gen_ro:0:ro_inst|ro_counter\(5),
	datac => \challenge[11]~input_o\,
	datad => \gen_ro:1:ro_inst|ro_counter\(5),
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X37_Y19_N22
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

-- Location: LCCOMB_X37_Y20_N10
\gen_ro:2:ro_inst|inv[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(1) = LCELL(!\gen_ro:2:ro_inst|inv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|inv\(0),
	combout => \gen_ro:2:ro_inst|inv\(1));

-- Location: LCCOMB_X37_Y20_N12
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

-- Location: LCCOMB_X37_Y20_N6
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

-- Location: LCCOMB_X37_Y20_N20
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

-- Location: LCCOMB_X37_Y20_N22
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

-- Location: LCCOMB_X37_Y20_N28
\gen_ro:2:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|inv\(6) = LCELL(!\gen_ro:2:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:2:ro_inst|inv\(5),
	combout => \gen_ro:2:ro_inst|inv\(6));

-- Location: LCCOMB_X37_Y20_N2
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

-- Location: LCCOMB_X37_Y20_N24
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

-- Location: LCCOMB_X37_Y20_N18
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

-- Location: LCCOMB_X37_Y20_N8
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

-- Location: LCCOMB_X45_Y4_N24
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

-- Location: CLKCTRL_G18
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

-- Location: LCCOMB_X34_Y36_N10
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

-- Location: FF_X34_Y36_N11
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

-- Location: LCCOMB_X34_Y36_N0
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

-- Location: FF_X34_Y36_N1
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

-- Location: LCCOMB_X34_Y36_N2
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

-- Location: FF_X34_Y36_N3
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

-- Location: LCCOMB_X34_Y36_N4
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

-- Location: FF_X34_Y36_N5
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

-- Location: LCCOMB_X34_Y36_N6
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

-- Location: FF_X34_Y36_N7
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

-- Location: LCCOMB_X34_Y36_N8
\gen_ro:2:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:2:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:2:ro_inst|ro_counter[4]~12\ $ (!\gen_ro:2:ro_inst|ro_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:2:ro_inst|ro_counter\(5),
	cin => \gen_ro:2:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:2:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X34_Y36_N9
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

-- Location: LCCOMB_X40_Y19_N20
\gen_ro:3:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|inv\(0) = LCELL((\pulse_in~input_o\ & \gen_ro:3:ro_inst|inv\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_in~input_o\,
	datad => \gen_ro:3:ro_inst|inv\(11),
	combout => \gen_ro:3:ro_inst|inv\(0));

-- Location: LCCOMB_X40_Y19_N2
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

-- Location: LCCOMB_X40_Y19_N16
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

-- Location: LCCOMB_X40_Y19_N18
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

-- Location: LCCOMB_X40_Y19_N28
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

-- Location: LCCOMB_X40_Y19_N6
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

-- Location: LCCOMB_X40_Y19_N12
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

-- Location: LCCOMB_X40_Y19_N10
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

-- Location: LCCOMB_X43_Y1_N10
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

-- Location: LCCOMB_X43_Y1_N20
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

-- Location: LCCOMB_X43_Y1_N18
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

-- Location: LCCOMB_X43_Y1_N0
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

-- Location: CLKCTRL_G17
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

-- Location: LCCOMB_X36_Y38_N30
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

-- Location: FF_X36_Y38_N31
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

-- Location: LCCOMB_X36_Y38_N0
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

-- Location: FF_X36_Y38_N1
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

-- Location: LCCOMB_X36_Y38_N2
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

-- Location: FF_X36_Y38_N3
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

-- Location: LCCOMB_X36_Y38_N4
\gen_ro:3:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:3:ro_inst|ro_counter\(3) & (\gen_ro:3:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:3:ro_inst|ro_counter\(3) & (!\gen_ro:3:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:3:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:3:ro_inst|ro_counter\(3) & !\gen_ro:3:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:3:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:3:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:3:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:3:ro_inst|ro_counter[3]~10\);

-- Location: FF_X36_Y38_N5
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

-- Location: LCCOMB_X36_Y38_N6
\gen_ro:3:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:3:ro_inst|ro_counter\(4) & (!\gen_ro:3:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:3:ro_inst|ro_counter\(4) & ((\gen_ro:3:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:3:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:3:ro_inst|ro_counter[3]~10\) # (!\gen_ro:3:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:3:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:3:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:3:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:3:ro_inst|ro_counter[4]~12\);

-- Location: FF_X36_Y38_N7
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

-- Location: LCCOMB_X36_Y38_N8
\gen_ro:3:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:3:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:3:ro_inst|ro_counter[4]~12\ $ (!\gen_ro:3:ro_inst|ro_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:3:ro_inst|ro_counter\(5),
	cin => \gen_ro:3:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:3:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X36_Y38_N9
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

-- Location: LCCOMB_X36_Y34_N22
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\challenge[10]~input_o\ & ((\Mux6~4_combout\ & ((\gen_ro:3:ro_inst|ro_counter\(5)))) # (!\Mux6~4_combout\ & (\gen_ro:2:ro_inst|ro_counter\(5))))) # (!\challenge[10]~input_o\ & (\Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \Mux6~4_combout\,
	datac => \gen_ro:2:ro_inst|ro_counter\(5),
	datad => \gen_ro:3:ro_inst|ro_counter\(5),
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X58_Y39_N30
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

-- Location: LCCOMB_X58_Y37_N24
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

-- Location: LCCOMB_X58_Y37_N10
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

-- Location: LCCOMB_X58_Y37_N12
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

-- Location: LCCOMB_X58_Y37_N2
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

-- Location: LCCOMB_X58_Y37_N16
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

-- Location: LCCOMB_X58_Y37_N6
\gen_ro:7:ro_inst|inv[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|inv\(6) = LCELL(!\gen_ro:7:ro_inst|inv\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:7:ro_inst|inv\(5),
	combout => \gen_ro:7:ro_inst|inv\(6));

-- Location: LCCOMB_X58_Y37_N28
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

-- Location: LCCOMB_X58_Y37_N18
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

-- Location: LCCOMB_X58_Y37_N8
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

-- Location: LCCOMB_X62_Y39_N20
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

-- Location: LCCOMB_X77_Y39_N14
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X36_Y38_N28
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

-- Location: FF_X36_Y38_N29
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

-- Location: LCCOMB_X36_Y38_N12
\gen_ro:7:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:7:ro_inst|ro_counter\(1) & (\gen_ro:7:ro_inst|ro_counter\(0) $ (VCC))) # (!\gen_ro:7:ro_inst|ro_counter\(1) & (\gen_ro:7:ro_inst|ro_counter\(0) & VCC))
-- \gen_ro:7:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:7:ro_inst|ro_counter\(1) & \gen_ro:7:ro_inst|ro_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:7:ro_inst|ro_counter\(1),
	datab => \gen_ro:7:ro_inst|ro_counter\(0),
	datad => VCC,
	combout => \gen_ro:7:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:7:ro_inst|ro_counter[1]~6\);

-- Location: FF_X36_Y38_N13
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

-- Location: LCCOMB_X36_Y38_N14
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

-- Location: FF_X36_Y38_N15
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

-- Location: LCCOMB_X36_Y38_N16
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

-- Location: FF_X36_Y38_N17
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

-- Location: LCCOMB_X36_Y38_N18
\gen_ro:7:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:7:ro_inst|ro_counter\(4) & (!\gen_ro:7:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:7:ro_inst|ro_counter\(4) & ((\gen_ro:7:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:7:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:7:ro_inst|ro_counter[3]~10\) # (!\gen_ro:7:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:7:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:7:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:7:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:7:ro_inst|ro_counter[4]~12\);

-- Location: FF_X36_Y38_N19
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

-- Location: LCCOMB_X36_Y38_N20
\gen_ro:7:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:7:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:7:ro_inst|ro_counter\(5) $ (!\gen_ro:7:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:7:ro_inst|ro_counter\(5),
	cin => \gen_ro:7:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:7:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X36_Y38_N21
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

-- Location: LCCOMB_X58_Y39_N12
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

-- Location: LCCOMB_X58_Y39_N26
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

-- Location: LCCOMB_X58_Y39_N2
\gen_ro:5:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(2) = LCELL(!\gen_ro:5:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:5:ro_inst|inv\(1),
	combout => \gen_ro:5:ro_inst|inv\(2));

-- Location: LCCOMB_X59_Y39_N16
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

-- Location: LCCOMB_X59_Y39_N18
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

-- Location: LCCOMB_X59_Y39_N12
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

-- Location: LCCOMB_X59_Y39_N10
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

-- Location: LCCOMB_X59_Y39_N28
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

-- Location: LCCOMB_X59_Y39_N14
\gen_ro:5:ro_inst|inv[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(8) = LCELL(!\gen_ro:5:ro_inst|inv\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(7),
	combout => \gen_ro:5:ro_inst|inv\(8));

-- Location: LCCOMB_X60_Y39_N20
\gen_ro:5:ro_inst|inv[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|inv\(9) = LCELL(!\gen_ro:5:ro_inst|inv\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:5:ro_inst|inv\(8),
	combout => \gen_ro:5:ro_inst|inv\(9));

-- Location: LCCOMB_X76_Y39_N24
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

-- Location: LCCOMB_X77_Y39_N22
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

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X36_Y37_N4
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

-- Location: FF_X36_Y37_N5
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

-- Location: LCCOMB_X36_Y37_N6
\gen_ro:5:ro_inst|ro_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|ro_counter[1]~5_combout\ = (\gen_ro:5:ro_inst|ro_counter\(1) & (\gen_ro:5:ro_inst|ro_counter\(0) $ (VCC))) # (!\gen_ro:5:ro_inst|ro_counter\(1) & (\gen_ro:5:ro_inst|ro_counter\(0) & VCC))
-- \gen_ro:5:ro_inst|ro_counter[1]~6\ = CARRY((\gen_ro:5:ro_inst|ro_counter\(1) & \gen_ro:5:ro_inst|ro_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:5:ro_inst|ro_counter\(1),
	datab => \gen_ro:5:ro_inst|ro_counter\(0),
	datad => VCC,
	combout => \gen_ro:5:ro_inst|ro_counter[1]~5_combout\,
	cout => \gen_ro:5:ro_inst|ro_counter[1]~6\);

-- Location: FF_X36_Y37_N7
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

-- Location: LCCOMB_X36_Y37_N8
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

-- Location: FF_X36_Y37_N9
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

-- Location: LCCOMB_X36_Y37_N10
\gen_ro:5:ro_inst|ro_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|ro_counter[3]~9_combout\ = (\gen_ro:5:ro_inst|ro_counter\(3) & (\gen_ro:5:ro_inst|ro_counter[2]~8\ $ (GND))) # (!\gen_ro:5:ro_inst|ro_counter\(3) & (!\gen_ro:5:ro_inst|ro_counter[2]~8\ & VCC))
-- \gen_ro:5:ro_inst|ro_counter[3]~10\ = CARRY((\gen_ro:5:ro_inst|ro_counter\(3) & !\gen_ro:5:ro_inst|ro_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:5:ro_inst|ro_counter\(3),
	datad => VCC,
	cin => \gen_ro:5:ro_inst|ro_counter[2]~8\,
	combout => \gen_ro:5:ro_inst|ro_counter[3]~9_combout\,
	cout => \gen_ro:5:ro_inst|ro_counter[3]~10\);

-- Location: FF_X36_Y37_N11
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

-- Location: LCCOMB_X36_Y37_N12
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

-- Location: FF_X36_Y37_N13
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

-- Location: LCCOMB_X36_Y37_N14
\gen_ro:5:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:5:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:5:ro_inst|ro_counter\(5) $ (!\gen_ro:5:ro_inst|ro_counter[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:5:ro_inst|ro_counter\(5),
	cin => \gen_ro:5:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:5:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X36_Y37_N15
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

-- Location: LCCOMB_X44_Y53_N28
\gen_ro:6:ro_inst|inv[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(0) = LCELL((\gen_ro:6:ro_inst|inv\(11) & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_ro:6:ro_inst|inv\(11),
	datad => \pulse_in~input_o\,
	combout => \gen_ro:6:ro_inst|inv\(0));

-- Location: LCCOMB_X44_Y53_N30
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

-- Location: LCCOMB_X44_Y52_N12
\gen_ro:6:ro_inst|inv[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(2) = LCELL(!\gen_ro:6:ro_inst|inv\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen_ro:6:ro_inst|inv\(1),
	combout => \gen_ro:6:ro_inst|inv\(2));

-- Location: LCCOMB_X44_Y52_N24
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

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: LCCOMB_X44_Y52_N6
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

-- Location: LCCOMB_X44_Y52_N2
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

-- Location: LCCOMB_X44_Y52_N20
\gen_ro:6:ro_inst|inv[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|inv\(7) = LCELL(!\gen_ro:6:ro_inst|inv\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|inv\(6),
	combout => \gen_ro:6:ro_inst|inv\(7));

-- Location: LCCOMB_X44_Y52_N10
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

-- Location: LCCOMB_X44_Y52_N28
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

-- Location: LCCOMB_X44_Y52_N18
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

-- Location: LCCOMB_X44_Y52_N0
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

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X37_Y36_N10
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

-- Location: FF_X37_Y36_N11
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

-- Location: LCCOMB_X37_Y36_N0
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

-- Location: FF_X37_Y36_N1
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

-- Location: LCCOMB_X37_Y36_N2
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

-- Location: FF_X37_Y36_N3
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

-- Location: LCCOMB_X37_Y36_N4
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

-- Location: FF_X37_Y36_N5
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

-- Location: LCCOMB_X37_Y36_N6
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

-- Location: FF_X37_Y36_N7
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

-- Location: LCCOMB_X37_Y36_N8
\gen_ro:6:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:6:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:6:ro_inst|ro_counter[4]~12\ $ (!\gen_ro:6:ro_inst|ro_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:6:ro_inst|ro_counter\(5),
	cin => \gen_ro:6:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:6:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X37_Y36_N9
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

-- Location: LCCOMB_X52_Y39_N24
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

-- Location: LCCOMB_X51_Y39_N20
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

-- Location: LCCOMB_X51_Y39_N18
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

-- Location: LCCOMB_X51_Y39_N12
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

-- Location: LCCOMB_X51_Y39_N10
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

-- Location: LCCOMB_X51_Y39_N16
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

-- Location: LCCOMB_X51_Y39_N2
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

-- Location: LCCOMB_X51_Y39_N28
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

-- Location: LCCOMB_X51_Y39_N6
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

-- Location: LCCOMB_X51_Y39_N8
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

-- Location: LCCOMB_X52_Y39_N6
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

-- Location: LCCOMB_X77_Y39_N16
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

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X36_Y35_N24
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

-- Location: FF_X36_Y35_N25
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

-- Location: LCCOMB_X36_Y35_N0
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

-- Location: FF_X36_Y35_N1
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

-- Location: LCCOMB_X36_Y35_N2
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

-- Location: FF_X36_Y35_N3
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

-- Location: LCCOMB_X36_Y35_N4
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

-- Location: FF_X36_Y35_N5
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

-- Location: LCCOMB_X36_Y35_N6
\gen_ro:4:ro_inst|ro_counter[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|ro_counter[4]~11_combout\ = (\gen_ro:4:ro_inst|ro_counter\(4) & (!\gen_ro:4:ro_inst|ro_counter[3]~10\)) # (!\gen_ro:4:ro_inst|ro_counter\(4) & ((\gen_ro:4:ro_inst|ro_counter[3]~10\) # (GND)))
-- \gen_ro:4:ro_inst|ro_counter[4]~12\ = CARRY((!\gen_ro:4:ro_inst|ro_counter[3]~10\) # (!\gen_ro:4:ro_inst|ro_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:4:ro_inst|ro_counter\(4),
	datad => VCC,
	cin => \gen_ro:4:ro_inst|ro_counter[3]~10\,
	combout => \gen_ro:4:ro_inst|ro_counter[4]~11_combout\,
	cout => \gen_ro:4:ro_inst|ro_counter[4]~12\);

-- Location: FF_X36_Y35_N7
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

-- Location: LCCOMB_X36_Y35_N8
\gen_ro:4:ro_inst|ro_counter[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen_ro:4:ro_inst|ro_counter[5]~13_combout\ = \gen_ro:4:ro_inst|ro_counter[4]~12\ $ (!\gen_ro:4:ro_inst|ro_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_ro:4:ro_inst|ro_counter\(5),
	cin => \gen_ro:4:ro_inst|ro_counter[4]~12\,
	combout => \gen_ro:4:ro_inst|ro_counter[5]~13_combout\);

-- Location: FF_X36_Y35_N9
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

-- Location: LCCOMB_X36_Y34_N16
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\challenge[10]~input_o\ & ((\gen_ro:6:ro_inst|ro_counter\(5)) # ((\challenge[11]~input_o\)))) # (!\challenge[10]~input_o\ & (((!\challenge[11]~input_o\ & \gen_ro:4:ro_inst|ro_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:6:ro_inst|ro_counter\(5),
	datab => \challenge[10]~input_o\,
	datac => \challenge[11]~input_o\,
	datad => \gen_ro:4:ro_inst|ro_counter\(5),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X36_Y34_N10
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\challenge[11]~input_o\ & ((\Mux6~2_combout\ & (\gen_ro:7:ro_inst|ro_counter\(5))) # (!\Mux6~2_combout\ & ((\gen_ro:5:ro_inst|ro_counter\(5)))))) # (!\challenge[11]~input_o\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:7:ro_inst|ro_counter\(5),
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:5:ro_inst|ro_counter\(5),
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X36_Y34_N24
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\challenge[8]~input_o\ & (\challenge[9]~input_o\)) # (!\challenge[8]~input_o\ & ((\challenge[9]~input_o\ & ((\Mux6~3_combout\))) # (!\challenge[9]~input_o\ & (\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \challenge[9]~input_o\,
	datac => \Mux6~5_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X36_Y34_N2
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

-- Location: IOIBUF_X31_Y39_N1
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

-- Location: IOIBUF_X31_Y39_N29
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

-- Location: LCCOMB_X37_Y35_N14
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\challenge[4]~input_o\ & (\challenge[5]~input_o\)) # (!\challenge[4]~input_o\ & ((\challenge[5]~input_o\ & (\gen_ro:9:ro_inst|ro_counter\(5))) # (!\challenge[5]~input_o\ & ((\gen_ro:8:ro_inst|ro_counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \challenge[5]~input_o\,
	datac => \gen_ro:9:ro_inst|ro_counter\(5),
	datad => \gen_ro:8:ro_inst|ro_counter\(5),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X34_Y35_N16
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\challenge[4]~input_o\ & ((\Mux0~0_combout\ & (\gen_ro:11:ro_inst|ro_counter\(5))) # (!\Mux0~0_combout\ & ((\gen_ro:10:ro_inst|ro_counter\(5)))))) # (!\challenge[4]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:11:ro_inst|ro_counter\(5),
	datab => \gen_ro:10:ro_inst|ro_counter\(5),
	datac => \challenge[4]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X34_Y35_N2
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\challenge[4]~input_o\ & ((\challenge[5]~input_o\) # ((\gen_ro:14:ro_inst|ro_counter\(5))))) # (!\challenge[4]~input_o\ & (!\challenge[5]~input_o\ & ((\gen_ro:12:ro_inst|ro_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \challenge[5]~input_o\,
	datac => \gen_ro:14:ro_inst|ro_counter\(5),
	datad => \gen_ro:12:ro_inst|ro_counter\(5),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X34_Y35_N20
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\challenge[5]~input_o\ & ((\Mux0~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(5))) # (!\Mux0~7_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(5)))))) # (!\challenge[5]~input_o\ & (((\Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(5),
	datab => \challenge[5]~input_o\,
	datac => \gen_ro:13:ro_inst|ro_counter\(5),
	datad => \Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: IOIBUF_X34_Y39_N29
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

-- Location: LCCOMB_X37_Y35_N16
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\challenge[4]~input_o\ & (\challenge[5]~input_o\)) # (!\challenge[4]~input_o\ & ((\challenge[5]~input_o\ & (\gen_ro:1:ro_inst|ro_counter\(5))) # (!\challenge[5]~input_o\ & ((\gen_ro:0:ro_inst|ro_counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \challenge[5]~input_o\,
	datac => \gen_ro:1:ro_inst|ro_counter\(5),
	datad => \gen_ro:0:ro_inst|ro_counter\(5),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X34_Y35_N26
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~4_combout\ & (((\gen_ro:3:ro_inst|ro_counter\(5)) # (!\challenge[4]~input_o\)))) # (!\Mux0~4_combout\ & (\gen_ro:2:ro_inst|ro_counter\(5) & (\challenge[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => \gen_ro:2:ro_inst|ro_counter\(5),
	datac => \challenge[4]~input_o\,
	datad => \gen_ro:3:ro_inst|ro_counter\(5),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X34_Y35_N22
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\challenge[5]~input_o\ & (((\challenge[4]~input_o\)))) # (!\challenge[5]~input_o\ & ((\challenge[4]~input_o\ & (\gen_ro:6:ro_inst|ro_counter\(5))) # (!\challenge[4]~input_o\ & ((\gen_ro:4:ro_inst|ro_counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:6:ro_inst|ro_counter\(5),
	datab => \challenge[5]~input_o\,
	datac => \challenge[4]~input_o\,
	datad => \gen_ro:4:ro_inst|ro_counter\(5),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X34_Y35_N28
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\challenge[5]~input_o\ & ((\Mux0~2_combout\ & ((\gen_ro:7:ro_inst|ro_counter\(5)))) # (!\Mux0~2_combout\ & (\gen_ro:5:ro_inst|ro_counter\(5))))) # (!\challenge[5]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:5:ro_inst|ro_counter\(5),
	datab => \challenge[5]~input_o\,
	datac => \Mux0~2_combout\,
	datad => \gen_ro:7:ro_inst|ro_counter\(5),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X34_Y35_N12
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\challenge[2]~input_o\ & (\challenge[3]~input_o\)) # (!\challenge[2]~input_o\ & ((\challenge[3]~input_o\ & ((\Mux0~3_combout\))) # (!\challenge[3]~input_o\ & (\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \Mux0~5_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X34_Y35_N30
\Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\challenge[2]~input_o\ & ((\Mux0~6_combout\ & ((\Mux0~8_combout\))) # (!\Mux0~6_combout\ & (\Mux0~1_combout\)))) # (!\challenge[2]~input_o\ & (((\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~8_combout\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X35_Y34_N12
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\challenge[2]~input_o\ & ((\gen_ro:10:ro_inst|ro_counter\(4)) # ((\challenge[3]~input_o\)))) # (!\challenge[2]~input_o\ & (((!\challenge[3]~input_o\ & \gen_ro:2:ro_inst|ro_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(4),
	datab => \challenge[2]~input_o\,
	datac => \challenge[3]~input_o\,
	datad => \gen_ro:2:ro_inst|ro_counter\(4),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X35_Y34_N2
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\challenge[3]~input_o\ & ((\Mux1~0_combout\ & ((\gen_ro:14:ro_inst|ro_counter\(4)))) # (!\Mux1~0_combout\ & (\gen_ro:6:ro_inst|ro_counter\(4))))) # (!\challenge[3]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \gen_ro:6:ro_inst|ro_counter\(4),
	datac => \gen_ro:14:ro_inst|ro_counter\(4),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X35_Y34_N6
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\challenge[3]~input_o\ & (\challenge[2]~input_o\)) # (!\challenge[3]~input_o\ & ((\challenge[2]~input_o\ & ((\gen_ro:8:ro_inst|ro_counter\(4)))) # (!\challenge[2]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \challenge[2]~input_o\,
	datac => \gen_ro:0:ro_inst|ro_counter\(4),
	datad => \gen_ro:8:ro_inst|ro_counter\(4),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X35_Y34_N4
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

-- Location: LCCOMB_X36_Y37_N28
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\challenge[2]~input_o\ & (\challenge[3]~input_o\)) # (!\challenge[2]~input_o\ & ((\challenge[3]~input_o\ & ((\gen_ro:5:ro_inst|ro_counter\(4)))) # (!\challenge[3]~input_o\ & (\gen_ro:1:ro_inst|ro_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:1:ro_inst|ro_counter\(4),
	datad => \gen_ro:5:ro_inst|ro_counter\(4),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X35_Y34_N0
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(4)) # ((!\challenge[2]~input_o\)))) # (!\Mux1~2_combout\ & (((\challenge[2]~input_o\ & \gen_ro:9:ro_inst|ro_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(4),
	datab => \Mux1~2_combout\,
	datac => \challenge[2]~input_o\,
	datad => \gen_ro:9:ro_inst|ro_counter\(4),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X35_Y34_N14
\Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\challenge[4]~input_o\ & (\challenge[5]~input_o\)) # (!\challenge[4]~input_o\ & ((\challenge[5]~input_o\ & ((\Mux1~3_combout\))) # (!\challenge[5]~input_o\ & (\Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \challenge[5]~input_o\,
	datac => \Mux1~5_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X36_Y38_N22
\Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\challenge[2]~input_o\ & (((\challenge[3]~input_o\)))) # (!\challenge[2]~input_o\ & ((\challenge[3]~input_o\ & ((\gen_ro:7:ro_inst|ro_counter\(4)))) # (!\challenge[3]~input_o\ & (\gen_ro:3:ro_inst|ro_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:3:ro_inst|ro_counter\(4),
	datab => \challenge[2]~input_o\,
	datac => \challenge[3]~input_o\,
	datad => \gen_ro:7:ro_inst|ro_counter\(4),
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X35_Y34_N28
\Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\challenge[2]~input_o\ & ((\Mux1~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(4))) # (!\Mux1~7_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(4)))))) # (!\challenge[2]~input_o\ & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(4),
	datab => \challenge[2]~input_o\,
	datac => \gen_ro:11:ro_inst|ro_counter\(4),
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X35_Y34_N26
\Mux1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\challenge[4]~input_o\ & ((\Mux1~6_combout\ & ((\Mux1~8_combout\))) # (!\Mux1~6_combout\ & (\Mux1~1_combout\)))) # (!\challenge[4]~input_o\ & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \Mux1~1_combout\,
	datac => \Mux1~6_combout\,
	datad => \Mux1~8_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X35_Y34_N30
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\challenge[9]~input_o\ & (\challenge[8]~input_o\)) # (!\challenge[9]~input_o\ & ((\challenge[8]~input_o\ & (\gen_ro:10:ro_inst|ro_counter\(4))) # (!\challenge[8]~input_o\ & ((\gen_ro:2:ro_inst|ro_counter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:10:ro_inst|ro_counter\(4),
	datad => \gen_ro:2:ro_inst|ro_counter\(4),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X35_Y34_N8
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\challenge[9]~input_o\ & ((\Mux7~0_combout\ & ((\gen_ro:14:ro_inst|ro_counter\(4)))) # (!\Mux7~0_combout\ & (\gen_ro:6:ro_inst|ro_counter\(4))))) # (!\challenge[9]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \gen_ro:6:ro_inst|ro_counter\(4),
	datac => \gen_ro:14:ro_inst|ro_counter\(4),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X36_Y34_N14
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\challenge[8]~input_o\ & ((\challenge[9]~input_o\) # ((\gen_ro:8:ro_inst|ro_counter\(4))))) # (!\challenge[8]~input_o\ & (!\challenge[9]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \challenge[9]~input_o\,
	datac => \gen_ro:0:ro_inst|ro_counter\(4),
	datad => \gen_ro:8:ro_inst|ro_counter\(4),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X36_Y34_N8
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\challenge[9]~input_o\ & ((\Mux7~4_combout\ & (\gen_ro:12:ro_inst|ro_counter\(4))) # (!\Mux7~4_combout\ & ((\gen_ro:4:ro_inst|ro_counter\(4)))))) # (!\challenge[9]~input_o\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:12:ro_inst|ro_counter\(4),
	datab => \challenge[9]~input_o\,
	datac => \Mux7~4_combout\,
	datad => \gen_ro:4:ro_inst|ro_counter\(4),
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X36_Y37_N2
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\challenge[8]~input_o\ & (\challenge[9]~input_o\)) # (!\challenge[8]~input_o\ & ((\challenge[9]~input_o\ & ((\gen_ro:5:ro_inst|ro_counter\(4)))) # (!\challenge[9]~input_o\ & (\gen_ro:1:ro_inst|ro_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \challenge[9]~input_o\,
	datac => \gen_ro:1:ro_inst|ro_counter\(4),
	datad => \gen_ro:5:ro_inst|ro_counter\(4),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X36_Y34_N20
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\challenge[8]~input_o\ & ((\Mux7~2_combout\ & (\gen_ro:13:ro_inst|ro_counter\(4))) # (!\Mux7~2_combout\ & ((\gen_ro:9:ro_inst|ro_counter\(4)))))) # (!\challenge[8]~input_o\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \gen_ro:13:ro_inst|ro_counter\(4),
	datac => \Mux7~2_combout\,
	datad => \gen_ro:9:ro_inst|ro_counter\(4),
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X36_Y34_N30
\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\challenge[10]~input_o\ & (\challenge[11]~input_o\)) # (!\challenge[10]~input_o\ & ((\challenge[11]~input_o\ & ((\Mux7~3_combout\))) # (!\challenge[11]~input_o\ & (\Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \Mux7~5_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X36_Y38_N26
\Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\challenge[8]~input_o\ & (((\challenge[9]~input_o\)))) # (!\challenge[8]~input_o\ & ((\challenge[9]~input_o\ & ((\gen_ro:7:ro_inst|ro_counter\(4)))) # (!\challenge[9]~input_o\ & (\gen_ro:3:ro_inst|ro_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:3:ro_inst|ro_counter\(4),
	datab => \challenge[8]~input_o\,
	datac => \challenge[9]~input_o\,
	datad => \gen_ro:7:ro_inst|ro_counter\(4),
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X36_Y34_N28
\Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\challenge[8]~input_o\ & ((\Mux7~7_combout\ & ((\gen_ro:15:ro_inst|ro_counter\(4)))) # (!\Mux7~7_combout\ & (\gen_ro:11:ro_inst|ro_counter\(4))))) # (!\challenge[8]~input_o\ & (((\Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \gen_ro:11:ro_inst|ro_counter\(4),
	datac => \gen_ro:15:ro_inst|ro_counter\(4),
	datad => \Mux7~7_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X36_Y34_N18
\Mux7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\challenge[10]~input_o\ & ((\Mux7~6_combout\ & ((\Mux7~8_combout\))) # (!\Mux7~6_combout\ & (\Mux7~1_combout\)))) # (!\challenge[10]~input_o\ & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \challenge[10]~input_o\,
	datac => \Mux7~6_combout\,
	datad => \Mux7~8_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X35_Y38_N8
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\challenge[5]~input_o\ & (((\challenge[4]~input_o\) # (\gen_ro:5:ro_inst|ro_counter\(3))))) # (!\challenge[5]~input_o\ & (\gen_ro:4:ro_inst|ro_counter\(3) & (!\challenge[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:4:ro_inst|ro_counter\(3),
	datab => \challenge[5]~input_o\,
	datac => \challenge[4]~input_o\,
	datad => \gen_ro:5:ro_inst|ro_counter\(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X35_Y38_N10
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\challenge[4]~input_o\ & ((\Mux2~0_combout\ & ((\gen_ro:7:ro_inst|ro_counter\(3)))) # (!\Mux2~0_combout\ & (\gen_ro:6:ro_inst|ro_counter\(3))))) # (!\challenge[4]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:6:ro_inst|ro_counter\(3),
	datab => \challenge[4]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \gen_ro:7:ro_inst|ro_counter\(3),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X37_Y35_N18
\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\challenge[5]~input_o\ & ((\gen_ro:13:ro_inst|ro_counter\(3)) # ((\challenge[4]~input_o\)))) # (!\challenge[5]~input_o\ & (((!\challenge[4]~input_o\ & \gen_ro:12:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(3),
	datab => \challenge[5]~input_o\,
	datac => \challenge[4]~input_o\,
	datad => \gen_ro:12:ro_inst|ro_counter\(3),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X35_Y38_N6
\Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\challenge[4]~input_o\ & ((\Mux2~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(3))) # (!\Mux2~7_combout\ & ((\gen_ro:14:ro_inst|ro_counter\(3)))))) # (!\challenge[4]~input_o\ & (((\Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(3),
	datab => \challenge[4]~input_o\,
	datac => \Mux2~7_combout\,
	datad => \gen_ro:14:ro_inst|ro_counter\(3),
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X35_Y38_N0
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\challenge[4]~input_o\ & ((\challenge[5]~input_o\) # ((\gen_ro:2:ro_inst|ro_counter\(3))))) # (!\challenge[4]~input_o\ & (!\challenge[5]~input_o\ & ((\gen_ro:0:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \challenge[5]~input_o\,
	datac => \gen_ro:2:ro_inst|ro_counter\(3),
	datad => \gen_ro:0:ro_inst|ro_counter\(3),
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X35_Y38_N14
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\challenge[5]~input_o\ & ((\Mux2~4_combout\ & (\gen_ro:3:ro_inst|ro_counter\(3))) # (!\Mux2~4_combout\ & ((\gen_ro:1:ro_inst|ro_counter\(3)))))) # (!\challenge[5]~input_o\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:3:ro_inst|ro_counter\(3),
	datab => \gen_ro:1:ro_inst|ro_counter\(3),
	datac => \challenge[5]~input_o\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X35_Y38_N20
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\challenge[4]~input_o\ & ((\challenge[5]~input_o\) # ((\gen_ro:10:ro_inst|ro_counter\(3))))) # (!\challenge[4]~input_o\ & (!\challenge[5]~input_o\ & ((\gen_ro:8:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \challenge[5]~input_o\,
	datac => \gen_ro:10:ro_inst|ro_counter\(3),
	datad => \gen_ro:8:ro_inst|ro_counter\(3),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X35_Y38_N2
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\challenge[5]~input_o\ & ((\Mux2~2_combout\ & (\gen_ro:11:ro_inst|ro_counter\(3))) # (!\Mux2~2_combout\ & ((\gen_ro:9:ro_inst|ro_counter\(3)))))) # (!\challenge[5]~input_o\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:11:ro_inst|ro_counter\(3),
	datab => \challenge[5]~input_o\,
	datac => \gen_ro:9:ro_inst|ro_counter\(3),
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X35_Y38_N12
\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\challenge[2]~input_o\ & ((\challenge[3]~input_o\) # ((\Mux2~3_combout\)))) # (!\challenge[2]~input_o\ & (!\challenge[3]~input_o\ & (\Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \Mux2~5_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X35_Y38_N16
\Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\challenge[3]~input_o\ & ((\Mux2~6_combout\ & ((\Mux2~8_combout\))) # (!\Mux2~6_combout\ & (\Mux2~1_combout\)))) # (!\challenge[3]~input_o\ & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \challenge[3]~input_o\,
	datac => \Mux2~8_combout\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X37_Y35_N12
\Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\challenge[11]~input_o\ & ((\gen_ro:13:ro_inst|ro_counter\(3)) # ((\challenge[10]~input_o\)))) # (!\challenge[11]~input_o\ & (((!\challenge[10]~input_o\ & \gen_ro:12:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(3),
	datab => \challenge[11]~input_o\,
	datac => \challenge[10]~input_o\,
	datad => \gen_ro:12:ro_inst|ro_counter\(3),
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X36_Y35_N10
\Mux8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~7_combout\ & ((\gen_ro:15:ro_inst|ro_counter\(3)) # ((!\challenge[10]~input_o\)))) # (!\Mux8~7_combout\ & (((\gen_ro:14:ro_inst|ro_counter\(3) & \challenge[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(3),
	datab => \Mux8~7_combout\,
	datac => \gen_ro:14:ro_inst|ro_counter\(3),
	datad => \challenge[10]~input_o\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X36_Y34_N4
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\challenge[10]~input_o\ & (((\challenge[11]~input_o\)))) # (!\challenge[10]~input_o\ & ((\challenge[11]~input_o\ & ((\gen_ro:5:ro_inst|ro_counter\(3)))) # (!\challenge[11]~input_o\ & (\gen_ro:4:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:4:ro_inst|ro_counter\(3),
	datab => \challenge[10]~input_o\,
	datac => \challenge[11]~input_o\,
	datad => \gen_ro:5:ro_inst|ro_counter\(3),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X36_Y34_N6
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\challenge[10]~input_o\ & ((\Mux8~0_combout\ & ((\gen_ro:7:ro_inst|ro_counter\(3)))) # (!\Mux8~0_combout\ & (\gen_ro:6:ro_inst|ro_counter\(3))))) # (!\challenge[10]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:6:ro_inst|ro_counter\(3),
	datab => \challenge[10]~input_o\,
	datac => \Mux8~0_combout\,
	datad => \gen_ro:7:ro_inst|ro_counter\(3),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X34_Y36_N22
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\challenge[10]~input_o\ & ((\challenge[11]~input_o\) # ((\gen_ro:2:ro_inst|ro_counter\(3))))) # (!\challenge[10]~input_o\ & (!\challenge[11]~input_o\ & ((\gen_ro:0:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:2:ro_inst|ro_counter\(3),
	datad => \gen_ro:0:ro_inst|ro_counter\(3),
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X34_Y36_N16
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

-- Location: LCCOMB_X34_Y37_N8
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\challenge[10]~input_o\ & ((\challenge[11]~input_o\) # ((\gen_ro:10:ro_inst|ro_counter\(3))))) # (!\challenge[10]~input_o\ & (!\challenge[11]~input_o\ & ((\gen_ro:8:ro_inst|ro_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:10:ro_inst|ro_counter\(3),
	datad => \gen_ro:8:ro_inst|ro_counter\(3),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X35_Y36_N2
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\challenge[11]~input_o\ & ((\Mux8~2_combout\ & (\gen_ro:11:ro_inst|ro_counter\(3))) # (!\Mux8~2_combout\ & ((\gen_ro:9:ro_inst|ro_counter\(3)))))) # (!\challenge[11]~input_o\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:11:ro_inst|ro_counter\(3),
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:9:ro_inst|ro_counter\(3),
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X35_Y36_N28
\Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\challenge[9]~input_o\ & (\challenge[8]~input_o\)) # (!\challenge[9]~input_o\ & ((\challenge[8]~input_o\ & ((\Mux8~3_combout\))) # (!\challenge[8]~input_o\ & (\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \challenge[8]~input_o\,
	datac => \Mux8~5_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X35_Y36_N0
\Mux8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\challenge[9]~input_o\ & ((\Mux8~6_combout\ & (\Mux8~8_combout\)) # (!\Mux8~6_combout\ & ((\Mux8~1_combout\))))) # (!\challenge[9]~input_o\ & (((\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \Mux8~8_combout\,
	datac => \Mux8~1_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X35_Y35_N20
\Mux9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\challenge[9]~input_o\ & (\challenge[8]~input_o\)) # (!\challenge[9]~input_o\ & ((\challenge[8]~input_o\ & (\gen_ro:11:ro_inst|ro_counter\(2))) # (!\challenge[8]~input_o\ & ((\gen_ro:3:ro_inst|ro_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:11:ro_inst|ro_counter\(2),
	datad => \gen_ro:3:ro_inst|ro_counter\(2),
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X35_Y35_N26
\Mux9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\challenge[9]~input_o\ & ((\Mux9~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(2))) # (!\Mux9~7_combout\ & ((\gen_ro:7:ro_inst|ro_counter\(2)))))) # (!\challenge[9]~input_o\ & (((\Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(2),
	datab => \challenge[9]~input_o\,
	datac => \gen_ro:7:ro_inst|ro_counter\(2),
	datad => \Mux9~7_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X36_Y35_N28
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\challenge[9]~input_o\ & (\challenge[8]~input_o\)) # (!\challenge[9]~input_o\ & ((\challenge[8]~input_o\ & ((\gen_ro:9:ro_inst|ro_counter\(2)))) # (!\challenge[8]~input_o\ & (\gen_ro:1:ro_inst|ro_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:1:ro_inst|ro_counter\(2),
	datad => \gen_ro:9:ro_inst|ro_counter\(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X35_Y35_N4
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\challenge[9]~input_o\ & ((\Mux9~0_combout\ & (\gen_ro:13:ro_inst|ro_counter\(2))) # (!\Mux9~0_combout\ & ((\gen_ro:5:ro_inst|ro_counter\(2)))))) # (!\challenge[9]~input_o\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \gen_ro:13:ro_inst|ro_counter\(2),
	datac => \gen_ro:5:ro_inst|ro_counter\(2),
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X36_Y35_N30
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\challenge[9]~input_o\ & (((\gen_ro:4:ro_inst|ro_counter\(2)) # (\challenge[8]~input_o\)))) # (!\challenge[9]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(2) & ((!\challenge[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \gen_ro:0:ro_inst|ro_counter\(2),
	datac => \gen_ro:4:ro_inst|ro_counter\(2),
	datad => \challenge[8]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X35_Y35_N8
\Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\challenge[8]~input_o\ & ((\Mux9~4_combout\ & ((\gen_ro:12:ro_inst|ro_counter\(2)))) # (!\Mux9~4_combout\ & (\gen_ro:8:ro_inst|ro_counter\(2))))) # (!\challenge[8]~input_o\ & (((\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:8:ro_inst|ro_counter\(2),
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:12:ro_inst|ro_counter\(2),
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X34_Y36_N14
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\challenge[9]~input_o\ & ((\challenge[8]~input_o\) # ((\gen_ro:6:ro_inst|ro_counter\(2))))) # (!\challenge[9]~input_o\ & (!\challenge[8]~input_o\ & ((\gen_ro:2:ro_inst|ro_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:6:ro_inst|ro_counter\(2),
	datad => \gen_ro:2:ro_inst|ro_counter\(2),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X34_Y36_N20
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & (((\gen_ro:14:ro_inst|ro_counter\(2)) # (!\challenge[8]~input_o\)))) # (!\Mux9~2_combout\ & (\gen_ro:10:ro_inst|ro_counter\(2) & ((\challenge[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:10:ro_inst|ro_counter\(2),
	datab => \Mux9~2_combout\,
	datac => \gen_ro:14:ro_inst|ro_counter\(2),
	datad => \challenge[8]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X35_Y35_N6
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

-- Location: LCCOMB_X35_Y35_N0
\Mux9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\challenge[11]~input_o\ & ((\Mux9~6_combout\ & (\Mux9~8_combout\)) # (!\Mux9~6_combout\ & ((\Mux9~1_combout\))))) # (!\challenge[11]~input_o\ & (((\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~8_combout\,
	datab => \challenge[11]~input_o\,
	datac => \Mux9~1_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X35_Y35_N24
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\challenge[2]~input_o\ & ((\challenge[3]~input_o\) # ((\gen_ro:9:ro_inst|ro_counter\(2))))) # (!\challenge[2]~input_o\ & (!\challenge[3]~input_o\ & (\gen_ro:1:ro_inst|ro_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:1:ro_inst|ro_counter\(2),
	datad => \gen_ro:9:ro_inst|ro_counter\(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X34_Y35_N8
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\challenge[3]~input_o\ & ((\Mux3~0_combout\ & (\gen_ro:13:ro_inst|ro_counter\(2))) # (!\Mux3~0_combout\ & ((\gen_ro:5:ro_inst|ro_counter\(2)))))) # (!\challenge[3]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \gen_ro:13:ro_inst|ro_counter\(2),
	datac => \gen_ro:5:ro_inst|ro_counter\(2),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X35_Y35_N28
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\challenge[2]~input_o\ & ((\challenge[3]~input_o\) # ((\gen_ro:11:ro_inst|ro_counter\(2))))) # (!\challenge[2]~input_o\ & (!\challenge[3]~input_o\ & ((\gen_ro:3:ro_inst|ro_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:11:ro_inst|ro_counter\(2),
	datad => \gen_ro:3:ro_inst|ro_counter\(2),
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X35_Y35_N30
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

-- Location: LCCOMB_X34_Y35_N18
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\challenge[3]~input_o\ & ((\gen_ro:6:ro_inst|ro_counter\(2)) # ((\challenge[2]~input_o\)))) # (!\challenge[3]~input_o\ & (((!\challenge[2]~input_o\ & \gen_ro:2:ro_inst|ro_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:6:ro_inst|ro_counter\(2),
	datab => \challenge[3]~input_o\,
	datac => \challenge[2]~input_o\,
	datad => \gen_ro:2:ro_inst|ro_counter\(2),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X34_Y35_N4
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\challenge[2]~input_o\ & ((\Mux3~2_combout\ & (\gen_ro:14:ro_inst|ro_counter\(2))) # (!\Mux3~2_combout\ & ((\gen_ro:10:ro_inst|ro_counter\(2)))))) # (!\challenge[2]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:14:ro_inst|ro_counter\(2),
	datab => \gen_ro:10:ro_inst|ro_counter\(2),
	datac => \challenge[2]~input_o\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X36_Y35_N26
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\challenge[3]~input_o\ & ((\challenge[2]~input_o\) # ((\gen_ro:4:ro_inst|ro_counter\(2))))) # (!\challenge[3]~input_o\ & (!\challenge[2]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \challenge[2]~input_o\,
	datac => \gen_ro:0:ro_inst|ro_counter\(2),
	datad => \gen_ro:4:ro_inst|ro_counter\(2),
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X35_Y35_N22
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\challenge[2]~input_o\ & ((\Mux3~4_combout\ & ((\gen_ro:12:ro_inst|ro_counter\(2)))) # (!\Mux3~4_combout\ & (\gen_ro:8:ro_inst|ro_counter\(2))))) # (!\challenge[2]~input_o\ & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:8:ro_inst|ro_counter\(2),
	datab => \challenge[2]~input_o\,
	datac => \gen_ro:12:ro_inst|ro_counter\(2),
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X34_Y35_N6
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\challenge[4]~input_o\ & ((\challenge[5]~input_o\) # ((\Mux3~3_combout\)))) # (!\challenge[4]~input_o\ & (!\challenge[5]~input_o\ & ((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \challenge[5]~input_o\,
	datac => \Mux3~3_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X34_Y35_N0
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

-- Location: LCCOMB_X37_Y36_N28
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\challenge[10]~input_o\ & (\challenge[11]~input_o\)) # (!\challenge[10]~input_o\ & ((\challenge[11]~input_o\ & (\gen_ro:9:ro_inst|ro_counter\(1))) # (!\challenge[11]~input_o\ & ((\gen_ro:8:ro_inst|ro_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[10]~input_o\,
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:9:ro_inst|ro_counter\(1),
	datad => \gen_ro:8:ro_inst|ro_counter\(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X36_Y36_N24
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\challenge[10]~input_o\ & ((\Mux10~0_combout\ & (\gen_ro:11:ro_inst|ro_counter\(1))) # (!\Mux10~0_combout\ & ((\gen_ro:10:ro_inst|ro_counter\(1)))))) # (!\challenge[10]~input_o\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:11:ro_inst|ro_counter\(1),
	datab => \gen_ro:10:ro_inst|ro_counter\(1),
	datac => \challenge[10]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X36_Y36_N16
\Mux10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\challenge[11]~input_o\ & (\challenge[10]~input_o\)) # (!\challenge[11]~input_o\ & ((\challenge[10]~input_o\ & ((\gen_ro:14:ro_inst|ro_counter\(1)))) # (!\challenge[10]~input_o\ & (\gen_ro:12:ro_inst|ro_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[11]~input_o\,
	datab => \challenge[10]~input_o\,
	datac => \gen_ro:12:ro_inst|ro_counter\(1),
	datad => \gen_ro:14:ro_inst|ro_counter\(1),
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X36_Y36_N26
\Mux10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\challenge[11]~input_o\ & ((\Mux10~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(1))) # (!\Mux10~7_combout\ & ((\gen_ro:13:ro_inst|ro_counter\(1)))))) # (!\challenge[11]~input_o\ & (((\Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(1),
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:13:ro_inst|ro_counter\(1),
	datad => \Mux10~7_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X36_Y36_N22
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\challenge[11]~input_o\ & (((\challenge[10]~input_o\) # (\gen_ro:1:ro_inst|ro_counter\(1))))) # (!\challenge[11]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(1) & (!\challenge[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[11]~input_o\,
	datab => \gen_ro:0:ro_inst|ro_counter\(1),
	datac => \challenge[10]~input_o\,
	datad => \gen_ro:1:ro_inst|ro_counter\(1),
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X36_Y36_N4
\Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~4_combout\ & (((\gen_ro:3:ro_inst|ro_counter\(1))) # (!\challenge[10]~input_o\))) # (!\Mux10~4_combout\ & (\challenge[10]~input_o\ & ((\gen_ro:2:ro_inst|ro_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \challenge[10]~input_o\,
	datac => \gen_ro:3:ro_inst|ro_counter\(1),
	datad => \gen_ro:2:ro_inst|ro_counter\(1),
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X37_Y36_N26
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\challenge[11]~input_o\ & (((\challenge[10]~input_o\)))) # (!\challenge[11]~input_o\ & ((\challenge[10]~input_o\ & (\gen_ro:6:ro_inst|ro_counter\(1))) # (!\challenge[10]~input_o\ & ((\gen_ro:4:ro_inst|ro_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:6:ro_inst|ro_counter\(1),
	datab => \challenge[11]~input_o\,
	datac => \gen_ro:4:ro_inst|ro_counter\(1),
	datad => \challenge[10]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X37_Y36_N16
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\challenge[11]~input_o\ & ((\Mux10~2_combout\ & ((\gen_ro:7:ro_inst|ro_counter\(1)))) # (!\Mux10~2_combout\ & (\gen_ro:5:ro_inst|ro_counter\(1))))) # (!\challenge[11]~input_o\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:5:ro_inst|ro_counter\(1),
	datab => \challenge[11]~input_o\,
	datac => \Mux10~2_combout\,
	datad => \gen_ro:7:ro_inst|ro_counter\(1),
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X36_Y36_N18
\Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\challenge[8]~input_o\ & (\challenge[9]~input_o\)) # (!\challenge[8]~input_o\ & ((\challenge[9]~input_o\ & ((\Mux10~3_combout\))) # (!\challenge[9]~input_o\ & (\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \challenge[9]~input_o\,
	datac => \Mux10~5_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X36_Y36_N20
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

-- Location: LCCOMB_X36_Y36_N28
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\challenge[4]~input_o\ & (\challenge[5]~input_o\)) # (!\challenge[4]~input_o\ & ((\challenge[5]~input_o\ & ((\gen_ro:9:ro_inst|ro_counter\(1)))) # (!\challenge[5]~input_o\ & (\gen_ro:8:ro_inst|ro_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \challenge[5]~input_o\,
	datac => \gen_ro:8:ro_inst|ro_counter\(1),
	datad => \gen_ro:9:ro_inst|ro_counter\(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X36_Y36_N30
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\challenge[4]~input_o\ & ((\Mux4~0_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(1)))) # (!\Mux4~0_combout\ & (\gen_ro:10:ro_inst|ro_counter\(1))))) # (!\challenge[4]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \gen_ro:10:ro_inst|ro_counter\(1),
	datac => \gen_ro:11:ro_inst|ro_counter\(1),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X37_Y36_N12
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\challenge[4]~input_o\ & (((\challenge[5]~input_o\) # (\gen_ro:14:ro_inst|ro_counter\(1))))) # (!\challenge[4]~input_o\ & (\gen_ro:12:ro_inst|ro_counter\(1) & (!\challenge[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:12:ro_inst|ro_counter\(1),
	datab => \challenge[4]~input_o\,
	datac => \challenge[5]~input_o\,
	datad => \gen_ro:14:ro_inst|ro_counter\(1),
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X37_Y36_N30
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

-- Location: LCCOMB_X37_Y36_N14
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\challenge[4]~input_o\ & (((\challenge[5]~input_o\)))) # (!\challenge[4]~input_o\ & ((\challenge[5]~input_o\ & ((\gen_ro:1:ro_inst|ro_counter\(1)))) # (!\challenge[5]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \gen_ro:0:ro_inst|ro_counter\(1),
	datac => \challenge[5]~input_o\,
	datad => \gen_ro:1:ro_inst|ro_counter\(1),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X37_Y36_N20
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\challenge[4]~input_o\ & ((\Mux4~4_combout\ & (\gen_ro:3:ro_inst|ro_counter\(1))) # (!\Mux4~4_combout\ & ((\gen_ro:2:ro_inst|ro_counter\(1)))))) # (!\challenge[4]~input_o\ & (\Mux4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \Mux4~4_combout\,
	datac => \gen_ro:3:ro_inst|ro_counter\(1),
	datad => \gen_ro:2:ro_inst|ro_counter\(1),
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X37_Y36_N22
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\challenge[5]~input_o\ & (((\challenge[4]~input_o\)))) # (!\challenge[5]~input_o\ & ((\challenge[4]~input_o\ & (\gen_ro:6:ro_inst|ro_counter\(1))) # (!\challenge[4]~input_o\ & ((\gen_ro:4:ro_inst|ro_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \gen_ro:6:ro_inst|ro_counter\(1),
	datac => \gen_ro:4:ro_inst|ro_counter\(1),
	datad => \challenge[4]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X37_Y36_N24
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\challenge[5]~input_o\ & ((\Mux4~2_combout\ & ((\gen_ro:7:ro_inst|ro_counter\(1)))) # (!\Mux4~2_combout\ & (\gen_ro:5:ro_inst|ro_counter\(1))))) # (!\challenge[5]~input_o\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[5]~input_o\,
	datab => \gen_ro:5:ro_inst|ro_counter\(1),
	datac => \Mux4~2_combout\,
	datad => \gen_ro:7:ro_inst|ro_counter\(1),
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X37_Y36_N18
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\challenge[3]~input_o\ & (((\challenge[2]~input_o\) # (\Mux4~3_combout\)))) # (!\challenge[3]~input_o\ & (\Mux4~5_combout\ & (!\challenge[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \Mux4~5_combout\,
	datac => \challenge[2]~input_o\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X36_Y36_N0
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

-- Location: LCCOMB_X34_Y36_N24
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\challenge[2]~input_o\ & ((\challenge[3]~input_o\) # ((\gen_ro:10:ro_inst|ro_counter\(0))))) # (!\challenge[2]~input_o\ & (!\challenge[3]~input_o\ & (\gen_ro:2:ro_inst|ro_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[2]~input_o\,
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:2:ro_inst|ro_counter\(0),
	datad => \gen_ro:10:ro_inst|ro_counter\(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X34_Y36_N26
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\challenge[3]~input_o\ & ((\Mux5~0_combout\ & ((\gen_ro:14:ro_inst|ro_counter\(0)))) # (!\Mux5~0_combout\ & (\gen_ro:6:ro_inst|ro_counter\(0))))) # (!\challenge[3]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:6:ro_inst|ro_counter\(0),
	datab => \challenge[3]~input_o\,
	datac => \gen_ro:14:ro_inst|ro_counter\(0),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X35_Y37_N14
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\challenge[3]~input_o\ & (((\challenge[2]~input_o\)))) # (!\challenge[3]~input_o\ & ((\challenge[2]~input_o\ & ((\gen_ro:8:ro_inst|ro_counter\(0)))) # (!\challenge[2]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \gen_ro:0:ro_inst|ro_counter\(0),
	datac => \challenge[2]~input_o\,
	datad => \gen_ro:8:ro_inst|ro_counter\(0),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X35_Y37_N24
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\challenge[3]~input_o\ & ((\Mux5~4_combout\ & ((\gen_ro:12:ro_inst|ro_counter\(0)))) # (!\Mux5~4_combout\ & (\gen_ro:4:ro_inst|ro_counter\(0))))) # (!\challenge[3]~input_o\ & (\Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \Mux5~4_combout\,
	datac => \gen_ro:4:ro_inst|ro_counter\(0),
	datad => \gen_ro:12:ro_inst|ro_counter\(0),
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X36_Y37_N0
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

-- Location: LCCOMB_X35_Y37_N16
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\challenge[2]~input_o\ & ((\Mux5~2_combout\ & (\gen_ro:13:ro_inst|ro_counter\(0))) # (!\Mux5~2_combout\ & ((\gen_ro:9:ro_inst|ro_counter\(0)))))) # (!\challenge[2]~input_o\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:13:ro_inst|ro_counter\(0),
	datab => \challenge[2]~input_o\,
	datac => \Mux5~2_combout\,
	datad => \gen_ro:9:ro_inst|ro_counter\(0),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X35_Y37_N22
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\challenge[4]~input_o\ & (((\challenge[5]~input_o\)))) # (!\challenge[4]~input_o\ & ((\challenge[5]~input_o\ & ((\Mux5~3_combout\))) # (!\challenge[5]~input_o\ & (\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \Mux5~5_combout\,
	datac => \challenge[5]~input_o\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X36_Y38_N24
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\challenge[3]~input_o\ & ((\challenge[2]~input_o\) # ((\gen_ro:7:ro_inst|ro_counter\(0))))) # (!\challenge[3]~input_o\ & (!\challenge[2]~input_o\ & (\gen_ro:3:ro_inst|ro_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[3]~input_o\,
	datab => \challenge[2]~input_o\,
	datac => \gen_ro:3:ro_inst|ro_counter\(0),
	datad => \gen_ro:7:ro_inst|ro_counter\(0),
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X35_Y37_N20
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\challenge[2]~input_o\ & ((\Mux5~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(0))) # (!\Mux5~7_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(0)))))) # (!\challenge[2]~input_o\ & (((\Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(0),
	datab => \challenge[2]~input_o\,
	datac => \gen_ro:11:ro_inst|ro_counter\(0),
	datad => \Mux5~7_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X35_Y37_N30
\Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\challenge[4]~input_o\ & ((\Mux5~6_combout\ & ((\Mux5~8_combout\))) # (!\Mux5~6_combout\ & (\Mux5~1_combout\)))) # (!\challenge[4]~input_o\ & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[4]~input_o\,
	datab => \Mux5~1_combout\,
	datac => \Mux5~6_combout\,
	datad => \Mux5~8_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X34_Y36_N12
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\challenge[9]~input_o\ & (((\challenge[8]~input_o\)))) # (!\challenge[9]~input_o\ & ((\challenge[8]~input_o\ & (\gen_ro:10:ro_inst|ro_counter\(0))) # (!\challenge[8]~input_o\ & ((\gen_ro:2:ro_inst|ro_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \gen_ro:10:ro_inst|ro_counter\(0),
	datac => \challenge[8]~input_o\,
	datad => \gen_ro:2:ro_inst|ro_counter\(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X34_Y36_N30
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\challenge[9]~input_o\ & ((\Mux11~0_combout\ & ((\gen_ro:14:ro_inst|ro_counter\(0)))) # (!\Mux11~0_combout\ & (\gen_ro:6:ro_inst|ro_counter\(0))))) # (!\challenge[9]~input_o\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \gen_ro:6:ro_inst|ro_counter\(0),
	datac => \gen_ro:14:ro_inst|ro_counter\(0),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X35_Y37_N18
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\challenge[8]~input_o\ & ((\challenge[9]~input_o\) # ((\gen_ro:8:ro_inst|ro_counter\(0))))) # (!\challenge[8]~input_o\ & (!\challenge[9]~input_o\ & (\gen_ro:0:ro_inst|ro_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \challenge[9]~input_o\,
	datac => \gen_ro:0:ro_inst|ro_counter\(0),
	datad => \gen_ro:8:ro_inst|ro_counter\(0),
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X35_Y37_N0
\Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\challenge[9]~input_o\ & ((\Mux11~4_combout\ & ((\gen_ro:12:ro_inst|ro_counter\(0)))) # (!\Mux11~4_combout\ & (\gen_ro:4:ro_inst|ro_counter\(0))))) # (!\challenge[9]~input_o\ & (\Mux11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[9]~input_o\,
	datab => \Mux11~4_combout\,
	datac => \gen_ro:4:ro_inst|ro_counter\(0),
	datad => \gen_ro:12:ro_inst|ro_counter\(0),
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X36_Y37_N30
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

-- Location: LCCOMB_X35_Y37_N28
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\challenge[8]~input_o\ & ((\Mux11~2_combout\ & (\gen_ro:13:ro_inst|ro_counter\(0))) # (!\Mux11~2_combout\ & ((\gen_ro:9:ro_inst|ro_counter\(0)))))) # (!\challenge[8]~input_o\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[8]~input_o\,
	datab => \gen_ro:13:ro_inst|ro_counter\(0),
	datac => \Mux11~2_combout\,
	datad => \gen_ro:9:ro_inst|ro_counter\(0),
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X35_Y37_N26
\Mux11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\challenge[11]~input_o\ & (((\challenge[10]~input_o\) # (\Mux11~3_combout\)))) # (!\challenge[11]~input_o\ & (\Mux11~5_combout\ & (!\challenge[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge[11]~input_o\,
	datab => \Mux11~5_combout\,
	datac => \challenge[10]~input_o\,
	datad => \Mux11~3_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X36_Y38_N10
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

-- Location: LCCOMB_X34_Y36_N28
\Mux11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\challenge[8]~input_o\ & ((\Mux11~7_combout\ & (\gen_ro:15:ro_inst|ro_counter\(0))) # (!\Mux11~7_combout\ & ((\gen_ro:11:ro_inst|ro_counter\(0)))))) # (!\challenge[8]~input_o\ & (((\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_ro:15:ro_inst|ro_counter\(0),
	datab => \challenge[8]~input_o\,
	datac => \gen_ro:11:ro_inst|ro_counter\(0),
	datad => \Mux11~7_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X34_Y36_N18
\Mux11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\challenge[10]~input_o\ & ((\Mux11~6_combout\ & ((\Mux11~8_combout\))) # (!\Mux11~6_combout\ & (\Mux11~1_combout\)))) # (!\challenge[10]~input_o\ & (((\Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \challenge[10]~input_o\,
	datac => \Mux11~6_combout\,
	datad => \Mux11~8_combout\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X35_Y36_N6
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\Mux5~9_combout\ & \Mux11~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~9_combout\,
	datab => \Mux11~9_combout\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X35_Y36_N8
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\Mux10~9_combout\ & (\Mux4~9_combout\ & !\LessThan0~1_cout\)) # (!\Mux10~9_combout\ & ((\Mux4~9_combout\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~9_combout\,
	datab => \Mux4~9_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X35_Y36_N10
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\Mux9~9_combout\ & ((!\LessThan0~3_cout\) # (!\Mux3~9_combout\))) # (!\Mux9~9_combout\ & (!\Mux3~9_combout\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~9_combout\,
	datab => \Mux3~9_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X35_Y36_N12
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Mux2~9_combout\ & ((!\LessThan0~5_cout\) # (!\Mux8~9_combout\))) # (!\Mux2~9_combout\ & (!\Mux8~9_combout\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => \Mux8~9_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X35_Y36_N14
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\Mux1~9_combout\ & (\Mux7~9_combout\ & !\LessThan0~7_cout\)) # (!\Mux1~9_combout\ & ((\Mux7~9_combout\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~9_combout\,
	datab => \Mux7~9_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X35_Y36_N16
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

-- Location: LCCOMB_X35_Y36_N4
\response~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \response~0_combout\ = (\req_resp_in~input_o\ & ((\LessThan0~10_combout\))) # (!\req_resp_in~input_o\ & (\response~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \req_resp_in~input_o\,
	datac => \response~reg0_q\,
	datad => \LessThan0~10_combout\,
	combout => \response~0_combout\);

-- Location: FF_X35_Y36_N5
\response~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \response~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \response~reg0_q\);

-- Location: IOIBUF_X29_Y0_N29
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

-- Location: IOIBUF_X18_Y0_N22
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

-- Location: IOIBUF_X29_Y39_N8
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

-- Location: IOIBUF_X78_Y30_N22
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


