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

-- DATE "11/26/2024 00:38:11"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testepramanha IS
    PORT (
	M : OUT std_logic;
	X1 : IN std_logic;
	x0 : IN std_logic;
	y0 : IN std_logic;
	Y1 : IN std_logic
	);
END testepramanha;

ARCHITECTURE structure OF testepramanha IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL ww_x0 : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL \M~output_o\ : std_logic;
SIGNAL \X1~input_o\ : std_logic;
SIGNAL \x0~input_o\ : std_logic;
SIGNAL \y0~input_o\ : std_logic;
SIGNAL \Y1~input_o\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;

BEGIN

M <= ww_M;
ww_X1 <= X1;
ww_x0 <= x0;
ww_y0 <= y0;
ww_Y1 <= Y1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\M~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~0_combout\,
	devoe => ww_devoe,
	o => \M~output_o\);

\X1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1,
	o => \X1~input_o\);

\x0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0,
	o => \x0~input_o\);

\y0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0,
	o => \y0~input_o\);

\Y1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y1,
	o => \Y1~input_o\);

\inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = (\x0~input_o\ & ((\y0~input_o\ & (\X1~input_o\)) # (!\y0~input_o\ & ((!\Y1~input_o\))))) # (!\x0~input_o\ & (\X1~input_o\ & ((!\Y1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1~input_o\,
	datab => \x0~input_o\,
	datac => \y0~input_o\,
	datad => \Y1~input_o\,
	combout => \inst7~0_combout\);

ww_M <= \M~output_o\;
END structure;


