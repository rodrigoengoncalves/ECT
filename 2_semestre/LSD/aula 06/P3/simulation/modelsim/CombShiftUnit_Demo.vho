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

-- DATE "04/01/2025 15:44:37"

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

ENTITY 	CombShiftUnit_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END CombShiftUnit_Demo;

-- Design Ports Information
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CombShiftUnit_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freq|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freq|s_divCounter[0]~24_combout\ : std_logic;
SIGNAL \freq|s_divCounter[11]~47\ : std_logic;
SIGNAL \freq|s_divCounter[12]~48_combout\ : std_logic;
SIGNAL \freq|s_divCounter[12]~49\ : std_logic;
SIGNAL \freq|s_divCounter[13]~50_combout\ : std_logic;
SIGNAL \freq|s_divCounter[13]~51\ : std_logic;
SIGNAL \freq|s_divCounter[14]~52_combout\ : std_logic;
SIGNAL \freq|s_divCounter[14]~53\ : std_logic;
SIGNAL \freq|s_divCounter[15]~54_combout\ : std_logic;
SIGNAL \freq|s_divCounter[15]~55\ : std_logic;
SIGNAL \freq|s_divCounter[16]~56_combout\ : std_logic;
SIGNAL \freq|s_divCounter[16]~57\ : std_logic;
SIGNAL \freq|s_divCounter[17]~58_combout\ : std_logic;
SIGNAL \freq|s_divCounter[17]~59\ : std_logic;
SIGNAL \freq|s_divCounter[18]~60_combout\ : std_logic;
SIGNAL \freq|s_divCounter[18]~61\ : std_logic;
SIGNAL \freq|s_divCounter[19]~62_combout\ : std_logic;
SIGNAL \freq|s_divCounter[19]~63\ : std_logic;
SIGNAL \freq|s_divCounter[20]~64_combout\ : std_logic;
SIGNAL \freq|s_divCounter[20]~65\ : std_logic;
SIGNAL \freq|s_divCounter[21]~66_combout\ : std_logic;
SIGNAL \freq|s_divCounter[21]~67\ : std_logic;
SIGNAL \freq|s_divCounter[22]~68_combout\ : std_logic;
SIGNAL \freq|s_divCounter[22]~69\ : std_logic;
SIGNAL \freq|s_divCounter[23]~70_combout\ : std_logic;
SIGNAL \freq|LessThan0~2_combout\ : std_logic;
SIGNAL \freq|clkOut~0_combout\ : std_logic;
SIGNAL \freq|LessThan0~0_combout\ : std_logic;
SIGNAL \freq|LessThan0~1_combout\ : std_logic;
SIGNAL \freq|LessThan0~3_combout\ : std_logic;
SIGNAL \freq|clkOut~1_combout\ : std_logic;
SIGNAL \freq|LessThan0~4_combout\ : std_logic;
SIGNAL \freq|LessThan0~5_combout\ : std_logic;
SIGNAL \freq|s_divCounter[0]~25\ : std_logic;
SIGNAL \freq|s_divCounter[1]~26_combout\ : std_logic;
SIGNAL \freq|s_divCounter[1]~27\ : std_logic;
SIGNAL \freq|s_divCounter[2]~28_combout\ : std_logic;
SIGNAL \freq|s_divCounter[2]~29\ : std_logic;
SIGNAL \freq|s_divCounter[3]~30_combout\ : std_logic;
SIGNAL \freq|s_divCounter[3]~31\ : std_logic;
SIGNAL \freq|s_divCounter[4]~32_combout\ : std_logic;
SIGNAL \freq|s_divCounter[4]~33\ : std_logic;
SIGNAL \freq|s_divCounter[5]~34_combout\ : std_logic;
SIGNAL \freq|s_divCounter[5]~35\ : std_logic;
SIGNAL \freq|s_divCounter[6]~36_combout\ : std_logic;
SIGNAL \freq|s_divCounter[6]~37\ : std_logic;
SIGNAL \freq|s_divCounter[7]~38_combout\ : std_logic;
SIGNAL \freq|s_divCounter[7]~39\ : std_logic;
SIGNAL \freq|s_divCounter[8]~40_combout\ : std_logic;
SIGNAL \freq|s_divCounter[8]~41\ : std_logic;
SIGNAL \freq|s_divCounter[9]~42_combout\ : std_logic;
SIGNAL \freq|s_divCounter[9]~43\ : std_logic;
SIGNAL \freq|s_divCounter[10]~44_combout\ : std_logic;
SIGNAL \freq|s_divCounter[10]~45\ : std_logic;
SIGNAL \freq|s_divCounter[11]~46_combout\ : std_logic;
SIGNAL \freq|clkOut~3_combout\ : std_logic;
SIGNAL \freq|clkOut~4_combout\ : std_logic;
SIGNAL \freq|clkOut~5_combout\ : std_logic;
SIGNAL \freq|clkOut~6_combout\ : std_logic;
SIGNAL \freq|clkOut~2_combout\ : std_logic;
SIGNAL \freq|clkOut~7_combout\ : std_logic;
SIGNAL \freq|clkOut~feeder_combout\ : std_logic;
SIGNAL \freq|clkOut~q\ : std_logic;
SIGNAL \freq|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \core|s_shiftReg[1]~12_combout\ : std_logic;
SIGNAL \core|s_shiftReg[5]~40_combout\ : std_logic;
SIGNAL \core|RotateLeft0~8_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \core|RotateLeft0~12_combout\ : std_logic;
SIGNAL \core|RotateLeft0~13_combout\ : std_logic;
SIGNAL \core|RotateLeft0~10_combout\ : std_logic;
SIGNAL \core|RotateLeft0~11_combout\ : std_logic;
SIGNAL \core|s_shiftReg[5]~37_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \core|s_shiftReg[5]~32_combout\ : std_logic;
SIGNAL \core|s_shiftReg[5]~33_combout\ : std_logic;
SIGNAL \core|s_shiftReg[5]~34_combout\ : std_logic;
SIGNAL \core|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \core|ShiftRight1~8_combout\ : std_logic;
SIGNAL \core|s_shiftReg~41_combout\ : std_logic;
SIGNAL \core|ShiftRight0~3_combout\ : std_logic;
SIGNAL \core|s_shiftReg~42_combout\ : std_logic;
SIGNAL \core|s_shiftReg[5]~31_combout\ : std_logic;
SIGNAL \core|RotateRight0~4_combout\ : std_logic;
SIGNAL \core|RotateRight0~5_combout\ : std_logic;
SIGNAL \core|s_shiftReg~43_combout\ : std_logic;
SIGNAL \core|s_shiftReg~44_combout\ : std_logic;
SIGNAL \core|s_shiftReg[6]~2_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \core|ShiftRight0~1_combout\ : std_logic;
SIGNAL \core|ShiftRight0~2_combout\ : std_logic;
SIGNAL \core|s_shiftReg[1]~6_combout\ : std_logic;
SIGNAL \core|ShiftRight1~6_combout\ : std_logic;
SIGNAL \core|ShiftRight1~7_combout\ : std_logic;
SIGNAL \core|ShiftRight1~5_combout\ : std_logic;
SIGNAL \core|s_shiftReg[1]~7_combout\ : std_logic;
SIGNAL \core|RotateLeft0~6_combout\ : std_logic;
SIGNAL \core|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \core|RotateLeft0~7_combout\ : std_logic;
SIGNAL \core|s_shiftReg[1]~8_combout\ : std_logic;
SIGNAL \core|s_shiftReg[1]~9_combout\ : std_logic;
SIGNAL \core|RotateRight0~2_combout\ : std_logic;
SIGNAL \core|RotateRight0~3_combout\ : std_logic;
SIGNAL \core|s_shiftReg~10_combout\ : std_logic;
SIGNAL \core|s_shiftReg~11_combout\ : std_logic;
SIGNAL \core|s_shiftReg~13_combout\ : std_logic;
SIGNAL \core|s_shiftReg~14_combout\ : std_logic;
SIGNAL \core|s_shiftReg~15_combout\ : std_logic;
SIGNAL \core|RotateLeft0~0_combout\ : std_logic;
SIGNAL \core|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \core|RotateLeft0~14_combout\ : std_logic;
SIGNAL \core|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \core|s_shiftReg~47_combout\ : std_logic;
SIGNAL \core|RotateRight0~1_combout\ : std_logic;
SIGNAL \core|RotateRight0~9_combout\ : std_logic;
SIGNAL \core|RotateRight0~10_combout\ : std_logic;
SIGNAL \core|RotateRight0~0_combout\ : std_logic;
SIGNAL \core|s_shiftReg~45_combout\ : std_logic;
SIGNAL \core|s_shiftReg~46_combout\ : std_logic;
SIGNAL \core|s_shiftReg~48_combout\ : std_logic;
SIGNAL \core|s_shiftReg[7]~3_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \core|RotateLeft0~4_combout\ : std_logic;
SIGNAL \core|RotateLeft0~3_combout\ : std_logic;
SIGNAL \core|RotateLeft0~5_combout\ : std_logic;
SIGNAL \core|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \core|RotateLeft0~15_combout\ : std_logic;
SIGNAL \core|ShiftRight1~0_combout\ : std_logic;
SIGNAL \core|ShiftRight1~1_combout\ : std_logic;
SIGNAL \core|RotateRight0~11_combout\ : std_logic;
SIGNAL \core|s_shiftReg~27_combout\ : std_logic;
SIGNAL \core|ShiftRight0~0_combout\ : std_logic;
SIGNAL \core|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \core|s_shiftReg~28_combout\ : std_logic;
SIGNAL \core|s_shiftReg~29_combout\ : std_logic;
SIGNAL \core|s_shiftReg~30_combout\ : std_logic;
SIGNAL \core|RotateLeft0~1_combout\ : std_logic;
SIGNAL \core|RotateLeft0~9_combout\ : std_logic;
SIGNAL \core|s_shiftReg~35_combout\ : std_logic;
SIGNAL \core|s_shiftReg~36_combout\ : std_logic;
SIGNAL \core|s_shiftReg~38_combout\ : std_logic;
SIGNAL \core|s_shiftReg~39_combout\ : std_logic;
SIGNAL \core|s_shiftReg[5]~1_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \core|RotateRight0~6_combout\ : std_logic;
SIGNAL \core|RotateRight0~7_combout\ : std_logic;
SIGNAL \core|s_shiftReg~18_combout\ : std_logic;
SIGNAL \core|s_shiftReg~16_combout\ : std_logic;
SIGNAL \core|s_shiftReg~17_combout\ : std_logic;
SIGNAL \core|s_shiftReg~19_combout\ : std_logic;
SIGNAL \core|s_shiftReg~20_combout\ : std_logic;
SIGNAL \core|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \core|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \core|s_shiftReg~21_combout\ : std_logic;
SIGNAL \core|RotateRight0~8_combout\ : std_logic;
SIGNAL \core|s_shiftReg~22_combout\ : std_logic;
SIGNAL \core|s_shiftReg~23_combout\ : std_logic;
SIGNAL \core|s_shiftReg~24_combout\ : std_logic;
SIGNAL \core|s_shiftReg~25_combout\ : std_logic;
SIGNAL \core|s_shiftReg~26_combout\ : std_logic;
SIGNAL \core|ShiftRight1~2_combout\ : std_logic;
SIGNAL \core|ShiftRight1~3_combout\ : std_logic;
SIGNAL \core|ShiftRight1~4_combout\ : std_logic;
SIGNAL \core|RotateLeft0~2_combout\ : std_logic;
SIGNAL \core|s_shiftReg~4_combout\ : std_logic;
SIGNAL \core|s_shiftReg~5_combout\ : std_logic;
SIGNAL \core|s_shiftReg[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \core|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \freq|s_divCounter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \freq|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freq|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freq|clkOut~q\);
\freq|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \freq|clkOut~clkctrl_outclk\;
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
	i => \core|s_shiftReg\(0),
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
	i => \core|s_shiftReg\(1),
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
	i => \core|s_shiftReg\(2),
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
	i => \core|s_shiftReg\(3),
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
	i => \core|s_shiftReg\(4),
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
	i => \core|s_shiftReg\(5),
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
	i => \core|s_shiftReg\(6),
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
	i => \core|s_shiftReg\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X66_Y71_N8
\freq|s_divCounter[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[0]~24_combout\ = \freq|s_divCounter\(0) $ (VCC)
-- \freq|s_divCounter[0]~25\ = CARRY(\freq|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(0),
	datad => VCC,
	combout => \freq|s_divCounter[0]~24_combout\,
	cout => \freq|s_divCounter[0]~25\);

-- Location: LCCOMB_X66_Y71_N30
\freq|s_divCounter[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[11]~46_combout\ = (\freq|s_divCounter\(11) & (!\freq|s_divCounter[10]~45\)) # (!\freq|s_divCounter\(11) & ((\freq|s_divCounter[10]~45\) # (GND)))
-- \freq|s_divCounter[11]~47\ = CARRY((!\freq|s_divCounter[10]~45\) # (!\freq|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(11),
	datad => VCC,
	cin => \freq|s_divCounter[10]~45\,
	combout => \freq|s_divCounter[11]~46_combout\,
	cout => \freq|s_divCounter[11]~47\);

-- Location: LCCOMB_X66_Y70_N0
\freq|s_divCounter[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[12]~48_combout\ = (\freq|s_divCounter\(12) & (\freq|s_divCounter[11]~47\ $ (GND))) # (!\freq|s_divCounter\(12) & (!\freq|s_divCounter[11]~47\ & VCC))
-- \freq|s_divCounter[12]~49\ = CARRY((\freq|s_divCounter\(12) & !\freq|s_divCounter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(12),
	datad => VCC,
	cin => \freq|s_divCounter[11]~47\,
	combout => \freq|s_divCounter[12]~48_combout\,
	cout => \freq|s_divCounter[12]~49\);

-- Location: FF_X66_Y70_N1
\freq|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[12]~48_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(12));

-- Location: LCCOMB_X66_Y70_N2
\freq|s_divCounter[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[13]~50_combout\ = (\freq|s_divCounter\(13) & (!\freq|s_divCounter[12]~49\)) # (!\freq|s_divCounter\(13) & ((\freq|s_divCounter[12]~49\) # (GND)))
-- \freq|s_divCounter[13]~51\ = CARRY((!\freq|s_divCounter[12]~49\) # (!\freq|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(13),
	datad => VCC,
	cin => \freq|s_divCounter[12]~49\,
	combout => \freq|s_divCounter[13]~50_combout\,
	cout => \freq|s_divCounter[13]~51\);

-- Location: FF_X66_Y70_N3
\freq|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[13]~50_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(13));

-- Location: LCCOMB_X66_Y70_N4
\freq|s_divCounter[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[14]~52_combout\ = (\freq|s_divCounter\(14) & (\freq|s_divCounter[13]~51\ $ (GND))) # (!\freq|s_divCounter\(14) & (!\freq|s_divCounter[13]~51\ & VCC))
-- \freq|s_divCounter[14]~53\ = CARRY((\freq|s_divCounter\(14) & !\freq|s_divCounter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(14),
	datad => VCC,
	cin => \freq|s_divCounter[13]~51\,
	combout => \freq|s_divCounter[14]~52_combout\,
	cout => \freq|s_divCounter[14]~53\);

-- Location: FF_X66_Y70_N5
\freq|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[14]~52_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(14));

-- Location: LCCOMB_X66_Y70_N6
\freq|s_divCounter[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[15]~54_combout\ = (\freq|s_divCounter\(15) & (!\freq|s_divCounter[14]~53\)) # (!\freq|s_divCounter\(15) & ((\freq|s_divCounter[14]~53\) # (GND)))
-- \freq|s_divCounter[15]~55\ = CARRY((!\freq|s_divCounter[14]~53\) # (!\freq|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(15),
	datad => VCC,
	cin => \freq|s_divCounter[14]~53\,
	combout => \freq|s_divCounter[15]~54_combout\,
	cout => \freq|s_divCounter[15]~55\);

-- Location: FF_X66_Y70_N7
\freq|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[15]~54_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(15));

-- Location: LCCOMB_X66_Y70_N8
\freq|s_divCounter[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[16]~56_combout\ = (\freq|s_divCounter\(16) & (\freq|s_divCounter[15]~55\ $ (GND))) # (!\freq|s_divCounter\(16) & (!\freq|s_divCounter[15]~55\ & VCC))
-- \freq|s_divCounter[16]~57\ = CARRY((\freq|s_divCounter\(16) & !\freq|s_divCounter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(16),
	datad => VCC,
	cin => \freq|s_divCounter[15]~55\,
	combout => \freq|s_divCounter[16]~56_combout\,
	cout => \freq|s_divCounter[16]~57\);

-- Location: FF_X66_Y70_N9
\freq|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[16]~56_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(16));

-- Location: LCCOMB_X66_Y70_N10
\freq|s_divCounter[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[17]~58_combout\ = (\freq|s_divCounter\(17) & (!\freq|s_divCounter[16]~57\)) # (!\freq|s_divCounter\(17) & ((\freq|s_divCounter[16]~57\) # (GND)))
-- \freq|s_divCounter[17]~59\ = CARRY((!\freq|s_divCounter[16]~57\) # (!\freq|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(17),
	datad => VCC,
	cin => \freq|s_divCounter[16]~57\,
	combout => \freq|s_divCounter[17]~58_combout\,
	cout => \freq|s_divCounter[17]~59\);

-- Location: FF_X66_Y70_N11
\freq|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[17]~58_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(17));

-- Location: LCCOMB_X66_Y70_N12
\freq|s_divCounter[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[18]~60_combout\ = (\freq|s_divCounter\(18) & (\freq|s_divCounter[17]~59\ $ (GND))) # (!\freq|s_divCounter\(18) & (!\freq|s_divCounter[17]~59\ & VCC))
-- \freq|s_divCounter[18]~61\ = CARRY((\freq|s_divCounter\(18) & !\freq|s_divCounter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(18),
	datad => VCC,
	cin => \freq|s_divCounter[17]~59\,
	combout => \freq|s_divCounter[18]~60_combout\,
	cout => \freq|s_divCounter[18]~61\);

-- Location: FF_X66_Y70_N13
\freq|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[18]~60_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(18));

-- Location: LCCOMB_X66_Y70_N14
\freq|s_divCounter[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[19]~62_combout\ = (\freq|s_divCounter\(19) & (!\freq|s_divCounter[18]~61\)) # (!\freq|s_divCounter\(19) & ((\freq|s_divCounter[18]~61\) # (GND)))
-- \freq|s_divCounter[19]~63\ = CARRY((!\freq|s_divCounter[18]~61\) # (!\freq|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(19),
	datad => VCC,
	cin => \freq|s_divCounter[18]~61\,
	combout => \freq|s_divCounter[19]~62_combout\,
	cout => \freq|s_divCounter[19]~63\);

-- Location: FF_X66_Y70_N15
\freq|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[19]~62_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(19));

-- Location: LCCOMB_X66_Y70_N16
\freq|s_divCounter[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[20]~64_combout\ = (\freq|s_divCounter\(20) & (\freq|s_divCounter[19]~63\ $ (GND))) # (!\freq|s_divCounter\(20) & (!\freq|s_divCounter[19]~63\ & VCC))
-- \freq|s_divCounter[20]~65\ = CARRY((\freq|s_divCounter\(20) & !\freq|s_divCounter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(20),
	datad => VCC,
	cin => \freq|s_divCounter[19]~63\,
	combout => \freq|s_divCounter[20]~64_combout\,
	cout => \freq|s_divCounter[20]~65\);

-- Location: FF_X66_Y70_N17
\freq|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[20]~64_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(20));

-- Location: LCCOMB_X66_Y70_N18
\freq|s_divCounter[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[21]~66_combout\ = (\freq|s_divCounter\(21) & (!\freq|s_divCounter[20]~65\)) # (!\freq|s_divCounter\(21) & ((\freq|s_divCounter[20]~65\) # (GND)))
-- \freq|s_divCounter[21]~67\ = CARRY((!\freq|s_divCounter[20]~65\) # (!\freq|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(21),
	datad => VCC,
	cin => \freq|s_divCounter[20]~65\,
	combout => \freq|s_divCounter[21]~66_combout\,
	cout => \freq|s_divCounter[21]~67\);

-- Location: FF_X66_Y70_N19
\freq|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[21]~66_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(21));

-- Location: LCCOMB_X66_Y70_N20
\freq|s_divCounter[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[22]~68_combout\ = (\freq|s_divCounter\(22) & (\freq|s_divCounter[21]~67\ $ (GND))) # (!\freq|s_divCounter\(22) & (!\freq|s_divCounter[21]~67\ & VCC))
-- \freq|s_divCounter[22]~69\ = CARRY((\freq|s_divCounter\(22) & !\freq|s_divCounter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(22),
	datad => VCC,
	cin => \freq|s_divCounter[21]~67\,
	combout => \freq|s_divCounter[22]~68_combout\,
	cout => \freq|s_divCounter[22]~69\);

-- Location: FF_X66_Y70_N21
\freq|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[22]~68_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(22));

-- Location: LCCOMB_X66_Y70_N22
\freq|s_divCounter[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[23]~70_combout\ = \freq|s_divCounter\(23) $ (\freq|s_divCounter[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(23),
	cin => \freq|s_divCounter[22]~69\,
	combout => \freq|s_divCounter[23]~70_combout\);

-- Location: FF_X66_Y70_N23
\freq|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[23]~70_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(23));

-- Location: LCCOMB_X66_Y70_N28
\freq|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|LessThan0~2_combout\ = (((!\freq|s_divCounter\(12)) # (!\freq|s_divCounter\(11))) # (!\freq|s_divCounter\(13))) # (!\freq|s_divCounter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(10),
	datab => \freq|s_divCounter\(13),
	datac => \freq|s_divCounter\(11),
	datad => \freq|s_divCounter\(12),
	combout => \freq|LessThan0~2_combout\);

-- Location: LCCOMB_X66_Y71_N4
\freq|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~0_combout\ = (\freq|s_divCounter\(1) & (\freq|s_divCounter\(0) & (\freq|s_divCounter\(3) & \freq|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(1),
	datab => \freq|s_divCounter\(0),
	datac => \freq|s_divCounter\(3),
	datad => \freq|s_divCounter\(2),
	combout => \freq|clkOut~0_combout\);

-- Location: LCCOMB_X66_Y71_N6
\freq|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|LessThan0~0_combout\ = (!\freq|s_divCounter\(7) & (!\freq|s_divCounter\(5) & (!\freq|s_divCounter\(8) & !\freq|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(7),
	datab => \freq|s_divCounter\(5),
	datac => \freq|s_divCounter\(8),
	datad => \freq|s_divCounter\(6),
	combout => \freq|LessThan0~0_combout\);

-- Location: LCCOMB_X66_Y71_N0
\freq|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|LessThan0~1_combout\ = (!\freq|s_divCounter\(9) & (\freq|LessThan0~0_combout\ & ((!\freq|clkOut~0_combout\) # (!\freq|s_divCounter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(9),
	datab => \freq|s_divCounter\(4),
	datac => \freq|clkOut~0_combout\,
	datad => \freq|LessThan0~0_combout\,
	combout => \freq|LessThan0~1_combout\);

-- Location: LCCOMB_X66_Y70_N26
\freq|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|LessThan0~3_combout\ = ((!\freq|s_divCounter\(14) & ((\freq|LessThan0~2_combout\) # (\freq|LessThan0~1_combout\)))) # (!\freq|s_divCounter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(15),
	datab => \freq|LessThan0~2_combout\,
	datac => \freq|s_divCounter\(14),
	datad => \freq|LessThan0~1_combout\,
	combout => \freq|LessThan0~3_combout\);

-- Location: LCCOMB_X65_Y70_N16
\freq|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~1_combout\ = (\freq|s_divCounter\(17) & (\freq|s_divCounter\(18) & (\freq|s_divCounter\(19) & \freq|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(17),
	datab => \freq|s_divCounter\(18),
	datac => \freq|s_divCounter\(19),
	datad => \freq|s_divCounter\(20),
	combout => \freq|clkOut~1_combout\);

-- Location: LCCOMB_X66_Y70_N24
\freq|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|LessThan0~4_combout\ = (((!\freq|s_divCounter\(16) & \freq|LessThan0~3_combout\)) # (!\freq|clkOut~1_combout\)) # (!\freq|s_divCounter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(21),
	datab => \freq|s_divCounter\(16),
	datac => \freq|LessThan0~3_combout\,
	datad => \freq|clkOut~1_combout\,
	combout => \freq|LessThan0~4_combout\);

-- Location: LCCOMB_X66_Y70_N30
\freq|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|LessThan0~5_combout\ = (\freq|s_divCounter\(23) & ((\freq|s_divCounter\(22)) # (!\freq|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(22),
	datac => \freq|s_divCounter\(23),
	datad => \freq|LessThan0~4_combout\,
	combout => \freq|LessThan0~5_combout\);

-- Location: FF_X66_Y71_N9
\freq|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[0]~24_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(0));

-- Location: LCCOMB_X66_Y71_N10
\freq|s_divCounter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[1]~26_combout\ = (\freq|s_divCounter\(1) & (!\freq|s_divCounter[0]~25\)) # (!\freq|s_divCounter\(1) & ((\freq|s_divCounter[0]~25\) # (GND)))
-- \freq|s_divCounter[1]~27\ = CARRY((!\freq|s_divCounter[0]~25\) # (!\freq|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(1),
	datad => VCC,
	cin => \freq|s_divCounter[0]~25\,
	combout => \freq|s_divCounter[1]~26_combout\,
	cout => \freq|s_divCounter[1]~27\);

-- Location: FF_X66_Y71_N11
\freq|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[1]~26_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(1));

-- Location: LCCOMB_X66_Y71_N12
\freq|s_divCounter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[2]~28_combout\ = (\freq|s_divCounter\(2) & (\freq|s_divCounter[1]~27\ $ (GND))) # (!\freq|s_divCounter\(2) & (!\freq|s_divCounter[1]~27\ & VCC))
-- \freq|s_divCounter[2]~29\ = CARRY((\freq|s_divCounter\(2) & !\freq|s_divCounter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(2),
	datad => VCC,
	cin => \freq|s_divCounter[1]~27\,
	combout => \freq|s_divCounter[2]~28_combout\,
	cout => \freq|s_divCounter[2]~29\);

-- Location: FF_X66_Y71_N13
\freq|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[2]~28_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(2));

-- Location: LCCOMB_X66_Y71_N14
\freq|s_divCounter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[3]~30_combout\ = (\freq|s_divCounter\(3) & (!\freq|s_divCounter[2]~29\)) # (!\freq|s_divCounter\(3) & ((\freq|s_divCounter[2]~29\) # (GND)))
-- \freq|s_divCounter[3]~31\ = CARRY((!\freq|s_divCounter[2]~29\) # (!\freq|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(3),
	datad => VCC,
	cin => \freq|s_divCounter[2]~29\,
	combout => \freq|s_divCounter[3]~30_combout\,
	cout => \freq|s_divCounter[3]~31\);

-- Location: FF_X66_Y71_N15
\freq|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[3]~30_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(3));

-- Location: LCCOMB_X66_Y71_N16
\freq|s_divCounter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[4]~32_combout\ = (\freq|s_divCounter\(4) & (\freq|s_divCounter[3]~31\ $ (GND))) # (!\freq|s_divCounter\(4) & (!\freq|s_divCounter[3]~31\ & VCC))
-- \freq|s_divCounter[4]~33\ = CARRY((\freq|s_divCounter\(4) & !\freq|s_divCounter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(4),
	datad => VCC,
	cin => \freq|s_divCounter[3]~31\,
	combout => \freq|s_divCounter[4]~32_combout\,
	cout => \freq|s_divCounter[4]~33\);

-- Location: FF_X66_Y71_N17
\freq|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[4]~32_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(4));

-- Location: LCCOMB_X66_Y71_N18
\freq|s_divCounter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[5]~34_combout\ = (\freq|s_divCounter\(5) & (!\freq|s_divCounter[4]~33\)) # (!\freq|s_divCounter\(5) & ((\freq|s_divCounter[4]~33\) # (GND)))
-- \freq|s_divCounter[5]~35\ = CARRY((!\freq|s_divCounter[4]~33\) # (!\freq|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(5),
	datad => VCC,
	cin => \freq|s_divCounter[4]~33\,
	combout => \freq|s_divCounter[5]~34_combout\,
	cout => \freq|s_divCounter[5]~35\);

-- Location: FF_X66_Y71_N19
\freq|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[5]~34_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(5));

-- Location: LCCOMB_X66_Y71_N20
\freq|s_divCounter[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[6]~36_combout\ = (\freq|s_divCounter\(6) & (\freq|s_divCounter[5]~35\ $ (GND))) # (!\freq|s_divCounter\(6) & (!\freq|s_divCounter[5]~35\ & VCC))
-- \freq|s_divCounter[6]~37\ = CARRY((\freq|s_divCounter\(6) & !\freq|s_divCounter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(6),
	datad => VCC,
	cin => \freq|s_divCounter[5]~35\,
	combout => \freq|s_divCounter[6]~36_combout\,
	cout => \freq|s_divCounter[6]~37\);

-- Location: FF_X66_Y71_N21
\freq|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[6]~36_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(6));

-- Location: LCCOMB_X66_Y71_N22
\freq|s_divCounter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[7]~38_combout\ = (\freq|s_divCounter\(7) & (!\freq|s_divCounter[6]~37\)) # (!\freq|s_divCounter\(7) & ((\freq|s_divCounter[6]~37\) # (GND)))
-- \freq|s_divCounter[7]~39\ = CARRY((!\freq|s_divCounter[6]~37\) # (!\freq|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(7),
	datad => VCC,
	cin => \freq|s_divCounter[6]~37\,
	combout => \freq|s_divCounter[7]~38_combout\,
	cout => \freq|s_divCounter[7]~39\);

-- Location: FF_X66_Y71_N23
\freq|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[7]~38_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(7));

-- Location: LCCOMB_X66_Y71_N24
\freq|s_divCounter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[8]~40_combout\ = (\freq|s_divCounter\(8) & (\freq|s_divCounter[7]~39\ $ (GND))) # (!\freq|s_divCounter\(8) & (!\freq|s_divCounter[7]~39\ & VCC))
-- \freq|s_divCounter[8]~41\ = CARRY((\freq|s_divCounter\(8) & !\freq|s_divCounter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(8),
	datad => VCC,
	cin => \freq|s_divCounter[7]~39\,
	combout => \freq|s_divCounter[8]~40_combout\,
	cout => \freq|s_divCounter[8]~41\);

-- Location: FF_X66_Y71_N25
\freq|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[8]~40_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(8));

-- Location: LCCOMB_X66_Y71_N26
\freq|s_divCounter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[9]~42_combout\ = (\freq|s_divCounter\(9) & (!\freq|s_divCounter[8]~41\)) # (!\freq|s_divCounter\(9) & ((\freq|s_divCounter[8]~41\) # (GND)))
-- \freq|s_divCounter[9]~43\ = CARRY((!\freq|s_divCounter[8]~41\) # (!\freq|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(9),
	datad => VCC,
	cin => \freq|s_divCounter[8]~41\,
	combout => \freq|s_divCounter[9]~42_combout\,
	cout => \freq|s_divCounter[9]~43\);

-- Location: FF_X66_Y71_N27
\freq|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter[9]~42_combout\,
	sclr => \freq|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(9));

-- Location: LCCOMB_X66_Y71_N28
\freq|s_divCounter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter[10]~44_combout\ = (\freq|s_divCounter\(10) & (\freq|s_divCounter[9]~43\ $ (GND))) # (!\freq|s_divCounter\(10) & (!\freq|s_divCounter[9]~43\ & VCC))
-- \freq|s_divCounter[10]~45\ = CARRY((\freq|s_divCounter\(10) & !\freq|s_divCounter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(10),
	datad => VCC,
	cin => \freq|s_divCounter[9]~43\,
	combout => \freq|s_divCounter[10]~44_combout\,
	cout => \freq|s_divCounter[10]~45\);

-- Location: FF_X65_Y70_N1
\freq|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freq|s_divCounter[10]~44_combout\,
	sclr => \freq|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(10));

-- Location: FF_X65_Y70_N7
\freq|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freq|s_divCounter[11]~46_combout\,
	sclr => \freq|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(11));

-- Location: LCCOMB_X65_Y70_N12
\freq|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~3_combout\ = (\freq|s_divCounter\(11) & (!\freq|s_divCounter\(4) & (\freq|s_divCounter\(12) & \freq|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(11),
	datab => \freq|s_divCounter\(4),
	datac => \freq|s_divCounter\(12),
	datad => \freq|s_divCounter\(10),
	combout => \freq|clkOut~3_combout\);

-- Location: LCCOMB_X65_Y70_N2
\freq|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~4_combout\ = (!\freq|s_divCounter\(13) & (!\freq|s_divCounter\(15) & (\freq|s_divCounter\(22) & \freq|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(13),
	datab => \freq|s_divCounter\(15),
	datac => \freq|s_divCounter\(22),
	datad => \freq|s_divCounter\(9),
	combout => \freq|clkOut~4_combout\);

-- Location: LCCOMB_X65_Y70_N22
\freq|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~5_combout\ = (\freq|s_divCounter\(14) & (!\freq|s_divCounter\(21) & (\freq|s_divCounter\(16) & \freq|clkOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(14),
	datab => \freq|s_divCounter\(21),
	datac => \freq|s_divCounter\(16),
	datad => \freq|clkOut~4_combout\,
	combout => \freq|clkOut~5_combout\);

-- Location: LCCOMB_X65_Y70_N10
\freq|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~6_combout\ = (\freq|clkOut~3_combout\ & (\freq|clkOut~1_combout\ & (\freq|clkOut~5_combout\ & \freq|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|clkOut~3_combout\,
	datab => \freq|clkOut~1_combout\,
	datac => \freq|clkOut~5_combout\,
	datad => \freq|LessThan0~0_combout\,
	combout => \freq|clkOut~6_combout\);

-- Location: LCCOMB_X65_Y70_N24
\freq|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~2_combout\ = ((!\freq|s_divCounter\(22) & \freq|LessThan0~4_combout\)) # (!\freq|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq|s_divCounter\(23),
	datac => \freq|s_divCounter\(22),
	datad => \freq|LessThan0~4_combout\,
	combout => \freq|clkOut~2_combout\);

-- Location: LCCOMB_X65_Y70_N28
\freq|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~7_combout\ = (\freq|clkOut~2_combout\ & ((\freq|clkOut~q\) # ((\freq|clkOut~6_combout\ & \freq|clkOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|clkOut~6_combout\,
	datab => \freq|clkOut~0_combout\,
	datac => \freq|clkOut~q\,
	datad => \freq|clkOut~2_combout\,
	combout => \freq|clkOut~7_combout\);

-- Location: LCCOMB_X65_Y70_N14
\freq|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~feeder_combout\ = \freq|clkOut~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|clkOut~7_combout\,
	combout => \freq|clkOut~feeder_combout\);

-- Location: FF_X65_Y70_N15
\freq|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|clkOut~q\);

-- Location: CLKCTRL_G12
\freq|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freq|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freq|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

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

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X106_Y19_N0
\core|s_shiftReg[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[1]~12_combout\ = (\KEY[0]~input_o\) # ((\KEY[1]~input_o\) # (!\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \core|s_shiftReg[1]~12_combout\);

-- Location: LCCOMB_X112_Y19_N10
\core|s_shiftReg[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[5]~40_combout\ = (\SW[17]~input_o\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \core|s_shiftReg[5]~40_combout\);

-- Location: LCCOMB_X110_Y19_N10
\core|RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~8_combout\ = (\SW[16]~input_o\ & ((\core|s_shiftReg\(3)))) # (!\SW[16]~input_o\ & (\core|s_shiftReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core|s_shiftReg\(5),
	datac => \SW[16]~input_o\,
	datad => \core|s_shiftReg\(3),
	combout => \core|RotateLeft0~8_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

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

-- Location: LCCOMB_X110_Y19_N0
\core|RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~12_combout\ = (\SW[16]~input_o\ & ((\core|s_shiftReg\(4)))) # (!\SW[16]~input_o\ & (\core|s_shiftReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg\(6),
	datac => \SW[16]~input_o\,
	datad => \core|s_shiftReg\(4),
	combout => \core|RotateLeft0~12_combout\);

-- Location: LCCOMB_X110_Y19_N18
\core|RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~13_combout\ = (\SW[15]~input_o\ & ((\core|RotateLeft0~8_combout\))) # (!\SW[15]~input_o\ & (\core|RotateLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \core|RotateLeft0~12_combout\,
	datad => \core|RotateLeft0~8_combout\,
	combout => \core|RotateLeft0~13_combout\);

-- Location: LCCOMB_X108_Y19_N4
\core|RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~10_combout\ = (\SW[15]~input_o\ & ((\SW[16]~input_o\ & (\core|s_shiftReg\(7))) # (!\SW[16]~input_o\ & ((\core|s_shiftReg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(7),
	datad => \core|s_shiftReg\(1),
	combout => \core|RotateLeft0~10_combout\);

-- Location: LCCOMB_X107_Y19_N14
\core|RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~11_combout\ = (\core|RotateLeft0~10_combout\) # ((\core|ShiftLeft0~1_combout\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core|ShiftLeft0~1_combout\,
	datac => \SW[15]~input_o\,
	datad => \core|RotateLeft0~10_combout\,
	combout => \core|RotateLeft0~11_combout\);

-- Location: LCCOMB_X111_Y19_N18
\core|s_shiftReg[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[5]~37_combout\ = (\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \core|s_shiftReg[5]~37_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X111_Y19_N16
\core|s_shiftReg[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[5]~32_combout\ = (\KEY[2]~input_o\ & !\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \core|s_shiftReg[5]~32_combout\);

-- Location: LCCOMB_X106_Y19_N28
\core|s_shiftReg[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[5]~33_combout\ = (\KEY[1]~input_o\) # ((!\SW[17]~input_o\ & !\KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \KEY[2]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \core|s_shiftReg[5]~33_combout\);

-- Location: LCCOMB_X106_Y19_N26
\core|s_shiftReg[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[5]~34_combout\ = (\KEY[1]~input_o\) # ((\SW[17]~input_o\ & \KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \KEY[2]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \core|s_shiftReg[5]~34_combout\);

-- Location: LCCOMB_X108_Y19_N30
\core|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftLeft0~2_combout\ = (\SW[15]~input_o\ & (\core|s_shiftReg\(1) & (!\SW[16]~input_o\))) # (!\SW[15]~input_o\ & (((\core|ShiftLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \core|s_shiftReg\(1),
	datac => \SW[16]~input_o\,
	datad => \core|ShiftLeft0~1_combout\,
	combout => \core|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X108_Y19_N20
\core|ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight1~8_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\core|s_shiftReg\(7))) # (!\SW[15]~input_o\ & ((\core|s_shiftReg\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(7),
	datad => \core|s_shiftReg\(6),
	combout => \core|ShiftRight1~8_combout\);

-- Location: LCCOMB_X108_Y19_N26
\core|s_shiftReg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~41_combout\ = (\core|s_shiftReg[5]~33_combout\ & ((\core|s_shiftReg[5]~34_combout\ & (\core|ShiftLeft0~2_combout\)) # (!\core|s_shiftReg[5]~34_combout\ & ((\core|ShiftRight1~8_combout\))))) # (!\core|s_shiftReg[5]~33_combout\ & 
-- (\core|s_shiftReg[5]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[5]~33_combout\,
	datab => \core|s_shiftReg[5]~34_combout\,
	datac => \core|ShiftLeft0~2_combout\,
	datad => \core|ShiftRight1~8_combout\,
	combout => \core|s_shiftReg~41_combout\);

-- Location: LCCOMB_X108_Y19_N28
\core|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight0~3_combout\ = (\SW[15]~input_o\ & (((\core|s_shiftReg\(7))))) # (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & (\core|s_shiftReg\(7))) # (!\SW[16]~input_o\ & ((\core|s_shiftReg\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(7),
	datad => \core|s_shiftReg\(6),
	combout => \core|ShiftRight0~3_combout\);

-- Location: LCCOMB_X108_Y19_N8
\core|s_shiftReg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~42_combout\ = (\core|s_shiftReg[5]~32_combout\ & ((\core|s_shiftReg~41_combout\ & (\core|s_shiftReg\(7))) # (!\core|s_shiftReg~41_combout\ & ((\core|ShiftRight0~3_combout\))))) # (!\core|s_shiftReg[5]~32_combout\ & 
-- (((\core|s_shiftReg~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg\(7),
	datab => \core|s_shiftReg[5]~32_combout\,
	datac => \core|s_shiftReg~41_combout\,
	datad => \core|ShiftRight0~3_combout\,
	combout => \core|s_shiftReg~42_combout\);

-- Location: LCCOMB_X111_Y19_N6
\core|s_shiftReg[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[5]~31_combout\ = (\KEY[0]~input_o\ & ((\SW[17]~input_o\) # (\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \core|s_shiftReg[5]~31_combout\);

-- Location: LCCOMB_X108_Y19_N22
\core|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~4_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\core|s_shiftReg\(1))) # (!\SW[15]~input_o\ & ((\core|s_shiftReg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \core|s_shiftReg\(1),
	datac => \SW[16]~input_o\,
	datad => \core|s_shiftReg\(0),
	combout => \core|RotateRight0~4_combout\);

-- Location: LCCOMB_X108_Y19_N16
\core|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~5_combout\ = (\core|RotateRight0~4_combout\) # (\core|ShiftRight1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \core|RotateRight0~4_combout\,
	datad => \core|ShiftRight1~8_combout\,
	combout => \core|RotateRight0~5_combout\);

-- Location: LCCOMB_X108_Y19_N18
\core|s_shiftReg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~43_combout\ = (\core|s_shiftReg[5]~31_combout\ & ((\core|s_shiftReg[5]~37_combout\) # ((\core|RotateRight0~7_combout\)))) # (!\core|s_shiftReg[5]~31_combout\ & (!\core|s_shiftReg[5]~37_combout\ & ((\core|RotateRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[5]~31_combout\,
	datab => \core|s_shiftReg[5]~37_combout\,
	datac => \core|RotateRight0~7_combout\,
	datad => \core|RotateRight0~5_combout\,
	combout => \core|s_shiftReg~43_combout\);

-- Location: LCCOMB_X108_Y19_N0
\core|s_shiftReg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~44_combout\ = (\core|s_shiftReg[5]~37_combout\ & ((\core|s_shiftReg~43_combout\ & (\core|RotateLeft0~11_combout\)) # (!\core|s_shiftReg~43_combout\ & ((\core|s_shiftReg~42_combout\))))) # (!\core|s_shiftReg[5]~37_combout\ & 
-- (((\core|s_shiftReg~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|RotateLeft0~11_combout\,
	datab => \core|s_shiftReg[5]~37_combout\,
	datac => \core|s_shiftReg~42_combout\,
	datad => \core|s_shiftReg~43_combout\,
	combout => \core|s_shiftReg~44_combout\);

-- Location: LCCOMB_X110_Y19_N30
\core|s_shiftReg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[6]~2_combout\ = (\core|s_shiftReg[5]~40_combout\ & ((\core|s_shiftReg~44_combout\))) # (!\core|s_shiftReg[5]~40_combout\ & (\core|RotateLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[5]~40_combout\,
	datab => \core|RotateLeft0~13_combout\,
	datad => \core|s_shiftReg~44_combout\,
	combout => \core|s_shiftReg[6]~2_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X110_Y19_N31
\core|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|ALT_INV_clkOut~clkctrl_outclk\,
	d => \core|s_shiftReg[6]~2_combout\,
	asdata => \SW[6]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \core|s_shiftReg\(6));

-- Location: LCCOMB_X109_Y19_N24
\core|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight0~1_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\core|s_shiftReg\(6))) # (!\SW[15]~input_o\ & ((\core|s_shiftReg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \core|s_shiftReg\(6),
	datad => \core|s_shiftReg\(5),
	combout => \core|ShiftRight0~1_combout\);

-- Location: LCCOMB_X109_Y19_N30
\core|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight0~2_combout\ = (\core|ShiftRight0~1_combout\) # ((\core|s_shiftReg\(7) & \SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg\(7),
	datac => \SW[16]~input_o\,
	datad => \core|ShiftRight0~1_combout\,
	combout => \core|ShiftRight0~2_combout\);

-- Location: LCCOMB_X106_Y19_N24
\core|s_shiftReg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[1]~6_combout\ = (!\KEY[1]~input_o\ & (((\KEY[2]~input_o\ & !\KEY[0]~input_o\)) # (!\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \core|s_shiftReg[1]~6_combout\);

-- Location: LCCOMB_X110_Y19_N2
\core|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight1~6_combout\ = (\SW[16]~input_o\ & ((\core|s_shiftReg\(4)))) # (!\SW[16]~input_o\ & (\core|s_shiftReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(2),
	datad => \core|s_shiftReg\(4),
	combout => \core|ShiftRight1~6_combout\);

-- Location: LCCOMB_X109_Y19_N26
\core|ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight1~7_combout\ = (\SW[15]~input_o\ & ((\core|ShiftRight1~6_combout\))) # (!\SW[15]~input_o\ & (\core|ShiftRight1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \core|ShiftRight1~2_combout\,
	datad => \core|ShiftRight1~6_combout\,
	combout => \core|ShiftRight1~7_combout\);

-- Location: LCCOMB_X108_Y19_N6
\core|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight1~5_combout\ = (\core|ShiftRight0~1_combout\) # ((!\SW[15]~input_o\ & (\SW[16]~input_o\ & \core|s_shiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(7),
	datad => \core|ShiftRight0~1_combout\,
	combout => \core|ShiftRight1~5_combout\);

-- Location: LCCOMB_X106_Y19_N22
\core|s_shiftReg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[1]~7_combout\ = (\KEY[0]~input_o\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \core|s_shiftReg[1]~7_combout\);

-- Location: LCCOMB_X109_Y19_N10
\core|RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~6_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & ((\core|s_shiftReg\(6)))) # (!\SW[15]~input_o\ & (\core|s_shiftReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg\(7),
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \core|s_shiftReg\(6),
	combout => \core|RotateLeft0~6_combout\);

-- Location: LCCOMB_X109_Y19_N0
\core|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftLeft0~0_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & ((\core|s_shiftReg\(0)))) # (!\SW[15]~input_o\ & (\core|s_shiftReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg\(1),
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \core|s_shiftReg\(0),
	combout => \core|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X109_Y19_N4
\core|RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~7_combout\ = (\core|RotateLeft0~6_combout\) # (\core|ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|RotateLeft0~6_combout\,
	datad => \core|ShiftLeft0~0_combout\,
	combout => \core|RotateLeft0~7_combout\);

-- Location: LCCOMB_X111_Y19_N12
\core|s_shiftReg[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[1]~8_combout\ = (\KEY[0]~input_o\ & ((!\KEY[1]~input_o\))) # (!\KEY[0]~input_o\ & (!\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \core|s_shiftReg[1]~8_combout\);

-- Location: LCCOMB_X111_Y19_N2
\core|s_shiftReg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[1]~9_combout\ = (\KEY[0]~input_o\ & ((\SW[17]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \core|s_shiftReg[1]~9_combout\);

-- Location: LCCOMB_X108_Y19_N12
\core|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~2_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & ((\core|s_shiftReg\(0)))) # (!\SW[15]~input_o\ & (\core|s_shiftReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(7),
	datad => \core|s_shiftReg\(0),
	combout => \core|RotateRight0~2_combout\);

-- Location: LCCOMB_X109_Y19_N6
\core|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~3_combout\ = (\core|ShiftRight0~1_combout\) # (\core|RotateRight0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core|ShiftRight0~1_combout\,
	datad => \core|RotateRight0~2_combout\,
	combout => \core|RotateRight0~3_combout\);

-- Location: LCCOMB_X109_Y19_N8
\core|s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~10_combout\ = (\core|s_shiftReg[1]~8_combout\ & ((\core|s_shiftReg[1]~9_combout\ & ((\core|RotateRight0~3_combout\))) # (!\core|s_shiftReg[1]~9_combout\ & (\core|ShiftLeft0~0_combout\)))) # (!\core|s_shiftReg[1]~8_combout\ & 
-- (((\core|s_shiftReg[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[1]~8_combout\,
	datab => \core|ShiftLeft0~0_combout\,
	datac => \core|s_shiftReg[1]~9_combout\,
	datad => \core|RotateRight0~3_combout\,
	combout => \core|s_shiftReg~10_combout\);

-- Location: LCCOMB_X109_Y19_N2
\core|s_shiftReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~11_combout\ = (\core|s_shiftReg[1]~7_combout\ & ((\core|s_shiftReg~10_combout\ & ((\core|RotateLeft0~9_combout\))) # (!\core|s_shiftReg~10_combout\ & (\core|RotateLeft0~7_combout\)))) # (!\core|s_shiftReg[1]~7_combout\ & 
-- (((\core|s_shiftReg~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[1]~7_combout\,
	datab => \core|RotateLeft0~7_combout\,
	datac => \core|s_shiftReg~10_combout\,
	datad => \core|RotateLeft0~9_combout\,
	combout => \core|s_shiftReg~11_combout\);

-- Location: LCCOMB_X109_Y19_N20
\core|s_shiftReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~13_combout\ = (\core|s_shiftReg[1]~12_combout\ & ((\core|s_shiftReg[1]~6_combout\) # ((\core|s_shiftReg~11_combout\)))) # (!\core|s_shiftReg[1]~12_combout\ & (!\core|s_shiftReg[1]~6_combout\ & (\core|ShiftRight1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[1]~12_combout\,
	datab => \core|s_shiftReg[1]~6_combout\,
	datac => \core|ShiftRight1~5_combout\,
	datad => \core|s_shiftReg~11_combout\,
	combout => \core|s_shiftReg~13_combout\);

-- Location: LCCOMB_X109_Y19_N16
\core|s_shiftReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~14_combout\ = (\core|s_shiftReg[1]~6_combout\ & ((\core|s_shiftReg~13_combout\ & ((\core|ShiftRight1~7_combout\))) # (!\core|s_shiftReg~13_combout\ & (\core|ShiftRight0~2_combout\)))) # (!\core|s_shiftReg[1]~6_combout\ & 
-- (((\core|s_shiftReg~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|ShiftRight0~2_combout\,
	datab => \core|s_shiftReg[1]~6_combout\,
	datac => \core|ShiftRight1~7_combout\,
	datad => \core|s_shiftReg~13_combout\,
	combout => \core|s_shiftReg~14_combout\);

-- Location: LCCOMB_X109_Y19_N22
\core|s_shiftReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~15_combout\ = (\SW[8]~input_o\ & (\SW[1]~input_o\)) # (!\SW[8]~input_o\ & ((\core|s_shiftReg~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \core|s_shiftReg~14_combout\,
	combout => \core|s_shiftReg~15_combout\);

-- Location: FF_X109_Y19_N23
\core|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|ALT_INV_clkOut~clkctrl_outclk\,
	d => \core|s_shiftReg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \core|s_shiftReg\(1));

-- Location: LCCOMB_X107_Y19_N2
\core|RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~0_combout\ = (\SW[16]~input_o\ & (\core|s_shiftReg\(1))) # (!\SW[16]~input_o\ & ((\core|s_shiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(1),
	datad => \core|s_shiftReg\(3),
	combout => \core|RotateLeft0~0_combout\);

-- Location: LCCOMB_X107_Y19_N6
\core|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftLeft0~6_combout\ = (\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\core|ShiftLeft0~1_combout\)) # (!\SW[15]~input_o\ & ((\core|RotateLeft0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \core|ShiftLeft0~1_combout\,
	datac => \SW[15]~input_o\,
	datad => \core|RotateLeft0~0_combout\,
	combout => \core|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X107_Y19_N22
\core|RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~14_combout\ = (\SW[15]~input_o\ & (\core|RotateLeft0~12_combout\)) # (!\SW[15]~input_o\ & ((\core|RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \core|RotateLeft0~12_combout\,
	datad => \core|RotateLeft0~4_combout\,
	combout => \core|RotateLeft0~14_combout\);

-- Location: LCCOMB_X108_Y19_N14
\core|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftLeft0~7_combout\ = (\core|ShiftLeft0~6_combout\) # ((!\SW[17]~input_o\ & \core|RotateLeft0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \core|ShiftLeft0~6_combout\,
	datad => \core|RotateLeft0~14_combout\,
	combout => \core|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X106_Y19_N4
\core|s_shiftReg~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~47_combout\ = (\KEY[2]~input_o\) # ((!\SW[17]~input_o\ & (!\SW[16]~input_o\ & !\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \core|s_shiftReg~47_combout\);

-- Location: LCCOMB_X107_Y19_N0
\core|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~1_combout\ = (\SW[16]~input_o\ & (\core|s_shiftReg\(2))) # (!\SW[16]~input_o\ & ((\core|s_shiftReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(2),
	datad => \core|s_shiftReg\(0),
	combout => \core|RotateRight0~1_combout\);

-- Location: LCCOMB_X106_Y19_N18
\core|RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~9_combout\ = (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & (\core|s_shiftReg\(1))) # (!\SW[16]~input_o\ & ((\core|s_shiftReg\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(1),
	datad => \core|s_shiftReg\(7),
	combout => \core|RotateRight0~9_combout\);

-- Location: LCCOMB_X106_Y19_N20
\core|RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~10_combout\ = (\core|RotateRight0~9_combout\) # ((\SW[15]~input_o\ & \core|RotateRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \core|RotateRight0~1_combout\,
	datad => \core|RotateRight0~9_combout\,
	combout => \core|RotateRight0~10_combout\);

-- Location: LCCOMB_X110_Y19_N26
\core|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~0_combout\ = (\SW[16]~input_o\ & (\core|s_shiftReg\(6))) # (!\SW[16]~input_o\ & ((\core|s_shiftReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(6),
	datad => \core|s_shiftReg\(4),
	combout => \core|RotateRight0~0_combout\);

-- Location: LCCOMB_X106_Y19_N16
\core|s_shiftReg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~45_combout\ = (\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\core|RotateRight0~0_combout\))) # (!\SW[15]~input_o\ & (\core|RotateRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \core|RotateRight0~6_combout\,
	datad => \core|RotateRight0~0_combout\,
	combout => \core|s_shiftReg~45_combout\);

-- Location: LCCOMB_X106_Y19_N2
\core|s_shiftReg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~46_combout\ = (\KEY[0]~input_o\ & ((\core|s_shiftReg~45_combout\) # ((!\SW[17]~input_o\ & \core|RotateRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \core|RotateRight0~10_combout\,
	datac => \KEY[0]~input_o\,
	datad => \core|s_shiftReg~45_combout\,
	combout => \core|s_shiftReg~46_combout\);

-- Location: LCCOMB_X106_Y19_N14
\core|s_shiftReg~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~48_combout\ = (\core|s_shiftReg~46_combout\) # ((\core|s_shiftReg\(7) & (\core|s_shiftReg~47_combout\ & !\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg\(7),
	datab => \core|s_shiftReg~47_combout\,
	datac => \KEY[0]~input_o\,
	datad => \core|s_shiftReg~46_combout\,
	combout => \core|s_shiftReg~48_combout\);

-- Location: LCCOMB_X109_Y19_N12
\core|s_shiftReg[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[7]~3_combout\ = (\KEY[1]~input_o\ & (\core|ShiftLeft0~7_combout\)) # (!\KEY[1]~input_o\ & ((\core|s_shiftReg~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|ShiftLeft0~7_combout\,
	datab => \KEY[1]~input_o\,
	datad => \core|s_shiftReg~48_combout\,
	combout => \core|s_shiftReg[7]~3_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X109_Y19_N13
\core|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|ALT_INV_clkOut~clkctrl_outclk\,
	d => \core|s_shiftReg[7]~3_combout\,
	asdata => \SW[7]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \core|s_shiftReg\(7));

-- Location: LCCOMB_X110_Y19_N22
\core|RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~4_combout\ = (\SW[16]~input_o\ & (\core|s_shiftReg\(5))) # (!\SW[16]~input_o\ & ((\core|s_shiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core|s_shiftReg\(5),
	datac => \SW[16]~input_o\,
	datad => \core|s_shiftReg\(7),
	combout => \core|RotateLeft0~4_combout\);

-- Location: LCCOMB_X110_Y19_N12
\core|RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~3_combout\ = (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & ((\core|s_shiftReg\(6)))) # (!\SW[16]~input_o\ & (\core|s_shiftReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(0),
	datad => \core|s_shiftReg\(6),
	combout => \core|RotateLeft0~3_combout\);

-- Location: LCCOMB_X110_Y19_N20
\core|RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~5_combout\ = (\core|RotateLeft0~3_combout\) # ((\SW[15]~input_o\ & \core|RotateLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \core|RotateLeft0~4_combout\,
	datad => \core|RotateLeft0~3_combout\,
	combout => \core|RotateLeft0~5_combout\);

-- Location: LCCOMB_X111_Y19_N10
\core|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftLeft0~4_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\core|RotateLeft0~0_combout\))) # (!\SW[15]~input_o\ & (\core|RotateLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \core|RotateLeft0~1_combout\,
	datad => \core|RotateLeft0~0_combout\,
	combout => \core|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X111_Y19_N22
\core|RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~15_combout\ = (\core|ShiftLeft0~4_combout\) # ((\core|RotateLeft0~5_combout\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core|RotateLeft0~5_combout\,
	datac => \SW[17]~input_o\,
	datad => \core|ShiftLeft0~4_combout\,
	combout => \core|RotateLeft0~15_combout\);

-- Location: LCCOMB_X110_Y19_N4
\core|ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight1~0_combout\ = (\SW[15]~input_o\ & ((\SW[16]~input_o\ & ((\core|s_shiftReg\(7)))) # (!\SW[16]~input_o\ & (\core|s_shiftReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \core|s_shiftReg\(5),
	datac => \SW[16]~input_o\,
	datad => \core|s_shiftReg\(7),
	combout => \core|ShiftRight1~0_combout\);

-- Location: LCCOMB_X110_Y19_N24
\core|ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight1~1_combout\ = (\core|ShiftRight1~0_combout\) # ((!\SW[15]~input_o\ & \core|RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \core|ShiftRight1~0_combout\,
	datad => \core|RotateRight0~0_combout\,
	combout => \core|ShiftRight1~1_combout\);

-- Location: LCCOMB_X111_Y19_N8
\core|RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~11_combout\ = (\SW[17]~input_o\ & ((\core|ShiftRight1~3_combout\))) # (!\SW[17]~input_o\ & (\core|ShiftRight1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \core|ShiftRight1~1_combout\,
	datad => \core|ShiftRight1~3_combout\,
	combout => \core|RotateRight0~11_combout\);

-- Location: LCCOMB_X111_Y19_N26
\core|s_shiftReg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~27_combout\ = (\SW[17]~input_o\ & (\KEY[2]~input_o\ & (\core|s_shiftReg\(7)))) # (!\SW[17]~input_o\ & (((\core|ShiftRight1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \KEY[2]~input_o\,
	datac => \core|s_shiftReg\(7),
	datad => \core|ShiftRight1~1_combout\,
	combout => \core|s_shiftReg~27_combout\);

-- Location: LCCOMB_X112_Y19_N0
\core|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight0~0_combout\ = (!\SW[16]~input_o\ & !\SW[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	combout => \core|ShiftRight0~0_combout\);

-- Location: LCCOMB_X111_Y19_N20
\core|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftLeft0~5_combout\ = (\core|ShiftLeft0~4_combout\) # ((\core|s_shiftReg\(0) & (\core|ShiftRight0~0_combout\ & \SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg\(0),
	datab => \core|ShiftRight0~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \core|ShiftLeft0~4_combout\,
	combout => \core|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X111_Y19_N28
\core|s_shiftReg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~28_combout\ = (\KEY[1]~input_o\ & ((\KEY[0]~input_o\) # ((\core|ShiftLeft0~5_combout\)))) # (!\KEY[1]~input_o\ & (!\KEY[0]~input_o\ & (\core|s_shiftReg~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \core|s_shiftReg~27_combout\,
	datad => \core|ShiftLeft0~5_combout\,
	combout => \core|s_shiftReg~28_combout\);

-- Location: LCCOMB_X111_Y19_N24
\core|s_shiftReg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~29_combout\ = (\KEY[0]~input_o\ & ((\core|s_shiftReg~28_combout\ & (\core|RotateLeft0~15_combout\)) # (!\core|s_shiftReg~28_combout\ & ((\core|RotateRight0~11_combout\))))) # (!\KEY[0]~input_o\ & (((\core|s_shiftReg~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|RotateLeft0~15_combout\,
	datab => \KEY[0]~input_o\,
	datac => \core|RotateRight0~11_combout\,
	datad => \core|s_shiftReg~28_combout\,
	combout => \core|s_shiftReg~29_combout\);

-- Location: LCCOMB_X111_Y19_N4
\core|s_shiftReg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~30_combout\ = (\SW[8]~input_o\ & (\SW[4]~input_o\)) # (!\SW[8]~input_o\ & ((\core|s_shiftReg~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \core|s_shiftReg~29_combout\,
	combout => \core|s_shiftReg~30_combout\);

-- Location: FF_X111_Y19_N5
\core|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|ALT_INV_clkOut~clkctrl_outclk\,
	d => \core|s_shiftReg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \core|s_shiftReg\(4));

-- Location: LCCOMB_X110_Y19_N6
\core|RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~1_combout\ = (\SW[16]~input_o\ & (\core|s_shiftReg\(2))) # (!\SW[16]~input_o\ & ((\core|s_shiftReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(2),
	datad => \core|s_shiftReg\(4),
	combout => \core|RotateLeft0~1_combout\);

-- Location: LCCOMB_X110_Y19_N16
\core|RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~9_combout\ = (\SW[15]~input_o\ & ((\core|RotateLeft0~1_combout\))) # (!\SW[15]~input_o\ & (\core|RotateLeft0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \core|RotateLeft0~8_combout\,
	datad => \core|RotateLeft0~1_combout\,
	combout => \core|RotateLeft0~9_combout\);

-- Location: LCCOMB_X108_Y19_N24
\core|s_shiftReg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~35_combout\ = (\core|s_shiftReg[5]~33_combout\ & ((\core|s_shiftReg[5]~34_combout\ & (\core|ShiftLeft0~0_combout\)) # (!\core|s_shiftReg[5]~34_combout\ & ((\core|ShiftRight1~5_combout\))))) # (!\core|s_shiftReg[5]~33_combout\ & 
-- (\core|s_shiftReg[5]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[5]~33_combout\,
	datab => \core|s_shiftReg[5]~34_combout\,
	datac => \core|ShiftLeft0~0_combout\,
	datad => \core|ShiftRight1~5_combout\,
	combout => \core|s_shiftReg~35_combout\);

-- Location: LCCOMB_X109_Y19_N18
\core|s_shiftReg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~36_combout\ = (\core|s_shiftReg[5]~32_combout\ & ((\core|s_shiftReg~35_combout\ & (\core|s_shiftReg\(7))) # (!\core|s_shiftReg~35_combout\ & ((\core|ShiftRight0~2_combout\))))) # (!\core|s_shiftReg[5]~32_combout\ & 
-- (((\core|s_shiftReg~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg\(7),
	datab => \core|s_shiftReg[5]~32_combout\,
	datac => \core|ShiftRight0~2_combout\,
	datad => \core|s_shiftReg~35_combout\,
	combout => \core|s_shiftReg~36_combout\);

-- Location: LCCOMB_X109_Y19_N28
\core|s_shiftReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~38_combout\ = (\core|s_shiftReg[5]~37_combout\ & (((\core|s_shiftReg[5]~31_combout\) # (\core|s_shiftReg~36_combout\)))) # (!\core|s_shiftReg[5]~37_combout\ & (\core|RotateRight0~3_combout\ & (!\core|s_shiftReg[5]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|RotateRight0~3_combout\,
	datab => \core|s_shiftReg[5]~37_combout\,
	datac => \core|s_shiftReg[5]~31_combout\,
	datad => \core|s_shiftReg~36_combout\,
	combout => \core|s_shiftReg~38_combout\);

-- Location: LCCOMB_X109_Y19_N14
\core|s_shiftReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~39_combout\ = (\core|s_shiftReg[5]~31_combout\ & ((\core|s_shiftReg~38_combout\ & ((\core|RotateLeft0~7_combout\))) # (!\core|s_shiftReg~38_combout\ & (\core|ShiftRight1~7_combout\)))) # (!\core|s_shiftReg[5]~31_combout\ & 
-- (((\core|s_shiftReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|ShiftRight1~7_combout\,
	datab => \core|s_shiftReg[5]~31_combout\,
	datac => \core|RotateLeft0~7_combout\,
	datad => \core|s_shiftReg~38_combout\,
	combout => \core|s_shiftReg~39_combout\);

-- Location: LCCOMB_X110_Y19_N28
\core|s_shiftReg[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[5]~1_combout\ = (\core|s_shiftReg[5]~40_combout\ & ((\core|s_shiftReg~39_combout\))) # (!\core|s_shiftReg[5]~40_combout\ & (\core|RotateLeft0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[5]~40_combout\,
	datab => \core|RotateLeft0~9_combout\,
	datad => \core|s_shiftReg~39_combout\,
	combout => \core|s_shiftReg[5]~1_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X110_Y19_N29
\core|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|ALT_INV_clkOut~clkctrl_outclk\,
	d => \core|s_shiftReg[5]~1_combout\,
	asdata => \SW[5]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \core|s_shiftReg\(5));

-- Location: LCCOMB_X110_Y19_N8
\core|RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~6_combout\ = (\SW[16]~input_o\ & (\core|s_shiftReg\(5))) # (!\SW[16]~input_o\ & ((\core|s_shiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core|s_shiftReg\(5),
	datac => \SW[16]~input_o\,
	datad => \core|s_shiftReg\(3),
	combout => \core|RotateRight0~6_combout\);

-- Location: LCCOMB_X110_Y19_N14
\core|RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~7_combout\ = (\SW[15]~input_o\ & (\core|RotateRight0~6_combout\)) # (!\SW[15]~input_o\ & ((\core|ShiftRight1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \core|RotateRight0~6_combout\,
	datad => \core|ShiftRight1~6_combout\,
	combout => \core|RotateRight0~7_combout\);

-- Location: LCCOMB_X108_Y19_N10
\core|s_shiftReg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~18_combout\ = (\core|s_shiftReg[1]~6_combout\ & ((\core|ShiftRight0~3_combout\) # ((\core|s_shiftReg[1]~12_combout\)))) # (!\core|s_shiftReg[1]~6_combout\ & (((!\core|s_shiftReg[1]~12_combout\ & \core|ShiftRight1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[1]~6_combout\,
	datab => \core|ShiftRight0~3_combout\,
	datac => \core|s_shiftReg[1]~12_combout\,
	datad => \core|ShiftRight1~8_combout\,
	combout => \core|s_shiftReg~18_combout\);

-- Location: LCCOMB_X108_Y19_N2
\core|s_shiftReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~16_combout\ = (\core|s_shiftReg[1]~9_combout\ & (((\core|RotateRight0~5_combout\)) # (!\core|s_shiftReg[1]~8_combout\))) # (!\core|s_shiftReg[1]~9_combout\ & (\core|s_shiftReg[1]~8_combout\ & (\core|ShiftLeft0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[1]~9_combout\,
	datab => \core|s_shiftReg[1]~8_combout\,
	datac => \core|ShiftLeft0~2_combout\,
	datad => \core|RotateRight0~5_combout\,
	combout => \core|s_shiftReg~16_combout\);

-- Location: LCCOMB_X107_Y19_N20
\core|s_shiftReg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~17_combout\ = (\core|s_shiftReg~16_combout\ & (((\core|RotateLeft0~13_combout\)) # (!\core|s_shiftReg[1]~7_combout\))) # (!\core|s_shiftReg~16_combout\ & (\core|s_shiftReg[1]~7_combout\ & (\core|RotateLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg~16_combout\,
	datab => \core|s_shiftReg[1]~7_combout\,
	datac => \core|RotateLeft0~11_combout\,
	datad => \core|RotateLeft0~13_combout\,
	combout => \core|s_shiftReg~17_combout\);

-- Location: LCCOMB_X107_Y19_N18
\core|s_shiftReg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~19_combout\ = (\core|s_shiftReg[1]~12_combout\ & ((\core|s_shiftReg~18_combout\ & (\core|RotateRight0~7_combout\)) # (!\core|s_shiftReg~18_combout\ & ((\core|s_shiftReg~17_combout\))))) # (!\core|s_shiftReg[1]~12_combout\ & 
-- (((\core|s_shiftReg~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg[1]~12_combout\,
	datab => \core|RotateRight0~7_combout\,
	datac => \core|s_shiftReg~18_combout\,
	datad => \core|s_shiftReg~17_combout\,
	combout => \core|s_shiftReg~19_combout\);

-- Location: LCCOMB_X107_Y19_N30
\core|s_shiftReg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~20_combout\ = (\SW[8]~input_o\ & (\SW[2]~input_o\)) # (!\SW[8]~input_o\ & ((\core|s_shiftReg~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \core|s_shiftReg~19_combout\,
	combout => \core|s_shiftReg~20_combout\);

-- Location: FF_X107_Y19_N31
\core|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|ALT_INV_clkOut~clkctrl_outclk\,
	d => \core|s_shiftReg~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \core|s_shiftReg\(2));

-- Location: LCCOMB_X107_Y19_N24
\core|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftLeft0~1_combout\ = (\SW[16]~input_o\ & ((\core|s_shiftReg\(0)))) # (!\SW[16]~input_o\ & (\core|s_shiftReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \core|s_shiftReg\(2),
	datad => \core|s_shiftReg\(0),
	combout => \core|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X107_Y19_N4
\core|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftLeft0~3_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\core|ShiftLeft0~1_combout\)) # (!\SW[15]~input_o\ & ((\core|RotateLeft0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \core|ShiftLeft0~1_combout\,
	datac => \SW[15]~input_o\,
	datad => \core|RotateLeft0~0_combout\,
	combout => \core|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X106_Y19_N8
\core|s_shiftReg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~21_combout\ = (\SW[17]~input_o\ & ((\KEY[0]~input_o\) # (\core|s_shiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \core|s_shiftReg\(7),
	combout => \core|s_shiftReg~21_combout\);

-- Location: LCCOMB_X106_Y19_N30
\core|RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateRight0~8_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\core|RotateRight0~0_combout\))) # (!\SW[15]~input_o\ & (\core|RotateRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \core|RotateRight0~6_combout\,
	datad => \core|RotateRight0~0_combout\,
	combout => \core|RotateRight0~8_combout\);

-- Location: LCCOMB_X106_Y19_N6
\core|s_shiftReg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~22_combout\ = (\KEY[2]~input_o\) # ((!\SW[16]~input_o\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \core|s_shiftReg~22_combout\);

-- Location: LCCOMB_X106_Y19_N12
\core|s_shiftReg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~23_combout\ = (\KEY[0]~input_o\ & (((\KEY[1]~input_o\) # (\core|RotateRight0~10_combout\)))) # (!\KEY[0]~input_o\ & (\core|s_shiftReg~22_combout\ & (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg~22_combout\,
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \core|RotateRight0~10_combout\,
	combout => \core|s_shiftReg~23_combout\);

-- Location: LCCOMB_X106_Y19_N10
\core|s_shiftReg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~24_combout\ = (\KEY[1]~input_o\ & (\core|s_shiftReg~21_combout\ & ((\core|s_shiftReg~23_combout\)))) # (!\KEY[1]~input_o\ & ((\core|RotateRight0~8_combout\) # ((\core|s_shiftReg~21_combout\ & \core|s_shiftReg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \core|s_shiftReg~21_combout\,
	datac => \core|RotateRight0~8_combout\,
	datad => \core|s_shiftReg~23_combout\,
	combout => \core|s_shiftReg~24_combout\);

-- Location: LCCOMB_X107_Y19_N16
\core|s_shiftReg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~25_combout\ = (\KEY[1]~input_o\ & ((\core|ShiftLeft0~3_combout\) # ((\core|RotateLeft0~14_combout\ & \core|s_shiftReg~24_combout\)))) # (!\KEY[1]~input_o\ & (((\core|s_shiftReg~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \core|ShiftLeft0~3_combout\,
	datac => \core|RotateLeft0~14_combout\,
	datad => \core|s_shiftReg~24_combout\,
	combout => \core|s_shiftReg~25_combout\);

-- Location: LCCOMB_X107_Y19_N8
\core|s_shiftReg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~26_combout\ = (\SW[8]~input_o\ & (\SW[3]~input_o\)) # (!\SW[8]~input_o\ & ((\core|s_shiftReg~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \core|s_shiftReg~25_combout\,
	combout => \core|s_shiftReg~26_combout\);

-- Location: FF_X107_Y19_N9
\core|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|ALT_INV_clkOut~clkctrl_outclk\,
	d => \core|s_shiftReg~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \core|s_shiftReg\(3));

-- Location: LCCOMB_X107_Y19_N26
\core|ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight1~2_combout\ = (\SW[16]~input_o\ & (\core|s_shiftReg\(3))) # (!\SW[16]~input_o\ & ((\core|s_shiftReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \core|s_shiftReg\(3),
	datac => \core|s_shiftReg\(1),
	datad => \SW[16]~input_o\,
	combout => \core|ShiftRight1~2_combout\);

-- Location: LCCOMB_X107_Y19_N10
\core|ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight1~3_combout\ = (\SW[15]~input_o\ & (\core|ShiftRight1~2_combout\)) # (!\SW[15]~input_o\ & ((\core|RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \core|ShiftRight1~2_combout\,
	datad => \core|RotateRight0~1_combout\,
	combout => \core|ShiftRight1~3_combout\);

-- Location: LCCOMB_X107_Y19_N28
\core|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|ShiftRight1~4_combout\ = (\SW[17]~input_o\ & ((\core|ShiftRight1~1_combout\))) # (!\SW[17]~input_o\ & (\core|ShiftRight1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|ShiftRight1~3_combout\,
	datab => \SW[17]~input_o\,
	datad => \core|ShiftRight1~1_combout\,
	combout => \core|ShiftRight1~4_combout\);

-- Location: LCCOMB_X111_Y19_N30
\core|RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|RotateLeft0~2_combout\ = (\SW[15]~input_o\ & ((\core|RotateLeft0~0_combout\))) # (!\SW[15]~input_o\ & (\core|RotateLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \core|RotateLeft0~1_combout\,
	datad => \core|RotateLeft0~0_combout\,
	combout => \core|RotateLeft0~2_combout\);

-- Location: LCCOMB_X111_Y19_N0
\core|s_shiftReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~4_combout\ = (\KEY[0]~input_o\ & (((\core|RotateLeft0~5_combout\)))) # (!\KEY[0]~input_o\ & (\core|s_shiftReg\(0) & (\core|ShiftRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \core|s_shiftReg\(0),
	datab => \core|ShiftRight0~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \core|RotateLeft0~5_combout\,
	combout => \core|s_shiftReg~4_combout\);

-- Location: LCCOMB_X111_Y19_N14
\core|s_shiftReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg~5_combout\ = (\SW[17]~input_o\ & (\KEY[0]~input_o\ & (\core|RotateLeft0~2_combout\))) # (!\SW[17]~input_o\ & (((\core|s_shiftReg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \core|RotateLeft0~2_combout\,
	datad => \core|s_shiftReg~4_combout\,
	combout => \core|s_shiftReg~5_combout\);

-- Location: LCCOMB_X107_Y19_N12
\core|s_shiftReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \core|s_shiftReg[0]~0_combout\ = (\KEY[1]~input_o\ & ((\core|s_shiftReg~5_combout\))) # (!\KEY[1]~input_o\ & (\core|ShiftRight1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \core|ShiftRight1~4_combout\,
	datad => \core|s_shiftReg~5_combout\,
	combout => \core|s_shiftReg[0]~0_combout\);

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

-- Location: FF_X107_Y19_N13
\core|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|ALT_INV_clkOut~clkctrl_outclk\,
	d => \core|s_shiftReg[0]~0_combout\,
	asdata => \SW[0]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \core|s_shiftReg\(0));

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


