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

-- DATE "05/06/2025 11:40:20"

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

ENTITY 	DrinksFSM IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	C : IN std_logic;
	V : IN std_logic;
	drink : OUT std_logic
	);
END DrinksFSM;

-- Design Ports Information
-- drink	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_drink : std_logic;
SIGNAL \Selector6~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \drink~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \V~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~0clkctrl_outclk\ : std_logic;
SIGNAL \s_nextState.ESTADO1_267~combout\ : std_logic;
SIGNAL \s_currentState~13_combout\ : std_logic;
SIGNAL \s_currentState.ESTADO1~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \s_nextState.ESTADO2_244~combout\ : std_logic;
SIGNAL \s_currentState~12_combout\ : std_logic;
SIGNAL \s_currentState.ESTADO2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \s_nextState.ESTADO3_221~combout\ : std_logic;
SIGNAL \s_currentState~10_combout\ : std_logic;
SIGNAL \s_currentState.ESTADO3~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \s_nextState.ESTADO4_198~combout\ : std_logic;
SIGNAL \s_currentState~11_combout\ : std_logic;
SIGNAL \s_currentState.ESTADO4~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \s_nextState.ESTADO5_175~combout\ : std_logic;
SIGNAL \s_currentState~9_combout\ : std_logic;
SIGNAL \s_currentState.ESTADO5~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \s_nextState.ESTADO6_152~combout\ : std_logic;
SIGNAL \s_currentState~8_combout\ : std_logic;
SIGNAL \s_currentState.ESTADO6~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_C <= C;
ww_V <= V;
drink <= ww_drink;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Selector6~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector6~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y32_N23
\drink~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_currentState.ESTADO6~q\,
	devoe => ww_devoe,
	o => \drink~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y32_N15
\V~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V,
	o => \V~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X1_Y33_N4
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\V~input_o\) # ((\s_currentState.ESTADO6~q\) # (\C~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V~input_o\,
	datac => \s_currentState.ESTADO6~q\,
	datad => \C~input_o\,
	combout => \Selector6~0_combout\);

-- Location: CLKCTRL_G3
\Selector6~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector6~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector6~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y33_N18
\s_nextState.ESTADO1_267\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.ESTADO1_267~combout\ = (GLOBAL(\Selector6~0clkctrl_outclk\) & ((\s_currentState.ESTADO6~q\))) # (!GLOBAL(\Selector6~0clkctrl_outclk\) & (\s_nextState.ESTADO1_267~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nextState.ESTADO1_267~combout\,
	datac => \s_currentState.ESTADO6~q\,
	datad => \Selector6~0clkctrl_outclk\,
	combout => \s_nextState.ESTADO1_267~combout\);

-- Location: LCCOMB_X1_Y33_N8
\s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~13_combout\ = (!\reset~input_o\ & !\s_nextState.ESTADO1_267~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \s_nextState.ESTADO1_267~combout\,
	combout => \s_currentState~13_combout\);

-- Location: FF_X1_Y33_N9
\s_currentState.ESTADO1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.ESTADO1~q\);

-- Location: LCCOMB_X1_Y33_N14
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\s_currentState.ESTADO1~q\ & \V~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_currentState.ESTADO1~q\,
	datad => \V~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y33_N12
\s_nextState.ESTADO2_244\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.ESTADO2_244~combout\ = (GLOBAL(\Selector6~0clkctrl_outclk\) & (\Selector2~0_combout\)) # (!GLOBAL(\Selector6~0clkctrl_outclk\) & ((\s_nextState.ESTADO2_244~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \s_nextState.ESTADO2_244~combout\,
	datad => \Selector6~0clkctrl_outclk\,
	combout => \s_nextState.ESTADO2_244~combout\);

-- Location: LCCOMB_X1_Y33_N20
\s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~12_combout\ = (!\reset~input_o\ & \s_nextState.ESTADO2_244~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \s_nextState.ESTADO2_244~combout\,
	combout => \s_currentState~12_combout\);

-- Location: FF_X1_Y33_N21
\s_currentState.ESTADO2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.ESTADO2~q\);

-- Location: LCCOMB_X1_Y33_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\s_currentState.ESTADO2~q\ & \V~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.ESTADO2~q\,
	datad => \V~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y33_N24
\s_nextState.ESTADO3_221\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.ESTADO3_221~combout\ = (GLOBAL(\Selector6~0clkctrl_outclk\) & (\Selector3~0_combout\)) # (!GLOBAL(\Selector6~0clkctrl_outclk\) & ((\s_nextState.ESTADO3_221~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~0_combout\,
	datac => \s_nextState.ESTADO3_221~combout\,
	datad => \Selector6~0clkctrl_outclk\,
	combout => \s_nextState.ESTADO3_221~combout\);

-- Location: LCCOMB_X1_Y33_N16
\s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~10_combout\ = (!\reset~input_o\ & \s_nextState.ESTADO3_221~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \s_nextState.ESTADO3_221~combout\,
	combout => \s_currentState~10_combout\);

-- Location: FF_X1_Y33_N17
\s_currentState.ESTADO3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.ESTADO3~q\);

-- Location: LCCOMB_X1_Y33_N10
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\V~input_o\ & (\s_currentState.ESTADO3~q\)) # (!\V~input_o\ & ((!\s_currentState.ESTADO1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.ESTADO3~q\,
	datac => \s_currentState.ESTADO1~q\,
	datad => \V~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y33_N28
\s_nextState.ESTADO4_198\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.ESTADO4_198~combout\ = (GLOBAL(\Selector6~0clkctrl_outclk\) & (\Selector4~0_combout\)) # (!GLOBAL(\Selector6~0clkctrl_outclk\) & ((\s_nextState.ESTADO4_198~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datac => \s_nextState.ESTADO4_198~combout\,
	datad => \Selector6~0clkctrl_outclk\,
	combout => \s_nextState.ESTADO4_198~combout\);

-- Location: LCCOMB_X1_Y33_N0
\s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~11_combout\ = (!\reset~input_o\ & \s_nextState.ESTADO4_198~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \s_nextState.ESTADO4_198~combout\,
	combout => \s_currentState~11_combout\);

-- Location: FF_X1_Y33_N1
\s_currentState.ESTADO4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.ESTADO4~q\);

-- Location: LCCOMB_X1_Y33_N22
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\V~input_o\ & ((\s_currentState.ESTADO4~q\))) # (!\V~input_o\ & (\s_currentState.ESTADO2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_currentState.ESTADO2~q\,
	datac => \s_currentState.ESTADO4~q\,
	datad => \V~input_o\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X2_Y33_N2
\s_nextState.ESTADO5_175\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.ESTADO5_175~combout\ = (GLOBAL(\Selector6~0clkctrl_outclk\) & (\Selector5~0_combout\)) # (!GLOBAL(\Selector6~0clkctrl_outclk\) & ((\s_nextState.ESTADO5_175~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datac => \Selector6~0clkctrl_outclk\,
	datad => \s_nextState.ESTADO5_175~combout\,
	combout => \s_nextState.ESTADO5_175~combout\);

-- Location: LCCOMB_X2_Y33_N8
\s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~9_combout\ = (!\reset~input_o\ & \s_nextState.ESTADO5_175~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \s_nextState.ESTADO5_175~combout\,
	combout => \s_currentState~9_combout\);

-- Location: FF_X2_Y33_N9
\s_currentState.ESTADO5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.ESTADO5~q\);

-- Location: LCCOMB_X1_Y33_N26
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\s_currentState.ESTADO5~q\) # ((!\V~input_o\ & ((\s_currentState.ESTADO3~q\) # (\s_currentState.ESTADO4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.ESTADO5~q\,
	datab => \s_currentState.ESTADO3~q\,
	datac => \s_currentState.ESTADO4~q\,
	datad => \V~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y33_N2
\s_nextState.ESTADO6_152\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.ESTADO6_152~combout\ = (GLOBAL(\Selector6~0clkctrl_outclk\) & (\Selector0~0_combout\)) # (!GLOBAL(\Selector6~0clkctrl_outclk\) & ((\s_nextState.ESTADO6_152~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \s_nextState.ESTADO6_152~combout\,
	datad => \Selector6~0clkctrl_outclk\,
	combout => \s_nextState.ESTADO6_152~combout\);

-- Location: LCCOMB_X1_Y33_N30
\s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~8_combout\ = (!\reset~input_o\ & \s_nextState.ESTADO6_152~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \s_nextState.ESTADO6_152~combout\,
	combout => \s_currentState~8_combout\);

-- Location: FF_X1_Y33_N31
\s_currentState.ESTADO6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.ESTADO6~q\);

ww_drink <= \drink~output_o\;
END structure;


