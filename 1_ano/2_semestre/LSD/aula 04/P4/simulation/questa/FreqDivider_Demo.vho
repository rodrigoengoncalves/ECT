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

-- DATE "03/24/2025 19:21:09"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FreqDivider_DemoBDF IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END FreqDivider_DemoBDF;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_DemoBDF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Add2~17\ : std_logic;
SIGNAL \inst|Add2~18_combout\ : std_logic;
SIGNAL \inst|Add2~19\ : std_logic;
SIGNAL \inst|Add2~20_combout\ : std_logic;
SIGNAL \inst|Add2~21\ : std_logic;
SIGNAL \inst|Add2~22_combout\ : std_logic;
SIGNAL \inst|s_counter~6_combout\ : std_logic;
SIGNAL \inst|Add2~23\ : std_logic;
SIGNAL \inst|Add2~24_combout\ : std_logic;
SIGNAL \inst|s_counter~5_combout\ : std_logic;
SIGNAL \inst|Add2~25\ : std_logic;
SIGNAL \inst|Add2~26_combout\ : std_logic;
SIGNAL \inst|s_counter~4_combout\ : std_logic;
SIGNAL \inst|Add2~27\ : std_logic;
SIGNAL \inst|Add2~28_combout\ : std_logic;
SIGNAL \inst|s_counter~11_combout\ : std_logic;
SIGNAL \inst|Add2~29\ : std_logic;
SIGNAL \inst|Add2~30_combout\ : std_logic;
SIGNAL \inst|Add2~31\ : std_logic;
SIGNAL \inst|Add2~32_combout\ : std_logic;
SIGNAL \inst|s_counter~10_combout\ : std_logic;
SIGNAL \inst|Add2~33\ : std_logic;
SIGNAL \inst|Add2~34_combout\ : std_logic;
SIGNAL \inst|Add2~35\ : std_logic;
SIGNAL \inst|Add2~36_combout\ : std_logic;
SIGNAL \inst|s_counter~3_combout\ : std_logic;
SIGNAL \inst|Add2~37\ : std_logic;
SIGNAL \inst|Add2~38_combout\ : std_logic;
SIGNAL \inst|s_counter~2_combout\ : std_logic;
SIGNAL \inst|Add2~39\ : std_logic;
SIGNAL \inst|Add2~40_combout\ : std_logic;
SIGNAL \inst|s_counter~1_combout\ : std_logic;
SIGNAL \inst|Add2~41\ : std_logic;
SIGNAL \inst|Add2~42_combout\ : std_logic;
SIGNAL \inst|s_counter~0_combout\ : std_logic;
SIGNAL \inst|Add2~43\ : std_logic;
SIGNAL \inst|Add2~44_combout\ : std_logic;
SIGNAL \inst|s_counter~9_combout\ : std_logic;
SIGNAL \inst|Add2~45\ : std_logic;
SIGNAL \inst|Add2~46_combout\ : std_logic;
SIGNAL \inst|Add2~47\ : std_logic;
SIGNAL \inst|Add2~48_combout\ : std_logic;
SIGNAL \inst|s_counter~8_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add2~49\ : std_logic;
SIGNAL \inst|Add2~50_combout\ : std_logic;
SIGNAL \inst|Add2~51\ : std_logic;
SIGNAL \inst|Add2~52_combout\ : std_logic;
SIGNAL \inst|Add2~53\ : std_logic;
SIGNAL \inst|Add2~54_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add2~55\ : std_logic;
SIGNAL \inst|Add2~56_combout\ : std_logic;
SIGNAL \inst|Add2~57\ : std_logic;
SIGNAL \inst|Add2~58_combout\ : std_logic;
SIGNAL \inst|Add2~59\ : std_logic;
SIGNAL \inst|Add2~60_combout\ : std_logic;
SIGNAL \inst|Add2~61\ : std_logic;
SIGNAL \inst|Add2~62_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~11_combout\ : std_logic;
SIGNAL \inst|s_counter~7_combout\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|clkOut~0_combout\ : std_logic;
SIGNAL \inst|clkOut~1_combout\ : std_logic;
SIGNAL \inst|clkOut~2_combout\ : std_logic;
SIGNAL \inst|clkOut~3_combout\ : std_logic;
SIGNAL \inst|clkOut~q\ : std_logic;
SIGNAL \inst|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X76_Y66_N0
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|s_counter\(0) $ (VCC)
-- \inst|Add2~1\ = CARRY(\inst|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: FF_X76_Y66_N1
\inst|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(0));

-- Location: LCCOMB_X76_Y66_N2
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|s_counter\(1) & (!\inst|Add2~1\)) # (!\inst|s_counter\(1) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: FF_X76_Y66_N3
\inst|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(1));

-- Location: LCCOMB_X76_Y66_N4
\inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|s_counter\(2) & (\inst|Add2~3\ $ (GND))) # (!\inst|s_counter\(2) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|s_counter\(2) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: FF_X76_Y66_N5
\inst|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(2));

-- Location: LCCOMB_X76_Y66_N6
\inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|s_counter\(3) & (!\inst|Add2~5\)) # (!\inst|s_counter\(3) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: FF_X76_Y66_N7
\inst|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(3));

-- Location: LCCOMB_X76_Y66_N8
\inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|s_counter\(4) & (\inst|Add2~7\ $ (GND))) # (!\inst|s_counter\(4) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|s_counter\(4) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: FF_X76_Y66_N9
\inst|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(4));

-- Location: LCCOMB_X76_Y66_N10
\inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|s_counter\(5) & (!\inst|Add2~9\)) # (!\inst|s_counter\(5) & ((\inst|Add2~9\) # (GND)))
-- \inst|Add2~11\ = CARRY((!\inst|Add2~9\) # (!\inst|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: FF_X76_Y66_N11
\inst|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(5));

-- Location: LCCOMB_X76_Y66_N12
\inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|s_counter\(6) & (\inst|Add2~11\ $ (GND))) # (!\inst|s_counter\(6) & (!\inst|Add2~11\ & VCC))
-- \inst|Add2~13\ = CARRY((\inst|s_counter\(6) & !\inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X77_Y66_N30
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|s_counter\(0) & (\inst|s_counter\(2) & \inst|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(0),
	datac => \inst|s_counter\(2),
	datad => \inst|s_counter\(1),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y66_N14
\inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|s_counter\(7) & (!\inst|Add2~13\)) # (!\inst|s_counter\(7) & ((\inst|Add2~13\) # (GND)))
-- \inst|Add2~15\ = CARRY((!\inst|Add2~13\) # (!\inst|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(7),
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: LCCOMB_X76_Y66_N16
\inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\inst|s_counter\(8) & (\inst|Add2~15\ $ (GND))) # (!\inst|s_counter\(8) & (!\inst|Add2~15\ & VCC))
-- \inst|Add2~17\ = CARRY((\inst|s_counter\(8) & !\inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(8),
	datad => VCC,
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\,
	cout => \inst|Add2~17\);

-- Location: FF_X76_Y66_N17
\inst|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(8));

-- Location: LCCOMB_X76_Y66_N18
\inst|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~18_combout\ = (\inst|s_counter\(9) & (!\inst|Add2~17\)) # (!\inst|s_counter\(9) & ((\inst|Add2~17\) # (GND)))
-- \inst|Add2~19\ = CARRY((!\inst|Add2~17\) # (!\inst|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(9),
	datad => VCC,
	cin => \inst|Add2~17\,
	combout => \inst|Add2~18_combout\,
	cout => \inst|Add2~19\);

-- Location: FF_X76_Y66_N19
\inst|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(9));

-- Location: LCCOMB_X76_Y66_N20
\inst|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~20_combout\ = (\inst|s_counter\(10) & (\inst|Add2~19\ $ (GND))) # (!\inst|s_counter\(10) & (!\inst|Add2~19\ & VCC))
-- \inst|Add2~21\ = CARRY((\inst|s_counter\(10) & !\inst|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(10),
	datad => VCC,
	cin => \inst|Add2~19\,
	combout => \inst|Add2~20_combout\,
	cout => \inst|Add2~21\);

-- Location: FF_X76_Y66_N21
\inst|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(10));

-- Location: LCCOMB_X76_Y66_N22
\inst|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~22_combout\ = (\inst|s_counter\(11) & (!\inst|Add2~21\)) # (!\inst|s_counter\(11) & ((\inst|Add2~21\) # (GND)))
-- \inst|Add2~23\ = CARRY((!\inst|Add2~21\) # (!\inst|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(11),
	datad => VCC,
	cin => \inst|Add2~21\,
	combout => \inst|Add2~22_combout\,
	cout => \inst|Add2~23\);

-- Location: LCCOMB_X75_Y65_N2
\inst|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~6_combout\ = (\inst|Add2~22_combout\ & !\inst|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~22_combout\,
	datad => \inst|Equal0~11_combout\,
	combout => \inst|s_counter~6_combout\);

-- Location: FF_X75_Y65_N3
\inst|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(11));

-- Location: LCCOMB_X76_Y66_N24
\inst|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~24_combout\ = (\inst|s_counter\(12) & (\inst|Add2~23\ $ (GND))) # (!\inst|s_counter\(12) & (!\inst|Add2~23\ & VCC))
-- \inst|Add2~25\ = CARRY((\inst|s_counter\(12) & !\inst|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(12),
	datad => VCC,
	cin => \inst|Add2~23\,
	combout => \inst|Add2~24_combout\,
	cout => \inst|Add2~25\);

-- Location: LCCOMB_X75_Y65_N16
\inst|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~5_combout\ = (\inst|Add2~24_combout\ & !\inst|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~24_combout\,
	datad => \inst|Equal0~11_combout\,
	combout => \inst|s_counter~5_combout\);

-- Location: FF_X75_Y65_N17
\inst|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(12));

-- Location: LCCOMB_X76_Y66_N26
\inst|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~26_combout\ = (\inst|s_counter\(13) & (!\inst|Add2~25\)) # (!\inst|s_counter\(13) & ((\inst|Add2~25\) # (GND)))
-- \inst|Add2~27\ = CARRY((!\inst|Add2~25\) # (!\inst|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(13),
	datad => VCC,
	cin => \inst|Add2~25\,
	combout => \inst|Add2~26_combout\,
	cout => \inst|Add2~27\);

-- Location: LCCOMB_X75_Y65_N28
\inst|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~4_combout\ = (\inst|Add2~26_combout\ & !\inst|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~26_combout\,
	datad => \inst|Equal0~11_combout\,
	combout => \inst|s_counter~4_combout\);

-- Location: FF_X75_Y65_N29
\inst|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(13));

-- Location: LCCOMB_X76_Y66_N28
\inst|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~28_combout\ = (\inst|s_counter\(14) & (\inst|Add2~27\ $ (GND))) # (!\inst|s_counter\(14) & (!\inst|Add2~27\ & VCC))
-- \inst|Add2~29\ = CARRY((\inst|s_counter\(14) & !\inst|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(14),
	datad => VCC,
	cin => \inst|Add2~27\,
	combout => \inst|Add2~28_combout\,
	cout => \inst|Add2~29\);

-- Location: LCCOMB_X77_Y65_N0
\inst|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~11_combout\ = (!\inst|Equal0~11_combout\ & \inst|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~11_combout\,
	datac => \inst|Add2~28_combout\,
	combout => \inst|s_counter~11_combout\);

-- Location: FF_X77_Y65_N1
\inst|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(14));

-- Location: LCCOMB_X76_Y66_N30
\inst|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~30_combout\ = (\inst|s_counter\(15) & (!\inst|Add2~29\)) # (!\inst|s_counter\(15) & ((\inst|Add2~29\) # (GND)))
-- \inst|Add2~31\ = CARRY((!\inst|Add2~29\) # (!\inst|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(15),
	datad => VCC,
	cin => \inst|Add2~29\,
	combout => \inst|Add2~30_combout\,
	cout => \inst|Add2~31\);

-- Location: FF_X76_Y66_N31
\inst|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(15));

-- Location: LCCOMB_X76_Y65_N0
\inst|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~32_combout\ = (\inst|s_counter\(16) & (\inst|Add2~31\ $ (GND))) # (!\inst|s_counter\(16) & (!\inst|Add2~31\ & VCC))
-- \inst|Add2~33\ = CARRY((\inst|s_counter\(16) & !\inst|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(16),
	datad => VCC,
	cin => \inst|Add2~31\,
	combout => \inst|Add2~32_combout\,
	cout => \inst|Add2~33\);

-- Location: LCCOMB_X77_Y65_N30
\inst|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~10_combout\ = (!\inst|Equal0~11_combout\ & \inst|Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~11_combout\,
	datad => \inst|Add2~32_combout\,
	combout => \inst|s_counter~10_combout\);

-- Location: FF_X77_Y65_N31
\inst|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(16));

-- Location: LCCOMB_X76_Y65_N2
\inst|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~34_combout\ = (\inst|s_counter\(17) & (!\inst|Add2~33\)) # (!\inst|s_counter\(17) & ((\inst|Add2~33\) # (GND)))
-- \inst|Add2~35\ = CARRY((!\inst|Add2~33\) # (!\inst|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(17),
	datad => VCC,
	cin => \inst|Add2~33\,
	combout => \inst|Add2~34_combout\,
	cout => \inst|Add2~35\);

-- Location: FF_X76_Y65_N3
\inst|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(17));

-- Location: LCCOMB_X76_Y65_N4
\inst|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~36_combout\ = (\inst|s_counter\(18) & (\inst|Add2~35\ $ (GND))) # (!\inst|s_counter\(18) & (!\inst|Add2~35\ & VCC))
-- \inst|Add2~37\ = CARRY((\inst|s_counter\(18) & !\inst|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(18),
	datad => VCC,
	cin => \inst|Add2~35\,
	combout => \inst|Add2~36_combout\,
	cout => \inst|Add2~37\);

-- Location: LCCOMB_X75_Y65_N30
\inst|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~3_combout\ = (\inst|Add2~36_combout\ & !\inst|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~36_combout\,
	datad => \inst|Equal0~11_combout\,
	combout => \inst|s_counter~3_combout\);

-- Location: FF_X75_Y65_N31
\inst|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(18));

-- Location: LCCOMB_X76_Y65_N6
\inst|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~38_combout\ = (\inst|s_counter\(19) & (!\inst|Add2~37\)) # (!\inst|s_counter\(19) & ((\inst|Add2~37\) # (GND)))
-- \inst|Add2~39\ = CARRY((!\inst|Add2~37\) # (!\inst|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(19),
	datad => VCC,
	cin => \inst|Add2~37\,
	combout => \inst|Add2~38_combout\,
	cout => \inst|Add2~39\);

-- Location: LCCOMB_X75_Y65_N24
\inst|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~2_combout\ = (\inst|Add2~38_combout\ & !\inst|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~38_combout\,
	datad => \inst|Equal0~11_combout\,
	combout => \inst|s_counter~2_combout\);

-- Location: FF_X75_Y65_N25
\inst|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(19));

-- Location: LCCOMB_X76_Y65_N8
\inst|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~40_combout\ = (\inst|s_counter\(20) & (\inst|Add2~39\ $ (GND))) # (!\inst|s_counter\(20) & (!\inst|Add2~39\ & VCC))
-- \inst|Add2~41\ = CARRY((\inst|s_counter\(20) & !\inst|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(20),
	datad => VCC,
	cin => \inst|Add2~39\,
	combout => \inst|Add2~40_combout\,
	cout => \inst|Add2~41\);

-- Location: LCCOMB_X75_Y65_N10
\inst|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~1_combout\ = (\inst|Add2~40_combout\ & !\inst|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~40_combout\,
	datad => \inst|Equal0~11_combout\,
	combout => \inst|s_counter~1_combout\);

-- Location: FF_X75_Y65_N11
\inst|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(20));

-- Location: LCCOMB_X76_Y65_N10
\inst|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~42_combout\ = (\inst|s_counter\(21) & (!\inst|Add2~41\)) # (!\inst|s_counter\(21) & ((\inst|Add2~41\) # (GND)))
-- \inst|Add2~43\ = CARRY((!\inst|Add2~41\) # (!\inst|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(21),
	datad => VCC,
	cin => \inst|Add2~41\,
	combout => \inst|Add2~42_combout\,
	cout => \inst|Add2~43\);

-- Location: LCCOMB_X75_Y65_N22
\inst|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~0_combout\ = (\inst|Add2~42_combout\ & !\inst|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~42_combout\,
	datad => \inst|Equal0~11_combout\,
	combout => \inst|s_counter~0_combout\);

-- Location: FF_X75_Y65_N23
\inst|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(21));

-- Location: LCCOMB_X76_Y65_N12
\inst|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~44_combout\ = (\inst|s_counter\(22) & (\inst|Add2~43\ $ (GND))) # (!\inst|s_counter\(22) & (!\inst|Add2~43\ & VCC))
-- \inst|Add2~45\ = CARRY((\inst|s_counter\(22) & !\inst|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(22),
	datad => VCC,
	cin => \inst|Add2~43\,
	combout => \inst|Add2~44_combout\,
	cout => \inst|Add2~45\);

-- Location: LCCOMB_X77_Y65_N14
\inst|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~9_combout\ = (!\inst|Equal0~11_combout\ & \inst|Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~11_combout\,
	datad => \inst|Add2~44_combout\,
	combout => \inst|s_counter~9_combout\);

-- Location: FF_X77_Y65_N15
\inst|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(22));

-- Location: LCCOMB_X76_Y65_N14
\inst|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~46_combout\ = (\inst|s_counter\(23) & (!\inst|Add2~45\)) # (!\inst|s_counter\(23) & ((\inst|Add2~45\) # (GND)))
-- \inst|Add2~47\ = CARRY((!\inst|Add2~45\) # (!\inst|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(23),
	datad => VCC,
	cin => \inst|Add2~45\,
	combout => \inst|Add2~46_combout\,
	cout => \inst|Add2~47\);

-- Location: FF_X76_Y65_N15
\inst|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(23));

-- Location: LCCOMB_X76_Y65_N16
\inst|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~48_combout\ = (\inst|s_counter\(24) & (\inst|Add2~47\ $ (GND))) # (!\inst|s_counter\(24) & (!\inst|Add2~47\ & VCC))
-- \inst|Add2~49\ = CARRY((\inst|s_counter\(24) & !\inst|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(24),
	datad => VCC,
	cin => \inst|Add2~47\,
	combout => \inst|Add2~48_combout\,
	cout => \inst|Add2~49\);

-- Location: LCCOMB_X77_Y65_N24
\inst|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~8_combout\ = (!\inst|Equal0~11_combout\ & \inst|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~11_combout\,
	datac => \inst|Add2~48_combout\,
	combout => \inst|s_counter~8_combout\);

-- Location: FF_X77_Y65_N25
\inst|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(24));

-- Location: LCCOMB_X77_Y65_N26
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|s_counter\(23) & (\inst|s_counter\(24) & (\inst|s_counter\(22) & !\inst|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(23),
	datab => \inst|s_counter\(24),
	datac => \inst|s_counter\(22),
	datad => \inst|s_counter\(17),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X77_Y65_N28
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (\inst|s_counter\(16) & (\inst|s_counter\(14) & (!\inst|s_counter\(10) & !\inst|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(16),
	datab => \inst|s_counter\(14),
	datac => \inst|s_counter\(10),
	datad => \inst|s_counter\(15),
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X77_Y65_N22
\inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~10_combout\ = (\inst|s_counter\(5) & (\inst|Equal0~8_combout\ & \inst|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(5),
	datac => \inst|Equal0~8_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Equal0~10_combout\);

-- Location: LCCOMB_X75_Y65_N26
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|s_counter\(20) & (\inst|s_counter\(19) & (\inst|s_counter\(18) & \inst|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(20),
	datab => \inst|s_counter\(19),
	datac => \inst|s_counter\(18),
	datad => \inst|s_counter\(13),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y65_N18
\inst|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~50_combout\ = (\inst|s_counter\(25) & (!\inst|Add2~49\)) # (!\inst|s_counter\(25) & ((\inst|Add2~49\) # (GND)))
-- \inst|Add2~51\ = CARRY((!\inst|Add2~49\) # (!\inst|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(25),
	datad => VCC,
	cin => \inst|Add2~49\,
	combout => \inst|Add2~50_combout\,
	cout => \inst|Add2~51\);

-- Location: FF_X76_Y65_N19
\inst|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(25));

-- Location: LCCOMB_X76_Y65_N20
\inst|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~52_combout\ = (\inst|s_counter\(26) & (\inst|Add2~51\ $ (GND))) # (!\inst|s_counter\(26) & (!\inst|Add2~51\ & VCC))
-- \inst|Add2~53\ = CARRY((\inst|s_counter\(26) & !\inst|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(26),
	datad => VCC,
	cin => \inst|Add2~51\,
	combout => \inst|Add2~52_combout\,
	cout => \inst|Add2~53\);

-- Location: FF_X76_Y65_N21
\inst|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(26));

-- Location: LCCOMB_X76_Y65_N22
\inst|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~54_combout\ = (\inst|s_counter\(27) & (!\inst|Add2~53\)) # (!\inst|s_counter\(27) & ((\inst|Add2~53\) # (GND)))
-- \inst|Add2~55\ = CARRY((!\inst|Add2~53\) # (!\inst|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(27),
	datad => VCC,
	cin => \inst|Add2~53\,
	combout => \inst|Add2~54_combout\,
	cout => \inst|Add2~55\);

-- Location: FF_X76_Y65_N23
\inst|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(27));

-- Location: LCCOMB_X75_Y65_N20
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|s_counter\(21) & (!\inst|s_counter\(25) & (!\inst|s_counter\(26) & !\inst|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(21),
	datab => \inst|s_counter\(25),
	datac => \inst|s_counter\(26),
	datad => \inst|s_counter\(27),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y65_N24
\inst|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~56_combout\ = (\inst|s_counter\(28) & (\inst|Add2~55\ $ (GND))) # (!\inst|s_counter\(28) & (!\inst|Add2~55\ & VCC))
-- \inst|Add2~57\ = CARRY((\inst|s_counter\(28) & !\inst|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(28),
	datad => VCC,
	cin => \inst|Add2~55\,
	combout => \inst|Add2~56_combout\,
	cout => \inst|Add2~57\);

-- Location: FF_X76_Y65_N25
\inst|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(28));

-- Location: LCCOMB_X76_Y65_N26
\inst|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~58_combout\ = (\inst|s_counter\(29) & (!\inst|Add2~57\)) # (!\inst|s_counter\(29) & ((\inst|Add2~57\) # (GND)))
-- \inst|Add2~59\ = CARRY((!\inst|Add2~57\) # (!\inst|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(29),
	datad => VCC,
	cin => \inst|Add2~57\,
	combout => \inst|Add2~58_combout\,
	cout => \inst|Add2~59\);

-- Location: FF_X76_Y65_N27
\inst|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(29));

-- Location: LCCOMB_X76_Y65_N28
\inst|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~60_combout\ = (\inst|s_counter\(30) & (\inst|Add2~59\ $ (GND))) # (!\inst|s_counter\(30) & (!\inst|Add2~59\ & VCC))
-- \inst|Add2~61\ = CARRY((\inst|s_counter\(30) & !\inst|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(30),
	datad => VCC,
	cin => \inst|Add2~59\,
	combout => \inst|Add2~60_combout\,
	cout => \inst|Add2~61\);

-- Location: FF_X76_Y65_N29
\inst|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(30));

-- Location: LCCOMB_X76_Y65_N30
\inst|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~62_combout\ = \inst|s_counter\(31) $ (\inst|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(31),
	cin => \inst|Add2~61\,
	combout => \inst|Add2~62_combout\);

-- Location: FF_X76_Y65_N31
\inst|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(31));

-- Location: LCCOMB_X75_Y65_N8
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|s_counter\(31) & (!\inst|s_counter\(29) & (!\inst|s_counter\(28) & !\inst|s_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(31),
	datab => \inst|s_counter\(29),
	datac => \inst|s_counter\(28),
	datad => \inst|s_counter\(30),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y65_N12
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|s_counter\(9) & (\inst|s_counter\(11) & (\inst|s_counter\(12) & !\inst|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(9),
	datab => \inst|s_counter\(11),
	datac => \inst|s_counter\(12),
	datad => \inst|s_counter\(8),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X75_Y65_N18
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~2_combout\ & (\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & \inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X77_Y65_N12
\inst|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~11_combout\ = (\inst|Equal0~6_combout\ & (\inst|Equal0~5_combout\ & (\inst|Equal0~10_combout\ & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~10_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~11_combout\);

-- Location: LCCOMB_X77_Y65_N10
\inst|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~7_combout\ = (\inst|Add2~12_combout\ & !\inst|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~12_combout\,
	datad => \inst|Equal0~11_combout\,
	combout => \inst|s_counter~7_combout\);

-- Location: FF_X76_Y66_N29
\inst|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_counter~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(6));

-- Location: FF_X76_Y66_N15
\inst|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(7));

-- Location: LCCOMB_X77_Y66_N20
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|s_counter\(7) & (\inst|s_counter\(3) & (!\inst|s_counter\(6) & \inst|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(7),
	datab => \inst|s_counter\(3),
	datac => \inst|s_counter\(6),
	datad => \inst|s_counter\(4),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X77_Y65_N6
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (\inst|Equal0~5_combout\ & (\inst|Equal0~6_combout\ & \inst|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~6_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X77_Y65_N8
\inst|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~0_combout\ = (\inst|s_counter\(23) & (!\inst|s_counter\(24) & (!\inst|s_counter\(22) & \inst|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(23),
	datab => \inst|s_counter\(24),
	datac => \inst|s_counter\(22),
	datad => \inst|s_counter\(17),
	combout => \inst|clkOut~0_combout\);

-- Location: LCCOMB_X77_Y65_N18
\inst|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~1_combout\ = (\inst|s_counter\(15) & (\inst|s_counter\(10) & (!\inst|s_counter\(16) & !\inst|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(15),
	datab => \inst|s_counter\(10),
	datac => \inst|s_counter\(16),
	datad => \inst|s_counter\(14),
	combout => \inst|clkOut~1_combout\);

-- Location: LCCOMB_X77_Y65_N20
\inst|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~2_combout\ = (!\inst|s_counter\(5) & (\inst|clkOut~0_combout\ & \inst|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(5),
	datac => \inst|clkOut~0_combout\,
	datad => \inst|clkOut~1_combout\,
	combout => \inst|clkOut~2_combout\);

-- Location: LCCOMB_X77_Y65_N16
\inst|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~3_combout\ = (!\inst|Equal0~11_combout\ & ((\inst|clkOut~q\) # ((\inst|Equal0~7_combout\ & \inst|clkOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datab => \inst|Equal0~11_combout\,
	datac => \inst|clkOut~q\,
	datad => \inst|clkOut~2_combout\,
	combout => \inst|clkOut~3_combout\);

-- Location: FF_X77_Y65_N17
\inst|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkOut~q\);

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


