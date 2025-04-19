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

-- DATE "04/06/2025 23:57:08"

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

ENTITY 	Main IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Main;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
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
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div1hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \div4hz|Add0~0_combout\ : std_logic;
SIGNAL \div4hz|Add0~1\ : std_logic;
SIGNAL \div4hz|Add0~2_combout\ : std_logic;
SIGNAL \div4hz|Add0~3\ : std_logic;
SIGNAL \div4hz|Add0~4_combout\ : std_logic;
SIGNAL \div4hz|Add0~5\ : std_logic;
SIGNAL \div4hz|Add0~6_combout\ : std_logic;
SIGNAL \div4hz|Add0~7\ : std_logic;
SIGNAL \div4hz|Add0~8_combout\ : std_logic;
SIGNAL \div4hz|Add0~9\ : std_logic;
SIGNAL \div4hz|Add0~10_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~7_combout\ : std_logic;
SIGNAL \div4hz|Add0~11\ : std_logic;
SIGNAL \div4hz|Add0~12_combout\ : std_logic;
SIGNAL \div4hz|Add0~13\ : std_logic;
SIGNAL \div4hz|Add0~14_combout\ : std_logic;
SIGNAL \div4hz|Add0~15\ : std_logic;
SIGNAL \div4hz|Add0~16_combout\ : std_logic;
SIGNAL \div4hz|Add0~17\ : std_logic;
SIGNAL \div4hz|Add0~18_combout\ : std_logic;
SIGNAL \div4hz|Add0~19\ : std_logic;
SIGNAL \div4hz|Add0~20_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~6_combout\ : std_logic;
SIGNAL \div4hz|Add0~21\ : std_logic;
SIGNAL \div4hz|Add0~22_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~5_combout\ : std_logic;
SIGNAL \div4hz|Add0~23\ : std_logic;
SIGNAL \div4hz|Add0~24_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~4_combout\ : std_logic;
SIGNAL \div4hz|Add0~25\ : std_logic;
SIGNAL \div4hz|Add0~26_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~11_combout\ : std_logic;
SIGNAL \div4hz|Add0~27\ : std_logic;
SIGNAL \div4hz|Add0~28_combout\ : std_logic;
SIGNAL \div4hz|Add0~29\ : std_logic;
SIGNAL \div4hz|Add0~30_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~10_combout\ : std_logic;
SIGNAL \div4hz|Add0~31\ : std_logic;
SIGNAL \div4hz|Add0~32_combout\ : std_logic;
SIGNAL \div4hz|Add0~33\ : std_logic;
SIGNAL \div4hz|Add0~34_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~3_combout\ : std_logic;
SIGNAL \div4hz|Add0~35\ : std_logic;
SIGNAL \div4hz|Add0~36_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~2_combout\ : std_logic;
SIGNAL \div4hz|Add0~37\ : std_logic;
SIGNAL \div4hz|Add0~38_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~1_combout\ : std_logic;
SIGNAL \div4hz|Add0~39\ : std_logic;
SIGNAL \div4hz|Add0~40_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~0_combout\ : std_logic;
SIGNAL \div4hz|Add0~41\ : std_logic;
SIGNAL \div4hz|Add0~42_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~9_combout\ : std_logic;
SIGNAL \div4hz|Add0~43\ : std_logic;
SIGNAL \div4hz|Add0~44_combout\ : std_logic;
SIGNAL \div4hz|Add0~45\ : std_logic;
SIGNAL \div4hz|Add0~46_combout\ : std_logic;
SIGNAL \div4hz|s_divCounter~8_combout\ : std_logic;
SIGNAL \div4hz|Equal0~7_combout\ : std_logic;
SIGNAL \div4hz|Equal0~8_combout\ : std_logic;
SIGNAL \div4hz|Equal0~5_combout\ : std_logic;
SIGNAL \div4hz|Add0~47\ : std_logic;
SIGNAL \div4hz|Add0~48_combout\ : std_logic;
SIGNAL \div4hz|Equal0~2_combout\ : std_logic;
SIGNAL \div4hz|Add0~49\ : std_logic;
SIGNAL \div4hz|Add0~50_combout\ : std_logic;
SIGNAL \div4hz|Add0~51\ : std_logic;
SIGNAL \div4hz|Add0~52_combout\ : std_logic;
SIGNAL \div4hz|Add0~53\ : std_logic;
SIGNAL \div4hz|Add0~54_combout\ : std_logic;
SIGNAL \div4hz|Add0~55\ : std_logic;
SIGNAL \div4hz|Add0~56_combout\ : std_logic;
SIGNAL \div4hz|Equal0~1_combout\ : std_logic;
SIGNAL \div4hz|Equal0~3_combout\ : std_logic;
SIGNAL \div4hz|Add0~57\ : std_logic;
SIGNAL \div4hz|Add0~58_combout\ : std_logic;
SIGNAL \div4hz|Add0~59\ : std_logic;
SIGNAL \div4hz|Add0~60_combout\ : std_logic;
SIGNAL \div4hz|Equal0~0_combout\ : std_logic;
SIGNAL \div4hz|Equal0~4_combout\ : std_logic;
SIGNAL \div4hz|Equal0~6_combout\ : std_logic;
SIGNAL \div4hz|Equal0~9_combout\ : std_logic;
SIGNAL \div4hz|clkOut~1_combout\ : std_logic;
SIGNAL \div4hz|clkOut~0_combout\ : std_logic;
SIGNAL \div4hz|clkOut~2_combout\ : std_logic;
SIGNAL \div4hz|clkOut~3_combout\ : std_logic;
SIGNAL \div4hz|clkOut~q\ : std_logic;
SIGNAL \div1hz|Add0~1_cout\ : std_logic;
SIGNAL \div1hz|Add0~2_combout\ : std_logic;
SIGNAL \div1hz|Add0~3\ : std_logic;
SIGNAL \div1hz|Add0~4_combout\ : std_logic;
SIGNAL \div1hz|Add0~5\ : std_logic;
SIGNAL \div1hz|Add0~6_combout\ : std_logic;
SIGNAL \div1hz|Add0~7\ : std_logic;
SIGNAL \div1hz|Add0~8_combout\ : std_logic;
SIGNAL \div1hz|Add0~9\ : std_logic;
SIGNAL \div1hz|Add0~10_combout\ : std_logic;
SIGNAL \div1hz|Add0~31\ : std_logic;
SIGNAL \div1hz|Add0~32_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~2_combout\ : std_logic;
SIGNAL \div1hz|Add0~15\ : std_logic;
SIGNAL \div1hz|Add0~16_combout\ : std_logic;
SIGNAL \div1hz|Add0~17\ : std_logic;
SIGNAL \div1hz|Add0~18_combout\ : std_logic;
SIGNAL \div1hz|Add0~19\ : std_logic;
SIGNAL \div1hz|Add0~20_combout\ : std_logic;
SIGNAL \div1hz|Equal0~8_combout\ : std_logic;
SIGNAL \div1hz|Add0~33\ : std_logic;
SIGNAL \div1hz|Add0~34_combout\ : std_logic;
SIGNAL \div1hz|Add0~35\ : std_logic;
SIGNAL \div1hz|Add0~36_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~7_combout\ : std_logic;
SIGNAL \div1hz|Add0~37\ : std_logic;
SIGNAL \div1hz|Add0~38_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~6_combout\ : std_logic;
SIGNAL \div1hz|Add0~39\ : std_logic;
SIGNAL \div1hz|Add0~40_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~5_combout\ : std_logic;
SIGNAL \div1hz|Add0~41\ : std_logic;
SIGNAL \div1hz|Add0~42_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~4_combout\ : std_logic;
SIGNAL \div1hz|Add0~43\ : std_logic;
SIGNAL \div1hz|Add0~44_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~1_combout\ : std_logic;
SIGNAL \div1hz|Add0~45\ : std_logic;
SIGNAL \div1hz|Add0~46_combout\ : std_logic;
SIGNAL \div1hz|Add0~47\ : std_logic;
SIGNAL \div1hz|Add0~48_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~0_combout\ : std_logic;
SIGNAL \div1hz|Equal0~7_combout\ : std_logic;
SIGNAL \div1hz|Equal0~9_combout\ : std_logic;
SIGNAL \div1hz|Add0~11\ : std_logic;
SIGNAL \div1hz|Add0~12_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~11_combout\ : std_logic;
SIGNAL \div1hz|Add0~13\ : std_logic;
SIGNAL \div1hz|Add0~14_combout\ : std_logic;
SIGNAL \div1hz|Equal0~5_combout\ : std_logic;
SIGNAL \div1hz|Add0~49\ : std_logic;
SIGNAL \div1hz|Add0~50_combout\ : std_logic;
SIGNAL \div1hz|Add0~51\ : std_logic;
SIGNAL \div1hz|Add0~52_combout\ : std_logic;
SIGNAL \div1hz|Add0~53\ : std_logic;
SIGNAL \div1hz|Add0~54_combout\ : std_logic;
SIGNAL \div1hz|Equal0~1_combout\ : std_logic;
SIGNAL \div1hz|Add0~21\ : std_logic;
SIGNAL \div1hz|Add0~22_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~10_combout\ : std_logic;
SIGNAL \div1hz|Add0~23\ : std_logic;
SIGNAL \div1hz|Add0~24_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~9_combout\ : std_logic;
SIGNAL \div1hz|Add0~25\ : std_logic;
SIGNAL \div1hz|Add0~26_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~8_combout\ : std_logic;
SIGNAL \div1hz|Equal0~2_combout\ : std_logic;
SIGNAL \div1hz|Equal0~3_combout\ : std_logic;
SIGNAL \div1hz|Add0~55\ : std_logic;
SIGNAL \div1hz|Add0~56_combout\ : std_logic;
SIGNAL \div1hz|Add0~57\ : std_logic;
SIGNAL \div1hz|Add0~58_combout\ : std_logic;
SIGNAL \div1hz|Equal0~0_combout\ : std_logic;
SIGNAL \div1hz|Equal0~4_combout\ : std_logic;
SIGNAL \div1hz|Equal0~6_combout\ : std_logic;
SIGNAL \div1hz|Add0~27\ : std_logic;
SIGNAL \div1hz|Add0~28_combout\ : std_logic;
SIGNAL \div1hz|s_divCounter~3_combout\ : std_logic;
SIGNAL \div1hz|Add0~29\ : std_logic;
SIGNAL \div1hz|Add0~30_combout\ : std_logic;
SIGNAL \div1hz|clkOut~1_combout\ : std_logic;
SIGNAL \div1hz|clkOut~0_combout\ : std_logic;
SIGNAL \div1hz|clkOut~2_combout\ : std_logic;
SIGNAL \div1hz|clkOut~3_combout\ : std_logic;
SIGNAL \div1hz|clkOut~feeder_combout\ : std_logic;
SIGNAL \div1hz|clkOut~q\ : std_logic;
SIGNAL \div1hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \Counter|scount[0]~3_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \pisca_ledr|output[0]~0_combout\ : std_logic;
SIGNAL \Counter|scount[1]~0_combout\ : std_logic;
SIGNAL \pisca_ledr|output[1]~1_combout\ : std_logic;
SIGNAL \Counter|scount~2_combout\ : std_logic;
SIGNAL \Counter|scount~1_combout\ : std_logic;
SIGNAL \pisca_ledr|output[2]~2_combout\ : std_logic;
SIGNAL \pisca_ledr|output[3]~3_combout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux6~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \hex0_unidades|Mux6~1_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux5~0_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux5~1_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux4~0_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux4~1_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux3~0_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux3~1_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux2~0_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux2~1_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux1~0_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux1~1_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux0~0_combout\ : std_logic;
SIGNAL \hex0_unidades|Mux0~1_combout\ : std_logic;
SIGNAL \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \hex1_desenas|Mux6~0_combout\ : std_logic;
SIGNAL \Counter|scount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div4hz|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \div1hz|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\div1hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div1hz|clkOut~q\);
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
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
	i => VCC,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pisca_ledr|output[0]~0_combout\,
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
	i => \pisca_ledr|output[1]~1_combout\,
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
	i => \pisca_ledr|output[2]~2_combout\,
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
	i => \pisca_ledr|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_unidades|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_unidades|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_unidades|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_unidades|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_unidades|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_unidades|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_unidades|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_desenas|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[0]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[0]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_desenas|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_desenas|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_desenas|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

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

-- Location: LCCOMB_X111_Y41_N2
\div4hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~0_combout\ = \div4hz|s_divCounter\(0) $ (VCC)
-- \div4hz|Add0~1\ = CARRY(\div4hz|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(0),
	datad => VCC,
	combout => \div4hz|Add0~0_combout\,
	cout => \div4hz|Add0~1\);

-- Location: FF_X111_Y41_N3
\div4hz|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(0));

-- Location: LCCOMB_X111_Y41_N4
\div4hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~2_combout\ = (\div4hz|s_divCounter\(1) & (!\div4hz|Add0~1\)) # (!\div4hz|s_divCounter\(1) & ((\div4hz|Add0~1\) # (GND)))
-- \div4hz|Add0~3\ = CARRY((!\div4hz|Add0~1\) # (!\div4hz|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(1),
	datad => VCC,
	cin => \div4hz|Add0~1\,
	combout => \div4hz|Add0~2_combout\,
	cout => \div4hz|Add0~3\);

-- Location: FF_X111_Y41_N5
\div4hz|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(1));

-- Location: LCCOMB_X111_Y41_N6
\div4hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~4_combout\ = (\div4hz|s_divCounter\(2) & (\div4hz|Add0~3\ $ (GND))) # (!\div4hz|s_divCounter\(2) & (!\div4hz|Add0~3\ & VCC))
-- \div4hz|Add0~5\ = CARRY((\div4hz|s_divCounter\(2) & !\div4hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(2),
	datad => VCC,
	cin => \div4hz|Add0~3\,
	combout => \div4hz|Add0~4_combout\,
	cout => \div4hz|Add0~5\);

-- Location: FF_X111_Y41_N7
\div4hz|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(2));

-- Location: LCCOMB_X111_Y41_N8
\div4hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~6_combout\ = (\div4hz|s_divCounter\(3) & (!\div4hz|Add0~5\)) # (!\div4hz|s_divCounter\(3) & ((\div4hz|Add0~5\) # (GND)))
-- \div4hz|Add0~7\ = CARRY((!\div4hz|Add0~5\) # (!\div4hz|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(3),
	datad => VCC,
	cin => \div4hz|Add0~5\,
	combout => \div4hz|Add0~6_combout\,
	cout => \div4hz|Add0~7\);

-- Location: FF_X111_Y41_N9
\div4hz|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(3));

-- Location: LCCOMB_X111_Y41_N10
\div4hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~8_combout\ = (\div4hz|s_divCounter\(4) & (\div4hz|Add0~7\ $ (GND))) # (!\div4hz|s_divCounter\(4) & (!\div4hz|Add0~7\ & VCC))
-- \div4hz|Add0~9\ = CARRY((\div4hz|s_divCounter\(4) & !\div4hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(4),
	datad => VCC,
	cin => \div4hz|Add0~7\,
	combout => \div4hz|Add0~8_combout\,
	cout => \div4hz|Add0~9\);

-- Location: FF_X111_Y41_N11
\div4hz|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(4));

-- Location: LCCOMB_X111_Y41_N12
\div4hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~10_combout\ = (\div4hz|s_divCounter\(5) & (!\div4hz|Add0~9\)) # (!\div4hz|s_divCounter\(5) & ((\div4hz|Add0~9\) # (GND)))
-- \div4hz|Add0~11\ = CARRY((!\div4hz|Add0~9\) # (!\div4hz|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(5),
	datad => VCC,
	cin => \div4hz|Add0~9\,
	combout => \div4hz|Add0~10_combout\,
	cout => \div4hz|Add0~11\);

-- Location: LCCOMB_X110_Y41_N6
\div4hz|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~7_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|Equal0~9_combout\,
	datad => \div4hz|Add0~10_combout\,
	combout => \div4hz|s_divCounter~7_combout\);

-- Location: FF_X110_Y41_N7
\div4hz|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(5));

-- Location: LCCOMB_X111_Y41_N14
\div4hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~12_combout\ = (\div4hz|s_divCounter\(6) & (\div4hz|Add0~11\ $ (GND))) # (!\div4hz|s_divCounter\(6) & (!\div4hz|Add0~11\ & VCC))
-- \div4hz|Add0~13\ = CARRY((\div4hz|s_divCounter\(6) & !\div4hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(6),
	datad => VCC,
	cin => \div4hz|Add0~11\,
	combout => \div4hz|Add0~12_combout\,
	cout => \div4hz|Add0~13\);

-- Location: FF_X111_Y41_N15
\div4hz|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(6));

-- Location: LCCOMB_X111_Y41_N16
\div4hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~14_combout\ = (\div4hz|s_divCounter\(7) & (!\div4hz|Add0~13\)) # (!\div4hz|s_divCounter\(7) & ((\div4hz|Add0~13\) # (GND)))
-- \div4hz|Add0~15\ = CARRY((!\div4hz|Add0~13\) # (!\div4hz|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(7),
	datad => VCC,
	cin => \div4hz|Add0~13\,
	combout => \div4hz|Add0~14_combout\,
	cout => \div4hz|Add0~15\);

-- Location: FF_X111_Y41_N17
\div4hz|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(7));

-- Location: LCCOMB_X111_Y41_N18
\div4hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~16_combout\ = (\div4hz|s_divCounter\(8) & (\div4hz|Add0~15\ $ (GND))) # (!\div4hz|s_divCounter\(8) & (!\div4hz|Add0~15\ & VCC))
-- \div4hz|Add0~17\ = CARRY((\div4hz|s_divCounter\(8) & !\div4hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(8),
	datad => VCC,
	cin => \div4hz|Add0~15\,
	combout => \div4hz|Add0~16_combout\,
	cout => \div4hz|Add0~17\);

-- Location: FF_X111_Y41_N19
\div4hz|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(8));

-- Location: LCCOMB_X111_Y41_N20
\div4hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~18_combout\ = (\div4hz|s_divCounter\(9) & (!\div4hz|Add0~17\)) # (!\div4hz|s_divCounter\(9) & ((\div4hz|Add0~17\) # (GND)))
-- \div4hz|Add0~19\ = CARRY((!\div4hz|Add0~17\) # (!\div4hz|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(9),
	datad => VCC,
	cin => \div4hz|Add0~17\,
	combout => \div4hz|Add0~18_combout\,
	cout => \div4hz|Add0~19\);

-- Location: FF_X111_Y41_N21
\div4hz|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(9));

-- Location: LCCOMB_X111_Y41_N22
\div4hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~20_combout\ = (\div4hz|s_divCounter\(10) & (\div4hz|Add0~19\ $ (GND))) # (!\div4hz|s_divCounter\(10) & (!\div4hz|Add0~19\ & VCC))
-- \div4hz|Add0~21\ = CARRY((\div4hz|s_divCounter\(10) & !\div4hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(10),
	datad => VCC,
	cin => \div4hz|Add0~19\,
	combout => \div4hz|Add0~20_combout\,
	cout => \div4hz|Add0~21\);

-- Location: LCCOMB_X111_Y41_N0
\div4hz|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~6_combout\ = (\div4hz|Add0~20_combout\ & !\div4hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div4hz|Add0~20_combout\,
	datad => \div4hz|Equal0~9_combout\,
	combout => \div4hz|s_divCounter~6_combout\);

-- Location: FF_X111_Y41_N1
\div4hz|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(10));

-- Location: LCCOMB_X111_Y41_N24
\div4hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~22_combout\ = (\div4hz|s_divCounter\(11) & (!\div4hz|Add0~21\)) # (!\div4hz|s_divCounter\(11) & ((\div4hz|Add0~21\) # (GND)))
-- \div4hz|Add0~23\ = CARRY((!\div4hz|Add0~21\) # (!\div4hz|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(11),
	datad => VCC,
	cin => \div4hz|Add0~21\,
	combout => \div4hz|Add0~22_combout\,
	cout => \div4hz|Add0~23\);

-- Location: LCCOMB_X110_Y40_N24
\div4hz|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~5_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div4hz|Equal0~9_combout\,
	datad => \div4hz|Add0~22_combout\,
	combout => \div4hz|s_divCounter~5_combout\);

-- Location: FF_X110_Y40_N25
\div4hz|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(11));

-- Location: LCCOMB_X111_Y41_N26
\div4hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~24_combout\ = (\div4hz|s_divCounter\(12) & (\div4hz|Add0~23\ $ (GND))) # (!\div4hz|s_divCounter\(12) & (!\div4hz|Add0~23\ & VCC))
-- \div4hz|Add0~25\ = CARRY((\div4hz|s_divCounter\(12) & !\div4hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(12),
	datad => VCC,
	cin => \div4hz|Add0~23\,
	combout => \div4hz|Add0~24_combout\,
	cout => \div4hz|Add0~25\);

-- Location: LCCOMB_X110_Y40_N26
\div4hz|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~4_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div4hz|Equal0~9_combout\,
	datad => \div4hz|Add0~24_combout\,
	combout => \div4hz|s_divCounter~4_combout\);

-- Location: FF_X110_Y40_N27
\div4hz|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(12));

-- Location: LCCOMB_X111_Y41_N28
\div4hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~26_combout\ = (\div4hz|s_divCounter\(13) & (!\div4hz|Add0~25\)) # (!\div4hz|s_divCounter\(13) & ((\div4hz|Add0~25\) # (GND)))
-- \div4hz|Add0~27\ = CARRY((!\div4hz|Add0~25\) # (!\div4hz|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(13),
	datad => VCC,
	cin => \div4hz|Add0~25\,
	combout => \div4hz|Add0~26_combout\,
	cout => \div4hz|Add0~27\);

-- Location: LCCOMB_X110_Y41_N16
\div4hz|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~11_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div4hz|Equal0~9_combout\,
	datad => \div4hz|Add0~26_combout\,
	combout => \div4hz|s_divCounter~11_combout\);

-- Location: FF_X110_Y41_N17
\div4hz|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(13));

-- Location: LCCOMB_X111_Y41_N30
\div4hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~28_combout\ = (\div4hz|s_divCounter\(14) & (\div4hz|Add0~27\ $ (GND))) # (!\div4hz|s_divCounter\(14) & (!\div4hz|Add0~27\ & VCC))
-- \div4hz|Add0~29\ = CARRY((\div4hz|s_divCounter\(14) & !\div4hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(14),
	datad => VCC,
	cin => \div4hz|Add0~27\,
	combout => \div4hz|Add0~28_combout\,
	cout => \div4hz|Add0~29\);

-- Location: FF_X111_Y41_N31
\div4hz|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(14));

-- Location: LCCOMB_X111_Y40_N0
\div4hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~30_combout\ = (\div4hz|s_divCounter\(15) & (!\div4hz|Add0~29\)) # (!\div4hz|s_divCounter\(15) & ((\div4hz|Add0~29\) # (GND)))
-- \div4hz|Add0~31\ = CARRY((!\div4hz|Add0~29\) # (!\div4hz|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(15),
	datad => VCC,
	cin => \div4hz|Add0~29\,
	combout => \div4hz|Add0~30_combout\,
	cout => \div4hz|Add0~31\);

-- Location: LCCOMB_X110_Y41_N10
\div4hz|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~10_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div4hz|Equal0~9_combout\,
	datad => \div4hz|Add0~30_combout\,
	combout => \div4hz|s_divCounter~10_combout\);

-- Location: FF_X110_Y41_N11
\div4hz|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(15));

-- Location: LCCOMB_X111_Y40_N2
\div4hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~32_combout\ = (\div4hz|s_divCounter\(16) & (\div4hz|Add0~31\ $ (GND))) # (!\div4hz|s_divCounter\(16) & (!\div4hz|Add0~31\ & VCC))
-- \div4hz|Add0~33\ = CARRY((\div4hz|s_divCounter\(16) & !\div4hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(16),
	datad => VCC,
	cin => \div4hz|Add0~31\,
	combout => \div4hz|Add0~32_combout\,
	cout => \div4hz|Add0~33\);

-- Location: FF_X111_Y40_N3
\div4hz|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(16));

-- Location: LCCOMB_X111_Y40_N4
\div4hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~34_combout\ = (\div4hz|s_divCounter\(17) & (!\div4hz|Add0~33\)) # (!\div4hz|s_divCounter\(17) & ((\div4hz|Add0~33\) # (GND)))
-- \div4hz|Add0~35\ = CARRY((!\div4hz|Add0~33\) # (!\div4hz|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(17),
	datad => VCC,
	cin => \div4hz|Add0~33\,
	combout => \div4hz|Add0~34_combout\,
	cout => \div4hz|Add0~35\);

-- Location: LCCOMB_X110_Y40_N16
\div4hz|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~3_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div4hz|Equal0~9_combout\,
	datad => \div4hz|Add0~34_combout\,
	combout => \div4hz|s_divCounter~3_combout\);

-- Location: FF_X110_Y40_N17
\div4hz|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(17));

-- Location: LCCOMB_X111_Y40_N6
\div4hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~36_combout\ = (\div4hz|s_divCounter\(18) & (\div4hz|Add0~35\ $ (GND))) # (!\div4hz|s_divCounter\(18) & (!\div4hz|Add0~35\ & VCC))
-- \div4hz|Add0~37\ = CARRY((\div4hz|s_divCounter\(18) & !\div4hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(18),
	datad => VCC,
	cin => \div4hz|Add0~35\,
	combout => \div4hz|Add0~36_combout\,
	cout => \div4hz|Add0~37\);

-- Location: LCCOMB_X110_Y40_N8
\div4hz|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~2_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div4hz|Equal0~9_combout\,
	datad => \div4hz|Add0~36_combout\,
	combout => \div4hz|s_divCounter~2_combout\);

-- Location: FF_X110_Y40_N9
\div4hz|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(18));

-- Location: LCCOMB_X111_Y40_N8
\div4hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~38_combout\ = (\div4hz|s_divCounter\(19) & (!\div4hz|Add0~37\)) # (!\div4hz|s_divCounter\(19) & ((\div4hz|Add0~37\) # (GND)))
-- \div4hz|Add0~39\ = CARRY((!\div4hz|Add0~37\) # (!\div4hz|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(19),
	datad => VCC,
	cin => \div4hz|Add0~37\,
	combout => \div4hz|Add0~38_combout\,
	cout => \div4hz|Add0~39\);

-- Location: LCCOMB_X110_Y40_N6
\div4hz|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~1_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|Equal0~9_combout\,
	datac => \div4hz|Add0~38_combout\,
	combout => \div4hz|s_divCounter~1_combout\);

-- Location: FF_X110_Y40_N7
\div4hz|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(19));

-- Location: LCCOMB_X111_Y40_N10
\div4hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~40_combout\ = (\div4hz|s_divCounter\(20) & (\div4hz|Add0~39\ $ (GND))) # (!\div4hz|s_divCounter\(20) & (!\div4hz|Add0~39\ & VCC))
-- \div4hz|Add0~41\ = CARRY((\div4hz|s_divCounter\(20) & !\div4hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(20),
	datad => VCC,
	cin => \div4hz|Add0~39\,
	combout => \div4hz|Add0~40_combout\,
	cout => \div4hz|Add0~41\);

-- Location: LCCOMB_X110_Y40_N12
\div4hz|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~0_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|Equal0~9_combout\,
	datac => \div4hz|Add0~40_combout\,
	combout => \div4hz|s_divCounter~0_combout\);

-- Location: FF_X110_Y40_N13
\div4hz|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(20));

-- Location: LCCOMB_X111_Y40_N12
\div4hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~42_combout\ = (\div4hz|s_divCounter\(21) & (!\div4hz|Add0~41\)) # (!\div4hz|s_divCounter\(21) & ((\div4hz|Add0~41\) # (GND)))
-- \div4hz|Add0~43\ = CARRY((!\div4hz|Add0~41\) # (!\div4hz|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(21),
	datad => VCC,
	cin => \div4hz|Add0~41\,
	combout => \div4hz|Add0~42_combout\,
	cout => \div4hz|Add0~43\);

-- Location: LCCOMB_X110_Y41_N18
\div4hz|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~9_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div4hz|Equal0~9_combout\,
	datad => \div4hz|Add0~42_combout\,
	combout => \div4hz|s_divCounter~9_combout\);

-- Location: FF_X110_Y41_N19
\div4hz|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(21));

-- Location: LCCOMB_X111_Y40_N14
\div4hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~44_combout\ = (\div4hz|s_divCounter\(22) & (\div4hz|Add0~43\ $ (GND))) # (!\div4hz|s_divCounter\(22) & (!\div4hz|Add0~43\ & VCC))
-- \div4hz|Add0~45\ = CARRY((\div4hz|s_divCounter\(22) & !\div4hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(22),
	datad => VCC,
	cin => \div4hz|Add0~43\,
	combout => \div4hz|Add0~44_combout\,
	cout => \div4hz|Add0~45\);

-- Location: FF_X111_Y40_N15
\div4hz|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(22));

-- Location: LCCOMB_X111_Y40_N16
\div4hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~46_combout\ = (\div4hz|s_divCounter\(23) & (!\div4hz|Add0~45\)) # (!\div4hz|s_divCounter\(23) & ((\div4hz|Add0~45\) # (GND)))
-- \div4hz|Add0~47\ = CARRY((!\div4hz|Add0~45\) # (!\div4hz|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(23),
	datad => VCC,
	cin => \div4hz|Add0~45\,
	combout => \div4hz|Add0~46_combout\,
	cout => \div4hz|Add0~47\);

-- Location: LCCOMB_X110_Y41_N8
\div4hz|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|s_divCounter~8_combout\ = (!\div4hz|Equal0~9_combout\ & \div4hz|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|Equal0~9_combout\,
	datac => \div4hz|Add0~46_combout\,
	combout => \div4hz|s_divCounter~8_combout\);

-- Location: FF_X110_Y41_N9
\div4hz|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(23));

-- Location: LCCOMB_X110_Y41_N26
\div4hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Equal0~7_combout\ = (\div4hz|s_divCounter\(21) & (\div4hz|s_divCounter\(23) & (!\div4hz|s_divCounter\(16) & !\div4hz|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(21),
	datab => \div4hz|s_divCounter\(23),
	datac => \div4hz|s_divCounter\(16),
	datad => \div4hz|s_divCounter\(22),
	combout => \div4hz|Equal0~7_combout\);

-- Location: LCCOMB_X110_Y41_N24
\div4hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Equal0~8_combout\ = (\div4hz|s_divCounter\(15) & (\div4hz|s_divCounter\(13) & (!\div4hz|s_divCounter\(14) & !\div4hz|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(15),
	datab => \div4hz|s_divCounter\(13),
	datac => \div4hz|s_divCounter\(14),
	datad => \div4hz|s_divCounter\(9),
	combout => \div4hz|Equal0~8_combout\);

-- Location: LCCOMB_X110_Y41_N4
\div4hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Equal0~5_combout\ = (!\div4hz|s_divCounter\(5) & (!\div4hz|s_divCounter\(7) & (!\div4hz|s_divCounter\(6) & !\div4hz|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(5),
	datab => \div4hz|s_divCounter\(7),
	datac => \div4hz|s_divCounter\(6),
	datad => \div4hz|s_divCounter\(8),
	combout => \div4hz|Equal0~5_combout\);

-- Location: LCCOMB_X111_Y40_N18
\div4hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~48_combout\ = (\div4hz|s_divCounter\(24) & (\div4hz|Add0~47\ $ (GND))) # (!\div4hz|s_divCounter\(24) & (!\div4hz|Add0~47\ & VCC))
-- \div4hz|Add0~49\ = CARRY((\div4hz|s_divCounter\(24) & !\div4hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(24),
	datad => VCC,
	cin => \div4hz|Add0~47\,
	combout => \div4hz|Add0~48_combout\,
	cout => \div4hz|Add0~49\);

-- Location: FF_X111_Y40_N19
\div4hz|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(24));

-- Location: LCCOMB_X110_Y40_N22
\div4hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Equal0~2_combout\ = (\div4hz|s_divCounter\(19) & (!\div4hz|s_divCounter\(24) & (\div4hz|s_divCounter\(18) & \div4hz|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(19),
	datab => \div4hz|s_divCounter\(24),
	datac => \div4hz|s_divCounter\(18),
	datad => \div4hz|s_divCounter\(20),
	combout => \div4hz|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y40_N20
\div4hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~50_combout\ = (\div4hz|s_divCounter\(25) & (!\div4hz|Add0~49\)) # (!\div4hz|s_divCounter\(25) & ((\div4hz|Add0~49\) # (GND)))
-- \div4hz|Add0~51\ = CARRY((!\div4hz|Add0~49\) # (!\div4hz|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(25),
	datad => VCC,
	cin => \div4hz|Add0~49\,
	combout => \div4hz|Add0~50_combout\,
	cout => \div4hz|Add0~51\);

-- Location: FF_X111_Y40_N21
\div4hz|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(25));

-- Location: LCCOMB_X111_Y40_N22
\div4hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~52_combout\ = (\div4hz|s_divCounter\(26) & (\div4hz|Add0~51\ $ (GND))) # (!\div4hz|s_divCounter\(26) & (!\div4hz|Add0~51\ & VCC))
-- \div4hz|Add0~53\ = CARRY((\div4hz|s_divCounter\(26) & !\div4hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(26),
	datad => VCC,
	cin => \div4hz|Add0~51\,
	combout => \div4hz|Add0~52_combout\,
	cout => \div4hz|Add0~53\);

-- Location: FF_X111_Y40_N23
\div4hz|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(26));

-- Location: LCCOMB_X111_Y40_N24
\div4hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~54_combout\ = (\div4hz|s_divCounter\(27) & (!\div4hz|Add0~53\)) # (!\div4hz|s_divCounter\(27) & ((\div4hz|Add0~53\) # (GND)))
-- \div4hz|Add0~55\ = CARRY((!\div4hz|Add0~53\) # (!\div4hz|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(27),
	datad => VCC,
	cin => \div4hz|Add0~53\,
	combout => \div4hz|Add0~54_combout\,
	cout => \div4hz|Add0~55\);

-- Location: FF_X111_Y40_N25
\div4hz|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(27));

-- Location: LCCOMB_X111_Y40_N26
\div4hz|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~56_combout\ = (\div4hz|s_divCounter\(28) & (\div4hz|Add0~55\ $ (GND))) # (!\div4hz|s_divCounter\(28) & (!\div4hz|Add0~55\ & VCC))
-- \div4hz|Add0~57\ = CARRY((\div4hz|s_divCounter\(28) & !\div4hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(28),
	datad => VCC,
	cin => \div4hz|Add0~55\,
	combout => \div4hz|Add0~56_combout\,
	cout => \div4hz|Add0~57\);

-- Location: FF_X111_Y40_N27
\div4hz|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(28));

-- Location: LCCOMB_X110_Y40_N18
\div4hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Equal0~1_combout\ = (!\div4hz|s_divCounter\(26) & (!\div4hz|s_divCounter\(28) & (!\div4hz|s_divCounter\(25) & !\div4hz|s_divCounter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(26),
	datab => \div4hz|s_divCounter\(28),
	datac => \div4hz|s_divCounter\(25),
	datad => \div4hz|s_divCounter\(27),
	combout => \div4hz|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y40_N14
\div4hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Equal0~3_combout\ = (\div4hz|s_divCounter\(12) & (\div4hz|s_divCounter\(11) & (\div4hz|s_divCounter\(17) & \div4hz|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(12),
	datab => \div4hz|s_divCounter\(11),
	datac => \div4hz|s_divCounter\(17),
	datad => \div4hz|s_divCounter\(10),
	combout => \div4hz|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y40_N28
\div4hz|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~58_combout\ = (\div4hz|s_divCounter\(29) & (!\div4hz|Add0~57\)) # (!\div4hz|s_divCounter\(29) & ((\div4hz|Add0~57\) # (GND)))
-- \div4hz|Add0~59\ = CARRY((!\div4hz|Add0~57\) # (!\div4hz|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div4hz|s_divCounter\(29),
	datad => VCC,
	cin => \div4hz|Add0~57\,
	combout => \div4hz|Add0~58_combout\,
	cout => \div4hz|Add0~59\);

-- Location: FF_X111_Y40_N29
\div4hz|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(29));

-- Location: LCCOMB_X111_Y40_N30
\div4hz|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Add0~60_combout\ = \div4hz|s_divCounter\(30) $ (!\div4hz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(30),
	cin => \div4hz|Add0~59\,
	combout => \div4hz|Add0~60_combout\);

-- Location: FF_X111_Y40_N31
\div4hz|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|s_divCounter\(30));

-- Location: LCCOMB_X110_Y40_N28
\div4hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Equal0~0_combout\ = (\div4hz|s_divCounter\(1) & (!\div4hz|s_divCounter\(29) & (!\div4hz|s_divCounter\(30) & \div4hz|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(1),
	datab => \div4hz|s_divCounter\(29),
	datac => \div4hz|s_divCounter\(30),
	datad => \div4hz|s_divCounter\(0),
	combout => \div4hz|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y40_N0
\div4hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Equal0~4_combout\ = (\div4hz|Equal0~2_combout\ & (\div4hz|Equal0~1_combout\ & (\div4hz|Equal0~3_combout\ & \div4hz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|Equal0~2_combout\,
	datab => \div4hz|Equal0~1_combout\,
	datac => \div4hz|Equal0~3_combout\,
	datad => \div4hz|Equal0~0_combout\,
	combout => \div4hz|Equal0~4_combout\);

-- Location: LCCOMB_X110_Y41_N2
\div4hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Equal0~6_combout\ = (\div4hz|s_divCounter\(2) & (\div4hz|s_divCounter\(3) & (\div4hz|Equal0~5_combout\ & \div4hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(2),
	datab => \div4hz|s_divCounter\(3),
	datac => \div4hz|Equal0~5_combout\,
	datad => \div4hz|Equal0~4_combout\,
	combout => \div4hz|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y41_N30
\div4hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|Equal0~9_combout\ = (\div4hz|Equal0~7_combout\ & (\div4hz|Equal0~8_combout\ & (\div4hz|s_divCounter\(4) & \div4hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|Equal0~7_combout\,
	datab => \div4hz|Equal0~8_combout\,
	datac => \div4hz|s_divCounter\(4),
	datad => \div4hz|Equal0~6_combout\,
	combout => \div4hz|Equal0~9_combout\);

-- Location: LCCOMB_X110_Y41_N22
\div4hz|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|clkOut~1_combout\ = (!\div4hz|s_divCounter\(15) & (\div4hz|s_divCounter\(9) & (\div4hz|s_divCounter\(14) & !\div4hz|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(15),
	datab => \div4hz|s_divCounter\(9),
	datac => \div4hz|s_divCounter\(14),
	datad => \div4hz|s_divCounter\(13),
	combout => \div4hz|clkOut~1_combout\);

-- Location: LCCOMB_X110_Y41_N28
\div4hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|clkOut~0_combout\ = (!\div4hz|s_divCounter\(21) & (!\div4hz|s_divCounter\(23) & (\div4hz|s_divCounter\(16) & \div4hz|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(21),
	datab => \div4hz|s_divCounter\(23),
	datac => \div4hz|s_divCounter\(16),
	datad => \div4hz|s_divCounter\(22),
	combout => \div4hz|clkOut~0_combout\);

-- Location: LCCOMB_X110_Y41_N12
\div4hz|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|clkOut~2_combout\ = (\div4hz|clkOut~1_combout\ & (\div4hz|clkOut~0_combout\ & (!\div4hz|s_divCounter\(4) & \div4hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|clkOut~1_combout\,
	datab => \div4hz|clkOut~0_combout\,
	datac => \div4hz|s_divCounter\(4),
	datad => \div4hz|Equal0~6_combout\,
	combout => \div4hz|clkOut~2_combout\);

-- Location: LCCOMB_X110_Y41_N0
\div4hz|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div4hz|clkOut~3_combout\ = (!\div4hz|Equal0~9_combout\ & ((\div4hz|clkOut~q\) # (\div4hz|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|Equal0~9_combout\,
	datac => \div4hz|clkOut~q\,
	datad => \div4hz|clkOut~2_combout\,
	combout => \div4hz|clkOut~3_combout\);

-- Location: FF_X110_Y41_N1
\div4hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div4hz|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div4hz|clkOut~q\);

-- Location: LCCOMB_X112_Y41_N2
\div1hz|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~1_cout\ = CARRY((\div4hz|s_divCounter\(0) & \div4hz|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div4hz|s_divCounter\(0),
	datab => \div4hz|s_divCounter\(1),
	datad => VCC,
	cout => \div1hz|Add0~1_cout\);

-- Location: LCCOMB_X112_Y41_N4
\div1hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~2_combout\ = (\div1hz|s_divCounter\(2) & (!\div1hz|Add0~1_cout\)) # (!\div1hz|s_divCounter\(2) & ((\div1hz|Add0~1_cout\) # (GND)))
-- \div1hz|Add0~3\ = CARRY((!\div1hz|Add0~1_cout\) # (!\div1hz|s_divCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(2),
	datad => VCC,
	cin => \div1hz|Add0~1_cout\,
	combout => \div1hz|Add0~2_combout\,
	cout => \div1hz|Add0~3\);

-- Location: FF_X112_Y41_N5
\div1hz|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(2));

-- Location: LCCOMB_X112_Y41_N6
\div1hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~4_combout\ = (\div1hz|s_divCounter\(3) & (\div1hz|Add0~3\ $ (GND))) # (!\div1hz|s_divCounter\(3) & (!\div1hz|Add0~3\ & VCC))
-- \div1hz|Add0~5\ = CARRY((\div1hz|s_divCounter\(3) & !\div1hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(3),
	datad => VCC,
	cin => \div1hz|Add0~3\,
	combout => \div1hz|Add0~4_combout\,
	cout => \div1hz|Add0~5\);

-- Location: FF_X112_Y41_N7
\div1hz|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(3));

-- Location: LCCOMB_X112_Y41_N8
\div1hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~6_combout\ = (\div1hz|s_divCounter\(4) & (!\div1hz|Add0~5\)) # (!\div1hz|s_divCounter\(4) & ((\div1hz|Add0~5\) # (GND)))
-- \div1hz|Add0~7\ = CARRY((!\div1hz|Add0~5\) # (!\div1hz|s_divCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(4),
	datad => VCC,
	cin => \div1hz|Add0~5\,
	combout => \div1hz|Add0~6_combout\,
	cout => \div1hz|Add0~7\);

-- Location: FF_X112_Y41_N9
\div1hz|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(4));

-- Location: LCCOMB_X112_Y41_N10
\div1hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~8_combout\ = (\div1hz|s_divCounter\(5) & (\div1hz|Add0~7\ $ (GND))) # (!\div1hz|s_divCounter\(5) & (!\div1hz|Add0~7\ & VCC))
-- \div1hz|Add0~9\ = CARRY((\div1hz|s_divCounter\(5) & !\div1hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(5),
	datad => VCC,
	cin => \div1hz|Add0~7\,
	combout => \div1hz|Add0~8_combout\,
	cout => \div1hz|Add0~9\);

-- Location: FF_X112_Y41_N11
\div1hz|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(5));

-- Location: LCCOMB_X112_Y41_N12
\div1hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~10_combout\ = (\div1hz|s_divCounter\(6) & (!\div1hz|Add0~9\)) # (!\div1hz|s_divCounter\(6) & ((\div1hz|Add0~9\) # (GND)))
-- \div1hz|Add0~11\ = CARRY((!\div1hz|Add0~9\) # (!\div1hz|s_divCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(6),
	datad => VCC,
	cin => \div1hz|Add0~9\,
	combout => \div1hz|Add0~10_combout\,
	cout => \div1hz|Add0~11\);

-- Location: FF_X112_Y41_N13
\div1hz|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(6));

-- Location: LCCOMB_X112_Y40_N0
\div1hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~30_combout\ = (\div1hz|s_divCounter\(16) & (!\div1hz|Add0~29\)) # (!\div1hz|s_divCounter\(16) & ((\div1hz|Add0~29\) # (GND)))
-- \div1hz|Add0~31\ = CARRY((!\div1hz|Add0~29\) # (!\div1hz|s_divCounter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(16),
	datad => VCC,
	cin => \div1hz|Add0~29\,
	combout => \div1hz|Add0~30_combout\,
	cout => \div1hz|Add0~31\);

-- Location: LCCOMB_X112_Y40_N2
\div1hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~32_combout\ = (\div1hz|s_divCounter\(17) & (\div1hz|Add0~31\ $ (GND))) # (!\div1hz|s_divCounter\(17) & (!\div1hz|Add0~31\ & VCC))
-- \div1hz|Add0~33\ = CARRY((\div1hz|s_divCounter\(17) & !\div1hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(17),
	datad => VCC,
	cin => \div1hz|Add0~31\,
	combout => \div1hz|Add0~32_combout\,
	cout => \div1hz|Add0~33\);

-- Location: LCCOMB_X113_Y40_N10
\div1hz|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~2_combout\ = (\div1hz|Add0~32_combout\ & ((!\div1hz|Equal0~9_combout\) # (!\div1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~6_combout\,
	datac => \div1hz|Equal0~9_combout\,
	datad => \div1hz|Add0~32_combout\,
	combout => \div1hz|s_divCounter~2_combout\);

-- Location: FF_X113_Y40_N11
\div1hz|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(17));

-- Location: LCCOMB_X112_Y41_N16
\div1hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~14_combout\ = (\div1hz|s_divCounter\(8) & (!\div1hz|Add0~13\)) # (!\div1hz|s_divCounter\(8) & ((\div1hz|Add0~13\) # (GND)))
-- \div1hz|Add0~15\ = CARRY((!\div1hz|Add0~13\) # (!\div1hz|s_divCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(8),
	datad => VCC,
	cin => \div1hz|Add0~13\,
	combout => \div1hz|Add0~14_combout\,
	cout => \div1hz|Add0~15\);

-- Location: LCCOMB_X112_Y41_N18
\div1hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~16_combout\ = (\div1hz|s_divCounter\(9) & (\div1hz|Add0~15\ $ (GND))) # (!\div1hz|s_divCounter\(9) & (!\div1hz|Add0~15\ & VCC))
-- \div1hz|Add0~17\ = CARRY((\div1hz|s_divCounter\(9) & !\div1hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(9),
	datad => VCC,
	cin => \div1hz|Add0~15\,
	combout => \div1hz|Add0~16_combout\,
	cout => \div1hz|Add0~17\);

-- Location: FF_X112_Y41_N19
\div1hz|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(9));

-- Location: LCCOMB_X112_Y41_N20
\div1hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~18_combout\ = (\div1hz|s_divCounter\(10) & (!\div1hz|Add0~17\)) # (!\div1hz|s_divCounter\(10) & ((\div1hz|Add0~17\) # (GND)))
-- \div1hz|Add0~19\ = CARRY((!\div1hz|Add0~17\) # (!\div1hz|s_divCounter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(10),
	datad => VCC,
	cin => \div1hz|Add0~17\,
	combout => \div1hz|Add0~18_combout\,
	cout => \div1hz|Add0~19\);

-- Location: FF_X112_Y41_N21
\div1hz|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(10));

-- Location: LCCOMB_X112_Y41_N22
\div1hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~20_combout\ = (\div1hz|s_divCounter\(11) & (\div1hz|Add0~19\ $ (GND))) # (!\div1hz|s_divCounter\(11) & (!\div1hz|Add0~19\ & VCC))
-- \div1hz|Add0~21\ = CARRY((\div1hz|s_divCounter\(11) & !\div1hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(11),
	datad => VCC,
	cin => \div1hz|Add0~19\,
	combout => \div1hz|Add0~20_combout\,
	cout => \div1hz|Add0~21\);

-- Location: FF_X112_Y41_N23
\div1hz|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(11));

-- Location: LCCOMB_X112_Y37_N4
\div1hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Equal0~8_combout\ = (!\div1hz|s_divCounter\(16) & (\div1hz|s_divCounter\(17) & (\div1hz|s_divCounter\(15) & !\div1hz|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(16),
	datab => \div1hz|s_divCounter\(17),
	datac => \div1hz|s_divCounter\(15),
	datad => \div1hz|s_divCounter\(11),
	combout => \div1hz|Equal0~8_combout\);

-- Location: LCCOMB_X112_Y40_N4
\div1hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~34_combout\ = (\div1hz|s_divCounter\(18) & (!\div1hz|Add0~33\)) # (!\div1hz|s_divCounter\(18) & ((\div1hz|Add0~33\) # (GND)))
-- \div1hz|Add0~35\ = CARRY((!\div1hz|Add0~33\) # (!\div1hz|s_divCounter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(18),
	datad => VCC,
	cin => \div1hz|Add0~33\,
	combout => \div1hz|Add0~34_combout\,
	cout => \div1hz|Add0~35\);

-- Location: FF_X112_Y40_N5
\div1hz|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(18));

-- Location: LCCOMB_X112_Y40_N6
\div1hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~36_combout\ = (\div1hz|s_divCounter\(19) & (\div1hz|Add0~35\ $ (GND))) # (!\div1hz|s_divCounter\(19) & (!\div1hz|Add0~35\ & VCC))
-- \div1hz|Add0~37\ = CARRY((\div1hz|s_divCounter\(19) & !\div1hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(19),
	datad => VCC,
	cin => \div1hz|Add0~35\,
	combout => \div1hz|Add0~36_combout\,
	cout => \div1hz|Add0~37\);

-- Location: LCCOMB_X113_Y40_N2
\div1hz|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~7_combout\ = (\div1hz|Add0~36_combout\ & ((!\div1hz|Equal0~6_combout\) # (!\div1hz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~9_combout\,
	datac => \div1hz|Add0~36_combout\,
	datad => \div1hz|Equal0~6_combout\,
	combout => \div1hz|s_divCounter~7_combout\);

-- Location: FF_X113_Y40_N3
\div1hz|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(19));

-- Location: LCCOMB_X112_Y40_N8
\div1hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~38_combout\ = (\div1hz|s_divCounter\(20) & (!\div1hz|Add0~37\)) # (!\div1hz|s_divCounter\(20) & ((\div1hz|Add0~37\) # (GND)))
-- \div1hz|Add0~39\ = CARRY((!\div1hz|Add0~37\) # (!\div1hz|s_divCounter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(20),
	datad => VCC,
	cin => \div1hz|Add0~37\,
	combout => \div1hz|Add0~38_combout\,
	cout => \div1hz|Add0~39\);

-- Location: LCCOMB_X113_Y40_N28
\div1hz|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~6_combout\ = (\div1hz|Add0~38_combout\ & ((!\div1hz|Equal0~9_combout\) # (!\div1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~6_combout\,
	datac => \div1hz|Equal0~9_combout\,
	datad => \div1hz|Add0~38_combout\,
	combout => \div1hz|s_divCounter~6_combout\);

-- Location: FF_X113_Y40_N29
\div1hz|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(20));

-- Location: LCCOMB_X112_Y40_N10
\div1hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~40_combout\ = (\div1hz|s_divCounter\(21) & (\div1hz|Add0~39\ $ (GND))) # (!\div1hz|s_divCounter\(21) & (!\div1hz|Add0~39\ & VCC))
-- \div1hz|Add0~41\ = CARRY((\div1hz|s_divCounter\(21) & !\div1hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(21),
	datad => VCC,
	cin => \div1hz|Add0~39\,
	combout => \div1hz|Add0~40_combout\,
	cout => \div1hz|Add0~41\);

-- Location: LCCOMB_X113_Y40_N30
\div1hz|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~5_combout\ = (\div1hz|Add0~40_combout\ & ((!\div1hz|Equal0~9_combout\) # (!\div1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~6_combout\,
	datac => \div1hz|Equal0~9_combout\,
	datad => \div1hz|Add0~40_combout\,
	combout => \div1hz|s_divCounter~5_combout\);

-- Location: FF_X113_Y40_N31
\div1hz|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(21));

-- Location: LCCOMB_X112_Y40_N12
\div1hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~42_combout\ = (\div1hz|s_divCounter\(22) & (!\div1hz|Add0~41\)) # (!\div1hz|s_divCounter\(22) & ((\div1hz|Add0~41\) # (GND)))
-- \div1hz|Add0~43\ = CARRY((!\div1hz|Add0~41\) # (!\div1hz|s_divCounter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(22),
	datad => VCC,
	cin => \div1hz|Add0~41\,
	combout => \div1hz|Add0~42_combout\,
	cout => \div1hz|Add0~43\);

-- Location: LCCOMB_X113_Y40_N26
\div1hz|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~4_combout\ = (\div1hz|Add0~42_combout\ & ((!\div1hz|Equal0~9_combout\) # (!\div1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~6_combout\,
	datac => \div1hz|Equal0~9_combout\,
	datad => \div1hz|Add0~42_combout\,
	combout => \div1hz|s_divCounter~4_combout\);

-- Location: FF_X113_Y40_N27
\div1hz|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(22));

-- Location: LCCOMB_X112_Y40_N14
\div1hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~44_combout\ = (\div1hz|s_divCounter\(23) & (\div1hz|Add0~43\ $ (GND))) # (!\div1hz|s_divCounter\(23) & (!\div1hz|Add0~43\ & VCC))
-- \div1hz|Add0~45\ = CARRY((\div1hz|s_divCounter\(23) & !\div1hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(23),
	datad => VCC,
	cin => \div1hz|Add0~43\,
	combout => \div1hz|Add0~44_combout\,
	cout => \div1hz|Add0~45\);

-- Location: LCCOMB_X112_Y40_N30
\div1hz|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~1_combout\ = (\div1hz|Add0~44_combout\ & ((!\div1hz|Equal0~6_combout\) # (!\div1hz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|Equal0~9_combout\,
	datac => \div1hz|Add0~44_combout\,
	datad => \div1hz|Equal0~6_combout\,
	combout => \div1hz|s_divCounter~1_combout\);

-- Location: FF_X112_Y40_N31
\div1hz|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(23));

-- Location: LCCOMB_X112_Y40_N16
\div1hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~46_combout\ = (\div1hz|s_divCounter\(24) & (!\div1hz|Add0~45\)) # (!\div1hz|s_divCounter\(24) & ((\div1hz|Add0~45\) # (GND)))
-- \div1hz|Add0~47\ = CARRY((!\div1hz|Add0~45\) # (!\div1hz|s_divCounter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(24),
	datad => VCC,
	cin => \div1hz|Add0~45\,
	combout => \div1hz|Add0~46_combout\,
	cout => \div1hz|Add0~47\);

-- Location: FF_X112_Y40_N17
\div1hz|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(24));

-- Location: LCCOMB_X112_Y40_N18
\div1hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~48_combout\ = (\div1hz|s_divCounter\(25) & (\div1hz|Add0~47\ $ (GND))) # (!\div1hz|s_divCounter\(25) & (!\div1hz|Add0~47\ & VCC))
-- \div1hz|Add0~49\ = CARRY((\div1hz|s_divCounter\(25) & !\div1hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(25),
	datad => VCC,
	cin => \div1hz|Add0~47\,
	combout => \div1hz|Add0~48_combout\,
	cout => \div1hz|Add0~49\);

-- Location: LCCOMB_X113_Y40_N24
\div1hz|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~0_combout\ = (\div1hz|Add0~48_combout\ & ((!\div1hz|Equal0~9_combout\) # (!\div1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~6_combout\,
	datac => \div1hz|Equal0~9_combout\,
	datad => \div1hz|Add0~48_combout\,
	combout => \div1hz|s_divCounter~0_combout\);

-- Location: FF_X113_Y40_N25
\div1hz|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(25));

-- Location: LCCOMB_X112_Y37_N10
\div1hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Equal0~7_combout\ = (!\div1hz|s_divCounter\(24) & (\div1hz|s_divCounter\(23) & (!\div1hz|s_divCounter\(18) & \div1hz|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(24),
	datab => \div1hz|s_divCounter\(23),
	datac => \div1hz|s_divCounter\(18),
	datad => \div1hz|s_divCounter\(25),
	combout => \div1hz|Equal0~7_combout\);

-- Location: LCCOMB_X112_Y37_N24
\div1hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Equal0~9_combout\ = (\div1hz|s_divCounter\(6) & (\div1hz|Equal0~8_combout\ & \div1hz|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(6),
	datac => \div1hz|Equal0~8_combout\,
	datad => \div1hz|Equal0~7_combout\,
	combout => \div1hz|Equal0~9_combout\);

-- Location: LCCOMB_X112_Y41_N14
\div1hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~12_combout\ = (\div1hz|s_divCounter\(7) & (\div1hz|Add0~11\ $ (GND))) # (!\div1hz|s_divCounter\(7) & (!\div1hz|Add0~11\ & VCC))
-- \div1hz|Add0~13\ = CARRY((\div1hz|s_divCounter\(7) & !\div1hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(7),
	datad => VCC,
	cin => \div1hz|Add0~11\,
	combout => \div1hz|Add0~12_combout\,
	cout => \div1hz|Add0~13\);

-- Location: LCCOMB_X113_Y40_N0
\div1hz|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~11_combout\ = (\div1hz|Add0~12_combout\ & ((!\div1hz|Equal0~6_combout\) # (!\div1hz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~9_combout\,
	datac => \div1hz|Add0~12_combout\,
	datad => \div1hz|Equal0~6_combout\,
	combout => \div1hz|s_divCounter~11_combout\);

-- Location: FF_X113_Y40_N1
\div1hz|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(7));

-- Location: FF_X112_Y41_N17
\div1hz|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(8));

-- Location: LCCOMB_X112_Y41_N0
\div1hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Equal0~5_combout\ = (\div1hz|s_divCounter\(5) & (!\div1hz|s_divCounter\(8) & (\div1hz|s_divCounter\(4) & !\div1hz|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(5),
	datab => \div1hz|s_divCounter\(8),
	datac => \div1hz|s_divCounter\(4),
	datad => \div1hz|s_divCounter\(7),
	combout => \div1hz|Equal0~5_combout\);

-- Location: LCCOMB_X112_Y40_N20
\div1hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~50_combout\ = (\div1hz|s_divCounter\(26) & (!\div1hz|Add0~49\)) # (!\div1hz|s_divCounter\(26) & ((\div1hz|Add0~49\) # (GND)))
-- \div1hz|Add0~51\ = CARRY((!\div1hz|Add0~49\) # (!\div1hz|s_divCounter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(26),
	datad => VCC,
	cin => \div1hz|Add0~49\,
	combout => \div1hz|Add0~50_combout\,
	cout => \div1hz|Add0~51\);

-- Location: FF_X112_Y40_N21
\div1hz|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(26));

-- Location: LCCOMB_X112_Y40_N22
\div1hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~52_combout\ = (\div1hz|s_divCounter\(27) & (\div1hz|Add0~51\ $ (GND))) # (!\div1hz|s_divCounter\(27) & (!\div1hz|Add0~51\ & VCC))
-- \div1hz|Add0~53\ = CARRY((\div1hz|s_divCounter\(27) & !\div1hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(27),
	datad => VCC,
	cin => \div1hz|Add0~51\,
	combout => \div1hz|Add0~52_combout\,
	cout => \div1hz|Add0~53\);

-- Location: FF_X112_Y40_N23
\div1hz|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(27));

-- Location: LCCOMB_X112_Y40_N24
\div1hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~54_combout\ = (\div1hz|s_divCounter\(28) & (!\div1hz|Add0~53\)) # (!\div1hz|s_divCounter\(28) & ((\div1hz|Add0~53\) # (GND)))
-- \div1hz|Add0~55\ = CARRY((!\div1hz|Add0~53\) # (!\div1hz|s_divCounter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(28),
	datad => VCC,
	cin => \div1hz|Add0~53\,
	combout => \div1hz|Add0~54_combout\,
	cout => \div1hz|Add0~55\);

-- Location: FF_X112_Y40_N25
\div1hz|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(28));

-- Location: LCCOMB_X113_Y40_N12
\div1hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Equal0~1_combout\ = (!\div1hz|s_divCounter\(26) & (!\div1hz|s_divCounter\(27) & (\div1hz|s_divCounter\(22) & !\div1hz|s_divCounter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(26),
	datab => \div1hz|s_divCounter\(27),
	datac => \div1hz|s_divCounter\(22),
	datad => \div1hz|s_divCounter\(28),
	combout => \div1hz|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y41_N24
\div1hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~22_combout\ = (\div1hz|s_divCounter\(12) & (!\div1hz|Add0~21\)) # (!\div1hz|s_divCounter\(12) & ((\div1hz|Add0~21\) # (GND)))
-- \div1hz|Add0~23\ = CARRY((!\div1hz|Add0~21\) # (!\div1hz|s_divCounter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(12),
	datad => VCC,
	cin => \div1hz|Add0~21\,
	combout => \div1hz|Add0~22_combout\,
	cout => \div1hz|Add0~23\);

-- Location: LCCOMB_X113_Y40_N22
\div1hz|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~10_combout\ = (\div1hz|Add0~22_combout\ & ((!\div1hz|Equal0~6_combout\) # (!\div1hz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~9_combout\,
	datac => \div1hz|Add0~22_combout\,
	datad => \div1hz|Equal0~6_combout\,
	combout => \div1hz|s_divCounter~10_combout\);

-- Location: FF_X113_Y40_N23
\div1hz|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(12));

-- Location: LCCOMB_X112_Y41_N26
\div1hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~24_combout\ = (\div1hz|s_divCounter\(13) & (\div1hz|Add0~23\ $ (GND))) # (!\div1hz|s_divCounter\(13) & (!\div1hz|Add0~23\ & VCC))
-- \div1hz|Add0~25\ = CARRY((\div1hz|s_divCounter\(13) & !\div1hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(13),
	datad => VCC,
	cin => \div1hz|Add0~23\,
	combout => \div1hz|Add0~24_combout\,
	cout => \div1hz|Add0~25\);

-- Location: LCCOMB_X113_Y40_N20
\div1hz|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~9_combout\ = (\div1hz|Add0~24_combout\ & ((!\div1hz|Equal0~6_combout\) # (!\div1hz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~9_combout\,
	datac => \div1hz|Add0~24_combout\,
	datad => \div1hz|Equal0~6_combout\,
	combout => \div1hz|s_divCounter~9_combout\);

-- Location: FF_X113_Y40_N21
\div1hz|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(13));

-- Location: LCCOMB_X112_Y41_N28
\div1hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~26_combout\ = (\div1hz|s_divCounter\(14) & (!\div1hz|Add0~25\)) # (!\div1hz|s_divCounter\(14) & ((\div1hz|Add0~25\) # (GND)))
-- \div1hz|Add0~27\ = CARRY((!\div1hz|Add0~25\) # (!\div1hz|s_divCounter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div1hz|s_divCounter\(14),
	datad => VCC,
	cin => \div1hz|Add0~25\,
	combout => \div1hz|Add0~26_combout\,
	cout => \div1hz|Add0~27\);

-- Location: LCCOMB_X113_Y40_N16
\div1hz|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~8_combout\ = (\div1hz|Add0~26_combout\ & ((!\div1hz|Equal0~6_combout\) # (!\div1hz|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~9_combout\,
	datac => \div1hz|Add0~26_combout\,
	datad => \div1hz|Equal0~6_combout\,
	combout => \div1hz|s_divCounter~8_combout\);

-- Location: FF_X113_Y40_N17
\div1hz|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(14));

-- Location: LCCOMB_X113_Y40_N14
\div1hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Equal0~2_combout\ = (\div1hz|s_divCounter\(21) & (\div1hz|s_divCounter\(19) & (\div1hz|s_divCounter\(20) & \div1hz|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(21),
	datab => \div1hz|s_divCounter\(19),
	datac => \div1hz|s_divCounter\(20),
	datad => \div1hz|s_divCounter\(14),
	combout => \div1hz|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y40_N4
\div1hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Equal0~3_combout\ = (\div1hz|s_divCounter\(12) & (\div1hz|s_divCounter\(13) & (!\div1hz|s_divCounter\(9) & !\div1hz|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(12),
	datab => \div1hz|s_divCounter\(13),
	datac => \div1hz|s_divCounter\(9),
	datad => \div1hz|s_divCounter\(10),
	combout => \div1hz|Equal0~3_combout\);

-- Location: LCCOMB_X112_Y40_N26
\div1hz|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~56_combout\ = (\div1hz|s_divCounter\(29) & (\div1hz|Add0~55\ $ (GND))) # (!\div1hz|s_divCounter\(29) & (!\div1hz|Add0~55\ & VCC))
-- \div1hz|Add0~57\ = CARRY((\div1hz|s_divCounter\(29) & !\div1hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(29),
	datad => VCC,
	cin => \div1hz|Add0~55\,
	combout => \div1hz|Add0~56_combout\,
	cout => \div1hz|Add0~57\);

-- Location: FF_X112_Y40_N27
\div1hz|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(29));

-- Location: LCCOMB_X112_Y40_N28
\div1hz|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~58_combout\ = \div1hz|Add0~57\ $ (\div1hz|s_divCounter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div1hz|s_divCounter\(30),
	cin => \div1hz|Add0~57\,
	combout => \div1hz|Add0~58_combout\);

-- Location: FF_X112_Y40_N29
\div1hz|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(30));

-- Location: LCCOMB_X110_Y40_N10
\div1hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Equal0~0_combout\ = (!\div1hz|s_divCounter\(29) & (!\div1hz|s_divCounter\(30) & (\div4hz|s_divCounter\(1) & \div4hz|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(29),
	datab => \div1hz|s_divCounter\(30),
	datac => \div4hz|s_divCounter\(1),
	datad => \div4hz|s_divCounter\(0),
	combout => \div1hz|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y40_N18
\div1hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Equal0~4_combout\ = (\div1hz|Equal0~1_combout\ & (\div1hz|Equal0~2_combout\ & (\div1hz|Equal0~3_combout\ & \div1hz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~1_combout\,
	datab => \div1hz|Equal0~2_combout\,
	datac => \div1hz|Equal0~3_combout\,
	datad => \div1hz|Equal0~0_combout\,
	combout => \div1hz|Equal0~4_combout\);

-- Location: LCCOMB_X113_Y40_N6
\div1hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Equal0~6_combout\ = (\div1hz|s_divCounter\(3) & (\div1hz|s_divCounter\(2) & (\div1hz|Equal0~5_combout\ & \div1hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(3),
	datab => \div1hz|s_divCounter\(2),
	datac => \div1hz|Equal0~5_combout\,
	datad => \div1hz|Equal0~4_combout\,
	combout => \div1hz|Equal0~6_combout\);

-- Location: LCCOMB_X112_Y41_N30
\div1hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|Add0~28_combout\ = (\div1hz|s_divCounter\(15) & (\div1hz|Add0~27\ $ (GND))) # (!\div1hz|s_divCounter\(15) & (!\div1hz|Add0~27\ & VCC))
-- \div1hz|Add0~29\ = CARRY((\div1hz|s_divCounter\(15) & !\div1hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(15),
	datad => VCC,
	cin => \div1hz|Add0~27\,
	combout => \div1hz|Add0~28_combout\,
	cout => \div1hz|Add0~29\);

-- Location: LCCOMB_X113_Y40_N8
\div1hz|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|s_divCounter~3_combout\ = (\div1hz|Add0~28_combout\ & ((!\div1hz|Equal0~9_combout\) # (!\div1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|Equal0~6_combout\,
	datac => \div1hz|Equal0~9_combout\,
	datad => \div1hz|Add0~28_combout\,
	combout => \div1hz|s_divCounter~3_combout\);

-- Location: FF_X113_Y40_N9
\div1hz|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(15));

-- Location: FF_X112_Y40_N1
\div1hz|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|s_divCounter\(16));

-- Location: LCCOMB_X112_Y37_N26
\div1hz|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|clkOut~1_combout\ = (\div1hz|s_divCounter\(16) & (!\div1hz|s_divCounter\(17) & (!\div1hz|s_divCounter\(15) & \div1hz|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(16),
	datab => \div1hz|s_divCounter\(17),
	datac => \div1hz|s_divCounter\(15),
	datad => \div1hz|s_divCounter\(11),
	combout => \div1hz|clkOut~1_combout\);

-- Location: LCCOMB_X112_Y37_N18
\div1hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|clkOut~0_combout\ = (\div1hz|s_divCounter\(24) & (!\div1hz|s_divCounter\(25) & (\div1hz|s_divCounter\(18) & !\div1hz|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(24),
	datab => \div1hz|s_divCounter\(25),
	datac => \div1hz|s_divCounter\(18),
	datad => \div1hz|s_divCounter\(23),
	combout => \div1hz|clkOut~0_combout\);

-- Location: LCCOMB_X112_Y37_N22
\div1hz|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|clkOut~2_combout\ = (!\div1hz|s_divCounter\(6) & (\div1hz|clkOut~1_combout\ & \div1hz|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|s_divCounter\(6),
	datac => \div1hz|clkOut~1_combout\,
	datad => \div1hz|clkOut~0_combout\,
	combout => \div1hz|clkOut~2_combout\);

-- Location: LCCOMB_X112_Y37_N12
\div1hz|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|clkOut~3_combout\ = (\div1hz|Equal0~6_combout\ & (!\div1hz|Equal0~9_combout\ & ((\div1hz|clkOut~2_combout\) # (\div1hz|clkOut~q\)))) # (!\div1hz|Equal0~6_combout\ & (((\div1hz|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|clkOut~2_combout\,
	datab => \div1hz|Equal0~9_combout\,
	datac => \div1hz|clkOut~q\,
	datad => \div1hz|Equal0~6_combout\,
	combout => \div1hz|clkOut~3_combout\);

-- Location: LCCOMB_X112_Y37_N0
\div1hz|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \div1hz|clkOut~feeder_combout\ = \div1hz|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div1hz|clkOut~3_combout\,
	combout => \div1hz|clkOut~feeder_combout\);

-- Location: FF_X112_Y37_N1
\div1hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \div1hz|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div1hz|clkOut~q\);

-- Location: CLKCTRL_G8
\div1hz|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div1hz|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div1hz|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X111_Y50_N28
\Counter|scount[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|scount[0]~3_combout\ = !\Counter|scount\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|scount\(0),
	combout => \Counter|scount[0]~3_combout\);

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

-- Location: FF_X111_Y50_N29
\Counter|scount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div1hz|clkOut~clkctrl_outclk\,
	d => \Counter|scount[0]~3_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|scount\(0));

-- Location: LCCOMB_X110_Y50_N4
\pisca_ledr|output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pisca_ledr|output[0]~0_combout\ = (\div4hz|clkOut~q\ & \Counter|scount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div4hz|clkOut~q\,
	datad => \Counter|scount\(0),
	combout => \pisca_ledr|output[0]~0_combout\);

-- Location: LCCOMB_X111_Y50_N10
\Counter|scount[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|scount[1]~0_combout\ = \Counter|scount\(1) $ (((\SW[1]~input_o\ & \Counter|scount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \Counter|scount\(1),
	datad => \Counter|scount\(0),
	combout => \Counter|scount[1]~0_combout\);

-- Location: FF_X111_Y50_N11
\Counter|scount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div1hz|clkOut~clkctrl_outclk\,
	d => \Counter|scount[1]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|scount\(1));

-- Location: LCCOMB_X110_Y50_N2
\pisca_ledr|output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pisca_ledr|output[1]~1_combout\ = (\Counter|scount\(1) & \div4hz|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|scount\(1),
	datac => \div4hz|clkOut~q\,
	combout => \pisca_ledr|output[1]~1_combout\);

-- Location: LCCOMB_X111_Y50_N6
\Counter|scount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|scount~2_combout\ = (\Counter|scount\(1) & ((\Counter|scount\(0) & (!\Counter|scount\(3) & \Counter|scount\(2))) # (!\Counter|scount\(0) & (\Counter|scount\(3))))) # (!\Counter|scount\(1) & (((\Counter|scount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(1),
	datab => \Counter|scount\(0),
	datac => \Counter|scount\(3),
	datad => \Counter|scount\(2),
	combout => \Counter|scount~2_combout\);

-- Location: FF_X111_Y50_N7
\Counter|scount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div1hz|clkOut~clkctrl_outclk\,
	d => \Counter|scount~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|scount\(3));

-- Location: LCCOMB_X111_Y50_N0
\Counter|scount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|scount~1_combout\ = (\Counter|scount\(1) & ((\Counter|scount\(0) & (!\Counter|scount\(2) & !\Counter|scount\(3))) # (!\Counter|scount\(0) & (\Counter|scount\(2))))) # (!\Counter|scount\(1) & (((\Counter|scount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(1),
	datab => \Counter|scount\(0),
	datac => \Counter|scount\(2),
	datad => \Counter|scount\(3),
	combout => \Counter|scount~1_combout\);

-- Location: FF_X111_Y50_N1
\Counter|scount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div1hz|clkOut~clkctrl_outclk\,
	d => \Counter|scount~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|scount\(2));

-- Location: LCCOMB_X110_Y50_N20
\pisca_ledr|output[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pisca_ledr|output[2]~2_combout\ = (\Counter|scount\(2) & \div4hz|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|scount\(2),
	datac => \div4hz|clkOut~q\,
	combout => \pisca_ledr|output[2]~2_combout\);

-- Location: LCCOMB_X110_Y50_N22
\pisca_ledr|output[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pisca_ledr|output[3]~3_combout\ = (\div4hz|clkOut~q\ & \Counter|scount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div4hz|clkOut~q\,
	datad => \Counter|scount\(3),
	combout => \pisca_ledr|output[3]~3_combout\);

-- Location: LCCOMB_X111_Y50_N12
\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = \Counter|scount\(1) $ (VCC)
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY(\Counter|scount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(1),
	datad => VCC,
	combout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X111_Y50_N14
\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Counter|scount\(2) & (\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & VCC)) # (!\Counter|scount\(2) & 
-- (!\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\))
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Counter|scount\(2) & !\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|scount\(2),
	datad => VCC,
	cin => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X111_Y50_N16
\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Counter|scount\(3) & (\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ $ (GND))) # (!\Counter|scount\(3) & 
-- (!\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & VCC))
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((\Counter|scount\(3) & !\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(3),
	datad => VCC,
	cin => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X111_Y50_N18
\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY(!\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X111_Y50_N20
\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY(!\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X111_Y50_N22
\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY(!\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X111_Y50_N24
\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY(!\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X111_Y50_N26
\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X111_Y50_N30
\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ = (\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Counter|scount\(2)))) # 
-- (!\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Counter|scount\(2),
	combout => \binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\);

-- Location: LCCOMB_X111_Y50_N8
\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\ = (\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Counter|scount\(1))) # 
-- (!\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(1),
	datac => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\);

-- Location: LCCOMB_X111_Y50_N4
\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ = (\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Counter|scount\(3))) # 
-- (!\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(3),
	datac => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \binto12|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\);

-- Location: LCCOMB_X111_Y54_N20
\hex0_unidades|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux6~0_combout\ = (\Counter|scount\(0) & (\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ $ (((!\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ & 
-- !\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\))))) # (!\Counter|scount\(0) & (\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ & ((\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\) # 
-- (!\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(0),
	datab => \binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\,
	datac => \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\,
	datad => \binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\,
	combout => \hex0_unidades|Mux6~0_combout\);

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

-- Location: LCCOMB_X111_Y54_N2
\hex0_unidades|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux6~1_combout\ = (\hex0_unidades|Mux6~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hex0_unidades|Mux6~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \hex0_unidades|Mux6~1_combout\);

-- Location: LCCOMB_X111_Y54_N16
\hex0_unidades|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux5~0_combout\ = (\Counter|scount\(0) & ((\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\ & ((\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\))) # 
-- (!\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\ & (\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\)))) # (!\Counter|scount\(0) & (\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ & 
-- ((\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\) # (\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(0),
	datab => \binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\,
	datac => \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\,
	datad => \binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\,
	combout => \hex0_unidades|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y54_N6
\hex0_unidades|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux5~1_combout\ = (\hex0_unidades|Mux5~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hex0_unidades|Mux5~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \hex0_unidades|Mux5~1_combout\);

-- Location: LCCOMB_X111_Y54_N24
\hex0_unidades|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux4~0_combout\ = (\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ & (((\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\)))) # (!\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ & 
-- (!\Counter|scount\(0) & (\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\ & !\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(0),
	datab => \binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\,
	datac => \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\,
	datad => \binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\,
	combout => \hex0_unidades|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y54_N30
\hex0_unidades|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux4~1_combout\ = (\hex0_unidades|Mux4~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hex0_unidades|Mux4~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \hex0_unidades|Mux4~1_combout\);

-- Location: LCCOMB_X111_Y54_N12
\hex0_unidades|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux3~0_combout\ = (\Counter|scount\(0) & (\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ $ (((!\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\ & 
-- !\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\))))) # (!\Counter|scount\(0) & ((\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\ & ((\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\))) # 
-- (!\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\ & (\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(0),
	datab => \binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\,
	datac => \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\,
	datad => \binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\,
	combout => \hex0_unidades|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y54_N26
\hex0_unidades|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux3~1_combout\ = (\hex0_unidades|Mux3~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex0_unidades|Mux3~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \hex0_unidades|Mux3~1_combout\);

-- Location: LCCOMB_X111_Y54_N4
\hex0_unidades|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux2~0_combout\ = (\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\ & ((\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ((\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\))) # 
-- (!\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & (\Counter|scount\(0))))) # (!\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\ & ((\Counter|scount\(0)) # 
-- ((\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(0),
	datab => \binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\,
	datac => \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\,
	datad => \binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\,
	combout => \hex0_unidades|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y54_N14
\hex0_unidades|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux2~1_combout\ = (\hex0_unidades|Mux2~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hex0_unidades|Mux2~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \hex0_unidades|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y54_N8
\hex0_unidades|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux1~0_combout\ = (\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ & ((\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\) # ((\Counter|scount\(0) & 
-- \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\)))) # (!\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ & (!\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ((\Counter|scount\(0)) # 
-- (\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(0),
	datab => \binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\,
	datac => \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\,
	datad => \binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\,
	combout => \hex0_unidades|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y54_N10
\hex0_unidades|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux1~1_combout\ = (\hex0_unidades|Mux1~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hex0_unidades|Mux1~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \hex0_unidades|Mux1~1_combout\);

-- Location: LCCOMB_X111_Y54_N28
\hex0_unidades|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux0~0_combout\ = (\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ & (!\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\ & ((!\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\) # 
-- (!\Counter|scount\(0))))) # (!\binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ & (((\binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\) # (\binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(0),
	datab => \binto12|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\,
	datac => \binto12|Mod0|auto_generated|divider|divider|StageOut[57]~0_combout\,
	datad => \binto12|Mod0|auto_generated|divider|divider|StageOut[59]~2_combout\,
	combout => \hex0_unidades|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y54_N22
\hex0_unidades|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0_unidades|Mux0~1_combout\ = (!\SW[0]~input_o\) # (!\hex0_unidades|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hex0_unidades|Mux0~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \hex0_unidades|Mux0~1_combout\);

-- Location: LCCOMB_X110_Y50_N10
\binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY(\Counter|scount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|scount\(1),
	datad => VCC,
	cout => \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X110_Y50_N12
\binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Counter|scount\(2) & !\binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|scount\(2),
	datad => VCC,
	cin => \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X110_Y50_N14
\binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((\Counter|scount\(3) & !\binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|scount\(3),
	datad => VCC,
	cin => \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X110_Y50_N16
\binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY(!\binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y50_N18
\binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X114_Y42_N8
\hex1_desenas|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1_desenas|Mux6~0_combout\ = (!\SW[0]~input_o\) # (!\binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binto12|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \SW[0]~input_o\,
	combout => \hex1_desenas|Mux6~0_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;
END structure;


