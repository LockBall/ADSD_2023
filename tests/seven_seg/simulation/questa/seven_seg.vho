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

-- DATE "11/24/2023 13:03:15"

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

ENTITY 	seven_seg IS
    PORT (
	max10_clk1_50 : IN std_logic;
	seg_0_0 : OUT std_logic;
	seg_0_1 : OUT std_logic;
	seg_0_2 : OUT std_logic;
	seg_0_3 : OUT std_logic;
	seg_0_4 : OUT std_logic;
	seg_0_5 : OUT std_logic;
	seg_0_6 : OUT std_logic
	);
END seven_seg;

-- Design Ports Information
-- seg_0_0	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_0_1	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_0_2	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_0_3	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_0_4	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_0_5	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_0_6	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- max10_clk1_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF seven_seg IS
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
SIGNAL ww_seg_0_0 : std_logic;
SIGNAL ww_seg_0_1 : std_logic;
SIGNAL ww_seg_0_2 : std_logic;
SIGNAL ww_seg_0_3 : std_logic;
SIGNAL ww_seg_0_4 : std_logic;
SIGNAL ww_seg_0_5 : std_logic;
SIGNAL ww_seg_0_6 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \max10_clk1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \seg_0_0~output_o\ : std_logic;
SIGNAL \seg_0_1~output_o\ : std_logic;
SIGNAL \seg_0_2~output_o\ : std_logic;
SIGNAL \seg_0_3~output_o\ : std_logic;
SIGNAL \seg_0_4~output_o\ : std_logic;
SIGNAL \seg_0_5~output_o\ : std_logic;
SIGNAL \seg_0_6~output_o\ : std_logic;
SIGNAL \max10_clk1_50~input_o\ : std_logic;
SIGNAL \max10_clk1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \count_time~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \count_time~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \count_time~2_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \count_time~3_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \count_time~4_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \count_time~5_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \count_time~6_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \count_time~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \count_time~8_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \count_time~9_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \count_time~10_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \count_time~11_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \count_time~12_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \count_0_seg[0]~0_combout\ : std_logic;
SIGNAL \count_0_seg[1]~1_combout\ : std_logic;
SIGNAL \count_0_seg[2]~2_combout\ : std_logic;
SIGNAL \count_0_seg[3]~3_combout\ : std_logic;
SIGNAL \count_0_seg[3]~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL count_0_seg : std_logic_vector(3 DOWNTO 0);
SIGNAL count_time : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_max10_clk1_50 <= max10_clk1_50;
seg_0_0 <= ww_seg_0_0;
seg_0_1 <= ww_seg_0_1;
seg_0_2 <= ww_seg_0_2;
seg_0_3 <= ww_seg_0_3;
seg_0_4 <= ww_seg_0_4;
seg_0_5 <= ww_seg_0_5;
seg_0_6 <= ww_seg_0_6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\max10_clk1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \max10_clk1_50~input_o\);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
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

-- Location: IOOBUF_X58_Y54_N16
\seg_0_0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg_0_0~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\seg_0_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg_0_1~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\seg_0_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg_0_2~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\seg_0_3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg_0_3~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\seg_0_4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg_0_4~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\seg_0_5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg_0_5~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\seg_0_6~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg_0_6~output_o\);

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

-- Location: LCCOMB_X65_Y50_N6
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count_time(0) $ (VCC)
-- \Add1~1\ = CARRY(count_time(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_time(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X65_Y50_N2
\count_time~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~1_combout\ = (\Add1~0_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \count_time~1_combout\);

-- Location: FF_X65_Y50_N3
\count_time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(0));

-- Location: LCCOMB_X65_Y50_N8
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (count_time(1) & (!\Add1~1\)) # (!count_time(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!count_time(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X65_Y50_N9
\count_time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(1));

-- Location: LCCOMB_X65_Y50_N10
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (count_time(2) & (\Add1~3\ $ (GND))) # (!count_time(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((count_time(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X65_Y50_N11
\count_time[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(2));

-- Location: LCCOMB_X65_Y50_N12
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (count_time(3) & (!\Add1~5\)) # (!count_time(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!count_time(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X65_Y50_N13
\count_time[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(3));

-- Location: LCCOMB_X65_Y50_N14
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (count_time(4) & (\Add1~7\ $ (GND))) # (!count_time(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((count_time(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X65_Y50_N15
\count_time[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(4));

-- Location: LCCOMB_X65_Y50_N16
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (count_time(5) & (!\Add1~9\)) # (!count_time(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!count_time(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X65_Y50_N17
\count_time[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(5));

-- Location: LCCOMB_X65_Y50_N18
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (count_time(6) & (\Add1~11\ $ (GND))) # (!count_time(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((count_time(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X65_Y50_N19
\count_time[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(6));

-- Location: LCCOMB_X65_Y50_N20
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (count_time(7) & (!\Add1~13\)) # (!count_time(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!count_time(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X65_Y50_N4
\count_time~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~0_combout\ = (\Add1~14_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datad => \Equal0~8_combout\,
	combout => \count_time~0_combout\);

-- Location: FF_X65_Y50_N5
\count_time[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(7));

-- Location: LCCOMB_X65_Y50_N22
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (count_time(8) & (\Add1~15\ $ (GND))) # (!count_time(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((count_time(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X65_Y50_N23
\count_time[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(8));

-- Location: LCCOMB_X65_Y50_N24
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (count_time(9) & (!\Add1~17\)) # (!count_time(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!count_time(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X65_Y50_N25
\count_time[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(9));

-- Location: LCCOMB_X65_Y50_N26
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (count_time(10) & (\Add1~19\ $ (GND))) # (!count_time(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((count_time(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X65_Y50_N27
\count_time[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(10));

-- Location: LCCOMB_X65_Y50_N28
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (count_time(11) & (!\Add1~21\)) # (!count_time(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!count_time(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X65_Y50_N29
\count_time[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(11));

-- Location: LCCOMB_X65_Y50_N30
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (count_time(12) & (\Add1~23\ $ (GND))) # (!count_time(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((count_time(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X65_Y50_N0
\count_time~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~2_combout\ = (\Add1~24_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~24_combout\,
	datad => \Equal0~8_combout\,
	combout => \count_time~2_combout\);

-- Location: FF_X65_Y50_N1
\count_time[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(12));

-- Location: LCCOMB_X65_Y49_N0
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (count_time(13) & (!\Add1~25\)) # (!count_time(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!count_time(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X64_Y49_N12
\count_time~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~3_combout\ = (!\Equal0~8_combout\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add1~26_combout\,
	combout => \count_time~3_combout\);

-- Location: FF_X64_Y49_N13
\count_time[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(13));

-- Location: LCCOMB_X65_Y49_N2
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (count_time(14) & (\Add1~27\ $ (GND))) # (!count_time(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((count_time(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X64_Y49_N10
\count_time~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~4_combout\ = (!\Equal0~8_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add1~28_combout\,
	combout => \count_time~4_combout\);

-- Location: FF_X64_Y49_N11
\count_time[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(14));

-- Location: LCCOMB_X65_Y49_N4
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (count_time(15) & (!\Add1~29\)) # (!count_time(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!count_time(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X64_Y49_N8
\count_time~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~5_combout\ = (!\Equal0~8_combout\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add1~30_combout\,
	combout => \count_time~5_combout\);

-- Location: FF_X64_Y49_N9
\count_time[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(15));

-- Location: LCCOMB_X65_Y49_N6
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (count_time(16) & (\Add1~31\ $ (GND))) # (!count_time(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((count_time(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X65_Y49_N7
\count_time[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(16));

-- Location: LCCOMB_X65_Y49_N8
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (count_time(17) & (!\Add1~33\)) # (!count_time(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!count_time(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X64_Y49_N26
\count_time~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~6_combout\ = (!\Equal0~8_combout\ & \Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add1~34_combout\,
	combout => \count_time~6_combout\);

-- Location: FF_X64_Y49_N27
\count_time[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(17));

-- Location: LCCOMB_X65_Y49_N10
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (count_time(18) & (\Add1~35\ $ (GND))) # (!count_time(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((count_time(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X65_Y49_N11
\count_time[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(18));

-- Location: LCCOMB_X65_Y49_N12
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (count_time(19) & (!\Add1~37\)) # (!count_time(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!count_time(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X64_Y49_N16
\count_time~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~7_combout\ = (!\Equal0~8_combout\ & \Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add1~38_combout\,
	combout => \count_time~7_combout\);

-- Location: FF_X64_Y49_N17
\count_time[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(19));

-- Location: LCCOMB_X64_Y49_N22
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count_time(17) & (count_time(19) & (!count_time(18) & !count_time(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(17),
	datab => count_time(19),
	datac => count_time(18),
	datad => count_time(16),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X65_Y49_N14
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (count_time(20) & (\Add1~39\ $ (GND))) # (!count_time(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((count_time(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X65_Y49_N28
\count_time~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~8_combout\ = (\Add1~40_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~40_combout\,
	datad => \Equal0~8_combout\,
	combout => \count_time~8_combout\);

-- Location: FF_X65_Y49_N29
\count_time[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(20));

-- Location: LCCOMB_X65_Y49_N16
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (count_time(21) & (!\Add1~41\)) # (!count_time(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!count_time(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X64_Y49_N24
\count_time~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~9_combout\ = (!\Equal0~8_combout\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add1~42_combout\,
	combout => \count_time~9_combout\);

-- Location: FF_X64_Y49_N25
\count_time[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(21));

-- Location: LCCOMB_X65_Y49_N18
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (count_time(22) & (\Add1~43\ $ (GND))) # (!count_time(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((count_time(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X65_Y49_N30
\count_time~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~10_combout\ = (!\Equal0~8_combout\ & \Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add1~44_combout\,
	combout => \count_time~10_combout\);

-- Location: FF_X65_Y49_N31
\count_time[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(22));

-- Location: LCCOMB_X65_Y49_N20
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (count_time(23) & (!\Add1~45\)) # (!count_time(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!count_time(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X64_Y49_N6
\count_time~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~11_combout\ = (!\Equal0~8_combout\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add1~46_combout\,
	combout => \count_time~11_combout\);

-- Location: FF_X64_Y49_N7
\count_time[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(23));

-- Location: LCCOMB_X64_Y49_N28
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (count_time(23) & (count_time(21) & (count_time(22) & count_time(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(23),
	datab => count_time(21),
	datac => count_time(22),
	datad => count_time(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X65_Y49_N22
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (count_time(24) & (\Add1~47\ $ (GND))) # (!count_time(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((count_time(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X65_Y49_N23
\count_time[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(24));

-- Location: LCCOMB_X65_Y49_N24
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (count_time(25) & (!\Add1~49\)) # (!count_time(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!count_time(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X64_Y49_N30
\count_time~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time~12_combout\ = (!\Equal0~8_combout\ & \Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add1~50_combout\,
	combout => \count_time~12_combout\);

-- Location: FF_X64_Y49_N31
\count_time[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(25));

-- Location: LCCOMB_X65_Y49_N26
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = count_time(26) $ (!\Add1~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(26),
	cin => \Add1~51\,
	combout => \Add1~52_combout\);

-- Location: FF_X65_Y49_N27
\count_time[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(26));

-- Location: LCCOMB_X64_Y49_N4
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (count_time(25) & (!count_time(24) & !count_time(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(25),
	datab => count_time(24),
	datad => count_time(26),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X64_Y50_N30
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count_time(7) & (!count_time(5) & (!count_time(4) & !count_time(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(7),
	datab => count_time(5),
	datac => count_time(4),
	datad => count_time(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X64_Y49_N18
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count_time(13) & (count_time(15) & (count_time(14) & count_time(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(13),
	datab => count_time(15),
	datac => count_time(14),
	datad => count_time(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X64_Y50_N20
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count_time(10) & (!count_time(8) & (!count_time(11) & !count_time(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(10),
	datab => count_time(8),
	datac => count_time(11),
	datad => count_time(9),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X64_Y49_N2
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count_time(0) & (!count_time(1) & (!count_time(3) & !count_time(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(0),
	datab => count_time(1),
	datac => count_time(3),
	datad => count_time(2),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X64_Y49_N20
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X64_Y49_N14
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X64_Y49_N0
\count_0_seg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_0_seg[0]~0_combout\ = \Equal0~8_combout\ $ (count_0_seg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => count_0_seg(0),
	combout => \count_0_seg[0]~0_combout\);

-- Location: FF_X64_Y49_N1
\count_0_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_0_seg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0_seg(0));

-- Location: LCCOMB_X66_Y49_N12
\count_0_seg[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_0_seg[1]~1_combout\ = count_0_seg(1) $ (((count_0_seg(0) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_0_seg(0),
	datac => count_0_seg(1),
	datad => \Equal0~8_combout\,
	combout => \count_0_seg[1]~1_combout\);

-- Location: FF_X66_Y49_N13
\count_0_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_0_seg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0_seg(1));

-- Location: LCCOMB_X66_Y49_N18
\count_0_seg[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_0_seg[2]~2_combout\ = count_0_seg(2) $ (((count_0_seg(1) & (count_0_seg(0) & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(0),
	datac => count_0_seg(2),
	datad => \Equal0~8_combout\,
	combout => \count_0_seg[2]~2_combout\);

-- Location: FF_X66_Y49_N19
\count_0_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_0_seg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0_seg(2));

-- Location: LCCOMB_X66_Y49_N24
\count_0_seg[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_0_seg[3]~3_combout\ = (count_0_seg(1) & (count_0_seg(2) & (count_0_seg(0) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(2),
	datac => count_0_seg(0),
	datad => \Equal0~8_combout\,
	combout => \count_0_seg[3]~3_combout\);

-- Location: LCCOMB_X66_Y49_N20
\count_0_seg[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_0_seg[3]~4_combout\ = count_0_seg(3) $ (\count_0_seg[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_0_seg(3),
	datad => \count_0_seg[3]~3_combout\,
	combout => \count_0_seg[3]~4_combout\);

-- Location: FF_X66_Y49_N21
\count_0_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_0_seg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0_seg(3));

-- Location: LCCOMB_X66_Y49_N22
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (count_0_seg(3) & (count_0_seg(0) & (count_0_seg(1) $ (count_0_seg(2))))) # (!count_0_seg(3) & (!count_0_seg(1) & (count_0_seg(0) $ (count_0_seg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(0),
	datad => count_0_seg(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X66_Y49_N28
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (count_0_seg(1) & ((count_0_seg(0) & (count_0_seg(3))) # (!count_0_seg(0) & ((count_0_seg(2)))))) # (!count_0_seg(1) & (count_0_seg(2) & (count_0_seg(3) $ (count_0_seg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(0),
	datad => count_0_seg(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X66_Y49_N2
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (count_0_seg(3) & (count_0_seg(2) & ((count_0_seg(1)) # (!count_0_seg(0))))) # (!count_0_seg(3) & (count_0_seg(1) & (!count_0_seg(0) & !count_0_seg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(0),
	datad => count_0_seg(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X66_Y49_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (count_0_seg(1) & ((count_0_seg(0) & ((count_0_seg(2)))) # (!count_0_seg(0) & (count_0_seg(3) & !count_0_seg(2))))) # (!count_0_seg(1) & (!count_0_seg(3) & (count_0_seg(0) $ (count_0_seg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(0),
	datad => count_0_seg(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X66_Y49_N26
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (count_0_seg(1) & (!count_0_seg(3) & (count_0_seg(0)))) # (!count_0_seg(1) & ((count_0_seg(2) & (!count_0_seg(3))) # (!count_0_seg(2) & ((count_0_seg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(0),
	datad => count_0_seg(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X66_Y49_N8
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (count_0_seg(1) & (!count_0_seg(3) & ((!count_0_seg(2))))) # (!count_0_seg(1) & (count_0_seg(0) & (count_0_seg(3) $ (!count_0_seg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(0),
	datad => count_0_seg(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X66_Y49_N10
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (count_0_seg(0) & ((count_0_seg(3)) # (count_0_seg(1) $ (count_0_seg(2))))) # (!count_0_seg(0) & ((count_0_seg(1)) # (count_0_seg(3) $ (count_0_seg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(0),
	datad => count_0_seg(2),
	combout => \Mux6~0_combout\);

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

ww_seg_0_0 <= \seg_0_0~output_o\;

ww_seg_0_1 <= \seg_0_1~output_o\;

ww_seg_0_2 <= \seg_0_2~output_o\;

ww_seg_0_3 <= \seg_0_3~output_o\;

ww_seg_0_4 <= \seg_0_4~output_o\;

ww_seg_0_5 <= \seg_0_5~output_o\;

ww_seg_0_6 <= \seg_0_6~output_o\;
END structure;


