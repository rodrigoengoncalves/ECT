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

-- DATE "03/25/2025 15:38:00"

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

ENTITY 	TimerN_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(3 DOWNTO 3);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0)
	);
END TimerN_Demo;

-- Design Ports Information
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerN_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst|s_count[0]~32_combout\ : std_logic;
SIGNAL \inst|s_count[26]~88\ : std_logic;
SIGNAL \inst|s_count[27]~89_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_count~52_combout\ : std_logic;
SIGNAL \inst|s_count[27]~90\ : std_logic;
SIGNAL \inst|s_count[28]~91_combout\ : std_logic;
SIGNAL \inst|s_count[28]~92\ : std_logic;
SIGNAL \inst|s_count[29]~93_combout\ : std_logic;
SIGNAL \inst|s_count[29]~94\ : std_logic;
SIGNAL \inst|s_count[30]~95_combout\ : std_logic;
SIGNAL \inst|s_count[30]~96\ : std_logic;
SIGNAL \inst|s_count[31]~97_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|s_count[0]~50_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~11_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|s_count[0]~51_combout\ : std_logic;
SIGNAL \inst|s_count[0]~33\ : std_logic;
SIGNAL \inst|s_count[1]~34_combout\ : std_logic;
SIGNAL \inst|s_count[1]~35\ : std_logic;
SIGNAL \inst|s_count[2]~36_combout\ : std_logic;
SIGNAL \inst|s_count[2]~37\ : std_logic;
SIGNAL \inst|s_count[3]~38_combout\ : std_logic;
SIGNAL \inst|s_count[3]~39\ : std_logic;
SIGNAL \inst|s_count[4]~40_combout\ : std_logic;
SIGNAL \inst|s_count[4]~41\ : std_logic;
SIGNAL \inst|s_count[5]~42_combout\ : std_logic;
SIGNAL \inst|s_count[5]~43\ : std_logic;
SIGNAL \inst|s_count[6]~44_combout\ : std_logic;
SIGNAL \inst|s_count[6]~45\ : std_logic;
SIGNAL \inst|s_count[7]~46_combout\ : std_logic;
SIGNAL \inst|s_count[7]~47\ : std_logic;
SIGNAL \inst|s_count[8]~48_combout\ : std_logic;
SIGNAL \inst|s_count[8]~49\ : std_logic;
SIGNAL \inst|s_count[9]~53_combout\ : std_logic;
SIGNAL \inst|s_count[9]~54\ : std_logic;
SIGNAL \inst|s_count[10]~55_combout\ : std_logic;
SIGNAL \inst|s_count[10]~56\ : std_logic;
SIGNAL \inst|s_count[11]~57_combout\ : std_logic;
SIGNAL \inst|s_count[11]~58\ : std_logic;
SIGNAL \inst|s_count[12]~59_combout\ : std_logic;
SIGNAL \inst|s_count[12]~60\ : std_logic;
SIGNAL \inst|s_count[13]~61_combout\ : std_logic;
SIGNAL \inst|s_count[13]~62\ : std_logic;
SIGNAL \inst|s_count[14]~63_combout\ : std_logic;
SIGNAL \inst|s_count[14]~64\ : std_logic;
SIGNAL \inst|s_count[15]~65_combout\ : std_logic;
SIGNAL \inst|s_count[15]~66\ : std_logic;
SIGNAL \inst|s_count[16]~67_combout\ : std_logic;
SIGNAL \inst|s_count[16]~68\ : std_logic;
SIGNAL \inst|s_count[17]~69_combout\ : std_logic;
SIGNAL \inst|s_count[17]~70\ : std_logic;
SIGNAL \inst|s_count[18]~71_combout\ : std_logic;
SIGNAL \inst|s_count[18]~72\ : std_logic;
SIGNAL \inst|s_count[19]~73_combout\ : std_logic;
SIGNAL \inst|s_count[19]~74\ : std_logic;
SIGNAL \inst|s_count[20]~75_combout\ : std_logic;
SIGNAL \inst|s_count[20]~76\ : std_logic;
SIGNAL \inst|s_count[21]~77_combout\ : std_logic;
SIGNAL \inst|s_count[21]~78\ : std_logic;
SIGNAL \inst|s_count[22]~79_combout\ : std_logic;
SIGNAL \inst|s_count[22]~80\ : std_logic;
SIGNAL \inst|s_count[23]~81_combout\ : std_logic;
SIGNAL \inst|s_count[23]~82\ : std_logic;
SIGNAL \inst|s_count[24]~83_combout\ : std_logic;
SIGNAL \inst|s_count[24]~84\ : std_logic;
SIGNAL \inst|s_count[25]~85_combout\ : std_logic;
SIGNAL \inst|s_count[25]~86\ : std_logic;
SIGNAL \inst|s_count[26]~87_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|timerOut~q\ : std_logic;
SIGNAL \inst|s_count\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|timerOut~q\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

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

-- Location: LCCOMB_X111_Y22_N0
\inst|s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~32_combout\ = \inst|s_count\(0) $ (VCC)
-- \inst|s_count[0]~33\ = CARRY(\inst|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(0),
	datad => VCC,
	combout => \inst|s_count[0]~32_combout\,
	cout => \inst|s_count[0]~33\);

-- Location: LCCOMB_X111_Y21_N20
\inst|s_count[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[26]~87_combout\ = (\inst|s_count\(26) & (\inst|s_count[25]~86\ $ (GND))) # (!\inst|s_count\(26) & (!\inst|s_count[25]~86\ & VCC))
-- \inst|s_count[26]~88\ = CARRY((\inst|s_count\(26) & !\inst|s_count[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(26),
	datad => VCC,
	cin => \inst|s_count[25]~86\,
	combout => \inst|s_count[26]~87_combout\,
	cout => \inst|s_count[26]~88\);

-- Location: LCCOMB_X111_Y21_N22
\inst|s_count[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[27]~89_combout\ = (\inst|s_count\(27) & (!\inst|s_count[26]~88\)) # (!\inst|s_count\(27) & ((\inst|s_count[26]~88\) # (GND)))
-- \inst|s_count[27]~90\ = CARRY((!\inst|s_count[26]~88\) # (!\inst|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(27),
	datad => VCC,
	cin => \inst|s_count[26]~88\,
	combout => \inst|s_count[27]~89_combout\,
	cout => \inst|s_count[27]~90\);

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

-- Location: LCCOMB_X109_Y21_N0
\inst|s_count~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count~52_combout\ = (\SW[2]~input_o\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|s_count~52_combout\);

-- Location: FF_X111_Y21_N23
\inst|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[27]~89_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(27));

-- Location: LCCOMB_X111_Y21_N24
\inst|s_count[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[28]~91_combout\ = (\inst|s_count\(28) & (\inst|s_count[27]~90\ $ (GND))) # (!\inst|s_count\(28) & (!\inst|s_count[27]~90\ & VCC))
-- \inst|s_count[28]~92\ = CARRY((\inst|s_count\(28) & !\inst|s_count[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(28),
	datad => VCC,
	cin => \inst|s_count[27]~90\,
	combout => \inst|s_count[28]~91_combout\,
	cout => \inst|s_count[28]~92\);

-- Location: FF_X111_Y21_N25
\inst|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[28]~91_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(28));

-- Location: LCCOMB_X111_Y21_N26
\inst|s_count[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[29]~93_combout\ = (\inst|s_count\(29) & (!\inst|s_count[28]~92\)) # (!\inst|s_count\(29) & ((\inst|s_count[28]~92\) # (GND)))
-- \inst|s_count[29]~94\ = CARRY((!\inst|s_count[28]~92\) # (!\inst|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(29),
	datad => VCC,
	cin => \inst|s_count[28]~92\,
	combout => \inst|s_count[29]~93_combout\,
	cout => \inst|s_count[29]~94\);

-- Location: FF_X111_Y21_N27
\inst|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[29]~93_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(29));

-- Location: LCCOMB_X111_Y21_N28
\inst|s_count[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[30]~95_combout\ = (\inst|s_count\(30) & (\inst|s_count[29]~94\ $ (GND))) # (!\inst|s_count\(30) & (!\inst|s_count[29]~94\ & VCC))
-- \inst|s_count[30]~96\ = CARRY((\inst|s_count\(30) & !\inst|s_count[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(30),
	datad => VCC,
	cin => \inst|s_count[29]~94\,
	combout => \inst|s_count[30]~95_combout\,
	cout => \inst|s_count[30]~96\);

-- Location: FF_X111_Y21_N29
\inst|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[30]~95_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(30));

-- Location: LCCOMB_X111_Y21_N30
\inst|s_count[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[31]~97_combout\ = \inst|s_count\(31) $ (\inst|s_count[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(31),
	cin => \inst|s_count[30]~96\,
	combout => \inst|s_count[31]~97_combout\);

-- Location: FF_X111_Y21_N31
\inst|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[31]~97_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(31));

-- Location: LCCOMB_X110_Y21_N26
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|s_count\(27) & (!\inst|s_count\(30) & (!\inst|s_count\(28) & !\inst|s_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(27),
	datab => \inst|s_count\(30),
	datac => \inst|s_count\(28),
	datad => \inst|s_count\(29),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y21_N26
\inst|s_count[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~50_combout\ = (!\inst|s_count\(31) & (\SW[0]~input_o\ & (!\SW[2]~input_o\ & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(31),
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|s_count[0]~50_combout\);

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

-- Location: LCCOMB_X110_Y21_N16
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (((!\inst|s_count\(19) & !\inst|s_count\(18))) # (!\inst|s_count\(21))) # (!\inst|s_count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(19),
	datab => \inst|s_count\(20),
	datac => \inst|s_count\(21),
	datad => \inst|s_count\(18),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X110_Y21_N22
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (((\inst|LessThan0~2_combout\) # (!\inst|s_count\(22))) # (!\inst|s_count\(24))) # (!\inst|s_count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(23),
	datab => \inst|s_count\(24),
	datac => \inst|s_count\(22),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y21_N10
\inst|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~11_combout\ = (!\inst|s_count\(19) & (!\inst|s_count\(17) & !\inst|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(19),
	datac => \inst|s_count\(17),
	datad => \inst|s_count\(25),
	combout => \inst|Equal0~11_combout\);

-- Location: LCCOMB_X110_Y21_N4
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (((!\inst|s_count\(13)) # (!\inst|s_count\(15))) # (!\inst|s_count\(14))) # (!\inst|s_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(16),
	datab => \inst|s_count\(14),
	datac => \inst|s_count\(15),
	datad => \inst|s_count\(13),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X110_Y22_N16
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|s_count\(11) & (!\inst|s_count\(8) & (!\inst|s_count\(10) & !\inst|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(11),
	datab => \inst|s_count\(8),
	datac => \inst|s_count\(10),
	datad => \inst|s_count\(9),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y21_N6
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|Equal0~11_combout\ & ((\inst|LessThan0~0_combout\) # ((!\inst|s_count\(12) & \inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~11_combout\,
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|s_count\(12),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y21_N8
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = ((\inst|LessThan0~1_combout\) # ((!\inst|s_count\(25) & \inst|LessThan0~3_combout\))) # (!\inst|s_count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(26),
	datab => \inst|s_count\(25),
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X110_Y21_N2
\inst|s_count[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~51_combout\ = (((!\SW[1]~input_o\ & !\inst|Equal0~10_combout\)) # (!\inst|LessThan0~4_combout\)) # (!\inst|s_count[0]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count[0]~50_combout\,
	datab => \SW[1]~input_o\,
	datac => \inst|LessThan0~4_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|s_count[0]~51_combout\);

-- Location: FF_X111_Y22_N1
\inst|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[0]~32_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(0));

-- Location: LCCOMB_X111_Y22_N2
\inst|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~34_combout\ = (\inst|s_count\(1) & (!\inst|s_count[0]~33\)) # (!\inst|s_count\(1) & ((\inst|s_count[0]~33\) # (GND)))
-- \inst|s_count[1]~35\ = CARRY((!\inst|s_count[0]~33\) # (!\inst|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(1),
	datad => VCC,
	cin => \inst|s_count[0]~33\,
	combout => \inst|s_count[1]~34_combout\,
	cout => \inst|s_count[1]~35\);

-- Location: FF_X111_Y22_N3
\inst|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[1]~34_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(1));

-- Location: LCCOMB_X111_Y22_N4
\inst|s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[2]~36_combout\ = (\inst|s_count\(2) & (\inst|s_count[1]~35\ $ (GND))) # (!\inst|s_count\(2) & (!\inst|s_count[1]~35\ & VCC))
-- \inst|s_count[2]~37\ = CARRY((\inst|s_count\(2) & !\inst|s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(2),
	datad => VCC,
	cin => \inst|s_count[1]~35\,
	combout => \inst|s_count[2]~36_combout\,
	cout => \inst|s_count[2]~37\);

-- Location: FF_X111_Y22_N5
\inst|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[2]~36_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(2));

-- Location: LCCOMB_X111_Y22_N6
\inst|s_count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[3]~38_combout\ = (\inst|s_count\(3) & (!\inst|s_count[2]~37\)) # (!\inst|s_count\(3) & ((\inst|s_count[2]~37\) # (GND)))
-- \inst|s_count[3]~39\ = CARRY((!\inst|s_count[2]~37\) # (!\inst|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(3),
	datad => VCC,
	cin => \inst|s_count[2]~37\,
	combout => \inst|s_count[3]~38_combout\,
	cout => \inst|s_count[3]~39\);

-- Location: FF_X111_Y22_N7
\inst|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[3]~38_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(3));

-- Location: LCCOMB_X111_Y22_N8
\inst|s_count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[4]~40_combout\ = (\inst|s_count\(4) & (\inst|s_count[3]~39\ $ (GND))) # (!\inst|s_count\(4) & (!\inst|s_count[3]~39\ & VCC))
-- \inst|s_count[4]~41\ = CARRY((\inst|s_count\(4) & !\inst|s_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(4),
	datad => VCC,
	cin => \inst|s_count[3]~39\,
	combout => \inst|s_count[4]~40_combout\,
	cout => \inst|s_count[4]~41\);

-- Location: FF_X111_Y22_N9
\inst|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[4]~40_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(4));

-- Location: LCCOMB_X111_Y22_N10
\inst|s_count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[5]~42_combout\ = (\inst|s_count\(5) & (!\inst|s_count[4]~41\)) # (!\inst|s_count\(5) & ((\inst|s_count[4]~41\) # (GND)))
-- \inst|s_count[5]~43\ = CARRY((!\inst|s_count[4]~41\) # (!\inst|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(5),
	datad => VCC,
	cin => \inst|s_count[4]~41\,
	combout => \inst|s_count[5]~42_combout\,
	cout => \inst|s_count[5]~43\);

-- Location: FF_X111_Y22_N11
\inst|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[5]~42_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(5));

-- Location: LCCOMB_X111_Y22_N12
\inst|s_count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[6]~44_combout\ = (\inst|s_count\(6) & (\inst|s_count[5]~43\ $ (GND))) # (!\inst|s_count\(6) & (!\inst|s_count[5]~43\ & VCC))
-- \inst|s_count[6]~45\ = CARRY((\inst|s_count\(6) & !\inst|s_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(6),
	datad => VCC,
	cin => \inst|s_count[5]~43\,
	combout => \inst|s_count[6]~44_combout\,
	cout => \inst|s_count[6]~45\);

-- Location: FF_X111_Y22_N13
\inst|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[6]~44_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(6));

-- Location: LCCOMB_X111_Y22_N14
\inst|s_count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[7]~46_combout\ = (\inst|s_count\(7) & (!\inst|s_count[6]~45\)) # (!\inst|s_count\(7) & ((\inst|s_count[6]~45\) # (GND)))
-- \inst|s_count[7]~47\ = CARRY((!\inst|s_count[6]~45\) # (!\inst|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(7),
	datad => VCC,
	cin => \inst|s_count[6]~45\,
	combout => \inst|s_count[7]~46_combout\,
	cout => \inst|s_count[7]~47\);

-- Location: FF_X111_Y22_N15
\inst|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[7]~46_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(7));

-- Location: LCCOMB_X111_Y22_N16
\inst|s_count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[8]~48_combout\ = (\inst|s_count\(8) & (\inst|s_count[7]~47\ $ (GND))) # (!\inst|s_count\(8) & (!\inst|s_count[7]~47\ & VCC))
-- \inst|s_count[8]~49\ = CARRY((\inst|s_count\(8) & !\inst|s_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(8),
	datad => VCC,
	cin => \inst|s_count[7]~47\,
	combout => \inst|s_count[8]~48_combout\,
	cout => \inst|s_count[8]~49\);

-- Location: FF_X111_Y22_N17
\inst|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[8]~48_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(8));

-- Location: LCCOMB_X111_Y22_N18
\inst|s_count[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[9]~53_combout\ = (\inst|s_count\(9) & (!\inst|s_count[8]~49\)) # (!\inst|s_count\(9) & ((\inst|s_count[8]~49\) # (GND)))
-- \inst|s_count[9]~54\ = CARRY((!\inst|s_count[8]~49\) # (!\inst|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(9),
	datad => VCC,
	cin => \inst|s_count[8]~49\,
	combout => \inst|s_count[9]~53_combout\,
	cout => \inst|s_count[9]~54\);

-- Location: FF_X111_Y22_N19
\inst|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[9]~53_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(9));

-- Location: LCCOMB_X111_Y22_N20
\inst|s_count[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[10]~55_combout\ = (\inst|s_count\(10) & (\inst|s_count[9]~54\ $ (GND))) # (!\inst|s_count\(10) & (!\inst|s_count[9]~54\ & VCC))
-- \inst|s_count[10]~56\ = CARRY((\inst|s_count\(10) & !\inst|s_count[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(10),
	datad => VCC,
	cin => \inst|s_count[9]~54\,
	combout => \inst|s_count[10]~55_combout\,
	cout => \inst|s_count[10]~56\);

-- Location: FF_X111_Y22_N21
\inst|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[10]~55_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(10));

-- Location: LCCOMB_X111_Y22_N22
\inst|s_count[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[11]~57_combout\ = (\inst|s_count\(11) & (!\inst|s_count[10]~56\)) # (!\inst|s_count\(11) & ((\inst|s_count[10]~56\) # (GND)))
-- \inst|s_count[11]~58\ = CARRY((!\inst|s_count[10]~56\) # (!\inst|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(11),
	datad => VCC,
	cin => \inst|s_count[10]~56\,
	combout => \inst|s_count[11]~57_combout\,
	cout => \inst|s_count[11]~58\);

-- Location: FF_X111_Y22_N23
\inst|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[11]~57_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(11));

-- Location: LCCOMB_X111_Y22_N24
\inst|s_count[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[12]~59_combout\ = (\inst|s_count\(12) & (\inst|s_count[11]~58\ $ (GND))) # (!\inst|s_count\(12) & (!\inst|s_count[11]~58\ & VCC))
-- \inst|s_count[12]~60\ = CARRY((\inst|s_count\(12) & !\inst|s_count[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(12),
	datad => VCC,
	cin => \inst|s_count[11]~58\,
	combout => \inst|s_count[12]~59_combout\,
	cout => \inst|s_count[12]~60\);

-- Location: FF_X111_Y22_N25
\inst|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[12]~59_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(12));

-- Location: LCCOMB_X111_Y22_N26
\inst|s_count[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[13]~61_combout\ = (\inst|s_count\(13) & (!\inst|s_count[12]~60\)) # (!\inst|s_count\(13) & ((\inst|s_count[12]~60\) # (GND)))
-- \inst|s_count[13]~62\ = CARRY((!\inst|s_count[12]~60\) # (!\inst|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(13),
	datad => VCC,
	cin => \inst|s_count[12]~60\,
	combout => \inst|s_count[13]~61_combout\,
	cout => \inst|s_count[13]~62\);

-- Location: FF_X111_Y22_N27
\inst|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[13]~61_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(13));

-- Location: LCCOMB_X111_Y22_N28
\inst|s_count[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[14]~63_combout\ = (\inst|s_count\(14) & (\inst|s_count[13]~62\ $ (GND))) # (!\inst|s_count\(14) & (!\inst|s_count[13]~62\ & VCC))
-- \inst|s_count[14]~64\ = CARRY((\inst|s_count\(14) & !\inst|s_count[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(14),
	datad => VCC,
	cin => \inst|s_count[13]~62\,
	combout => \inst|s_count[14]~63_combout\,
	cout => \inst|s_count[14]~64\);

-- Location: FF_X111_Y22_N29
\inst|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[14]~63_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(14));

-- Location: LCCOMB_X111_Y22_N30
\inst|s_count[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[15]~65_combout\ = (\inst|s_count\(15) & (!\inst|s_count[14]~64\)) # (!\inst|s_count\(15) & ((\inst|s_count[14]~64\) # (GND)))
-- \inst|s_count[15]~66\ = CARRY((!\inst|s_count[14]~64\) # (!\inst|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(15),
	datad => VCC,
	cin => \inst|s_count[14]~64\,
	combout => \inst|s_count[15]~65_combout\,
	cout => \inst|s_count[15]~66\);

-- Location: FF_X111_Y22_N31
\inst|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[15]~65_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(15));

-- Location: LCCOMB_X111_Y21_N0
\inst|s_count[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[16]~67_combout\ = (\inst|s_count\(16) & (\inst|s_count[15]~66\ $ (GND))) # (!\inst|s_count\(16) & (!\inst|s_count[15]~66\ & VCC))
-- \inst|s_count[16]~68\ = CARRY((\inst|s_count\(16) & !\inst|s_count[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(16),
	datad => VCC,
	cin => \inst|s_count[15]~66\,
	combout => \inst|s_count[16]~67_combout\,
	cout => \inst|s_count[16]~68\);

-- Location: FF_X111_Y21_N1
\inst|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[16]~67_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(16));

-- Location: LCCOMB_X111_Y21_N2
\inst|s_count[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[17]~69_combout\ = (\inst|s_count\(17) & (!\inst|s_count[16]~68\)) # (!\inst|s_count\(17) & ((\inst|s_count[16]~68\) # (GND)))
-- \inst|s_count[17]~70\ = CARRY((!\inst|s_count[16]~68\) # (!\inst|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(17),
	datad => VCC,
	cin => \inst|s_count[16]~68\,
	combout => \inst|s_count[17]~69_combout\,
	cout => \inst|s_count[17]~70\);

-- Location: FF_X111_Y21_N3
\inst|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[17]~69_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(17));

-- Location: LCCOMB_X111_Y21_N4
\inst|s_count[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[18]~71_combout\ = (\inst|s_count\(18) & (\inst|s_count[17]~70\ $ (GND))) # (!\inst|s_count\(18) & (!\inst|s_count[17]~70\ & VCC))
-- \inst|s_count[18]~72\ = CARRY((\inst|s_count\(18) & !\inst|s_count[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(18),
	datad => VCC,
	cin => \inst|s_count[17]~70\,
	combout => \inst|s_count[18]~71_combout\,
	cout => \inst|s_count[18]~72\);

-- Location: FF_X111_Y21_N5
\inst|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[18]~71_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(18));

-- Location: LCCOMB_X111_Y21_N6
\inst|s_count[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[19]~73_combout\ = (\inst|s_count\(19) & (!\inst|s_count[18]~72\)) # (!\inst|s_count\(19) & ((\inst|s_count[18]~72\) # (GND)))
-- \inst|s_count[19]~74\ = CARRY((!\inst|s_count[18]~72\) # (!\inst|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(19),
	datad => VCC,
	cin => \inst|s_count[18]~72\,
	combout => \inst|s_count[19]~73_combout\,
	cout => \inst|s_count[19]~74\);

-- Location: FF_X111_Y21_N7
\inst|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[19]~73_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(19));

-- Location: LCCOMB_X111_Y21_N8
\inst|s_count[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[20]~75_combout\ = (\inst|s_count\(20) & (\inst|s_count[19]~74\ $ (GND))) # (!\inst|s_count\(20) & (!\inst|s_count[19]~74\ & VCC))
-- \inst|s_count[20]~76\ = CARRY((\inst|s_count\(20) & !\inst|s_count[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(20),
	datad => VCC,
	cin => \inst|s_count[19]~74\,
	combout => \inst|s_count[20]~75_combout\,
	cout => \inst|s_count[20]~76\);

-- Location: FF_X111_Y21_N9
\inst|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[20]~75_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(20));

-- Location: LCCOMB_X111_Y21_N10
\inst|s_count[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[21]~77_combout\ = (\inst|s_count\(21) & (!\inst|s_count[20]~76\)) # (!\inst|s_count\(21) & ((\inst|s_count[20]~76\) # (GND)))
-- \inst|s_count[21]~78\ = CARRY((!\inst|s_count[20]~76\) # (!\inst|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(21),
	datad => VCC,
	cin => \inst|s_count[20]~76\,
	combout => \inst|s_count[21]~77_combout\,
	cout => \inst|s_count[21]~78\);

-- Location: FF_X111_Y21_N11
\inst|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[21]~77_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(21));

-- Location: LCCOMB_X111_Y21_N12
\inst|s_count[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[22]~79_combout\ = (\inst|s_count\(22) & (\inst|s_count[21]~78\ $ (GND))) # (!\inst|s_count\(22) & (!\inst|s_count[21]~78\ & VCC))
-- \inst|s_count[22]~80\ = CARRY((\inst|s_count\(22) & !\inst|s_count[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(22),
	datad => VCC,
	cin => \inst|s_count[21]~78\,
	combout => \inst|s_count[22]~79_combout\,
	cout => \inst|s_count[22]~80\);

-- Location: FF_X111_Y21_N13
\inst|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[22]~79_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(22));

-- Location: LCCOMB_X111_Y21_N14
\inst|s_count[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[23]~81_combout\ = (\inst|s_count\(23) & (!\inst|s_count[22]~80\)) # (!\inst|s_count\(23) & ((\inst|s_count[22]~80\) # (GND)))
-- \inst|s_count[23]~82\ = CARRY((!\inst|s_count[22]~80\) # (!\inst|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(23),
	datad => VCC,
	cin => \inst|s_count[22]~80\,
	combout => \inst|s_count[23]~81_combout\,
	cout => \inst|s_count[23]~82\);

-- Location: FF_X111_Y21_N15
\inst|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[23]~81_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(23));

-- Location: LCCOMB_X111_Y21_N16
\inst|s_count[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[24]~83_combout\ = (\inst|s_count\(24) & (\inst|s_count[23]~82\ $ (GND))) # (!\inst|s_count\(24) & (!\inst|s_count[23]~82\ & VCC))
-- \inst|s_count[24]~84\ = CARRY((\inst|s_count\(24) & !\inst|s_count[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(24),
	datad => VCC,
	cin => \inst|s_count[23]~82\,
	combout => \inst|s_count[24]~83_combout\,
	cout => \inst|s_count[24]~84\);

-- Location: FF_X111_Y21_N17
\inst|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[24]~83_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(24));

-- Location: LCCOMB_X111_Y21_N18
\inst|s_count[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[25]~85_combout\ = (\inst|s_count\(25) & (!\inst|s_count[24]~84\)) # (!\inst|s_count\(25) & ((\inst|s_count[24]~84\) # (GND)))
-- \inst|s_count[25]~86\ = CARRY((!\inst|s_count[24]~84\) # (!\inst|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(25),
	datad => VCC,
	cin => \inst|s_count[24]~84\,
	combout => \inst|s_count[25]~85_combout\,
	cout => \inst|s_count[25]~86\);

-- Location: FF_X111_Y21_N19
\inst|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[25]~85_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(25));

-- Location: FF_X111_Y21_N21
\inst|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[26]~87_combout\,
	sclr => \inst|s_count[0]~51_combout\,
	ena => \inst|s_count~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(26));

-- Location: LCCOMB_X109_Y21_N16
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (!\inst|s_count\(26) & !\inst|s_count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_count\(26),
	datad => \inst|s_count\(24),
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X110_Y21_N0
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|s_count\(21) & (!\inst|s_count\(20) & (!\inst|s_count\(22) & !\inst|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(21),
	datab => \inst|s_count\(20),
	datac => \inst|s_count\(22),
	datad => \inst|s_count\(23),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X110_Y21_N12
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (!\inst|s_count\(2) & (!\inst|s_count\(4) & (!\inst|s_count\(3) & !\inst|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(2),
	datab => \inst|s_count\(4),
	datac => \inst|s_count\(3),
	datad => \inst|s_count\(1),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X110_Y21_N24
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|s_count\(18) & (!\inst|s_count\(16) & (!\inst|s_count\(15) & !\inst|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(18),
	datab => \inst|s_count\(16),
	datac => \inst|s_count\(15),
	datad => \inst|s_count\(14),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y21_N30
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|s_count\(19) & (!\inst|s_count\(25) & (!\inst|s_count\(17) & !\inst|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(19),
	datab => \inst|s_count\(25),
	datac => \inst|s_count\(17),
	datad => \inst|s_count\(0),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X110_Y21_N18
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|s_count\(5) & (!\inst|s_count\(7) & (!\inst|s_count\(6) & !\inst|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(5),
	datab => \inst|s_count\(7),
	datac => \inst|s_count\(6),
	datad => \inst|s_count\(13),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y21_N14
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (\inst|Equal0~4_combout\ & (\inst|Equal0~6_combout\ & (\inst|Equal0~3_combout\ & \inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~6_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X110_Y21_N20
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~1_combout\ & (!\inst|s_count\(31) & (!\inst|s_count\(12) & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|s_count\(31),
	datac => \inst|s_count\(12),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X110_Y21_N28
\inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~10_combout\ = (((!\inst|Equal0~2_combout\) # (!\inst|Equal0~7_combout\)) # (!\inst|Equal0~8_combout\)) # (!\inst|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datab => \inst|Equal0~8_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~10_combout\);

-- Location: FF_X110_Y21_N29
\inst|timerOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|timerOut~q\);

ww_LEDR(3) <= \LEDR[3]~output_o\;
END structure;


