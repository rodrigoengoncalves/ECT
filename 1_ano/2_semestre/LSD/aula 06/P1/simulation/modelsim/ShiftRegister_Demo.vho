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

-- DATE "04/01/2025 14:44:34"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	SW : IN std_logic_vector(2 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDevider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freqDevider|s_divCounter[0]~25_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[6]~38\ : std_logic;
SIGNAL \freqDevider|s_divCounter[7]~39_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[7]~40\ : std_logic;
SIGNAL \freqDevider|s_divCounter[8]~41_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[8]~42\ : std_logic;
SIGNAL \freqDevider|s_divCounter[9]~43_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[9]~44\ : std_logic;
SIGNAL \freqDevider|s_divCounter[10]~45_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[10]~46\ : std_logic;
SIGNAL \freqDevider|s_divCounter[11]~47_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[11]~48\ : std_logic;
SIGNAL \freqDevider|s_divCounter[12]~49_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[12]~50\ : std_logic;
SIGNAL \freqDevider|s_divCounter[13]~51_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[13]~52\ : std_logic;
SIGNAL \freqDevider|s_divCounter[14]~53_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[14]~54\ : std_logic;
SIGNAL \freqDevider|s_divCounter[15]~55_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[15]~56\ : std_logic;
SIGNAL \freqDevider|s_divCounter[16]~57_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[16]~58\ : std_logic;
SIGNAL \freqDevider|s_divCounter[17]~59_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[17]~60\ : std_logic;
SIGNAL \freqDevider|s_divCounter[18]~61_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[18]~62\ : std_logic;
SIGNAL \freqDevider|s_divCounter[19]~63_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[19]~64\ : std_logic;
SIGNAL \freqDevider|s_divCounter[20]~65_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[20]~66\ : std_logic;
SIGNAL \freqDevider|s_divCounter[21]~67_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[21]~68\ : std_logic;
SIGNAL \freqDevider|s_divCounter[22]~69_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[22]~70\ : std_logic;
SIGNAL \freqDevider|s_divCounter[23]~71_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[23]~72\ : std_logic;
SIGNAL \freqDevider|s_divCounter[24]~73_combout\ : std_logic;
SIGNAL \freqDevider|LessThan0~4_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~2_combout\ : std_logic;
SIGNAL \freqDevider|LessThan0~5_combout\ : std_logic;
SIGNAL \freqDevider|LessThan0~0_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~4_combout\ : std_logic;
SIGNAL \freqDevider|LessThan0~3_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~0_combout\ : std_logic;
SIGNAL \freqDevider|LessThan0~1_combout\ : std_logic;
SIGNAL \freqDevider|LessThan0~2_combout\ : std_logic;
SIGNAL \freqDevider|LessThan0~6_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[0]~26\ : std_logic;
SIGNAL \freqDevider|s_divCounter[1]~27_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[1]~28\ : std_logic;
SIGNAL \freqDevider|s_divCounter[2]~29_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[2]~30\ : std_logic;
SIGNAL \freqDevider|s_divCounter[3]~31_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[3]~32\ : std_logic;
SIGNAL \freqDevider|s_divCounter[4]~33_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[4]~34\ : std_logic;
SIGNAL \freqDevider|s_divCounter[5]~35_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter[5]~36\ : std_logic;
SIGNAL \freqDevider|s_divCounter[6]~37_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~1_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~3_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~5_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~6_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~7_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~8_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~9_combout\ : std_logic;
SIGNAL \freqDevider|clkOut~q\ : std_logic;
SIGNAL \freqDevider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \system|aux~17_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \system|aux~16_combout\ : std_logic;
SIGNAL \system|aux~15_combout\ : std_logic;
SIGNAL \system|aux~14_combout\ : std_logic;
SIGNAL \system|aux~13_combout\ : std_logic;
SIGNAL \system|aux~12_combout\ : std_logic;
SIGNAL \system|aux~11_combout\ : std_logic;
SIGNAL \system|aux~10_combout\ : std_logic;
SIGNAL \system|aux~9_combout\ : std_logic;
SIGNAL \system|aux~8_combout\ : std_logic;
SIGNAL \system|aux~7_combout\ : std_logic;
SIGNAL \system|aux~6_combout\ : std_logic;
SIGNAL \system|aux~5_combout\ : std_logic;
SIGNAL \system|aux~4_combout\ : std_logic;
SIGNAL \system|aux~3_combout\ : std_logic;
SIGNAL \system|aux~2_combout\ : std_logic;
SIGNAL \system|aux~1_combout\ : std_logic;
SIGNAL \system|aux~0_combout\ : std_logic;
SIGNAL \freqDevider|s_divCounter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \system|aux\ : std_logic_vector(17 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freqDevider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDevider|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(10),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(11),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(12),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(13),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(14),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(15),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(16),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(17),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

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

-- Location: LCCOMB_X73_Y52_N8
\freqDevider|s_divCounter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[0]~25_combout\ = \freqDevider|s_divCounter\(0) $ (VCC)
-- \freqDevider|s_divCounter[0]~26\ = CARRY(\freqDevider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(0),
	datad => VCC,
	combout => \freqDevider|s_divCounter[0]~25_combout\,
	cout => \freqDevider|s_divCounter[0]~26\);

-- Location: LCCOMB_X73_Y52_N20
\freqDevider|s_divCounter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[6]~37_combout\ = (\freqDevider|s_divCounter\(6) & (\freqDevider|s_divCounter[5]~36\ $ (GND))) # (!\freqDevider|s_divCounter\(6) & (!\freqDevider|s_divCounter[5]~36\ & VCC))
-- \freqDevider|s_divCounter[6]~38\ = CARRY((\freqDevider|s_divCounter\(6) & !\freqDevider|s_divCounter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(6),
	datad => VCC,
	cin => \freqDevider|s_divCounter[5]~36\,
	combout => \freqDevider|s_divCounter[6]~37_combout\,
	cout => \freqDevider|s_divCounter[6]~38\);

-- Location: LCCOMB_X73_Y52_N22
\freqDevider|s_divCounter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[7]~39_combout\ = (\freqDevider|s_divCounter\(7) & (!\freqDevider|s_divCounter[6]~38\)) # (!\freqDevider|s_divCounter\(7) & ((\freqDevider|s_divCounter[6]~38\) # (GND)))
-- \freqDevider|s_divCounter[7]~40\ = CARRY((!\freqDevider|s_divCounter[6]~38\) # (!\freqDevider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(7),
	datad => VCC,
	cin => \freqDevider|s_divCounter[6]~38\,
	combout => \freqDevider|s_divCounter[7]~39_combout\,
	cout => \freqDevider|s_divCounter[7]~40\);

-- Location: FF_X73_Y52_N23
\freqDevider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[7]~39_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(7));

-- Location: LCCOMB_X73_Y52_N24
\freqDevider|s_divCounter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[8]~41_combout\ = (\freqDevider|s_divCounter\(8) & (\freqDevider|s_divCounter[7]~40\ $ (GND))) # (!\freqDevider|s_divCounter\(8) & (!\freqDevider|s_divCounter[7]~40\ & VCC))
-- \freqDevider|s_divCounter[8]~42\ = CARRY((\freqDevider|s_divCounter\(8) & !\freqDevider|s_divCounter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(8),
	datad => VCC,
	cin => \freqDevider|s_divCounter[7]~40\,
	combout => \freqDevider|s_divCounter[8]~41_combout\,
	cout => \freqDevider|s_divCounter[8]~42\);

-- Location: FF_X73_Y52_N25
\freqDevider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[8]~41_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(8));

-- Location: LCCOMB_X73_Y52_N26
\freqDevider|s_divCounter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[9]~43_combout\ = (\freqDevider|s_divCounter\(9) & (!\freqDevider|s_divCounter[8]~42\)) # (!\freqDevider|s_divCounter\(9) & ((\freqDevider|s_divCounter[8]~42\) # (GND)))
-- \freqDevider|s_divCounter[9]~44\ = CARRY((!\freqDevider|s_divCounter[8]~42\) # (!\freqDevider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(9),
	datad => VCC,
	cin => \freqDevider|s_divCounter[8]~42\,
	combout => \freqDevider|s_divCounter[9]~43_combout\,
	cout => \freqDevider|s_divCounter[9]~44\);

-- Location: FF_X73_Y52_N27
\freqDevider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[9]~43_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(9));

-- Location: LCCOMB_X73_Y52_N28
\freqDevider|s_divCounter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[10]~45_combout\ = (\freqDevider|s_divCounter\(10) & (\freqDevider|s_divCounter[9]~44\ $ (GND))) # (!\freqDevider|s_divCounter\(10) & (!\freqDevider|s_divCounter[9]~44\ & VCC))
-- \freqDevider|s_divCounter[10]~46\ = CARRY((\freqDevider|s_divCounter\(10) & !\freqDevider|s_divCounter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(10),
	datad => VCC,
	cin => \freqDevider|s_divCounter[9]~44\,
	combout => \freqDevider|s_divCounter[10]~45_combout\,
	cout => \freqDevider|s_divCounter[10]~46\);

-- Location: FF_X73_Y52_N29
\freqDevider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[10]~45_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(10));

-- Location: LCCOMB_X73_Y52_N30
\freqDevider|s_divCounter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[11]~47_combout\ = (\freqDevider|s_divCounter\(11) & (!\freqDevider|s_divCounter[10]~46\)) # (!\freqDevider|s_divCounter\(11) & ((\freqDevider|s_divCounter[10]~46\) # (GND)))
-- \freqDevider|s_divCounter[11]~48\ = CARRY((!\freqDevider|s_divCounter[10]~46\) # (!\freqDevider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(11),
	datad => VCC,
	cin => \freqDevider|s_divCounter[10]~46\,
	combout => \freqDevider|s_divCounter[11]~47_combout\,
	cout => \freqDevider|s_divCounter[11]~48\);

-- Location: FF_X73_Y52_N31
\freqDevider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[11]~47_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(11));

-- Location: LCCOMB_X73_Y51_N0
\freqDevider|s_divCounter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[12]~49_combout\ = (\freqDevider|s_divCounter\(12) & (\freqDevider|s_divCounter[11]~48\ $ (GND))) # (!\freqDevider|s_divCounter\(12) & (!\freqDevider|s_divCounter[11]~48\ & VCC))
-- \freqDevider|s_divCounter[12]~50\ = CARRY((\freqDevider|s_divCounter\(12) & !\freqDevider|s_divCounter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(12),
	datad => VCC,
	cin => \freqDevider|s_divCounter[11]~48\,
	combout => \freqDevider|s_divCounter[12]~49_combout\,
	cout => \freqDevider|s_divCounter[12]~50\);

-- Location: FF_X72_Y52_N29
\freqDevider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDevider|s_divCounter[12]~49_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(12));

-- Location: LCCOMB_X73_Y51_N2
\freqDevider|s_divCounter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[13]~51_combout\ = (\freqDevider|s_divCounter\(13) & (!\freqDevider|s_divCounter[12]~50\)) # (!\freqDevider|s_divCounter\(13) & ((\freqDevider|s_divCounter[12]~50\) # (GND)))
-- \freqDevider|s_divCounter[13]~52\ = CARRY((!\freqDevider|s_divCounter[12]~50\) # (!\freqDevider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(13),
	datad => VCC,
	cin => \freqDevider|s_divCounter[12]~50\,
	combout => \freqDevider|s_divCounter[13]~51_combout\,
	cout => \freqDevider|s_divCounter[13]~52\);

-- Location: FF_X72_Y52_N5
\freqDevider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDevider|s_divCounter[13]~51_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(13));

-- Location: LCCOMB_X73_Y51_N4
\freqDevider|s_divCounter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[14]~53_combout\ = (\freqDevider|s_divCounter\(14) & (\freqDevider|s_divCounter[13]~52\ $ (GND))) # (!\freqDevider|s_divCounter\(14) & (!\freqDevider|s_divCounter[13]~52\ & VCC))
-- \freqDevider|s_divCounter[14]~54\ = CARRY((\freqDevider|s_divCounter\(14) & !\freqDevider|s_divCounter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(14),
	datad => VCC,
	cin => \freqDevider|s_divCounter[13]~52\,
	combout => \freqDevider|s_divCounter[14]~53_combout\,
	cout => \freqDevider|s_divCounter[14]~54\);

-- Location: FF_X72_Y52_N31
\freqDevider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDevider|s_divCounter[14]~53_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(14));

-- Location: LCCOMB_X73_Y51_N6
\freqDevider|s_divCounter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[15]~55_combout\ = (\freqDevider|s_divCounter\(15) & (!\freqDevider|s_divCounter[14]~54\)) # (!\freqDevider|s_divCounter\(15) & ((\freqDevider|s_divCounter[14]~54\) # (GND)))
-- \freqDevider|s_divCounter[15]~56\ = CARRY((!\freqDevider|s_divCounter[14]~54\) # (!\freqDevider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(15),
	datad => VCC,
	cin => \freqDevider|s_divCounter[14]~54\,
	combout => \freqDevider|s_divCounter[15]~55_combout\,
	cout => \freqDevider|s_divCounter[15]~56\);

-- Location: FF_X73_Y51_N7
\freqDevider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[15]~55_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(15));

-- Location: LCCOMB_X73_Y51_N8
\freqDevider|s_divCounter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[16]~57_combout\ = (\freqDevider|s_divCounter\(16) & (\freqDevider|s_divCounter[15]~56\ $ (GND))) # (!\freqDevider|s_divCounter\(16) & (!\freqDevider|s_divCounter[15]~56\ & VCC))
-- \freqDevider|s_divCounter[16]~58\ = CARRY((\freqDevider|s_divCounter\(16) & !\freqDevider|s_divCounter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(16),
	datad => VCC,
	cin => \freqDevider|s_divCounter[15]~56\,
	combout => \freqDevider|s_divCounter[16]~57_combout\,
	cout => \freqDevider|s_divCounter[16]~58\);

-- Location: FF_X73_Y51_N9
\freqDevider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[16]~57_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(16));

-- Location: LCCOMB_X73_Y51_N10
\freqDevider|s_divCounter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[17]~59_combout\ = (\freqDevider|s_divCounter\(17) & (!\freqDevider|s_divCounter[16]~58\)) # (!\freqDevider|s_divCounter\(17) & ((\freqDevider|s_divCounter[16]~58\) # (GND)))
-- \freqDevider|s_divCounter[17]~60\ = CARRY((!\freqDevider|s_divCounter[16]~58\) # (!\freqDevider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(17),
	datad => VCC,
	cin => \freqDevider|s_divCounter[16]~58\,
	combout => \freqDevider|s_divCounter[17]~59_combout\,
	cout => \freqDevider|s_divCounter[17]~60\);

-- Location: FF_X73_Y51_N11
\freqDevider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[17]~59_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(17));

-- Location: LCCOMB_X73_Y51_N12
\freqDevider|s_divCounter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[18]~61_combout\ = (\freqDevider|s_divCounter\(18) & (\freqDevider|s_divCounter[17]~60\ $ (GND))) # (!\freqDevider|s_divCounter\(18) & (!\freqDevider|s_divCounter[17]~60\ & VCC))
-- \freqDevider|s_divCounter[18]~62\ = CARRY((\freqDevider|s_divCounter\(18) & !\freqDevider|s_divCounter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(18),
	datad => VCC,
	cin => \freqDevider|s_divCounter[17]~60\,
	combout => \freqDevider|s_divCounter[18]~61_combout\,
	cout => \freqDevider|s_divCounter[18]~62\);

-- Location: FF_X73_Y51_N13
\freqDevider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[18]~61_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(18));

-- Location: LCCOMB_X73_Y51_N14
\freqDevider|s_divCounter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[19]~63_combout\ = (\freqDevider|s_divCounter\(19) & (!\freqDevider|s_divCounter[18]~62\)) # (!\freqDevider|s_divCounter\(19) & ((\freqDevider|s_divCounter[18]~62\) # (GND)))
-- \freqDevider|s_divCounter[19]~64\ = CARRY((!\freqDevider|s_divCounter[18]~62\) # (!\freqDevider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(19),
	datad => VCC,
	cin => \freqDevider|s_divCounter[18]~62\,
	combout => \freqDevider|s_divCounter[19]~63_combout\,
	cout => \freqDevider|s_divCounter[19]~64\);

-- Location: FF_X73_Y51_N15
\freqDevider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[19]~63_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(19));

-- Location: LCCOMB_X73_Y51_N16
\freqDevider|s_divCounter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[20]~65_combout\ = (\freqDevider|s_divCounter\(20) & (\freqDevider|s_divCounter[19]~64\ $ (GND))) # (!\freqDevider|s_divCounter\(20) & (!\freqDevider|s_divCounter[19]~64\ & VCC))
-- \freqDevider|s_divCounter[20]~66\ = CARRY((\freqDevider|s_divCounter\(20) & !\freqDevider|s_divCounter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(20),
	datad => VCC,
	cin => \freqDevider|s_divCounter[19]~64\,
	combout => \freqDevider|s_divCounter[20]~65_combout\,
	cout => \freqDevider|s_divCounter[20]~66\);

-- Location: FF_X73_Y51_N17
\freqDevider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[20]~65_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(20));

-- Location: LCCOMB_X73_Y51_N18
\freqDevider|s_divCounter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[21]~67_combout\ = (\freqDevider|s_divCounter\(21) & (!\freqDevider|s_divCounter[20]~66\)) # (!\freqDevider|s_divCounter\(21) & ((\freqDevider|s_divCounter[20]~66\) # (GND)))
-- \freqDevider|s_divCounter[21]~68\ = CARRY((!\freqDevider|s_divCounter[20]~66\) # (!\freqDevider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(21),
	datad => VCC,
	cin => \freqDevider|s_divCounter[20]~66\,
	combout => \freqDevider|s_divCounter[21]~67_combout\,
	cout => \freqDevider|s_divCounter[21]~68\);

-- Location: FF_X73_Y51_N19
\freqDevider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[21]~67_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(21));

-- Location: LCCOMB_X73_Y51_N20
\freqDevider|s_divCounter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[22]~69_combout\ = (\freqDevider|s_divCounter\(22) & (\freqDevider|s_divCounter[21]~68\ $ (GND))) # (!\freqDevider|s_divCounter\(22) & (!\freqDevider|s_divCounter[21]~68\ & VCC))
-- \freqDevider|s_divCounter[22]~70\ = CARRY((\freqDevider|s_divCounter\(22) & !\freqDevider|s_divCounter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(22),
	datad => VCC,
	cin => \freqDevider|s_divCounter[21]~68\,
	combout => \freqDevider|s_divCounter[22]~69_combout\,
	cout => \freqDevider|s_divCounter[22]~70\);

-- Location: FF_X73_Y51_N21
\freqDevider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[22]~69_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(22));

-- Location: LCCOMB_X73_Y51_N22
\freqDevider|s_divCounter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[23]~71_combout\ = (\freqDevider|s_divCounter\(23) & (!\freqDevider|s_divCounter[22]~70\)) # (!\freqDevider|s_divCounter\(23) & ((\freqDevider|s_divCounter[22]~70\) # (GND)))
-- \freqDevider|s_divCounter[23]~72\ = CARRY((!\freqDevider|s_divCounter[22]~70\) # (!\freqDevider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(23),
	datad => VCC,
	cin => \freqDevider|s_divCounter[22]~70\,
	combout => \freqDevider|s_divCounter[23]~71_combout\,
	cout => \freqDevider|s_divCounter[23]~72\);

-- Location: FF_X73_Y51_N23
\freqDevider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[23]~71_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(23));

-- Location: LCCOMB_X73_Y51_N24
\freqDevider|s_divCounter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[24]~73_combout\ = \freqDevider|s_divCounter[23]~72\ $ (!\freqDevider|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freqDevider|s_divCounter\(24),
	cin => \freqDevider|s_divCounter[23]~72\,
	combout => \freqDevider|s_divCounter[24]~73_combout\);

-- Location: FF_X73_Y51_N25
\freqDevider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[24]~73_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(24));

-- Location: LCCOMB_X73_Y51_N30
\freqDevider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|LessThan0~4_combout\ = ((!\freqDevider|s_divCounter\(17) & !\freqDevider|s_divCounter\(16))) # (!\freqDevider|s_divCounter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(17),
	datac => \freqDevider|s_divCounter\(16),
	datad => \freqDevider|s_divCounter\(22),
	combout => \freqDevider|LessThan0~4_combout\);

-- Location: LCCOMB_X73_Y51_N26
\freqDevider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|clkOut~2_combout\ = (\freqDevider|s_divCounter\(18) & (\freqDevider|s_divCounter\(21) & (\freqDevider|s_divCounter\(19) & \freqDevider|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(18),
	datab => \freqDevider|s_divCounter\(21),
	datac => \freqDevider|s_divCounter\(19),
	datad => \freqDevider|s_divCounter\(20),
	combout => \freqDevider|clkOut~2_combout\);

-- Location: LCCOMB_X72_Y51_N22
\freqDevider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|LessThan0~5_combout\ = ((!\freqDevider|s_divCounter\(23) & ((\freqDevider|LessThan0~4_combout\) # (!\freqDevider|clkOut~2_combout\)))) # (!\freqDevider|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(24),
	datab => \freqDevider|s_divCounter\(23),
	datac => \freqDevider|LessThan0~4_combout\,
	datad => \freqDevider|clkOut~2_combout\,
	combout => \freqDevider|LessThan0~5_combout\);

-- Location: LCCOMB_X73_Y51_N28
\freqDevider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|LessThan0~0_combout\ = (!\freqDevider|s_divCounter\(17) & (!\freqDevider|s_divCounter\(23) & !\freqDevider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(17),
	datac => \freqDevider|s_divCounter\(23),
	datad => \freqDevider|s_divCounter\(15),
	combout => \freqDevider|LessThan0~0_combout\);

-- Location: LCCOMB_X72_Y52_N12
\freqDevider|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|clkOut~4_combout\ = (\freqDevider|s_divCounter\(12) & (\freqDevider|s_divCounter\(13) & \freqDevider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(12),
	datac => \freqDevider|s_divCounter\(13),
	datad => \freqDevider|s_divCounter\(11),
	combout => \freqDevider|clkOut~4_combout\);

-- Location: LCCOMB_X72_Y52_N6
\freqDevider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|LessThan0~3_combout\ = (\freqDevider|LessThan0~0_combout\ & ((!\freqDevider|clkOut~4_combout\) # (!\freqDevider|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(14),
	datac => \freqDevider|LessThan0~0_combout\,
	datad => \freqDevider|clkOut~4_combout\,
	combout => \freqDevider|LessThan0~3_combout\);

-- Location: LCCOMB_X73_Y52_N4
\freqDevider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|clkOut~0_combout\ = (\freqDevider|s_divCounter\(1) & (\freqDevider|s_divCounter\(3) & (\freqDevider|s_divCounter\(2) & \freqDevider|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(1),
	datab => \freqDevider|s_divCounter\(3),
	datac => \freqDevider|s_divCounter\(2),
	datad => \freqDevider|s_divCounter\(0),
	combout => \freqDevider|clkOut~0_combout\);

-- Location: LCCOMB_X73_Y52_N6
\freqDevider|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|LessThan0~1_combout\ = (\freqDevider|clkOut~1_combout\ & (((!\freqDevider|clkOut~0_combout\) # (!\freqDevider|s_divCounter\(4))) # (!\freqDevider|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(5),
	datab => \freqDevider|s_divCounter\(4),
	datac => \freqDevider|clkOut~0_combout\,
	datad => \freqDevider|clkOut~1_combout\,
	combout => \freqDevider|LessThan0~1_combout\);

-- Location: LCCOMB_X73_Y52_N0
\freqDevider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|LessThan0~2_combout\ = (!\freqDevider|s_divCounter\(10) & (\freqDevider|LessThan0~0_combout\ & \freqDevider|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(10),
	datac => \freqDevider|LessThan0~0_combout\,
	datad => \freqDevider|LessThan0~1_combout\,
	combout => \freqDevider|LessThan0~2_combout\);

-- Location: LCCOMB_X73_Y52_N2
\freqDevider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|LessThan0~6_combout\ = (!\freqDevider|LessThan0~5_combout\ & (!\freqDevider|LessThan0~3_combout\ & !\freqDevider|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|LessThan0~5_combout\,
	datac => \freqDevider|LessThan0~3_combout\,
	datad => \freqDevider|LessThan0~2_combout\,
	combout => \freqDevider|LessThan0~6_combout\);

-- Location: FF_X73_Y52_N9
\freqDevider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[0]~25_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(0));

-- Location: LCCOMB_X73_Y52_N10
\freqDevider|s_divCounter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[1]~27_combout\ = (\freqDevider|s_divCounter\(1) & (!\freqDevider|s_divCounter[0]~26\)) # (!\freqDevider|s_divCounter\(1) & ((\freqDevider|s_divCounter[0]~26\) # (GND)))
-- \freqDevider|s_divCounter[1]~28\ = CARRY((!\freqDevider|s_divCounter[0]~26\) # (!\freqDevider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(1),
	datad => VCC,
	cin => \freqDevider|s_divCounter[0]~26\,
	combout => \freqDevider|s_divCounter[1]~27_combout\,
	cout => \freqDevider|s_divCounter[1]~28\);

-- Location: FF_X73_Y52_N11
\freqDevider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[1]~27_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(1));

-- Location: LCCOMB_X73_Y52_N12
\freqDevider|s_divCounter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[2]~29_combout\ = (\freqDevider|s_divCounter\(2) & (\freqDevider|s_divCounter[1]~28\ $ (GND))) # (!\freqDevider|s_divCounter\(2) & (!\freqDevider|s_divCounter[1]~28\ & VCC))
-- \freqDevider|s_divCounter[2]~30\ = CARRY((\freqDevider|s_divCounter\(2) & !\freqDevider|s_divCounter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(2),
	datad => VCC,
	cin => \freqDevider|s_divCounter[1]~28\,
	combout => \freqDevider|s_divCounter[2]~29_combout\,
	cout => \freqDevider|s_divCounter[2]~30\);

-- Location: FF_X73_Y52_N13
\freqDevider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[2]~29_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(2));

-- Location: LCCOMB_X73_Y52_N14
\freqDevider|s_divCounter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[3]~31_combout\ = (\freqDevider|s_divCounter\(3) & (!\freqDevider|s_divCounter[2]~30\)) # (!\freqDevider|s_divCounter\(3) & ((\freqDevider|s_divCounter[2]~30\) # (GND)))
-- \freqDevider|s_divCounter[3]~32\ = CARRY((!\freqDevider|s_divCounter[2]~30\) # (!\freqDevider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(3),
	datad => VCC,
	cin => \freqDevider|s_divCounter[2]~30\,
	combout => \freqDevider|s_divCounter[3]~31_combout\,
	cout => \freqDevider|s_divCounter[3]~32\);

-- Location: FF_X73_Y52_N15
\freqDevider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[3]~31_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(3));

-- Location: LCCOMB_X73_Y52_N16
\freqDevider|s_divCounter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[4]~33_combout\ = (\freqDevider|s_divCounter\(4) & (\freqDevider|s_divCounter[3]~32\ $ (GND))) # (!\freqDevider|s_divCounter\(4) & (!\freqDevider|s_divCounter[3]~32\ & VCC))
-- \freqDevider|s_divCounter[4]~34\ = CARRY((\freqDevider|s_divCounter\(4) & !\freqDevider|s_divCounter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(4),
	datad => VCC,
	cin => \freqDevider|s_divCounter[3]~32\,
	combout => \freqDevider|s_divCounter[4]~33_combout\,
	cout => \freqDevider|s_divCounter[4]~34\);

-- Location: FF_X73_Y52_N17
\freqDevider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[4]~33_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(4));

-- Location: LCCOMB_X73_Y52_N18
\freqDevider|s_divCounter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|s_divCounter[5]~35_combout\ = (\freqDevider|s_divCounter\(5) & (!\freqDevider|s_divCounter[4]~34\)) # (!\freqDevider|s_divCounter\(5) & ((\freqDevider|s_divCounter[4]~34\) # (GND)))
-- \freqDevider|s_divCounter[5]~36\ = CARRY((!\freqDevider|s_divCounter[4]~34\) # (!\freqDevider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDevider|s_divCounter\(5),
	datad => VCC,
	cin => \freqDevider|s_divCounter[4]~34\,
	combout => \freqDevider|s_divCounter[5]~35_combout\,
	cout => \freqDevider|s_divCounter[5]~36\);

-- Location: FF_X73_Y52_N19
\freqDevider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[5]~35_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(5));

-- Location: FF_X73_Y52_N21
\freqDevider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|s_divCounter[6]~37_combout\,
	sclr => \freqDevider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|s_divCounter\(6));

-- Location: LCCOMB_X72_Y52_N22
\freqDevider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|clkOut~1_combout\ = (!\freqDevider|s_divCounter\(6) & (!\freqDevider|s_divCounter\(7) & (!\freqDevider|s_divCounter\(9) & !\freqDevider|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(6),
	datab => \freqDevider|s_divCounter\(7),
	datac => \freqDevider|s_divCounter\(9),
	datad => \freqDevider|s_divCounter\(8),
	combout => \freqDevider|clkOut~1_combout\);

-- Location: LCCOMB_X72_Y52_N10
\freqDevider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|clkOut~3_combout\ = (\freqDevider|clkOut~1_combout\ & (\freqDevider|s_divCounter\(4) & (\freqDevider|clkOut~2_combout\ & \freqDevider|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|clkOut~1_combout\,
	datab => \freqDevider|s_divCounter\(4),
	datac => \freqDevider|clkOut~2_combout\,
	datad => \freqDevider|clkOut~0_combout\,
	combout => \freqDevider|clkOut~3_combout\);

-- Location: LCCOMB_X72_Y52_N26
\freqDevider|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|clkOut~5_combout\ = (!\freqDevider|s_divCounter\(14) & (!\freqDevider|s_divCounter\(16) & (\freqDevider|s_divCounter\(15) & \freqDevider|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(14),
	datab => \freqDevider|s_divCounter\(16),
	datac => \freqDevider|s_divCounter\(15),
	datad => \freqDevider|s_divCounter\(10),
	combout => \freqDevider|clkOut~5_combout\);

-- Location: LCCOMB_X72_Y51_N0
\freqDevider|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|clkOut~6_combout\ = (!\freqDevider|s_divCounter\(22) & (\freqDevider|s_divCounter\(17) & (!\freqDevider|s_divCounter\(24) & \freqDevider|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|s_divCounter\(22),
	datab => \freqDevider|s_divCounter\(17),
	datac => \freqDevider|s_divCounter\(24),
	datad => \freqDevider|s_divCounter\(23),
	combout => \freqDevider|clkOut~6_combout\);

-- Location: LCCOMB_X72_Y52_N14
\freqDevider|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|clkOut~7_combout\ = (\freqDevider|clkOut~4_combout\ & (!\freqDevider|s_divCounter\(5) & (\freqDevider|clkOut~5_combout\ & \freqDevider|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|clkOut~4_combout\,
	datab => \freqDevider|s_divCounter\(5),
	datac => \freqDevider|clkOut~5_combout\,
	datad => \freqDevider|clkOut~6_combout\,
	combout => \freqDevider|clkOut~7_combout\);

-- Location: LCCOMB_X72_Y52_N18
\freqDevider|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|clkOut~8_combout\ = (\freqDevider|clkOut~q\) # ((\freqDevider|clkOut~3_combout\ & \freqDevider|clkOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|clkOut~3_combout\,
	datac => \freqDevider|clkOut~7_combout\,
	datad => \freqDevider|clkOut~q\,
	combout => \freqDevider|clkOut~8_combout\);

-- Location: LCCOMB_X72_Y52_N24
\freqDevider|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDevider|clkOut~9_combout\ = (\freqDevider|clkOut~8_combout\ & ((\freqDevider|LessThan0~5_combout\) # ((\freqDevider|LessThan0~2_combout\) # (\freqDevider|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDevider|clkOut~8_combout\,
	datab => \freqDevider|LessThan0~5_combout\,
	datac => \freqDevider|LessThan0~2_combout\,
	datad => \freqDevider|LessThan0~3_combout\,
	combout => \freqDevider|clkOut~9_combout\);

-- Location: FF_X72_Y52_N25
\freqDevider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDevider|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDevider|clkOut~q\);

-- Location: CLKCTRL_G13
\freqDevider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freqDevider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freqDevider|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X79_Y72_N0
\system|aux~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~17_combout\ = (\SW[1]~input_o\ & (\system|aux\(16))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(16),
	datad => \SW[0]~input_o\,
	combout => \system|aux~17_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X79_Y72_N1
\system|aux[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~17_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(17));

-- Location: LCCOMB_X79_Y72_N30
\system|aux~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~16_combout\ = (\SW[1]~input_o\ & (\system|aux\(15))) # (!\SW[1]~input_o\ & ((\system|aux\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(15),
	datad => \system|aux\(17),
	combout => \system|aux~16_combout\);

-- Location: FF_X79_Y72_N31
\system|aux[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~16_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(16));

-- Location: LCCOMB_X79_Y72_N8
\system|aux~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~15_combout\ = (\SW[1]~input_o\ & ((\system|aux\(14)))) # (!\SW[1]~input_o\ & (\system|aux\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(16),
	datad => \system|aux\(14),
	combout => \system|aux~15_combout\);

-- Location: FF_X79_Y72_N9
\system|aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~15_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(15));

-- Location: LCCOMB_X79_Y72_N10
\system|aux~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~14_combout\ = (\SW[1]~input_o\ & ((\system|aux\(13)))) # (!\SW[1]~input_o\ & (\system|aux\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(15),
	datad => \system|aux\(13),
	combout => \system|aux~14_combout\);

-- Location: FF_X79_Y72_N11
\system|aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~14_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(14));

-- Location: LCCOMB_X79_Y72_N16
\system|aux~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~13_combout\ = (\SW[1]~input_o\ & (\system|aux\(12))) # (!\SW[1]~input_o\ & ((\system|aux\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(12),
	datad => \system|aux\(14),
	combout => \system|aux~13_combout\);

-- Location: FF_X79_Y72_N17
\system|aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~13_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(13));

-- Location: LCCOMB_X79_Y72_N22
\system|aux~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~12_combout\ = (\SW[1]~input_o\ & ((\system|aux\(11)))) # (!\SW[1]~input_o\ & (\system|aux\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \system|aux\(13),
	datad => \system|aux\(11),
	combout => \system|aux~12_combout\);

-- Location: FF_X79_Y72_N23
\system|aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~12_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(12));

-- Location: LCCOMB_X79_Y72_N12
\system|aux~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~11_combout\ = (\SW[1]~input_o\ & (\system|aux\(10))) # (!\SW[1]~input_o\ & ((\system|aux\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system|aux\(10),
	datac => \system|aux\(12),
	datad => \SW[1]~input_o\,
	combout => \system|aux~11_combout\);

-- Location: FF_X79_Y72_N13
\system|aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~11_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(11));

-- Location: LCCOMB_X79_Y72_N14
\system|aux~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~10_combout\ = (\SW[1]~input_o\ & (\system|aux\(9))) # (!\SW[1]~input_o\ & ((\system|aux\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \system|aux\(9),
	datad => \system|aux\(11),
	combout => \system|aux~10_combout\);

-- Location: FF_X79_Y72_N15
\system|aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~10_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(10));

-- Location: LCCOMB_X79_Y72_N28
\system|aux~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~9_combout\ = (\SW[1]~input_o\ & (\system|aux\(8))) # (!\SW[1]~input_o\ & ((\system|aux\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system|aux\(8),
	datac => \system|aux\(10),
	datad => \SW[1]~input_o\,
	combout => \system|aux~9_combout\);

-- Location: FF_X79_Y72_N29
\system|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~9_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(9));

-- Location: LCCOMB_X79_Y72_N26
\system|aux~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~8_combout\ = (\SW[1]~input_o\ & (\system|aux\(7))) # (!\SW[1]~input_o\ & ((\system|aux\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \system|aux\(7),
	datad => \system|aux\(9),
	combout => \system|aux~8_combout\);

-- Location: FF_X79_Y72_N27
\system|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~8_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(8));

-- Location: LCCOMB_X79_Y72_N20
\system|aux~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~7_combout\ = (\SW[1]~input_o\ & ((\system|aux\(6)))) # (!\SW[1]~input_o\ & (\system|aux\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(8),
	datad => \system|aux\(6),
	combout => \system|aux~7_combout\);

-- Location: FF_X79_Y72_N21
\system|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~7_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(7));

-- Location: LCCOMB_X79_Y72_N18
\system|aux~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~6_combout\ = (\SW[1]~input_o\ & (\system|aux\(5))) # (!\SW[1]~input_o\ & ((\system|aux\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(5),
	datad => \system|aux\(7),
	combout => \system|aux~6_combout\);

-- Location: FF_X79_Y72_N19
\system|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~6_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(6));

-- Location: LCCOMB_X79_Y72_N4
\system|aux~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~5_combout\ = (\SW[1]~input_o\ & ((\system|aux\(4)))) # (!\SW[1]~input_o\ & (\system|aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \system|aux\(6),
	datad => \system|aux\(4),
	combout => \system|aux~5_combout\);

-- Location: FF_X79_Y72_N5
\system|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~5_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(5));

-- Location: LCCOMB_X79_Y72_N6
\system|aux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~4_combout\ = (\SW[1]~input_o\ & ((\system|aux\(3)))) # (!\SW[1]~input_o\ & (\system|aux\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(5),
	datad => \system|aux\(3),
	combout => \system|aux~4_combout\);

-- Location: FF_X79_Y72_N7
\system|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~4_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(4));

-- Location: LCCOMB_X79_Y72_N24
\system|aux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~3_combout\ = (\SW[1]~input_o\ & ((\system|aux\(2)))) # (!\SW[1]~input_o\ & (\system|aux\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system|aux\(4),
	datab => \SW[1]~input_o\,
	datad => \system|aux\(2),
	combout => \system|aux~3_combout\);

-- Location: FF_X79_Y72_N25
\system|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~3_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(3));

-- Location: LCCOMB_X80_Y72_N28
\system|aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~2_combout\ = (\SW[1]~input_o\ & (\system|aux\(1))) # (!\SW[1]~input_o\ & ((\system|aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(1),
	datad => \system|aux\(3),
	combout => \system|aux~2_combout\);

-- Location: FF_X80_Y72_N29
\system|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~2_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(2));

-- Location: LCCOMB_X80_Y72_N30
\system|aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~1_combout\ = (\SW[1]~input_o\ & (\system|aux\(0))) # (!\SW[1]~input_o\ & ((\system|aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(0),
	datad => \system|aux\(2),
	combout => \system|aux~1_combout\);

-- Location: FF_X80_Y72_N31
\system|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~1_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(1));

-- Location: LCCOMB_X80_Y72_N4
\system|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[1]~input_o\ & (\system|aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(1),
	datad => \SW[0]~input_o\,
	combout => \system|aux~0_combout\);

-- Location: FF_X80_Y72_N5
\system|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDevider|clkOut~clkctrl_outclk\,
	d => \system|aux~0_combout\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(0));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


