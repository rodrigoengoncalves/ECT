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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/26/2024 00:38:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testepramanha
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testepramanha_vhd_vec_tst IS
END testepramanha_vhd_vec_tst;
ARCHITECTURE testepramanha_arch OF testepramanha_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL M : STD_LOGIC;
SIGNAL x0 : STD_LOGIC;
SIGNAL X1 : STD_LOGIC;
SIGNAL y0 : STD_LOGIC;
SIGNAL Y1 : STD_LOGIC;
COMPONENT testepramanha
	PORT (
	M : OUT STD_LOGIC;
	x0 : IN STD_LOGIC;
	X1 : IN STD_LOGIC;
	y0 : IN STD_LOGIC;
	Y1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : testepramanha
	PORT MAP (
-- list connections between master ports and signals
	M => M,
	x0 => x0,
	X1 => X1,
	y0 => y0,
	Y1 => Y1
	);

-- x0
t_prcs_x0: PROCESS
BEGIN
LOOP
	x0 <= '0';
	WAIT FOR 50000 ps;
	x0 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x0;

-- X1
t_prcs_X1: PROCESS
BEGIN
LOOP
	X1 <= '0';
	WAIT FOR 100000 ps;
	X1 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X1;

-- y0
t_prcs_y0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		y0 <= '0';
		WAIT FOR 200000 ps;
		y0 <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	y0 <= '0';
WAIT;
END PROCESS t_prcs_y0;

-- Y1
t_prcs_Y1: PROCESS
BEGIN
	Y1 <= '0';
	WAIT FOR 400000 ps;
	Y1 <= '1';
	WAIT FOR 400000 ps;
	Y1 <= '0';
WAIT;
END PROCESS t_prcs_Y1;
END testepramanha_arch;
