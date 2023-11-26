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

-- DATE "11/26/2023 15:44:36"

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
	key : IN std_logic_vector(0 DOWNTO 0);
	seg_0_0 : BUFFER std_logic;
	seg_0_1 : BUFFER std_logic;
	seg_0_2 : BUFFER std_logic;
	seg_0_3 : BUFFER std_logic;
	seg_0_4 : BUFFER std_logic;
	seg_0_5 : BUFFER std_logic;
	seg_0_6 : BUFFER std_logic
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
-- key[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
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
SIGNAL ww_key : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \count_0_seg~0_combout\ : std_logic;
SIGNAL \count_time[0]~27_combout\ : std_logic;
SIGNAL \count_time[0]~28\ : std_logic;
SIGNAL \count_time[1]~29_combout\ : std_logic;
SIGNAL \count_time[1]~30\ : std_logic;
SIGNAL \count_time[2]~31_combout\ : std_logic;
SIGNAL \count_time[2]~32\ : std_logic;
SIGNAL \count_time[3]~33_combout\ : std_logic;
SIGNAL \count_time[3]~34\ : std_logic;
SIGNAL \count_time[4]~35_combout\ : std_logic;
SIGNAL \count_time[4]~36\ : std_logic;
SIGNAL \count_time[5]~37_combout\ : std_logic;
SIGNAL \count_time[5]~38\ : std_logic;
SIGNAL \count_time[6]~39_combout\ : std_logic;
SIGNAL \count_time[6]~40\ : std_logic;
SIGNAL \count_time[7]~41_combout\ : std_logic;
SIGNAL \count_time[7]~42\ : std_logic;
SIGNAL \count_time[8]~43_combout\ : std_logic;
SIGNAL \count_time[8]~44\ : std_logic;
SIGNAL \count_time[9]~45_combout\ : std_logic;
SIGNAL \count_time[9]~46\ : std_logic;
SIGNAL \count_time[10]~47_combout\ : std_logic;
SIGNAL \count_time[10]~48\ : std_logic;
SIGNAL \count_time[11]~49_combout\ : std_logic;
SIGNAL \count_time[11]~50\ : std_logic;
SIGNAL \count_time[12]~51_combout\ : std_logic;
SIGNAL \count_time[12]~52\ : std_logic;
SIGNAL \count_time[13]~53_combout\ : std_logic;
SIGNAL \count_time[13]~54\ : std_logic;
SIGNAL \count_time[14]~55_combout\ : std_logic;
SIGNAL \count_time[14]~56\ : std_logic;
SIGNAL \count_time[15]~57_combout\ : std_logic;
SIGNAL \count_time[15]~58\ : std_logic;
SIGNAL \count_time[16]~59_combout\ : std_logic;
SIGNAL \count_time[16]~60\ : std_logic;
SIGNAL \count_time[17]~61_combout\ : std_logic;
SIGNAL \count_time[17]~62\ : std_logic;
SIGNAL \count_time[18]~63_combout\ : std_logic;
SIGNAL \count_time[18]~64\ : std_logic;
SIGNAL \count_time[19]~65_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \count_time[19]~66\ : std_logic;
SIGNAL \count_time[20]~67_combout\ : std_logic;
SIGNAL \count_time[20]~68\ : std_logic;
SIGNAL \count_time[21]~69_combout\ : std_logic;
SIGNAL \count_time[21]~70\ : std_logic;
SIGNAL \count_time[22]~71_combout\ : std_logic;
SIGNAL \count_time[22]~72\ : std_logic;
SIGNAL \count_time[23]~73_combout\ : std_logic;
SIGNAL \count_time[23]~74\ : std_logic;
SIGNAL \count_time[24]~75_combout\ : std_logic;
SIGNAL \count_time[24]~76\ : std_logic;
SIGNAL \count_time[25]~77_combout\ : std_logic;
SIGNAL \count_time[25]~78\ : std_logic;
SIGNAL \count_time[26]~79_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \count_0_seg[3]~1_combout\ : std_logic;
SIGNAL \count_0_seg~2_combout\ : std_logic;
SIGNAL \count_0_seg~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count_0_seg~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL count_time : std_logic_vector(26 DOWNTO 0);
SIGNAL count_0_seg : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_max10_clk1_50 <= max10_clk1_50;
ww_key <= key;
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

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: LCCOMB_X67_Y27_N18
\count_0_seg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_0_seg~0_combout\ = (\key[0]~input_o\ & !count_0_seg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[0]~input_o\,
	datac => count_0_seg(0),
	combout => \count_0_seg~0_combout\);

-- Location: LCCOMB_X66_Y27_N6
\count_time[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[0]~27_combout\ = count_time(0) $ (VCC)
-- \count_time[0]~28\ = CARRY(count_time(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(0),
	datad => VCC,
	combout => \count_time[0]~27_combout\,
	cout => \count_time[0]~28\);

-- Location: FF_X66_Y27_N7
\count_time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[0]~27_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(0));

-- Location: LCCOMB_X66_Y27_N8
\count_time[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[1]~29_combout\ = (count_time(1) & (!\count_time[0]~28\)) # (!count_time(1) & ((\count_time[0]~28\) # (GND)))
-- \count_time[1]~30\ = CARRY((!\count_time[0]~28\) # (!count_time(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(1),
	datad => VCC,
	cin => \count_time[0]~28\,
	combout => \count_time[1]~29_combout\,
	cout => \count_time[1]~30\);

-- Location: FF_X66_Y27_N9
\count_time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[1]~29_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(1));

-- Location: LCCOMB_X66_Y27_N10
\count_time[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[2]~31_combout\ = (count_time(2) & (\count_time[1]~30\ $ (GND))) # (!count_time(2) & (!\count_time[1]~30\ & VCC))
-- \count_time[2]~32\ = CARRY((count_time(2) & !\count_time[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(2),
	datad => VCC,
	cin => \count_time[1]~30\,
	combout => \count_time[2]~31_combout\,
	cout => \count_time[2]~32\);

-- Location: FF_X66_Y27_N11
\count_time[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[2]~31_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(2));

-- Location: LCCOMB_X66_Y27_N12
\count_time[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[3]~33_combout\ = (count_time(3) & (!\count_time[2]~32\)) # (!count_time(3) & ((\count_time[2]~32\) # (GND)))
-- \count_time[3]~34\ = CARRY((!\count_time[2]~32\) # (!count_time(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(3),
	datad => VCC,
	cin => \count_time[2]~32\,
	combout => \count_time[3]~33_combout\,
	cout => \count_time[3]~34\);

-- Location: FF_X66_Y27_N13
\count_time[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[3]~33_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(3));

-- Location: LCCOMB_X66_Y27_N14
\count_time[4]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[4]~35_combout\ = (count_time(4) & (\count_time[3]~34\ $ (GND))) # (!count_time(4) & (!\count_time[3]~34\ & VCC))
-- \count_time[4]~36\ = CARRY((count_time(4) & !\count_time[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(4),
	datad => VCC,
	cin => \count_time[3]~34\,
	combout => \count_time[4]~35_combout\,
	cout => \count_time[4]~36\);

-- Location: FF_X66_Y27_N15
\count_time[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[4]~35_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(4));

-- Location: LCCOMB_X66_Y27_N16
\count_time[5]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[5]~37_combout\ = (count_time(5) & (!\count_time[4]~36\)) # (!count_time(5) & ((\count_time[4]~36\) # (GND)))
-- \count_time[5]~38\ = CARRY((!\count_time[4]~36\) # (!count_time(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(5),
	datad => VCC,
	cin => \count_time[4]~36\,
	combout => \count_time[5]~37_combout\,
	cout => \count_time[5]~38\);

-- Location: FF_X66_Y27_N17
\count_time[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[5]~37_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(5));

-- Location: LCCOMB_X66_Y27_N18
\count_time[6]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[6]~39_combout\ = (count_time(6) & (\count_time[5]~38\ $ (GND))) # (!count_time(6) & (!\count_time[5]~38\ & VCC))
-- \count_time[6]~40\ = CARRY((count_time(6) & !\count_time[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(6),
	datad => VCC,
	cin => \count_time[5]~38\,
	combout => \count_time[6]~39_combout\,
	cout => \count_time[6]~40\);

-- Location: FF_X66_Y27_N19
\count_time[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[6]~39_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(6));

-- Location: LCCOMB_X66_Y27_N20
\count_time[7]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[7]~41_combout\ = (count_time(7) & (!\count_time[6]~40\)) # (!count_time(7) & ((\count_time[6]~40\) # (GND)))
-- \count_time[7]~42\ = CARRY((!\count_time[6]~40\) # (!count_time(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(7),
	datad => VCC,
	cin => \count_time[6]~40\,
	combout => \count_time[7]~41_combout\,
	cout => \count_time[7]~42\);

-- Location: FF_X66_Y27_N21
\count_time[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[7]~41_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(7));

-- Location: LCCOMB_X66_Y27_N22
\count_time[8]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[8]~43_combout\ = (count_time(8) & (\count_time[7]~42\ $ (GND))) # (!count_time(8) & (!\count_time[7]~42\ & VCC))
-- \count_time[8]~44\ = CARRY((count_time(8) & !\count_time[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(8),
	datad => VCC,
	cin => \count_time[7]~42\,
	combout => \count_time[8]~43_combout\,
	cout => \count_time[8]~44\);

-- Location: FF_X66_Y27_N23
\count_time[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[8]~43_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(8));

-- Location: LCCOMB_X66_Y27_N24
\count_time[9]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[9]~45_combout\ = (count_time(9) & (!\count_time[8]~44\)) # (!count_time(9) & ((\count_time[8]~44\) # (GND)))
-- \count_time[9]~46\ = CARRY((!\count_time[8]~44\) # (!count_time(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(9),
	datad => VCC,
	cin => \count_time[8]~44\,
	combout => \count_time[9]~45_combout\,
	cout => \count_time[9]~46\);

-- Location: FF_X66_Y27_N25
\count_time[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[9]~45_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(9));

-- Location: LCCOMB_X66_Y27_N26
\count_time[10]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[10]~47_combout\ = (count_time(10) & (\count_time[9]~46\ $ (GND))) # (!count_time(10) & (!\count_time[9]~46\ & VCC))
-- \count_time[10]~48\ = CARRY((count_time(10) & !\count_time[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(10),
	datad => VCC,
	cin => \count_time[9]~46\,
	combout => \count_time[10]~47_combout\,
	cout => \count_time[10]~48\);

-- Location: FF_X66_Y27_N27
\count_time[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[10]~47_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(10));

-- Location: LCCOMB_X66_Y27_N28
\count_time[11]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[11]~49_combout\ = (count_time(11) & (!\count_time[10]~48\)) # (!count_time(11) & ((\count_time[10]~48\) # (GND)))
-- \count_time[11]~50\ = CARRY((!\count_time[10]~48\) # (!count_time(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(11),
	datad => VCC,
	cin => \count_time[10]~48\,
	combout => \count_time[11]~49_combout\,
	cout => \count_time[11]~50\);

-- Location: FF_X66_Y27_N29
\count_time[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[11]~49_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(11));

-- Location: LCCOMB_X66_Y27_N30
\count_time[12]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[12]~51_combout\ = (count_time(12) & (\count_time[11]~50\ $ (GND))) # (!count_time(12) & (!\count_time[11]~50\ & VCC))
-- \count_time[12]~52\ = CARRY((count_time(12) & !\count_time[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(12),
	datad => VCC,
	cin => \count_time[11]~50\,
	combout => \count_time[12]~51_combout\,
	cout => \count_time[12]~52\);

-- Location: FF_X66_Y27_N31
\count_time[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[12]~51_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(12));

-- Location: LCCOMB_X66_Y26_N0
\count_time[13]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[13]~53_combout\ = (count_time(13) & (!\count_time[12]~52\)) # (!count_time(13) & ((\count_time[12]~52\) # (GND)))
-- \count_time[13]~54\ = CARRY((!\count_time[12]~52\) # (!count_time(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(13),
	datad => VCC,
	cin => \count_time[12]~52\,
	combout => \count_time[13]~53_combout\,
	cout => \count_time[13]~54\);

-- Location: FF_X66_Y26_N1
\count_time[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[13]~53_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(13));

-- Location: LCCOMB_X66_Y26_N2
\count_time[14]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[14]~55_combout\ = (count_time(14) & (\count_time[13]~54\ $ (GND))) # (!count_time(14) & (!\count_time[13]~54\ & VCC))
-- \count_time[14]~56\ = CARRY((count_time(14) & !\count_time[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(14),
	datad => VCC,
	cin => \count_time[13]~54\,
	combout => \count_time[14]~55_combout\,
	cout => \count_time[14]~56\);

-- Location: FF_X67_Y27_N29
\count_time[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	asdata => \count_time[14]~55_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(14));

-- Location: LCCOMB_X66_Y26_N4
\count_time[15]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[15]~57_combout\ = (count_time(15) & (!\count_time[14]~56\)) # (!count_time(15) & ((\count_time[14]~56\) # (GND)))
-- \count_time[15]~58\ = CARRY((!\count_time[14]~56\) # (!count_time(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(15),
	datad => VCC,
	cin => \count_time[14]~56\,
	combout => \count_time[15]~57_combout\,
	cout => \count_time[15]~58\);

-- Location: FF_X66_Y26_N5
\count_time[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[15]~57_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(15));

-- Location: LCCOMB_X66_Y26_N6
\count_time[16]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[16]~59_combout\ = (count_time(16) & (\count_time[15]~58\ $ (GND))) # (!count_time(16) & (!\count_time[15]~58\ & VCC))
-- \count_time[16]~60\ = CARRY((count_time(16) & !\count_time[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(16),
	datad => VCC,
	cin => \count_time[15]~58\,
	combout => \count_time[16]~59_combout\,
	cout => \count_time[16]~60\);

-- Location: FF_X66_Y26_N7
\count_time[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[16]~59_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(16));

-- Location: LCCOMB_X66_Y26_N8
\count_time[17]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[17]~61_combout\ = (count_time(17) & (!\count_time[16]~60\)) # (!count_time(17) & ((\count_time[16]~60\) # (GND)))
-- \count_time[17]~62\ = CARRY((!\count_time[16]~60\) # (!count_time(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(17),
	datad => VCC,
	cin => \count_time[16]~60\,
	combout => \count_time[17]~61_combout\,
	cout => \count_time[17]~62\);

-- Location: FF_X66_Y26_N9
\count_time[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[17]~61_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(17));

-- Location: LCCOMB_X66_Y26_N10
\count_time[18]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[18]~63_combout\ = (count_time(18) & (\count_time[17]~62\ $ (GND))) # (!count_time(18) & (!\count_time[17]~62\ & VCC))
-- \count_time[18]~64\ = CARRY((count_time(18) & !\count_time[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(18),
	datad => VCC,
	cin => \count_time[17]~62\,
	combout => \count_time[18]~63_combout\,
	cout => \count_time[18]~64\);

-- Location: FF_X66_Y26_N11
\count_time[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[18]~63_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(18));

-- Location: LCCOMB_X66_Y26_N12
\count_time[19]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[19]~65_combout\ = (count_time(19) & (!\count_time[18]~64\)) # (!count_time(19) & ((\count_time[18]~64\) # (GND)))
-- \count_time[19]~66\ = CARRY((!\count_time[18]~64\) # (!count_time(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(19),
	datad => VCC,
	cin => \count_time[18]~64\,
	combout => \count_time[19]~65_combout\,
	cout => \count_time[19]~66\);

-- Location: FF_X66_Y26_N13
\count_time[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[19]~65_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(19));

-- Location: LCCOMB_X67_Y27_N22
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count_time(16)) # (((count_time(18)) # (!count_time(17))) # (!count_time(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(16),
	datab => count_time(19),
	datac => count_time(17),
	datad => count_time(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X66_Y26_N14
\count_time[20]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[20]~67_combout\ = (count_time(20) & (\count_time[19]~66\ $ (GND))) # (!count_time(20) & (!\count_time[19]~66\ & VCC))
-- \count_time[20]~68\ = CARRY((count_time(20) & !\count_time[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(20),
	datad => VCC,
	cin => \count_time[19]~66\,
	combout => \count_time[20]~67_combout\,
	cout => \count_time[20]~68\);

-- Location: FF_X66_Y26_N15
\count_time[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[20]~67_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(20));

-- Location: LCCOMB_X66_Y26_N16
\count_time[21]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[21]~69_combout\ = (count_time(21) & (!\count_time[20]~68\)) # (!count_time(21) & ((\count_time[20]~68\) # (GND)))
-- \count_time[21]~70\ = CARRY((!\count_time[20]~68\) # (!count_time(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(21),
	datad => VCC,
	cin => \count_time[20]~68\,
	combout => \count_time[21]~69_combout\,
	cout => \count_time[21]~70\);

-- Location: FF_X66_Y26_N17
\count_time[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[21]~69_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(21));

-- Location: LCCOMB_X66_Y26_N18
\count_time[22]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[22]~71_combout\ = (count_time(22) & (\count_time[21]~70\ $ (GND))) # (!count_time(22) & (!\count_time[21]~70\ & VCC))
-- \count_time[22]~72\ = CARRY((count_time(22) & !\count_time[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(22),
	datad => VCC,
	cin => \count_time[21]~70\,
	combout => \count_time[22]~71_combout\,
	cout => \count_time[22]~72\);

-- Location: FF_X66_Y26_N19
\count_time[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[22]~71_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(22));

-- Location: LCCOMB_X66_Y26_N20
\count_time[23]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[23]~73_combout\ = (count_time(23) & (!\count_time[22]~72\)) # (!count_time(23) & ((\count_time[22]~72\) # (GND)))
-- \count_time[23]~74\ = CARRY((!\count_time[22]~72\) # (!count_time(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(23),
	datad => VCC,
	cin => \count_time[22]~72\,
	combout => \count_time[23]~73_combout\,
	cout => \count_time[23]~74\);

-- Location: FF_X66_Y26_N21
\count_time[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[23]~73_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(23));

-- Location: LCCOMB_X66_Y26_N22
\count_time[24]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[24]~75_combout\ = (count_time(24) & (\count_time[23]~74\ $ (GND))) # (!count_time(24) & (!\count_time[23]~74\ & VCC))
-- \count_time[24]~76\ = CARRY((count_time(24) & !\count_time[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(24),
	datad => VCC,
	cin => \count_time[23]~74\,
	combout => \count_time[24]~75_combout\,
	cout => \count_time[24]~76\);

-- Location: FF_X66_Y26_N23
\count_time[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[24]~75_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(24));

-- Location: LCCOMB_X66_Y26_N24
\count_time[25]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[25]~77_combout\ = (count_time(25) & (!\count_time[24]~76\)) # (!count_time(25) & ((\count_time[24]~76\) # (GND)))
-- \count_time[25]~78\ = CARRY((!\count_time[24]~76\) # (!count_time(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_time(25),
	datad => VCC,
	cin => \count_time[24]~76\,
	combout => \count_time[25]~77_combout\,
	cout => \count_time[25]~78\);

-- Location: FF_X66_Y26_N25
\count_time[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[25]~77_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(25));

-- Location: LCCOMB_X66_Y26_N26
\count_time[26]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_time[26]~79_combout\ = count_time(26) $ (!\count_time[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_time(26),
	cin => \count_time[25]~78\,
	combout => \count_time[26]~79_combout\);

-- Location: FF_X66_Y26_N27
\count_time[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_time[26]~79_combout\,
	sclr => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_time(26));

-- Location: LCCOMB_X66_Y26_N28
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (((!count_time(22)) # (!count_time(20))) # (!count_time(21))) # (!count_time(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(23),
	datab => count_time(21),
	datac => count_time(20),
	datad => count_time(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X66_Y26_N30
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (count_time(26)) # (((count_time(24)) # (\Equal0~6_combout\)) # (!count_time(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(26),
	datab => count_time(25),
	datac => count_time(24),
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X66_Y27_N0
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count_time(8)) # ((count_time(9)) # ((count_time(10)) # (count_time(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(8),
	datab => count_time(9),
	datac => count_time(10),
	datad => count_time(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X67_Y27_N28
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (((!count_time(15)) # (!count_time(14))) # (!count_time(12))) # (!count_time(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(13),
	datab => count_time(12),
	datac => count_time(14),
	datad => count_time(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X66_Y27_N4
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count_time(3)) # ((count_time(1)) # ((count_time(0)) # (count_time(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(3),
	datab => count_time(1),
	datac => count_time(0),
	datad => count_time(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X66_Y27_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ((count_time(5)) # ((count_time(4)) # (count_time(6)))) # (!count_time(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_time(7),
	datab => count_time(5),
	datac => count_time(4),
	datad => count_time(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X67_Y27_N24
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\) # ((\Equal0~3_combout\) # ((\Equal0~0_combout\) # (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X67_Y27_N8
\count_0_seg[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_0_seg[3]~1_combout\ = ((!\Equal0~5_combout\ & (!\Equal0~7_combout\ & !\Equal0~4_combout\))) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \key[0]~input_o\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \count_0_seg[3]~1_combout\);

-- Location: FF_X67_Y27_N19
\count_0_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_0_seg~0_combout\,
	ena => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0_seg(0));

-- Location: LCCOMB_X67_Y27_N12
\count_0_seg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_0_seg~2_combout\ = (\key[0]~input_o\ & (count_0_seg(1) $ (count_0_seg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[0]~input_o\,
	datac => count_0_seg(1),
	datad => count_0_seg(0),
	combout => \count_0_seg~2_combout\);

-- Location: FF_X67_Y27_N13
\count_0_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_0_seg~2_combout\,
	ena => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0_seg(1));

-- Location: LCCOMB_X67_Y27_N26
\count_0_seg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_0_seg~3_combout\ = (\key[0]~input_o\ & (count_0_seg(2) $ (((count_0_seg(1) & count_0_seg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => \key[0]~input_o\,
	datac => count_0_seg(2),
	datad => count_0_seg(0),
	combout => \count_0_seg~3_combout\);

-- Location: FF_X67_Y27_N27
\count_0_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_0_seg~3_combout\,
	ena => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0_seg(2));

-- Location: LCCOMB_X67_Y27_N30
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count_0_seg(3) $ (((count_0_seg(1) & (count_0_seg(2) & count_0_seg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(2),
	datad => count_0_seg(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X67_Y27_N20
\count_0_seg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count_0_seg~4_combout\ = (\Add0~0_combout\ & \key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \key[0]~input_o\,
	combout => \count_0_seg~4_combout\);

-- Location: FF_X67_Y27_N21
\count_0_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \max10_clk1_50~inputclkctrl_outclk\,
	d => \count_0_seg~4_combout\,
	ena => \count_0_seg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_0_seg(3));

-- Location: LCCOMB_X67_Y27_N10
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (count_0_seg(3) & (count_0_seg(0) & (count_0_seg(1) $ (count_0_seg(2))))) # (!count_0_seg(3) & (!count_0_seg(1) & (count_0_seg(2) $ (count_0_seg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(2),
	datad => count_0_seg(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X67_Y27_N4
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (count_0_seg(1) & ((count_0_seg(0) & (count_0_seg(3))) # (!count_0_seg(0) & ((count_0_seg(2)))))) # (!count_0_seg(1) & (count_0_seg(2) & (count_0_seg(3) $ (count_0_seg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(2),
	datad => count_0_seg(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X67_Y27_N6
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (count_0_seg(3) & (count_0_seg(2) & ((count_0_seg(1)) # (!count_0_seg(0))))) # (!count_0_seg(3) & (count_0_seg(1) & (!count_0_seg(2) & !count_0_seg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(2),
	datad => count_0_seg(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X67_Y27_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (count_0_seg(1) & ((count_0_seg(2) & ((count_0_seg(0)))) # (!count_0_seg(2) & (count_0_seg(3) & !count_0_seg(0))))) # (!count_0_seg(1) & (!count_0_seg(3) & (count_0_seg(2) $ (count_0_seg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(2),
	datad => count_0_seg(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X67_Y27_N2
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (count_0_seg(1) & (!count_0_seg(3) & ((count_0_seg(0))))) # (!count_0_seg(1) & ((count_0_seg(2) & (!count_0_seg(3))) # (!count_0_seg(2) & ((count_0_seg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(2),
	datad => count_0_seg(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X67_Y27_N16
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (count_0_seg(1) & (!count_0_seg(3) & (!count_0_seg(2)))) # (!count_0_seg(1) & (count_0_seg(0) & (count_0_seg(3) $ (!count_0_seg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(2),
	datad => count_0_seg(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X67_Y27_N14
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (count_0_seg(0) & ((count_0_seg(3)) # (count_0_seg(1) $ (count_0_seg(2))))) # (!count_0_seg(0) & ((count_0_seg(1)) # (count_0_seg(3) $ (count_0_seg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_0_seg(1),
	datab => count_0_seg(3),
	datac => count_0_seg(2),
	datad => count_0_seg(0),
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


