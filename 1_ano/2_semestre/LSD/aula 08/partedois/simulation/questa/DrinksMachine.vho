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

-- DATE "05/13/2025 14:04:32"

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

ENTITY 	DrinksMachine IS
    PORT (
	KEY : IN std_logic;
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDG : BUFFER std_logic
	);
END DrinksMachine;

-- Design Ports Information
-- LEDG	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \drink_i|Selector6~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY~input_o\ : std_logic;
SIGNAL \debounce_reset|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \debounce_reset|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce_reset|s_previousIn~q\ : std_logic;
SIGNAL \debounce_reset|Add0~0_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~1\ : std_logic;
SIGNAL \debounce_reset|Add0~2_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~3\ : std_logic;
SIGNAL \debounce_reset|Add0~4_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~5\ : std_logic;
SIGNAL \debounce_reset|Add0~6_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~7\ : std_logic;
SIGNAL \debounce_reset|Add0~8_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~9\ : std_logic;
SIGNAL \debounce_reset|Add0~10_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[15]~2_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[15]~3_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~37\ : std_logic;
SIGNAL \debounce_reset|Add0~38_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~39\ : std_logic;
SIGNAL \debounce_reset|Add0~40_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~41\ : std_logic;
SIGNAL \debounce_reset|Add0~42_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~11\ : std_logic;
SIGNAL \debounce_reset|Add0~12_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~13\ : std_logic;
SIGNAL \debounce_reset|Add0~14_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~15\ : std_logic;
SIGNAL \debounce_reset|Add0~16_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~17\ : std_logic;
SIGNAL \debounce_reset|Add0~18_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~19\ : std_logic;
SIGNAL \debounce_reset|Add0~20_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~21\ : std_logic;
SIGNAL \debounce_reset|Add0~22_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~23\ : std_logic;
SIGNAL \debounce_reset|Add0~24_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~25\ : std_logic;
SIGNAL \debounce_reset|Add0~26_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~27\ : std_logic;
SIGNAL \debounce_reset|Add0~28_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~29\ : std_logic;
SIGNAL \debounce_reset|Add0~30_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~31\ : std_logic;
SIGNAL \debounce_reset|Add0~32_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~7_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[15]~0_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~43\ : std_logic;
SIGNAL \debounce_reset|Add0~44_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[15]~4_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~33\ : std_logic;
SIGNAL \debounce_reset|Add0~34_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~35\ : std_logic;
SIGNAL \debounce_reset|Add0~36_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~q\ : std_logic;
SIGNAL \debounce_v|Add0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \debounce_v|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce_v|s_previousIn~q\ : std_logic;
SIGNAL \debounce_v|Add0~1\ : std_logic;
SIGNAL \debounce_v|Add0~2_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounce_v|Add0~3\ : std_logic;
SIGNAL \debounce_v|Add0~4_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounce_v|Add0~5\ : std_logic;
SIGNAL \debounce_v|Add0~6_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounce_v|Add0~7\ : std_logic;
SIGNAL \debounce_v|Add0~8_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounce_v|Add0~9\ : std_logic;
SIGNAL \debounce_v|Add0~10_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debounce_v|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounce_v|Add0~11\ : std_logic;
SIGNAL \debounce_v|Add0~12_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounce_v|Add0~13\ : std_logic;
SIGNAL \debounce_v|Add0~14_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounce_v|Add0~15\ : std_logic;
SIGNAL \debounce_v|Add0~16_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounce_v|Add0~17\ : std_logic;
SIGNAL \debounce_v|Add0~18_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounce_v|Add0~19\ : std_logic;
SIGNAL \debounce_v|Add0~20_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounce_v|Add0~21\ : std_logic;
SIGNAL \debounce_v|Add0~22_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounce_v|Add0~23\ : std_logic;
SIGNAL \debounce_v|Add0~24_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounce_v|Add0~25\ : std_logic;
SIGNAL \debounce_v|Add0~26_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debounce_v|Add0~27\ : std_logic;
SIGNAL \debounce_v|Add0~28_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debounce_v|Add0~29\ : std_logic;
SIGNAL \debounce_v|Add0~30_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounce_v|Add0~31\ : std_logic;
SIGNAL \debounce_v|Add0~32_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounce_v|Add0~33\ : std_logic;
SIGNAL \debounce_v|Add0~34_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounce_v|Add0~35\ : std_logic;
SIGNAL \debounce_v|Add0~36_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debounce_v|Add0~37\ : std_logic;
SIGNAL \debounce_v|Add0~38_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debounce_v|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce_v|Add0~39\ : std_logic;
SIGNAL \debounce_v|Add0~41\ : std_logic;
SIGNAL \debounce_v|Add0~42_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debounce_v|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce_v|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce_v|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce_v|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt[15]~2_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt[15]~3_combout\ : std_logic;
SIGNAL \debounce_v|Add0~40_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debounce_v|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce_v|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce_v|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce_v|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce_v|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce_v|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce_v|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce_v|LessThan0~7_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt[15]~0_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounce_v|Add0~43\ : std_logic;
SIGNAL \debounce_v|Add0~44_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt[15]~4_combout\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debounce_v|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounce_v|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounce_v|s_pulsedOut~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \debounce_c|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce_c|s_previousIn~q\ : std_logic;
SIGNAL \debounce_c|Add0~0_combout\ : std_logic;
SIGNAL \debounce_c|Add0~5\ : std_logic;
SIGNAL \debounce_c|Add0~6_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounce_c|Add0~7\ : std_logic;
SIGNAL \debounce_c|Add0~8_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounce_c|Add0~9\ : std_logic;
SIGNAL \debounce_c|Add0~10_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debounce_c|Add0~11\ : std_logic;
SIGNAL \debounce_c|Add0~12_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounce_c|Add0~13\ : std_logic;
SIGNAL \debounce_c|Add0~14_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debounce_c|Add0~15\ : std_logic;
SIGNAL \debounce_c|Add0~16_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounce_c|Add0~17\ : std_logic;
SIGNAL \debounce_c|Add0~18_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounce_c|Add0~19\ : std_logic;
SIGNAL \debounce_c|Add0~20_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounce_c|Add0~21\ : std_logic;
SIGNAL \debounce_c|Add0~22_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounce_c|Add0~23\ : std_logic;
SIGNAL \debounce_c|Add0~24_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounce_c|Add0~25\ : std_logic;
SIGNAL \debounce_c|Add0~26_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounce_c|Add0~27\ : std_logic;
SIGNAL \debounce_c|Add0~28_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounce_c|Add0~29\ : std_logic;
SIGNAL \debounce_c|Add0~30_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \debounce_c|Add0~31\ : std_logic;
SIGNAL \debounce_c|Add0~32_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounce_c|Add0~33\ : std_logic;
SIGNAL \debounce_c|Add0~34_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounce_c|Add0~35\ : std_logic;
SIGNAL \debounce_c|Add0~36_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \debounce_c|Add0~37\ : std_logic;
SIGNAL \debounce_c|Add0~38_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \debounce_c|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce_c|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce_c|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce_c|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce_c|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce_c|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce_c|LessThan0~7_combout\ : std_logic;
SIGNAL \debounce_c|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce_c|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce_c|Add0~39\ : std_logic;
SIGNAL \debounce_c|Add0~40_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debounce_c|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce_c|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce_c|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounce_c|Add0~41\ : std_logic;
SIGNAL \debounce_c|Add0~43\ : std_logic;
SIGNAL \debounce_c|Add0~44_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \debounce_c|Add0~42_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debounce_c|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounce_c|Add0~1\ : std_logic;
SIGNAL \debounce_c|Add0~2_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \debounce_c|Add0~3\ : std_logic;
SIGNAL \debounce_c|Add0~4_combout\ : std_logic;
SIGNAL \debounce_c|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounce_c|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounce_c|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounce_c|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounce_c|s_pulsedOut~q\ : std_logic;
SIGNAL \drink_i|Selector6~0_combout\ : std_logic;
SIGNAL \drink_i|Selector6~0clkctrl_outclk\ : std_logic;
SIGNAL \drink_i|s_nextState.ESTADO1_267~combout\ : std_logic;
SIGNAL \drink_i|s_currentState~13_combout\ : std_logic;
SIGNAL \drink_i|s_currentState.ESTADO1~q\ : std_logic;
SIGNAL \drink_i|Selector2~0_combout\ : std_logic;
SIGNAL \drink_i|s_nextState.ESTADO2_244~combout\ : std_logic;
SIGNAL \drink_i|s_currentState~12_combout\ : std_logic;
SIGNAL \drink_i|s_currentState.ESTADO2~q\ : std_logic;
SIGNAL \drink_i|Selector3~0_combout\ : std_logic;
SIGNAL \drink_i|s_nextState.ESTADO3_221~combout\ : std_logic;
SIGNAL \drink_i|s_currentState~10_combout\ : std_logic;
SIGNAL \drink_i|s_currentState.ESTADO3~q\ : std_logic;
SIGNAL \drink_i|Selector4~0_combout\ : std_logic;
SIGNAL \drink_i|s_nextState.ESTADO4_198~combout\ : std_logic;
SIGNAL \drink_i|s_currentState~11_combout\ : std_logic;
SIGNAL \drink_i|s_currentState.ESTADO4~q\ : std_logic;
SIGNAL \drink_i|Selector5~0_combout\ : std_logic;
SIGNAL \drink_i|s_nextState.ESTADO5_175~combout\ : std_logic;
SIGNAL \drink_i|s_currentState~9_combout\ : std_logic;
SIGNAL \drink_i|s_currentState.ESTADO5~q\ : std_logic;
SIGNAL \drink_i|Selector0~0_combout\ : std_logic;
SIGNAL \drink_i|s_nextState.ESTADO6_152~combout\ : std_logic;
SIGNAL \drink_i|s_currentState~8_combout\ : std_logic;
SIGNAL \drink_i|s_currentState.ESTADO6~q\ : std_logic;
SIGNAL \debounce_v|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debounce_reset|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debounce_c|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\drink_i|Selector6~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \drink_i|Selector6~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y33_N16
\LEDG~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink_i|s_currentState.ESTADO6~q\,
	devoe => ww_devoe,
	o => \LEDG~output_o\);

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

-- Location: IOIBUF_X0_Y34_N22
\KEY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY,
	o => \KEY~input_o\);

-- Location: LCCOMB_X11_Y34_N14
\debounce_reset|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_dirtyIn~feeder_combout\ = \KEY~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~input_o\,
	combout => \debounce_reset|s_dirtyIn~feeder_combout\);

-- Location: FF_X11_Y34_N15
\debounce_reset|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_dirtyIn~q\);

-- Location: FF_X14_Y34_N1
\debounce_reset|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce_reset|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_previousIn~q\);

-- Location: LCCOMB_X13_Y35_N10
\debounce_reset|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~0_combout\ = \debounce_reset|s_debounceCnt\(0) $ (VCC)
-- \debounce_reset|Add0~1\ = CARRY(\debounce_reset|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce_reset|Add0~0_combout\,
	cout => \debounce_reset|Add0~1\);

-- Location: LCCOMB_X12_Y34_N2
\debounce_reset|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~24_combout\ = (\debounce_reset|s_debounceCnt[15]~4_combout\ & \debounce_reset|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_debounceCnt[15]~4_combout\,
	datad => \debounce_reset|Add0~0_combout\,
	combout => \debounce_reset|s_debounceCnt~24_combout\);

-- Location: FF_X12_Y34_N3
\debounce_reset|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~24_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(0));

-- Location: LCCOMB_X13_Y35_N12
\debounce_reset|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~2_combout\ = (\debounce_reset|s_debounceCnt\(1) & (\debounce_reset|Add0~1\ & VCC)) # (!\debounce_reset|s_debounceCnt\(1) & (!\debounce_reset|Add0~1\))
-- \debounce_reset|Add0~3\ = CARRY((!\debounce_reset|s_debounceCnt\(1) & !\debounce_reset|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounce_reset|Add0~1\,
	combout => \debounce_reset|Add0~2_combout\,
	cout => \debounce_reset|Add0~3\);

-- Location: LCCOMB_X13_Y35_N4
\debounce_reset|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~20_combout\ = (\debounce_reset|Add0~2_combout\ & \debounce_reset|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|Add0~2_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~4_combout\,
	combout => \debounce_reset|s_debounceCnt~20_combout\);

-- Location: FF_X13_Y35_N5
\debounce_reset|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~20_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(1));

-- Location: LCCOMB_X13_Y35_N14
\debounce_reset|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~4_combout\ = (\debounce_reset|s_debounceCnt\(2) & ((GND) # (!\debounce_reset|Add0~3\))) # (!\debounce_reset|s_debounceCnt\(2) & (\debounce_reset|Add0~3\ $ (GND)))
-- \debounce_reset|Add0~5\ = CARRY((\debounce_reset|s_debounceCnt\(2)) # (!\debounce_reset|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounce_reset|Add0~3\,
	combout => \debounce_reset|Add0~4_combout\,
	cout => \debounce_reset|Add0~5\);

-- Location: LCCOMB_X13_Y35_N6
\debounce_reset|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~21_combout\ = (\debounce_reset|Add0~4_combout\ & \debounce_reset|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|Add0~4_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~4_combout\,
	combout => \debounce_reset|s_debounceCnt~21_combout\);

-- Location: FF_X13_Y35_N7
\debounce_reset|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~21_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(2));

-- Location: LCCOMB_X13_Y35_N16
\debounce_reset|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~6_combout\ = (\debounce_reset|s_debounceCnt\(3) & (\debounce_reset|Add0~5\ & VCC)) # (!\debounce_reset|s_debounceCnt\(3) & (!\debounce_reset|Add0~5\))
-- \debounce_reset|Add0~7\ = CARRY((!\debounce_reset|s_debounceCnt\(3) & !\debounce_reset|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounce_reset|Add0~5\,
	combout => \debounce_reset|Add0~6_combout\,
	cout => \debounce_reset|Add0~7\);

-- Location: LCCOMB_X13_Y35_N8
\debounce_reset|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~22_combout\ = (\debounce_reset|Add0~6_combout\ & \debounce_reset|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|Add0~6_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~4_combout\,
	combout => \debounce_reset|s_debounceCnt~22_combout\);

-- Location: FF_X13_Y35_N9
\debounce_reset|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~22_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(3));

-- Location: LCCOMB_X13_Y35_N18
\debounce_reset|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~8_combout\ = (\debounce_reset|s_debounceCnt\(4) & ((GND) # (!\debounce_reset|Add0~7\))) # (!\debounce_reset|s_debounceCnt\(4) & (\debounce_reset|Add0~7\ $ (GND)))
-- \debounce_reset|Add0~9\ = CARRY((\debounce_reset|s_debounceCnt\(4)) # (!\debounce_reset|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounce_reset|Add0~7\,
	combout => \debounce_reset|Add0~8_combout\,
	cout => \debounce_reset|Add0~9\);

-- Location: LCCOMB_X13_Y35_N2
\debounce_reset|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~23_combout\ = (\debounce_reset|Add0~8_combout\ & \debounce_reset|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|Add0~8_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~4_combout\,
	combout => \debounce_reset|s_debounceCnt~23_combout\);

-- Location: FF_X13_Y35_N3
\debounce_reset|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~23_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(4));

-- Location: LCCOMB_X13_Y35_N20
\debounce_reset|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~10_combout\ = (\debounce_reset|s_debounceCnt\(5) & (\debounce_reset|Add0~9\ & VCC)) # (!\debounce_reset|s_debounceCnt\(5) & (!\debounce_reset|Add0~9\))
-- \debounce_reset|Add0~11\ = CARRY((!\debounce_reset|s_debounceCnt\(5) & !\debounce_reset|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounce_reset|Add0~9\,
	combout => \debounce_reset|Add0~10_combout\,
	cout => \debounce_reset|Add0~11\);

-- Location: LCCOMB_X12_Y34_N22
\debounce_reset|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~27_combout\ = (\debounce_reset|s_debounceCnt[15]~4_combout\ & \debounce_reset|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_debounceCnt[15]~4_combout\,
	datad => \debounce_reset|Add0~10_combout\,
	combout => \debounce_reset|s_debounceCnt~27_combout\);

-- Location: FF_X12_Y34_N23
\debounce_reset|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~27_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(5));

-- Location: LCCOMB_X13_Y35_N0
\debounce_reset|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~5_combout\ = (!\debounce_reset|s_debounceCnt\(2) & (!\debounce_reset|s_debounceCnt\(1) & (!\debounce_reset|s_debounceCnt\(3) & !\debounce_reset|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(2),
	datab => \debounce_reset|s_debounceCnt\(1),
	datac => \debounce_reset|s_debounceCnt\(3),
	datad => \debounce_reset|s_debounceCnt\(4),
	combout => \debounce_reset|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X14_Y34_N2
\debounce_reset|s_debounceCnt[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[15]~2_combout\ = (\debounce_reset|s_debounceCnt\(5)) # ((\debounce_reset|s_debounceCnt\(0)) # ((!\debounce_reset|s_pulsedOut~4_combout\) # (!\debounce_reset|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(5),
	datab => \debounce_reset|s_debounceCnt\(0),
	datac => \debounce_reset|s_pulsedOut~5_combout\,
	datad => \debounce_reset|s_pulsedOut~4_combout\,
	combout => \debounce_reset|s_debounceCnt[15]~2_combout\);

-- Location: LCCOMB_X14_Y34_N0
\debounce_reset|s_debounceCnt[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[15]~3_combout\ = (\debounce_reset|s_debounceCnt\(22)) # (((\debounce_reset|s_debounceCnt[15]~2_combout\) # (!\debounce_reset|s_previousIn~q\)) # (!\debounce_reset|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(22),
	datab => \debounce_reset|s_dirtyIn~q\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_debounceCnt[15]~2_combout\,
	combout => \debounce_reset|s_debounceCnt[15]~3_combout\);

-- Location: LCCOMB_X13_Y34_N14
\debounce_reset|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~36_combout\ = (\debounce_reset|s_debounceCnt\(18) & ((GND) # (!\debounce_reset|Add0~35\))) # (!\debounce_reset|s_debounceCnt\(18) & (\debounce_reset|Add0~35\ $ (GND)))
-- \debounce_reset|Add0~37\ = CARRY((\debounce_reset|s_debounceCnt\(18)) # (!\debounce_reset|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounce_reset|Add0~35\,
	combout => \debounce_reset|Add0~36_combout\,
	cout => \debounce_reset|Add0~37\);

-- Location: LCCOMB_X13_Y34_N16
\debounce_reset|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~38_combout\ = (\debounce_reset|s_debounceCnt\(19) & (\debounce_reset|Add0~37\ & VCC)) # (!\debounce_reset|s_debounceCnt\(19) & (!\debounce_reset|Add0~37\))
-- \debounce_reset|Add0~39\ = CARRY((!\debounce_reset|s_debounceCnt\(19) & !\debounce_reset|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce_reset|Add0~37\,
	combout => \debounce_reset|Add0~38_combout\,
	cout => \debounce_reset|Add0~39\);

-- Location: LCCOMB_X13_Y34_N30
\debounce_reset|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[19]~19_combout\ = (\debounce_reset|s_debounceCnt[15]~0_combout\ & (\debounce_reset|s_debounceCnt[15]~3_combout\ & ((\debounce_reset|Add0~38_combout\) # (!\debounce_reset|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datab => \debounce_reset|Add0~38_combout\,
	datac => \debounce_reset|s_debounceCnt[15]~0_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~3_combout\,
	combout => \debounce_reset|s_debounceCnt[19]~19_combout\);

-- Location: FF_X13_Y34_N31
\debounce_reset|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(19));

-- Location: LCCOMB_X13_Y34_N18
\debounce_reset|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~40_combout\ = (\debounce_reset|s_debounceCnt\(20) & ((GND) # (!\debounce_reset|Add0~39\))) # (!\debounce_reset|s_debounceCnt\(20) & (\debounce_reset|Add0~39\ $ (GND)))
-- \debounce_reset|Add0~41\ = CARRY((\debounce_reset|s_debounceCnt\(20)) # (!\debounce_reset|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce_reset|Add0~39\,
	combout => \debounce_reset|Add0~40_combout\,
	cout => \debounce_reset|Add0~41\);

-- Location: LCCOMB_X12_Y34_N30
\debounce_reset|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[20]~10_combout\ = (\debounce_reset|s_debounceCnt[15]~4_combout\ & (\debounce_reset|s_debounceCnt[15]~3_combout\ & \debounce_reset|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt[15]~4_combout\,
	datac => \debounce_reset|s_debounceCnt[15]~3_combout\,
	datad => \debounce_reset|Add0~40_combout\,
	combout => \debounce_reset|s_debounceCnt[20]~10_combout\);

-- Location: FF_X12_Y34_N31
\debounce_reset|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(20));

-- Location: LCCOMB_X13_Y34_N20
\debounce_reset|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~42_combout\ = (\debounce_reset|s_debounceCnt\(21) & (\debounce_reset|Add0~41\ & VCC)) # (!\debounce_reset|s_debounceCnt\(21) & (!\debounce_reset|Add0~41\))
-- \debounce_reset|Add0~43\ = CARRY((!\debounce_reset|s_debounceCnt\(21) & !\debounce_reset|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounce_reset|Add0~41\,
	combout => \debounce_reset|Add0~42_combout\,
	cout => \debounce_reset|Add0~43\);

-- Location: LCCOMB_X12_Y34_N16
\debounce_reset|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[21]~11_combout\ = (\debounce_reset|s_debounceCnt[15]~3_combout\ & (\debounce_reset|Add0~42_combout\ & \debounce_reset|s_debounceCnt[15]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt[15]~3_combout\,
	datac => \debounce_reset|Add0~42_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~4_combout\,
	combout => \debounce_reset|s_debounceCnt[21]~11_combout\);

-- Location: FF_X12_Y34_N17
\debounce_reset|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(21));

-- Location: LCCOMB_X13_Y35_N22
\debounce_reset|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~12_combout\ = (\debounce_reset|s_debounceCnt\(6) & ((GND) # (!\debounce_reset|Add0~11\))) # (!\debounce_reset|s_debounceCnt\(6) & (\debounce_reset|Add0~11\ $ (GND)))
-- \debounce_reset|Add0~13\ = CARRY((\debounce_reset|s_debounceCnt\(6)) # (!\debounce_reset|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounce_reset|Add0~11\,
	combout => \debounce_reset|Add0~12_combout\,
	cout => \debounce_reset|Add0~13\);

-- Location: LCCOMB_X14_Y34_N24
\debounce_reset|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~1_combout\ = (\debounce_reset|s_debounceCnt[15]~0_combout\ & ((\debounce_reset|Add0~12_combout\) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~12_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~1_combout\);

-- Location: FF_X14_Y34_N25
\debounce_reset|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~1_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(6));

-- Location: LCCOMB_X13_Y35_N24
\debounce_reset|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~14_combout\ = (\debounce_reset|s_debounceCnt\(7) & (\debounce_reset|Add0~13\ & VCC)) # (!\debounce_reset|s_debounceCnt\(7) & (!\debounce_reset|Add0~13\))
-- \debounce_reset|Add0~15\ = CARRY((!\debounce_reset|s_debounceCnt\(7) & !\debounce_reset|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce_reset|Add0~13\,
	combout => \debounce_reset|Add0~14_combout\,
	cout => \debounce_reset|Add0~15\);

-- Location: LCCOMB_X14_Y34_N20
\debounce_reset|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~12_combout\ = (\debounce_reset|Add0~14_combout\ & \debounce_reset|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|Add0~14_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~4_combout\,
	combout => \debounce_reset|s_debounceCnt~12_combout\);

-- Location: FF_X14_Y34_N21
\debounce_reset|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~12_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(7));

-- Location: LCCOMB_X13_Y35_N26
\debounce_reset|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~16_combout\ = (\debounce_reset|s_debounceCnt\(8) & ((GND) # (!\debounce_reset|Add0~15\))) # (!\debounce_reset|s_debounceCnt\(8) & (\debounce_reset|Add0~15\ $ (GND)))
-- \debounce_reset|Add0~17\ = CARRY((\debounce_reset|s_debounceCnt\(8)) # (!\debounce_reset|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounce_reset|Add0~15\,
	combout => \debounce_reset|Add0~16_combout\,
	cout => \debounce_reset|Add0~17\);

-- Location: LCCOMB_X14_Y34_N10
\debounce_reset|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~13_combout\ = (\debounce_reset|s_debounceCnt[15]~0_combout\ & ((\debounce_reset|Add0~16_combout\) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|Add0~16_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_debounceCnt[15]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~13_combout\);

-- Location: FF_X14_Y34_N11
\debounce_reset|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~13_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(8));

-- Location: LCCOMB_X13_Y35_N28
\debounce_reset|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~18_combout\ = (\debounce_reset|s_debounceCnt\(9) & (\debounce_reset|Add0~17\ & VCC)) # (!\debounce_reset|s_debounceCnt\(9) & (!\debounce_reset|Add0~17\))
-- \debounce_reset|Add0~19\ = CARRY((!\debounce_reset|s_debounceCnt\(9) & !\debounce_reset|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounce_reset|Add0~17\,
	combout => \debounce_reset|Add0~18_combout\,
	cout => \debounce_reset|Add0~19\);

-- Location: LCCOMB_X14_Y34_N8
\debounce_reset|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~14_combout\ = (\debounce_reset|s_debounceCnt[15]~0_combout\ & ((\debounce_reset|Add0~18_combout\) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~18_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~14_combout\);

-- Location: FF_X14_Y34_N9
\debounce_reset|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~14_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(9));

-- Location: LCCOMB_X13_Y35_N30
\debounce_reset|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~20_combout\ = (\debounce_reset|s_debounceCnt\(10) & ((GND) # (!\debounce_reset|Add0~19\))) # (!\debounce_reset|s_debounceCnt\(10) & (\debounce_reset|Add0~19\ $ (GND)))
-- \debounce_reset|Add0~21\ = CARRY((\debounce_reset|s_debounceCnt\(10)) # (!\debounce_reset|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounce_reset|Add0~19\,
	combout => \debounce_reset|Add0~20_combout\,
	cout => \debounce_reset|Add0~21\);

-- Location: LCCOMB_X14_Y34_N30
\debounce_reset|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~15_combout\ = (\debounce_reset|Add0~20_combout\ & \debounce_reset|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|Add0~20_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~4_combout\,
	combout => \debounce_reset|s_debounceCnt~15_combout\);

-- Location: FF_X14_Y34_N31
\debounce_reset|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~15_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(10));

-- Location: LCCOMB_X13_Y34_N0
\debounce_reset|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~22_combout\ = (\debounce_reset|s_debounceCnt\(11) & (\debounce_reset|Add0~21\ & VCC)) # (!\debounce_reset|s_debounceCnt\(11) & (!\debounce_reset|Add0~21\))
-- \debounce_reset|Add0~23\ = CARRY((!\debounce_reset|s_debounceCnt\(11) & !\debounce_reset|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce_reset|Add0~21\,
	combout => \debounce_reset|Add0~22_combout\,
	cout => \debounce_reset|Add0~23\);

-- Location: LCCOMB_X14_Y34_N14
\debounce_reset|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~16_combout\ = (\debounce_reset|s_debounceCnt[15]~0_combout\ & ((\debounce_reset|Add0~22_combout\) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~22_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~16_combout\);

-- Location: FF_X14_Y34_N15
\debounce_reset|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~16_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(11));

-- Location: LCCOMB_X13_Y34_N2
\debounce_reset|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~24_combout\ = (\debounce_reset|s_debounceCnt\(12) & ((GND) # (!\debounce_reset|Add0~23\))) # (!\debounce_reset|s_debounceCnt\(12) & (\debounce_reset|Add0~23\ $ (GND)))
-- \debounce_reset|Add0~25\ = CARRY((\debounce_reset|s_debounceCnt\(12)) # (!\debounce_reset|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounce_reset|Add0~23\,
	combout => \debounce_reset|Add0~24_combout\,
	cout => \debounce_reset|Add0~25\);

-- Location: LCCOMB_X12_Y34_N12
\debounce_reset|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~8_combout\ = (\debounce_reset|s_debounceCnt[15]~4_combout\ & \debounce_reset|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_debounceCnt[15]~4_combout\,
	datad => \debounce_reset|Add0~24_combout\,
	combout => \debounce_reset|s_debounceCnt~8_combout\);

-- Location: FF_X12_Y34_N13
\debounce_reset|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~8_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(12));

-- Location: LCCOMB_X13_Y34_N4
\debounce_reset|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~26_combout\ = (\debounce_reset|s_debounceCnt\(13) & (\debounce_reset|Add0~25\ & VCC)) # (!\debounce_reset|s_debounceCnt\(13) & (!\debounce_reset|Add0~25\))
-- \debounce_reset|Add0~27\ = CARRY((!\debounce_reset|s_debounceCnt\(13) & !\debounce_reset|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounce_reset|Add0~25\,
	combout => \debounce_reset|Add0~26_combout\,
	cout => \debounce_reset|Add0~27\);

-- Location: LCCOMB_X14_Y34_N26
\debounce_reset|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~9_combout\ = (\debounce_reset|Add0~26_combout\ & \debounce_reset|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|Add0~26_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~4_combout\,
	combout => \debounce_reset|s_debounceCnt~9_combout\);

-- Location: FF_X14_Y34_N27
\debounce_reset|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~9_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(13));

-- Location: LCCOMB_X13_Y34_N6
\debounce_reset|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~28_combout\ = (\debounce_reset|s_debounceCnt\(14) & ((GND) # (!\debounce_reset|Add0~27\))) # (!\debounce_reset|s_debounceCnt\(14) & (\debounce_reset|Add0~27\ $ (GND)))
-- \debounce_reset|Add0~29\ = CARRY((\debounce_reset|s_debounceCnt\(14)) # (!\debounce_reset|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce_reset|Add0~27\,
	combout => \debounce_reset|Add0~28_combout\,
	cout => \debounce_reset|Add0~29\);

-- Location: LCCOMB_X14_Y34_N16
\debounce_reset|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~17_combout\ = (\debounce_reset|s_debounceCnt[15]~0_combout\ & ((\debounce_reset|Add0~28_combout\) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~28_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~17_combout\);

-- Location: FF_X14_Y34_N17
\debounce_reset|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~17_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(14));

-- Location: LCCOMB_X13_Y34_N8
\debounce_reset|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~30_combout\ = (\debounce_reset|s_debounceCnt\(15) & (\debounce_reset|Add0~29\ & VCC)) # (!\debounce_reset|s_debounceCnt\(15) & (!\debounce_reset|Add0~29\))
-- \debounce_reset|Add0~31\ = CARRY((!\debounce_reset|s_debounceCnt\(15) & !\debounce_reset|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounce_reset|Add0~29\,
	combout => \debounce_reset|Add0~30_combout\,
	cout => \debounce_reset|Add0~31\);

-- Location: LCCOMB_X14_Y34_N6
\debounce_reset|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~5_combout\ = (\debounce_reset|Add0~30_combout\ & \debounce_reset|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|Add0~30_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~4_combout\,
	combout => \debounce_reset|s_debounceCnt~5_combout\);

-- Location: FF_X14_Y34_N7
\debounce_reset|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~5_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(15));

-- Location: LCCOMB_X13_Y34_N10
\debounce_reset|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~32_combout\ = (\debounce_reset|s_debounceCnt\(16) & ((GND) # (!\debounce_reset|Add0~31\))) # (!\debounce_reset|s_debounceCnt\(16) & (\debounce_reset|Add0~31\ $ (GND)))
-- \debounce_reset|Add0~33\ = CARRY((\debounce_reset|s_debounceCnt\(16)) # (!\debounce_reset|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounce_reset|Add0~31\,
	combout => \debounce_reset|Add0~32_combout\,
	cout => \debounce_reset|Add0~33\);

-- Location: LCCOMB_X13_Y34_N28
\debounce_reset|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~6_combout\ = (\debounce_reset|Add0~32_combout\ & \debounce_reset|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|Add0~32_combout\,
	datad => \debounce_reset|s_debounceCnt[15]~4_combout\,
	combout => \debounce_reset|s_debounceCnt~6_combout\);

-- Location: FF_X13_Y34_N29
\debounce_reset|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~6_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(16));

-- Location: LCCOMB_X12_Y34_N18
\debounce_reset|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~4_combout\ = (\debounce_reset|s_debounceCnt\(12)) # ((\debounce_reset|s_debounceCnt\(13)) # ((\debounce_reset|s_debounceCnt\(10) & \debounce_reset|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(12),
	datab => \debounce_reset|s_debounceCnt\(13),
	datac => \debounce_reset|s_debounceCnt\(10),
	datad => \debounce_reset|s_debounceCnt\(11),
	combout => \debounce_reset|LessThan0~4_combout\);

-- Location: LCCOMB_X12_Y34_N20
\debounce_reset|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~5_combout\ = (\debounce_reset|s_debounceCnt\(16)) # ((\debounce_reset|s_debounceCnt\(15)) # ((\debounce_reset|s_debounceCnt\(14) & \debounce_reset|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(14),
	datab => \debounce_reset|s_debounceCnt\(16),
	datac => \debounce_reset|s_debounceCnt\(15),
	datad => \debounce_reset|LessThan0~4_combout\,
	combout => \debounce_reset|LessThan0~5_combout\);

-- Location: LCCOMB_X12_Y34_N26
\debounce_reset|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~6_combout\ = (\debounce_reset|s_debounceCnt\(19) & (\debounce_reset|s_debounceCnt\(18) & ((\debounce_reset|s_debounceCnt\(17)) # (\debounce_reset|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(17),
	datab => \debounce_reset|s_debounceCnt\(19),
	datac => \debounce_reset|s_debounceCnt\(18),
	datad => \debounce_reset|LessThan0~5_combout\,
	combout => \debounce_reset|LessThan0~6_combout\);

-- Location: LCCOMB_X11_Y34_N6
\debounce_reset|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~1_combout\ = (\debounce_reset|s_debounceCnt\(9) & \debounce_reset|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_debounceCnt\(9),
	datad => \debounce_reset|s_debounceCnt\(11),
	combout => \debounce_reset|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y34_N4
\debounce_reset|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~0_combout\ = (\debounce_reset|s_debounceCnt\(18) & (\debounce_reset|s_debounceCnt\(19) & (\debounce_reset|s_debounceCnt\(14) & \debounce_reset|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(18),
	datab => \debounce_reset|s_debounceCnt\(19),
	datac => \debounce_reset|s_debounceCnt\(14),
	datad => \debounce_reset|s_debounceCnt\(8),
	combout => \debounce_reset|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y34_N10
\debounce_reset|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~2_combout\ = (\debounce_reset|s_debounceCnt\(6) & ((\debounce_reset|s_debounceCnt\(5)) # ((\debounce_reset|s_debounceCnt\(0)) # (!\debounce_reset|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(5),
	datab => \debounce_reset|s_debounceCnt\(0),
	datac => \debounce_reset|s_pulsedOut~5_combout\,
	datad => \debounce_reset|s_debounceCnt\(6),
	combout => \debounce_reset|LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y34_N0
\debounce_reset|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~3_combout\ = (\debounce_reset|LessThan0~1_combout\ & (\debounce_reset|LessThan0~0_combout\ & ((\debounce_reset|s_debounceCnt\(7)) # (\debounce_reset|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(7),
	datab => \debounce_reset|LessThan0~1_combout\,
	datac => \debounce_reset|LessThan0~0_combout\,
	datad => \debounce_reset|LessThan0~2_combout\,
	combout => \debounce_reset|LessThan0~3_combout\);

-- Location: LCCOMB_X12_Y34_N28
\debounce_reset|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~7_combout\ = (\debounce_reset|s_debounceCnt\(20)) # ((\debounce_reset|s_debounceCnt\(21)) # ((\debounce_reset|LessThan0~6_combout\) # (\debounce_reset|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(20),
	datab => \debounce_reset|s_debounceCnt\(21),
	datac => \debounce_reset|LessThan0~6_combout\,
	datad => \debounce_reset|LessThan0~3_combout\,
	combout => \debounce_reset|LessThan0~7_combout\);

-- Location: LCCOMB_X12_Y34_N6
\debounce_reset|s_debounceCnt[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[15]~0_combout\ = (\debounce_reset|s_dirtyIn~q\ & ((!\debounce_reset|LessThan0~7_combout\) # (!\debounce_reset|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(22),
	datac => \debounce_reset|s_dirtyIn~q\,
	datad => \debounce_reset|LessThan0~7_combout\,
	combout => \debounce_reset|s_debounceCnt[15]~0_combout\);

-- Location: LCCOMB_X12_Y34_N14
\debounce_reset|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[22]~25_combout\ = (\debounce_reset|s_dirtyIn~q\ & ((\debounce_reset|s_debounceCnt\(22) & ((!\debounce_reset|LessThan0~7_combout\))) # (!\debounce_reset|s_debounceCnt\(22) & (\debounce_reset|s_debounceCnt[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt[15]~2_combout\,
	datab => \debounce_reset|s_debounceCnt\(22),
	datac => \debounce_reset|s_dirtyIn~q\,
	datad => \debounce_reset|LessThan0~7_combout\,
	combout => \debounce_reset|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X13_Y34_N22
\debounce_reset|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~44_combout\ = \debounce_reset|s_debounceCnt\(22) $ (\debounce_reset|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(22),
	cin => \debounce_reset|Add0~43\,
	combout => \debounce_reset|Add0~44_combout\);

-- Location: LCCOMB_X12_Y34_N24
\debounce_reset|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[22]~26_combout\ = (\debounce_reset|s_previousIn~q\ & (((\debounce_reset|s_debounceCnt[22]~25_combout\ & \debounce_reset|Add0~44_combout\)))) # (!\debounce_reset|s_previousIn~q\ & 
-- (\debounce_reset|s_debounceCnt[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt[15]~0_combout\,
	datab => \debounce_reset|s_debounceCnt[22]~25_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|Add0~44_combout\,
	combout => \debounce_reset|s_debounceCnt[22]~26_combout\);

-- Location: FF_X12_Y34_N25
\debounce_reset|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(22));

-- Location: LCCOMB_X12_Y34_N8
\debounce_reset|s_debounceCnt[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[15]~4_combout\ = (\debounce_reset|s_dirtyIn~q\ & (\debounce_reset|s_previousIn~q\ & ((!\debounce_reset|LessThan0~7_combout\) # (!\debounce_reset|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_dirtyIn~q\,
	datab => \debounce_reset|s_debounceCnt\(22),
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|LessThan0~7_combout\,
	combout => \debounce_reset|s_debounceCnt[15]~4_combout\);

-- Location: LCCOMB_X13_Y34_N12
\debounce_reset|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~34_combout\ = (\debounce_reset|s_debounceCnt\(17) & (\debounce_reset|Add0~33\ & VCC)) # (!\debounce_reset|s_debounceCnt\(17) & (!\debounce_reset|Add0~33\))
-- \debounce_reset|Add0~35\ = CARRY((!\debounce_reset|s_debounceCnt\(17) & !\debounce_reset|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounce_reset|Add0~33\,
	combout => \debounce_reset|Add0~34_combout\,
	cout => \debounce_reset|Add0~35\);

-- Location: LCCOMB_X13_Y34_N26
\debounce_reset|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~7_combout\ = (\debounce_reset|s_debounceCnt[15]~4_combout\ & \debounce_reset|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt[15]~4_combout\,
	datad => \debounce_reset|Add0~34_combout\,
	combout => \debounce_reset|s_debounceCnt~7_combout\);

-- Location: FF_X13_Y34_N27
\debounce_reset|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~7_combout\,
	ena => \debounce_reset|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(17));

-- Location: LCCOMB_X14_Y34_N22
\debounce_reset|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[18]~18_combout\ = (\debounce_reset|s_debounceCnt[15]~3_combout\ & (\debounce_reset|s_debounceCnt[15]~0_combout\ & ((\debounce_reset|Add0~36_combout\) # (!\debounce_reset|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|Add0~36_combout\,
	datab => \debounce_reset|s_debounceCnt[15]~3_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_debounceCnt[15]~0_combout\,
	combout => \debounce_reset|s_debounceCnt[18]~18_combout\);

-- Location: FF_X14_Y34_N23
\debounce_reset|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(18));

-- Location: LCCOMB_X14_Y34_N12
\debounce_reset|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~3_combout\ = (!\debounce_reset|s_debounceCnt\(18) & (!\debounce_reset|s_debounceCnt\(14) & (!\debounce_reset|s_debounceCnt\(11) & !\debounce_reset|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(18),
	datab => \debounce_reset|s_debounceCnt\(14),
	datac => \debounce_reset|s_debounceCnt\(11),
	datad => \debounce_reset|s_debounceCnt\(19),
	combout => \debounce_reset|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X14_Y34_N28
\debounce_reset|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~2_combout\ = (!\debounce_reset|s_debounceCnt\(10) & (!\debounce_reset|s_debounceCnt\(7) & (!\debounce_reset|s_debounceCnt\(9) & !\debounce_reset|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(10),
	datab => \debounce_reset|s_debounceCnt\(7),
	datac => \debounce_reset|s_debounceCnt\(9),
	datad => \debounce_reset|s_debounceCnt\(8),
	combout => \debounce_reset|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X14_Y34_N4
\debounce_reset|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~0_combout\ = (!\debounce_reset|s_debounceCnt\(15) & (!\debounce_reset|s_debounceCnt\(6) & (!\debounce_reset|s_debounceCnt\(17) & !\debounce_reset|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(15),
	datab => \debounce_reset|s_debounceCnt\(6),
	datac => \debounce_reset|s_debounceCnt\(17),
	datad => \debounce_reset|s_debounceCnt\(16),
	combout => \debounce_reset|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X13_Y34_N24
\debounce_reset|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~1_combout\ = (!\debounce_reset|s_debounceCnt\(12) & (!\debounce_reset|s_debounceCnt\(20) & (!\debounce_reset|s_debounceCnt\(21) & !\debounce_reset|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(12),
	datab => \debounce_reset|s_debounceCnt\(20),
	datac => \debounce_reset|s_debounceCnt\(21),
	datad => \debounce_reset|s_debounceCnt\(13),
	combout => \debounce_reset|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X14_Y34_N18
\debounce_reset|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~4_combout\ = (\debounce_reset|s_pulsedOut~3_combout\ & (\debounce_reset|s_pulsedOut~2_combout\ & (\debounce_reset|s_pulsedOut~0_combout\ & \debounce_reset|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_pulsedOut~3_combout\,
	datab => \debounce_reset|s_pulsedOut~2_combout\,
	datac => \debounce_reset|s_pulsedOut~0_combout\,
	datad => \debounce_reset|s_pulsedOut~1_combout\,
	combout => \debounce_reset|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X11_Y34_N28
\debounce_reset|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~6_combout\ = (\debounce_reset|s_debounceCnt\(0) & (!\debounce_reset|s_debounceCnt\(22) & (\debounce_reset|s_previousIn~q\ & \debounce_reset|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(0),
	datab => \debounce_reset|s_debounceCnt\(22),
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_dirtyIn~q\,
	combout => \debounce_reset|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X11_Y34_N0
\debounce_reset|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~7_combout\ = (\debounce_reset|s_pulsedOut~4_combout\ & (\debounce_reset|s_pulsedOut~6_combout\ & (\debounce_reset|s_pulsedOut~5_combout\ & !\debounce_reset|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_pulsedOut~4_combout\,
	datab => \debounce_reset|s_pulsedOut~6_combout\,
	datac => \debounce_reset|s_pulsedOut~5_combout\,
	datad => \debounce_reset|s_debounceCnt\(5),
	combout => \debounce_reset|s_pulsedOut~7_combout\);

-- Location: FF_X11_Y34_N1
\debounce_reset|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_pulsedOut~q\);

-- Location: LCCOMB_X6_Y27_N10
\debounce_v|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~0_combout\ = \debounce_v|s_debounceCnt\(0) $ (VCC)
-- \debounce_v|Add0~1\ = CARRY(\debounce_v|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce_v|Add0~0_combout\,
	cout => \debounce_v|Add0~1\);

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

-- Location: FF_X8_Y26_N29
\debounce_v|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_dirtyIn~q\);

-- Location: FF_X5_Y26_N15
\debounce_v|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce_v|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_previousIn~q\);

-- Location: LCCOMB_X6_Y27_N12
\debounce_v|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~2_combout\ = (\debounce_v|s_debounceCnt\(1) & (\debounce_v|Add0~1\ & VCC)) # (!\debounce_v|s_debounceCnt\(1) & (!\debounce_v|Add0~1\))
-- \debounce_v|Add0~3\ = CARRY((!\debounce_v|s_debounceCnt\(1) & !\debounce_v|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounce_v|Add0~1\,
	combout => \debounce_v|Add0~2_combout\,
	cout => \debounce_v|Add0~3\);

-- Location: LCCOMB_X6_Y27_N2
\debounce_v|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~20_combout\ = (\debounce_v|Add0~2_combout\ & \debounce_v|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|Add0~2_combout\,
	datad => \debounce_v|s_debounceCnt[15]~4_combout\,
	combout => \debounce_v|s_debounceCnt~20_combout\);

-- Location: FF_X6_Y27_N3
\debounce_v|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~20_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(1));

-- Location: LCCOMB_X6_Y27_N14
\debounce_v|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~4_combout\ = (\debounce_v|s_debounceCnt\(2) & ((GND) # (!\debounce_v|Add0~3\))) # (!\debounce_v|s_debounceCnt\(2) & (\debounce_v|Add0~3\ $ (GND)))
-- \debounce_v|Add0~5\ = CARRY((\debounce_v|s_debounceCnt\(2)) # (!\debounce_v|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounce_v|Add0~3\,
	combout => \debounce_v|Add0~4_combout\,
	cout => \debounce_v|Add0~5\);

-- Location: LCCOMB_X6_Y27_N4
\debounce_v|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~21_combout\ = (\debounce_v|Add0~4_combout\ & \debounce_v|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_v|Add0~4_combout\,
	datad => \debounce_v|s_debounceCnt[15]~4_combout\,
	combout => \debounce_v|s_debounceCnt~21_combout\);

-- Location: FF_X6_Y27_N5
\debounce_v|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~21_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(2));

-- Location: LCCOMB_X6_Y27_N16
\debounce_v|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~6_combout\ = (\debounce_v|s_debounceCnt\(3) & (\debounce_v|Add0~5\ & VCC)) # (!\debounce_v|s_debounceCnt\(3) & (!\debounce_v|Add0~5\))
-- \debounce_v|Add0~7\ = CARRY((!\debounce_v|s_debounceCnt\(3) & !\debounce_v|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounce_v|Add0~5\,
	combout => \debounce_v|Add0~6_combout\,
	cout => \debounce_v|Add0~7\);

-- Location: LCCOMB_X6_Y27_N6
\debounce_v|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~22_combout\ = (\debounce_v|Add0~6_combout\ & \debounce_v|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|Add0~6_combout\,
	datad => \debounce_v|s_debounceCnt[15]~4_combout\,
	combout => \debounce_v|s_debounceCnt~22_combout\);

-- Location: FF_X6_Y27_N7
\debounce_v|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~22_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(3));

-- Location: LCCOMB_X6_Y27_N18
\debounce_v|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~8_combout\ = (\debounce_v|s_debounceCnt\(4) & ((GND) # (!\debounce_v|Add0~7\))) # (!\debounce_v|s_debounceCnt\(4) & (\debounce_v|Add0~7\ $ (GND)))
-- \debounce_v|Add0~9\ = CARRY((\debounce_v|s_debounceCnt\(4)) # (!\debounce_v|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounce_v|Add0~7\,
	combout => \debounce_v|Add0~8_combout\,
	cout => \debounce_v|Add0~9\);

-- Location: LCCOMB_X5_Y27_N28
\debounce_v|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~23_combout\ = (\debounce_v|Add0~8_combout\ & \debounce_v|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|Add0~8_combout\,
	datad => \debounce_v|s_debounceCnt[15]~4_combout\,
	combout => \debounce_v|s_debounceCnt~23_combout\);

-- Location: FF_X5_Y27_N29
\debounce_v|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~23_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(4));

-- Location: LCCOMB_X6_Y27_N20
\debounce_v|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~10_combout\ = (\debounce_v|s_debounceCnt\(5) & (\debounce_v|Add0~9\ & VCC)) # (!\debounce_v|s_debounceCnt\(5) & (!\debounce_v|Add0~9\))
-- \debounce_v|Add0~11\ = CARRY((!\debounce_v|s_debounceCnt\(5) & !\debounce_v|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounce_v|Add0~9\,
	combout => \debounce_v|Add0~10_combout\,
	cout => \debounce_v|Add0~11\);

-- Location: LCCOMB_X5_Y26_N8
\debounce_v|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~27_combout\ = (\debounce_v|s_debounceCnt[15]~4_combout\ & \debounce_v|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_v|s_debounceCnt[15]~4_combout\,
	datad => \debounce_v|Add0~10_combout\,
	combout => \debounce_v|s_debounceCnt~27_combout\);

-- Location: FF_X5_Y26_N9
\debounce_v|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~27_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(5));

-- Location: LCCOMB_X6_Y27_N0
\debounce_v|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_pulsedOut~5_combout\ = (!\debounce_v|s_debounceCnt\(3) & (!\debounce_v|s_debounceCnt\(1) & (!\debounce_v|s_debounceCnt\(2) & !\debounce_v|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(3),
	datab => \debounce_v|s_debounceCnt\(1),
	datac => \debounce_v|s_debounceCnt\(2),
	datad => \debounce_v|s_debounceCnt\(4),
	combout => \debounce_v|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X6_Y27_N22
\debounce_v|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~12_combout\ = (\debounce_v|s_debounceCnt\(6) & ((GND) # (!\debounce_v|Add0~11\))) # (!\debounce_v|s_debounceCnt\(6) & (\debounce_v|Add0~11\ $ (GND)))
-- \debounce_v|Add0~13\ = CARRY((\debounce_v|s_debounceCnt\(6)) # (!\debounce_v|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounce_v|Add0~11\,
	combout => \debounce_v|Add0~12_combout\,
	cout => \debounce_v|Add0~13\);

-- Location: LCCOMB_X5_Y26_N12
\debounce_v|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~1_combout\ = (\debounce_v|s_debounceCnt[15]~0_combout\ & ((\debounce_v|Add0~12_combout\) # (!\debounce_v|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_previousIn~q\,
	datac => \debounce_v|Add0~12_combout\,
	datad => \debounce_v|s_debounceCnt[15]~0_combout\,
	combout => \debounce_v|s_debounceCnt~1_combout\);

-- Location: FF_X5_Y26_N13
\debounce_v|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~1_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(6));

-- Location: LCCOMB_X6_Y27_N24
\debounce_v|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~14_combout\ = (\debounce_v|s_debounceCnt\(7) & (\debounce_v|Add0~13\ & VCC)) # (!\debounce_v|s_debounceCnt\(7) & (!\debounce_v|Add0~13\))
-- \debounce_v|Add0~15\ = CARRY((!\debounce_v|s_debounceCnt\(7) & !\debounce_v|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce_v|Add0~13\,
	combout => \debounce_v|Add0~14_combout\,
	cout => \debounce_v|Add0~15\);

-- Location: LCCOMB_X6_Y27_N8
\debounce_v|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~12_combout\ = (\debounce_v|Add0~14_combout\ & \debounce_v|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|Add0~14_combout\,
	datad => \debounce_v|s_debounceCnt[15]~4_combout\,
	combout => \debounce_v|s_debounceCnt~12_combout\);

-- Location: FF_X6_Y27_N9
\debounce_v|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~12_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(7));

-- Location: LCCOMB_X6_Y27_N26
\debounce_v|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~16_combout\ = (\debounce_v|s_debounceCnt\(8) & ((GND) # (!\debounce_v|Add0~15\))) # (!\debounce_v|s_debounceCnt\(8) & (\debounce_v|Add0~15\ $ (GND)))
-- \debounce_v|Add0~17\ = CARRY((\debounce_v|s_debounceCnt\(8)) # (!\debounce_v|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounce_v|Add0~15\,
	combout => \debounce_v|Add0~16_combout\,
	cout => \debounce_v|Add0~17\);

-- Location: LCCOMB_X5_Y26_N30
\debounce_v|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~13_combout\ = (\debounce_v|s_debounceCnt[15]~0_combout\ & ((\debounce_v|Add0~16_combout\) # (!\debounce_v|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_previousIn~q\,
	datac => \debounce_v|Add0~16_combout\,
	datad => \debounce_v|s_debounceCnt[15]~0_combout\,
	combout => \debounce_v|s_debounceCnt~13_combout\);

-- Location: FF_X5_Y26_N31
\debounce_v|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~13_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(8));

-- Location: LCCOMB_X6_Y27_N28
\debounce_v|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~18_combout\ = (\debounce_v|s_debounceCnt\(9) & (\debounce_v|Add0~17\ & VCC)) # (!\debounce_v|s_debounceCnt\(9) & (!\debounce_v|Add0~17\))
-- \debounce_v|Add0~19\ = CARRY((!\debounce_v|s_debounceCnt\(9) & !\debounce_v|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounce_v|Add0~17\,
	combout => \debounce_v|Add0~18_combout\,
	cout => \debounce_v|Add0~19\);

-- Location: LCCOMB_X5_Y26_N0
\debounce_v|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~14_combout\ = (\debounce_v|s_debounceCnt[15]~0_combout\ & ((\debounce_v|Add0~18_combout\) # (!\debounce_v|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_previousIn~q\,
	datac => \debounce_v|Add0~18_combout\,
	datad => \debounce_v|s_debounceCnt[15]~0_combout\,
	combout => \debounce_v|s_debounceCnt~14_combout\);

-- Location: FF_X5_Y26_N1
\debounce_v|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~14_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(9));

-- Location: LCCOMB_X6_Y27_N30
\debounce_v|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~20_combout\ = (\debounce_v|s_debounceCnt\(10) & ((GND) # (!\debounce_v|Add0~19\))) # (!\debounce_v|s_debounceCnt\(10) & (\debounce_v|Add0~19\ $ (GND)))
-- \debounce_v|Add0~21\ = CARRY((\debounce_v|s_debounceCnt\(10)) # (!\debounce_v|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounce_v|Add0~19\,
	combout => \debounce_v|Add0~20_combout\,
	cout => \debounce_v|Add0~21\);

-- Location: LCCOMB_X5_Y26_N2
\debounce_v|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~15_combout\ = (\debounce_v|Add0~20_combout\ & \debounce_v|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|Add0~20_combout\,
	datac => \debounce_v|s_debounceCnt[15]~4_combout\,
	combout => \debounce_v|s_debounceCnt~15_combout\);

-- Location: FF_X5_Y26_N3
\debounce_v|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~15_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(10));

-- Location: LCCOMB_X6_Y26_N0
\debounce_v|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~22_combout\ = (\debounce_v|s_debounceCnt\(11) & (\debounce_v|Add0~21\ & VCC)) # (!\debounce_v|s_debounceCnt\(11) & (!\debounce_v|Add0~21\))
-- \debounce_v|Add0~23\ = CARRY((!\debounce_v|s_debounceCnt\(11) & !\debounce_v|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce_v|Add0~21\,
	combout => \debounce_v|Add0~22_combout\,
	cout => \debounce_v|Add0~23\);

-- Location: LCCOMB_X5_Y26_N22
\debounce_v|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~16_combout\ = (\debounce_v|s_debounceCnt[15]~0_combout\ & ((\debounce_v|Add0~22_combout\) # (!\debounce_v|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_previousIn~q\,
	datac => \debounce_v|Add0~22_combout\,
	datad => \debounce_v|s_debounceCnt[15]~0_combout\,
	combout => \debounce_v|s_debounceCnt~16_combout\);

-- Location: FF_X5_Y26_N23
\debounce_v|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~16_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(11));

-- Location: LCCOMB_X6_Y26_N2
\debounce_v|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~24_combout\ = (\debounce_v|s_debounceCnt\(12) & ((GND) # (!\debounce_v|Add0~23\))) # (!\debounce_v|s_debounceCnt\(12) & (\debounce_v|Add0~23\ $ (GND)))
-- \debounce_v|Add0~25\ = CARRY((\debounce_v|s_debounceCnt\(12)) # (!\debounce_v|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounce_v|Add0~23\,
	combout => \debounce_v|Add0~24_combout\,
	cout => \debounce_v|Add0~25\);

-- Location: LCCOMB_X5_Y26_N24
\debounce_v|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~8_combout\ = (\debounce_v|s_debounceCnt[15]~4_combout\ & \debounce_v|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_v|s_debounceCnt[15]~4_combout\,
	datad => \debounce_v|Add0~24_combout\,
	combout => \debounce_v|s_debounceCnt~8_combout\);

-- Location: FF_X5_Y26_N25
\debounce_v|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~8_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(12));

-- Location: LCCOMB_X6_Y26_N4
\debounce_v|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~26_combout\ = (\debounce_v|s_debounceCnt\(13) & (\debounce_v|Add0~25\ & VCC)) # (!\debounce_v|s_debounceCnt\(13) & (!\debounce_v|Add0~25\))
-- \debounce_v|Add0~27\ = CARRY((!\debounce_v|s_debounceCnt\(13) & !\debounce_v|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounce_v|Add0~25\,
	combout => \debounce_v|Add0~26_combout\,
	cout => \debounce_v|Add0~27\);

-- Location: LCCOMB_X5_Y26_N6
\debounce_v|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~9_combout\ = (\debounce_v|s_debounceCnt[15]~4_combout\ & \debounce_v|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_v|s_debounceCnt[15]~4_combout\,
	datad => \debounce_v|Add0~26_combout\,
	combout => \debounce_v|s_debounceCnt~9_combout\);

-- Location: FF_X5_Y26_N7
\debounce_v|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~9_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(13));

-- Location: LCCOMB_X6_Y26_N6
\debounce_v|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~28_combout\ = (\debounce_v|s_debounceCnt\(14) & ((GND) # (!\debounce_v|Add0~27\))) # (!\debounce_v|s_debounceCnt\(14) & (\debounce_v|Add0~27\ $ (GND)))
-- \debounce_v|Add0~29\ = CARRY((\debounce_v|s_debounceCnt\(14)) # (!\debounce_v|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce_v|Add0~27\,
	combout => \debounce_v|Add0~28_combout\,
	cout => \debounce_v|Add0~29\);

-- Location: LCCOMB_X5_Y26_N16
\debounce_v|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~17_combout\ = (\debounce_v|s_debounceCnt[15]~0_combout\ & ((\debounce_v|Add0~28_combout\) # (!\debounce_v|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_previousIn~q\,
	datac => \debounce_v|s_debounceCnt[15]~0_combout\,
	datad => \debounce_v|Add0~28_combout\,
	combout => \debounce_v|s_debounceCnt~17_combout\);

-- Location: FF_X5_Y26_N17
\debounce_v|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~17_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(14));

-- Location: LCCOMB_X6_Y26_N8
\debounce_v|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~30_combout\ = (\debounce_v|s_debounceCnt\(15) & (\debounce_v|Add0~29\ & VCC)) # (!\debounce_v|s_debounceCnt\(15) & (!\debounce_v|Add0~29\))
-- \debounce_v|Add0~31\ = CARRY((!\debounce_v|s_debounceCnt\(15) & !\debounce_v|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounce_v|Add0~29\,
	combout => \debounce_v|Add0~30_combout\,
	cout => \debounce_v|Add0~31\);

-- Location: LCCOMB_X7_Y26_N8
\debounce_v|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~5_combout\ = (\debounce_v|s_debounceCnt[15]~4_combout\ & \debounce_v|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt[15]~4_combout\,
	datad => \debounce_v|Add0~30_combout\,
	combout => \debounce_v|s_debounceCnt~5_combout\);

-- Location: FF_X7_Y26_N9
\debounce_v|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~5_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(15));

-- Location: LCCOMB_X6_Y26_N10
\debounce_v|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~32_combout\ = (\debounce_v|s_debounceCnt\(16) & ((GND) # (!\debounce_v|Add0~31\))) # (!\debounce_v|s_debounceCnt\(16) & (\debounce_v|Add0~31\ $ (GND)))
-- \debounce_v|Add0~33\ = CARRY((\debounce_v|s_debounceCnt\(16)) # (!\debounce_v|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounce_v|Add0~31\,
	combout => \debounce_v|Add0~32_combout\,
	cout => \debounce_v|Add0~33\);

-- Location: LCCOMB_X6_Y26_N24
\debounce_v|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~6_combout\ = (\debounce_v|s_debounceCnt[15]~4_combout\ & \debounce_v|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_v|s_debounceCnt[15]~4_combout\,
	datad => \debounce_v|Add0~32_combout\,
	combout => \debounce_v|s_debounceCnt~6_combout\);

-- Location: FF_X6_Y26_N25
\debounce_v|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~6_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(16));

-- Location: LCCOMB_X6_Y26_N12
\debounce_v|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~34_combout\ = (\debounce_v|s_debounceCnt\(17) & (\debounce_v|Add0~33\ & VCC)) # (!\debounce_v|s_debounceCnt\(17) & (!\debounce_v|Add0~33\))
-- \debounce_v|Add0~35\ = CARRY((!\debounce_v|s_debounceCnt\(17) & !\debounce_v|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounce_v|Add0~33\,
	combout => \debounce_v|Add0~34_combout\,
	cout => \debounce_v|Add0~35\);

-- Location: LCCOMB_X6_Y26_N26
\debounce_v|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~7_combout\ = (\debounce_v|s_debounceCnt[15]~4_combout\ & \debounce_v|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_v|s_debounceCnt[15]~4_combout\,
	datad => \debounce_v|Add0~34_combout\,
	combout => \debounce_v|s_debounceCnt~7_combout\);

-- Location: FF_X6_Y26_N27
\debounce_v|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~7_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(17));

-- Location: LCCOMB_X6_Y26_N14
\debounce_v|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~36_combout\ = (\debounce_v|s_debounceCnt\(18) & ((GND) # (!\debounce_v|Add0~35\))) # (!\debounce_v|s_debounceCnt\(18) & (\debounce_v|Add0~35\ $ (GND)))
-- \debounce_v|Add0~37\ = CARRY((\debounce_v|s_debounceCnt\(18)) # (!\debounce_v|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounce_v|Add0~35\,
	combout => \debounce_v|Add0~36_combout\,
	cout => \debounce_v|Add0~37\);

-- Location: LCCOMB_X7_Y26_N26
\debounce_v|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt[18]~18_combout\ = (\debounce_v|s_debounceCnt[15]~0_combout\ & (\debounce_v|s_debounceCnt[15]~3_combout\ & ((\debounce_v|Add0~36_combout\) # (!\debounce_v|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_previousIn~q\,
	datab => \debounce_v|s_debounceCnt[15]~0_combout\,
	datac => \debounce_v|s_debounceCnt[15]~3_combout\,
	datad => \debounce_v|Add0~36_combout\,
	combout => \debounce_v|s_debounceCnt[18]~18_combout\);

-- Location: FF_X7_Y26_N27
\debounce_v|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(18));

-- Location: LCCOMB_X6_Y26_N16
\debounce_v|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~38_combout\ = (\debounce_v|s_debounceCnt\(19) & (\debounce_v|Add0~37\ & VCC)) # (!\debounce_v|s_debounceCnt\(19) & (!\debounce_v|Add0~37\))
-- \debounce_v|Add0~39\ = CARRY((!\debounce_v|s_debounceCnt\(19) & !\debounce_v|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce_v|Add0~37\,
	combout => \debounce_v|Add0~38_combout\,
	cout => \debounce_v|Add0~39\);

-- Location: LCCOMB_X7_Y26_N24
\debounce_v|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt[19]~19_combout\ = (\debounce_v|s_debounceCnt[15]~3_combout\ & (\debounce_v|s_debounceCnt[15]~0_combout\ & ((\debounce_v|Add0~38_combout\) # (!\debounce_v|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_previousIn~q\,
	datab => \debounce_v|s_debounceCnt[15]~3_combout\,
	datac => \debounce_v|Add0~38_combout\,
	datad => \debounce_v|s_debounceCnt[15]~0_combout\,
	combout => \debounce_v|s_debounceCnt[19]~19_combout\);

-- Location: FF_X7_Y26_N25
\debounce_v|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(19));

-- Location: LCCOMB_X5_Y26_N10
\debounce_v|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_pulsedOut~3_combout\ = (!\debounce_v|s_debounceCnt\(11) & (!\debounce_v|s_debounceCnt\(14) & (!\debounce_v|s_debounceCnt\(19) & !\debounce_v|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(11),
	datab => \debounce_v|s_debounceCnt\(14),
	datac => \debounce_v|s_debounceCnt\(19),
	datad => \debounce_v|s_debounceCnt\(18),
	combout => \debounce_v|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X6_Y26_N18
\debounce_v|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~40_combout\ = (\debounce_v|s_debounceCnt\(20) & ((GND) # (!\debounce_v|Add0~39\))) # (!\debounce_v|s_debounceCnt\(20) & (\debounce_v|Add0~39\ $ (GND)))
-- \debounce_v|Add0~41\ = CARRY((\debounce_v|s_debounceCnt\(20)) # (!\debounce_v|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce_v|Add0~39\,
	combout => \debounce_v|Add0~40_combout\,
	cout => \debounce_v|Add0~41\);

-- Location: LCCOMB_X6_Y26_N20
\debounce_v|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~42_combout\ = (\debounce_v|s_debounceCnt\(21) & (\debounce_v|Add0~41\ & VCC)) # (!\debounce_v|s_debounceCnt\(21) & (!\debounce_v|Add0~41\))
-- \debounce_v|Add0~43\ = CARRY((!\debounce_v|s_debounceCnt\(21) & !\debounce_v|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounce_v|Add0~41\,
	combout => \debounce_v|Add0~42_combout\,
	cout => \debounce_v|Add0~43\);

-- Location: LCCOMB_X6_Y26_N30
\debounce_v|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt[21]~11_combout\ = (\debounce_v|s_debounceCnt[15]~3_combout\ & (\debounce_v|s_debounceCnt[15]~4_combout\ & \debounce_v|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt[15]~3_combout\,
	datac => \debounce_v|s_debounceCnt[15]~4_combout\,
	datad => \debounce_v|Add0~42_combout\,
	combout => \debounce_v|s_debounceCnt[21]~11_combout\);

-- Location: FF_X6_Y26_N31
\debounce_v|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(21));

-- Location: LCCOMB_X5_Y26_N4
\debounce_v|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_pulsedOut~1_combout\ = (!\debounce_v|s_debounceCnt\(13) & (!\debounce_v|s_debounceCnt\(12) & (!\debounce_v|s_debounceCnt\(21) & !\debounce_v|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(13),
	datab => \debounce_v|s_debounceCnt\(12),
	datac => \debounce_v|s_debounceCnt\(21),
	datad => \debounce_v|s_debounceCnt\(20),
	combout => \debounce_v|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X5_Y26_N26
\debounce_v|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_pulsedOut~0_combout\ = (!\debounce_v|s_debounceCnt\(6) & (!\debounce_v|s_debounceCnt\(17) & (!\debounce_v|s_debounceCnt\(16) & !\debounce_v|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(6),
	datab => \debounce_v|s_debounceCnt\(17),
	datac => \debounce_v|s_debounceCnt\(16),
	datad => \debounce_v|s_debounceCnt\(15),
	combout => \debounce_v|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X5_Y26_N28
\debounce_v|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_pulsedOut~2_combout\ = (!\debounce_v|s_debounceCnt\(8) & (!\debounce_v|s_debounceCnt\(9) & (!\debounce_v|s_debounceCnt\(10) & !\debounce_v|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(8),
	datab => \debounce_v|s_debounceCnt\(9),
	datac => \debounce_v|s_debounceCnt\(10),
	datad => \debounce_v|s_debounceCnt\(7),
	combout => \debounce_v|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X5_Y26_N20
\debounce_v|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_pulsedOut~4_combout\ = (\debounce_v|s_pulsedOut~3_combout\ & (\debounce_v|s_pulsedOut~1_combout\ & (\debounce_v|s_pulsedOut~0_combout\ & \debounce_v|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_pulsedOut~3_combout\,
	datab => \debounce_v|s_pulsedOut~1_combout\,
	datac => \debounce_v|s_pulsedOut~0_combout\,
	datad => \debounce_v|s_pulsedOut~2_combout\,
	combout => \debounce_v|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X5_Y26_N18
\debounce_v|s_debounceCnt[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt[15]~2_combout\ = (\debounce_v|s_debounceCnt\(0)) # ((\debounce_v|s_debounceCnt\(5)) # ((!\debounce_v|s_pulsedOut~4_combout\) # (!\debounce_v|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(0),
	datab => \debounce_v|s_debounceCnt\(5),
	datac => \debounce_v|s_pulsedOut~5_combout\,
	datad => \debounce_v|s_pulsedOut~4_combout\,
	combout => \debounce_v|s_debounceCnt[15]~2_combout\);

-- Location: LCCOMB_X5_Y26_N14
\debounce_v|s_debounceCnt[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt[15]~3_combout\ = ((\debounce_v|s_debounceCnt\(22)) # ((\debounce_v|s_debounceCnt[15]~2_combout\) # (!\debounce_v|s_previousIn~q\))) # (!\debounce_v|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_dirtyIn~q\,
	datab => \debounce_v|s_debounceCnt\(22),
	datac => \debounce_v|s_previousIn~q\,
	datad => \debounce_v|s_debounceCnt[15]~2_combout\,
	combout => \debounce_v|s_debounceCnt[15]~3_combout\);

-- Location: LCCOMB_X6_Y26_N28
\debounce_v|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt[20]~10_combout\ = (\debounce_v|s_debounceCnt[15]~3_combout\ & (\debounce_v|s_debounceCnt[15]~4_combout\ & \debounce_v|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt[15]~3_combout\,
	datac => \debounce_v|s_debounceCnt[15]~4_combout\,
	datad => \debounce_v|Add0~40_combout\,
	combout => \debounce_v|s_debounceCnt[20]~10_combout\);

-- Location: FF_X6_Y26_N29
\debounce_v|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(20));

-- Location: LCCOMB_X7_Y26_N2
\debounce_v|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|LessThan0~4_combout\ = (\debounce_v|s_debounceCnt\(12)) # ((\debounce_v|s_debounceCnt\(13)) # ((\debounce_v|s_debounceCnt\(11) & \debounce_v|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(11),
	datab => \debounce_v|s_debounceCnt\(10),
	datac => \debounce_v|s_debounceCnt\(12),
	datad => \debounce_v|s_debounceCnt\(13),
	combout => \debounce_v|LessThan0~4_combout\);

-- Location: LCCOMB_X7_Y26_N20
\debounce_v|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|LessThan0~5_combout\ = (\debounce_v|s_debounceCnt\(15)) # ((\debounce_v|s_debounceCnt\(16)) # ((\debounce_v|s_debounceCnt\(14) & \debounce_v|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(15),
	datab => \debounce_v|s_debounceCnt\(16),
	datac => \debounce_v|s_debounceCnt\(14),
	datad => \debounce_v|LessThan0~4_combout\,
	combout => \debounce_v|LessThan0~5_combout\);

-- Location: LCCOMB_X7_Y26_N14
\debounce_v|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|LessThan0~6_combout\ = (\debounce_v|s_debounceCnt\(19) & (\debounce_v|s_debounceCnt\(18) & ((\debounce_v|s_debounceCnt\(17)) # (\debounce_v|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(17),
	datab => \debounce_v|s_debounceCnt\(19),
	datac => \debounce_v|s_debounceCnt\(18),
	datad => \debounce_v|LessThan0~5_combout\,
	combout => \debounce_v|LessThan0~6_combout\);

-- Location: LCCOMB_X7_Y26_N28
\debounce_v|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|LessThan0~1_combout\ = (\debounce_v|s_debounceCnt\(11) & \debounce_v|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_v|s_debounceCnt\(11),
	datad => \debounce_v|s_debounceCnt\(9),
	combout => \debounce_v|LessThan0~1_combout\);

-- Location: LCCOMB_X7_Y26_N22
\debounce_v|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|LessThan0~0_combout\ = (\debounce_v|s_debounceCnt\(18) & (\debounce_v|s_debounceCnt\(19) & (\debounce_v|s_debounceCnt\(14) & \debounce_v|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(18),
	datab => \debounce_v|s_debounceCnt\(19),
	datac => \debounce_v|s_debounceCnt\(14),
	datad => \debounce_v|s_debounceCnt\(8),
	combout => \debounce_v|LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y26_N6
\debounce_v|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|LessThan0~2_combout\ = (\debounce_v|s_debounceCnt\(6) & ((\debounce_v|s_debounceCnt\(0)) # ((\debounce_v|s_debounceCnt\(5)) # (!\debounce_v|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(0),
	datab => \debounce_v|s_debounceCnt\(5),
	datac => \debounce_v|s_debounceCnt\(6),
	datad => \debounce_v|s_pulsedOut~5_combout\,
	combout => \debounce_v|LessThan0~2_combout\);

-- Location: LCCOMB_X7_Y26_N12
\debounce_v|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|LessThan0~3_combout\ = (\debounce_v|LessThan0~1_combout\ & (\debounce_v|LessThan0~0_combout\ & ((\debounce_v|s_debounceCnt\(7)) # (\debounce_v|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(7),
	datab => \debounce_v|LessThan0~1_combout\,
	datac => \debounce_v|LessThan0~0_combout\,
	datad => \debounce_v|LessThan0~2_combout\,
	combout => \debounce_v|LessThan0~3_combout\);

-- Location: LCCOMB_X7_Y26_N16
\debounce_v|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|LessThan0~7_combout\ = (\debounce_v|s_debounceCnt\(20)) # ((\debounce_v|s_debounceCnt\(21)) # ((\debounce_v|LessThan0~6_combout\) # (\debounce_v|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(20),
	datab => \debounce_v|s_debounceCnt\(21),
	datac => \debounce_v|LessThan0~6_combout\,
	datad => \debounce_v|LessThan0~3_combout\,
	combout => \debounce_v|LessThan0~7_combout\);

-- Location: LCCOMB_X7_Y26_N18
\debounce_v|s_debounceCnt[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt[15]~0_combout\ = (\debounce_v|s_dirtyIn~q\ & ((!\debounce_v|LessThan0~7_combout\) # (!\debounce_v|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_dirtyIn~q\,
	datac => \debounce_v|s_debounceCnt\(22),
	datad => \debounce_v|LessThan0~7_combout\,
	combout => \debounce_v|s_debounceCnt[15]~0_combout\);

-- Location: LCCOMB_X7_Y26_N30
\debounce_v|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt[22]~25_combout\ = (\debounce_v|s_dirtyIn~q\ & ((\debounce_v|s_debounceCnt\(22) & ((!\debounce_v|LessThan0~7_combout\))) # (!\debounce_v|s_debounceCnt\(22) & (\debounce_v|s_debounceCnt[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt[15]~2_combout\,
	datab => \debounce_v|s_dirtyIn~q\,
	datac => \debounce_v|s_debounceCnt\(22),
	datad => \debounce_v|LessThan0~7_combout\,
	combout => \debounce_v|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X6_Y26_N22
\debounce_v|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|Add0~44_combout\ = \debounce_v|s_debounceCnt\(22) $ (\debounce_v|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|s_debounceCnt\(22),
	cin => \debounce_v|Add0~43\,
	combout => \debounce_v|Add0~44_combout\);

-- Location: LCCOMB_X7_Y26_N4
\debounce_v|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt[22]~26_combout\ = (\debounce_v|s_previousIn~q\ & (((\debounce_v|s_debounceCnt[22]~25_combout\ & \debounce_v|Add0~44_combout\)))) # (!\debounce_v|s_previousIn~q\ & (\debounce_v|s_debounceCnt[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_previousIn~q\,
	datab => \debounce_v|s_debounceCnt[15]~0_combout\,
	datac => \debounce_v|s_debounceCnt[22]~25_combout\,
	datad => \debounce_v|Add0~44_combout\,
	combout => \debounce_v|s_debounceCnt[22]~26_combout\);

-- Location: FF_X7_Y26_N5
\debounce_v|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(22));

-- Location: LCCOMB_X7_Y26_N0
\debounce_v|s_debounceCnt[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt[15]~4_combout\ = (\debounce_v|s_dirtyIn~q\ & (\debounce_v|s_previousIn~q\ & ((!\debounce_v|LessThan0~7_combout\) # (!\debounce_v|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(22),
	datab => \debounce_v|s_dirtyIn~q\,
	datac => \debounce_v|s_previousIn~q\,
	datad => \debounce_v|LessThan0~7_combout\,
	combout => \debounce_v|s_debounceCnt[15]~4_combout\);

-- Location: LCCOMB_X7_Y26_N10
\debounce_v|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_debounceCnt~24_combout\ = (\debounce_v|Add0~0_combout\ & \debounce_v|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_v|Add0~0_combout\,
	datad => \debounce_v|s_debounceCnt[15]~4_combout\,
	combout => \debounce_v|s_debounceCnt~24_combout\);

-- Location: FF_X7_Y26_N11
\debounce_v|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_v|s_debounceCnt~24_combout\,
	ena => \debounce_v|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_debounceCnt\(0));

-- Location: LCCOMB_X8_Y26_N26
\debounce_v|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_pulsedOut~6_combout\ = (\debounce_v|s_debounceCnt\(0) & (\debounce_v|s_dirtyIn~q\ & (!\debounce_v|s_debounceCnt\(22) & \debounce_v|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_debounceCnt\(0),
	datab => \debounce_v|s_dirtyIn~q\,
	datac => \debounce_v|s_debounceCnt\(22),
	datad => \debounce_v|s_previousIn~q\,
	combout => \debounce_v|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X4_Y33_N28
\debounce_v|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_v|s_pulsedOut~7_combout\ = (\debounce_v|s_pulsedOut~6_combout\ & (!\debounce_v|s_debounceCnt\(5) & (\debounce_v|s_pulsedOut~5_combout\ & \debounce_v|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_pulsedOut~6_combout\,
	datab => \debounce_v|s_debounceCnt\(5),
	datac => \debounce_v|s_pulsedOut~5_combout\,
	datad => \debounce_v|s_pulsedOut~4_combout\,
	combout => \debounce_v|s_pulsedOut~7_combout\);

-- Location: FF_X4_Y33_N29
\debounce_v|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \debounce_v|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_v|s_pulsedOut~q\);

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

-- Location: FF_X4_Y31_N7
\debounce_c|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_dirtyIn~q\);

-- Location: FF_X3_Y31_N25
\debounce_c|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce_c|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_previousIn~q\);

-- Location: LCCOMB_X3_Y32_N10
\debounce_c|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~0_combout\ = \debounce_c|s_debounceCnt\(0) $ (VCC)
-- \debounce_c|Add0~1\ = CARRY(\debounce_c|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce_c|Add0~0_combout\,
	cout => \debounce_c|Add0~1\);

-- Location: LCCOMB_X3_Y32_N14
\debounce_c|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~4_combout\ = (\debounce_c|s_debounceCnt\(2) & ((GND) # (!\debounce_c|Add0~3\))) # (!\debounce_c|s_debounceCnt\(2) & (\debounce_c|Add0~3\ $ (GND)))
-- \debounce_c|Add0~5\ = CARRY((\debounce_c|s_debounceCnt\(2)) # (!\debounce_c|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounce_c|Add0~3\,
	combout => \debounce_c|Add0~4_combout\,
	cout => \debounce_c|Add0~5\);

-- Location: LCCOMB_X3_Y32_N16
\debounce_c|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~6_combout\ = (\debounce_c|s_debounceCnt\(3) & (\debounce_c|Add0~5\ & VCC)) # (!\debounce_c|s_debounceCnt\(3) & (!\debounce_c|Add0~5\))
-- \debounce_c|Add0~7\ = CARRY((!\debounce_c|s_debounceCnt\(3) & !\debounce_c|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounce_c|Add0~5\,
	combout => \debounce_c|Add0~6_combout\,
	cout => \debounce_c|Add0~7\);

-- Location: LCCOMB_X3_Y32_N0
\debounce_c|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~21_combout\ = (\debounce_c|s_previousIn~q\ & (\debounce_c|Add0~6_combout\ & \debounce_c|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|Add0~6_combout\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~21_combout\);

-- Location: FF_X3_Y32_N1
\debounce_c|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~21_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(3));

-- Location: LCCOMB_X3_Y32_N18
\debounce_c|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~8_combout\ = (\debounce_c|s_debounceCnt\(4) & ((GND) # (!\debounce_c|Add0~7\))) # (!\debounce_c|s_debounceCnt\(4) & (\debounce_c|Add0~7\ $ (GND)))
-- \debounce_c|Add0~9\ = CARRY((\debounce_c|s_debounceCnt\(4)) # (!\debounce_c|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounce_c|Add0~7\,
	combout => \debounce_c|Add0~8_combout\,
	cout => \debounce_c|Add0~9\);

-- Location: LCCOMB_X3_Y32_N2
\debounce_c|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~22_combout\ = (\debounce_c|Add0~8_combout\ & (\debounce_c|s_previousIn~q\ & \debounce_c|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|Add0~8_combout\,
	datac => \debounce_c|s_previousIn~q\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~22_combout\);

-- Location: FF_X3_Y32_N3
\debounce_c|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~22_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(4));

-- Location: LCCOMB_X3_Y32_N20
\debounce_c|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~10_combout\ = (\debounce_c|s_debounceCnt\(5) & (\debounce_c|Add0~9\ & VCC)) # (!\debounce_c|s_debounceCnt\(5) & (!\debounce_c|Add0~9\))
-- \debounce_c|Add0~11\ = CARRY((!\debounce_c|s_debounceCnt\(5) & !\debounce_c|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounce_c|Add0~9\,
	combout => \debounce_c|Add0~10_combout\,
	cout => \debounce_c|Add0~11\);

-- Location: LCCOMB_X4_Y32_N20
\debounce_c|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~27_combout\ = (\debounce_c|s_previousIn~q\ & (\debounce_c|Add0~10_combout\ & \debounce_c|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_previousIn~q\,
	datab => \debounce_c|Add0~10_combout\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~27_combout\);

-- Location: FF_X4_Y32_N21
\debounce_c|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~27_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(5));

-- Location: LCCOMB_X3_Y32_N22
\debounce_c|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~12_combout\ = (\debounce_c|s_debounceCnt\(6) & ((GND) # (!\debounce_c|Add0~11\))) # (!\debounce_c|s_debounceCnt\(6) & (\debounce_c|Add0~11\ $ (GND)))
-- \debounce_c|Add0~13\ = CARRY((\debounce_c|s_debounceCnt\(6)) # (!\debounce_c|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounce_c|Add0~11\,
	combout => \debounce_c|Add0~12_combout\,
	cout => \debounce_c|Add0~13\);

-- Location: LCCOMB_X4_Y31_N24
\debounce_c|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~1_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & ((\debounce_c|Add0~12_combout\) # (!\debounce_c|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[0]~0_combout\,
	datab => \debounce_c|s_previousIn~q\,
	datad => \debounce_c|Add0~12_combout\,
	combout => \debounce_c|s_debounceCnt~1_combout\);

-- Location: FF_X4_Y31_N25
\debounce_c|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~1_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(6));

-- Location: LCCOMB_X3_Y32_N24
\debounce_c|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~14_combout\ = (\debounce_c|s_debounceCnt\(7) & (\debounce_c|Add0~13\ & VCC)) # (!\debounce_c|s_debounceCnt\(7) & (!\debounce_c|Add0~13\))
-- \debounce_c|Add0~15\ = CARRY((!\debounce_c|s_debounceCnt\(7) & !\debounce_c|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce_c|Add0~13\,
	combout => \debounce_c|Add0~14_combout\,
	cout => \debounce_c|Add0~15\);

-- Location: LCCOMB_X2_Y31_N22
\debounce_c|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~11_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & (\debounce_c|s_previousIn~q\ & \debounce_c|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[0]~0_combout\,
	datac => \debounce_c|s_previousIn~q\,
	datad => \debounce_c|Add0~14_combout\,
	combout => \debounce_c|s_debounceCnt~11_combout\);

-- Location: FF_X2_Y31_N23
\debounce_c|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~11_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(7));

-- Location: LCCOMB_X3_Y32_N26
\debounce_c|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~16_combout\ = (\debounce_c|s_debounceCnt\(8) & ((GND) # (!\debounce_c|Add0~15\))) # (!\debounce_c|s_debounceCnt\(8) & (\debounce_c|Add0~15\ $ (GND)))
-- \debounce_c|Add0~17\ = CARRY((\debounce_c|s_debounceCnt\(8)) # (!\debounce_c|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounce_c|Add0~15\,
	combout => \debounce_c|Add0~16_combout\,
	cout => \debounce_c|Add0~17\);

-- Location: LCCOMB_X2_Y31_N28
\debounce_c|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~12_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & ((\debounce_c|Add0~16_combout\) # (!\debounce_c|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_previousIn~q\,
	datab => \debounce_c|Add0~16_combout\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~12_combout\);

-- Location: FF_X2_Y31_N29
\debounce_c|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~12_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(8));

-- Location: LCCOMB_X3_Y32_N28
\debounce_c|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~18_combout\ = (\debounce_c|s_debounceCnt\(9) & (\debounce_c|Add0~17\ & VCC)) # (!\debounce_c|s_debounceCnt\(9) & (!\debounce_c|Add0~17\))
-- \debounce_c|Add0~19\ = CARRY((!\debounce_c|s_debounceCnt\(9) & !\debounce_c|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounce_c|Add0~17\,
	combout => \debounce_c|Add0~18_combout\,
	cout => \debounce_c|Add0~19\);

-- Location: LCCOMB_X2_Y31_N2
\debounce_c|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~13_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & ((\debounce_c|Add0~18_combout\) # (!\debounce_c|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|Add0~18_combout\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~13_combout\);

-- Location: FF_X2_Y31_N3
\debounce_c|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~13_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(9));

-- Location: LCCOMB_X3_Y32_N30
\debounce_c|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~20_combout\ = (\debounce_c|s_debounceCnt\(10) & ((GND) # (!\debounce_c|Add0~19\))) # (!\debounce_c|s_debounceCnt\(10) & (\debounce_c|Add0~19\ $ (GND)))
-- \debounce_c|Add0~21\ = CARRY((\debounce_c|s_debounceCnt\(10)) # (!\debounce_c|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounce_c|Add0~19\,
	combout => \debounce_c|Add0~20_combout\,
	cout => \debounce_c|Add0~21\);

-- Location: LCCOMB_X2_Y31_N8
\debounce_c|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~14_combout\ = (\debounce_c|s_previousIn~q\ & (\debounce_c|Add0~20_combout\ & \debounce_c|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|Add0~20_combout\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~14_combout\);

-- Location: FF_X2_Y31_N9
\debounce_c|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~14_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(10));

-- Location: LCCOMB_X3_Y31_N0
\debounce_c|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~22_combout\ = (\debounce_c|s_debounceCnt\(11) & (\debounce_c|Add0~21\ & VCC)) # (!\debounce_c|s_debounceCnt\(11) & (!\debounce_c|Add0~21\))
-- \debounce_c|Add0~23\ = CARRY((!\debounce_c|s_debounceCnt\(11) & !\debounce_c|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce_c|Add0~21\,
	combout => \debounce_c|Add0~22_combout\,
	cout => \debounce_c|Add0~23\);

-- Location: LCCOMB_X2_Y31_N24
\debounce_c|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~15_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & ((\debounce_c|Add0~22_combout\) # (!\debounce_c|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|Add0~22_combout\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~15_combout\);

-- Location: FF_X2_Y31_N25
\debounce_c|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~15_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(11));

-- Location: LCCOMB_X3_Y31_N2
\debounce_c|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~24_combout\ = (\debounce_c|s_debounceCnt\(12) & ((GND) # (!\debounce_c|Add0~23\))) # (!\debounce_c|s_debounceCnt\(12) & (\debounce_c|Add0~23\ $ (GND)))
-- \debounce_c|Add0~25\ = CARRY((\debounce_c|s_debounceCnt\(12)) # (!\debounce_c|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounce_c|Add0~23\,
	combout => \debounce_c|Add0~24_combout\,
	cout => \debounce_c|Add0~25\);

-- Location: LCCOMB_X2_Y31_N6
\debounce_c|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~7_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & (\debounce_c|s_previousIn~q\ & \debounce_c|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[0]~0_combout\,
	datac => \debounce_c|s_previousIn~q\,
	datad => \debounce_c|Add0~24_combout\,
	combout => \debounce_c|s_debounceCnt~7_combout\);

-- Location: FF_X2_Y31_N7
\debounce_c|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~7_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(12));

-- Location: LCCOMB_X3_Y31_N4
\debounce_c|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~26_combout\ = (\debounce_c|s_debounceCnt\(13) & (\debounce_c|Add0~25\ & VCC)) # (!\debounce_c|s_debounceCnt\(13) & (!\debounce_c|Add0~25\))
-- \debounce_c|Add0~27\ = CARRY((!\debounce_c|s_debounceCnt\(13) & !\debounce_c|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounce_c|Add0~25\,
	combout => \debounce_c|Add0~26_combout\,
	cout => \debounce_c|Add0~27\);

-- Location: LCCOMB_X4_Y31_N8
\debounce_c|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~8_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & (\debounce_c|Add0~26_combout\ & \debounce_c|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[0]~0_combout\,
	datac => \debounce_c|Add0~26_combout\,
	datad => \debounce_c|s_previousIn~q\,
	combout => \debounce_c|s_debounceCnt~8_combout\);

-- Location: FF_X4_Y31_N9
\debounce_c|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~8_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(13));

-- Location: LCCOMB_X3_Y31_N6
\debounce_c|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~28_combout\ = (\debounce_c|s_debounceCnt\(14) & ((GND) # (!\debounce_c|Add0~27\))) # (!\debounce_c|s_debounceCnt\(14) & (\debounce_c|Add0~27\ $ (GND)))
-- \debounce_c|Add0~29\ = CARRY((\debounce_c|s_debounceCnt\(14)) # (!\debounce_c|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce_c|Add0~27\,
	combout => \debounce_c|Add0~28_combout\,
	cout => \debounce_c|Add0~29\);

-- Location: LCCOMB_X2_Y31_N26
\debounce_c|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~16_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & ((\debounce_c|Add0~28_combout\) # (!\debounce_c|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[0]~0_combout\,
	datac => \debounce_c|s_previousIn~q\,
	datad => \debounce_c|Add0~28_combout\,
	combout => \debounce_c|s_debounceCnt~16_combout\);

-- Location: FF_X2_Y31_N27
\debounce_c|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~16_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(14));

-- Location: LCCOMB_X3_Y31_N8
\debounce_c|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~30_combout\ = (\debounce_c|s_debounceCnt\(15) & (\debounce_c|Add0~29\ & VCC)) # (!\debounce_c|s_debounceCnt\(15) & (!\debounce_c|Add0~29\))
-- \debounce_c|Add0~31\ = CARRY((!\debounce_c|s_debounceCnt\(15) & !\debounce_c|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounce_c|Add0~29\,
	combout => \debounce_c|Add0~30_combout\,
	cout => \debounce_c|Add0~31\);

-- Location: LCCOMB_X2_Y31_N20
\debounce_c|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~4_combout\ = (\debounce_c|s_previousIn~q\ & (\debounce_c|Add0~30_combout\ & \debounce_c|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|Add0~30_combout\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~4_combout\);

-- Location: FF_X2_Y31_N21
\debounce_c|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~4_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(15));

-- Location: LCCOMB_X3_Y31_N10
\debounce_c|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~32_combout\ = (\debounce_c|s_debounceCnt\(16) & ((GND) # (!\debounce_c|Add0~31\))) # (!\debounce_c|s_debounceCnt\(16) & (\debounce_c|Add0~31\ $ (GND)))
-- \debounce_c|Add0~33\ = CARRY((\debounce_c|s_debounceCnt\(16)) # (!\debounce_c|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounce_c|Add0~31\,
	combout => \debounce_c|Add0~32_combout\,
	cout => \debounce_c|Add0~33\);

-- Location: LCCOMB_X2_Y31_N10
\debounce_c|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~5_combout\ = (\debounce_c|s_previousIn~q\ & (\debounce_c|Add0~32_combout\ & \debounce_c|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|Add0~32_combout\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~5_combout\);

-- Location: FF_X2_Y31_N11
\debounce_c|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~5_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(16));

-- Location: LCCOMB_X3_Y31_N12
\debounce_c|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~34_combout\ = (\debounce_c|s_debounceCnt\(17) & (\debounce_c|Add0~33\ & VCC)) # (!\debounce_c|s_debounceCnt\(17) & (!\debounce_c|Add0~33\))
-- \debounce_c|Add0~35\ = CARRY((!\debounce_c|s_debounceCnt\(17) & !\debounce_c|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounce_c|Add0~33\,
	combout => \debounce_c|Add0~34_combout\,
	cout => \debounce_c|Add0~35\);

-- Location: LCCOMB_X4_Y31_N22
\debounce_c|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~6_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & (\debounce_c|s_previousIn~q\ & \debounce_c|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[0]~0_combout\,
	datab => \debounce_c|s_previousIn~q\,
	datad => \debounce_c|Add0~34_combout\,
	combout => \debounce_c|s_debounceCnt~6_combout\);

-- Location: FF_X4_Y31_N23
\debounce_c|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~6_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(17));

-- Location: LCCOMB_X3_Y31_N14
\debounce_c|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~36_combout\ = (\debounce_c|s_debounceCnt\(18) & ((GND) # (!\debounce_c|Add0~35\))) # (!\debounce_c|s_debounceCnt\(18) & (\debounce_c|Add0~35\ $ (GND)))
-- \debounce_c|Add0~37\ = CARRY((\debounce_c|s_debounceCnt\(18)) # (!\debounce_c|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounce_c|Add0~35\,
	combout => \debounce_c|Add0~36_combout\,
	cout => \debounce_c|Add0~37\);

-- Location: LCCOMB_X4_Y31_N14
\debounce_c|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt[18]~17_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & (\debounce_c|s_debounceCnt[0]~3_combout\ & ((\debounce_c|Add0~36_combout\) # (!\debounce_c|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[0]~0_combout\,
	datab => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|s_debounceCnt[0]~3_combout\,
	datad => \debounce_c|Add0~36_combout\,
	combout => \debounce_c|s_debounceCnt[18]~17_combout\);

-- Location: FF_X4_Y31_N15
\debounce_c|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(18));

-- Location: LCCOMB_X3_Y31_N16
\debounce_c|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~38_combout\ = (\debounce_c|s_debounceCnt\(19) & (\debounce_c|Add0~37\ & VCC)) # (!\debounce_c|s_debounceCnt\(19) & (!\debounce_c|Add0~37\))
-- \debounce_c|Add0~39\ = CARRY((!\debounce_c|s_debounceCnt\(19) & !\debounce_c|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce_c|Add0~37\,
	combout => \debounce_c|Add0~38_combout\,
	cout => \debounce_c|Add0~39\);

-- Location: LCCOMB_X4_Y31_N12
\debounce_c|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt[19]~18_combout\ = (\debounce_c|s_debounceCnt[0]~0_combout\ & (\debounce_c|s_debounceCnt[0]~3_combout\ & ((\debounce_c|Add0~38_combout\) # (!\debounce_c|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[0]~0_combout\,
	datab => \debounce_c|s_debounceCnt[0]~3_combout\,
	datac => \debounce_c|Add0~38_combout\,
	datad => \debounce_c|s_previousIn~q\,
	combout => \debounce_c|s_debounceCnt[19]~18_combout\);

-- Location: FF_X4_Y31_N13
\debounce_c|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(19));

-- Location: LCCOMB_X4_Y31_N28
\debounce_c|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|LessThan0~4_combout\ = (\debounce_c|s_debounceCnt\(19) & (\debounce_c|s_debounceCnt\(18) & (\debounce_c|s_debounceCnt\(14) & \debounce_c|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(19),
	datab => \debounce_c|s_debounceCnt\(18),
	datac => \debounce_c|s_debounceCnt\(14),
	datad => \debounce_c|s_debounceCnt\(8),
	combout => \debounce_c|LessThan0~4_combout\);

-- Location: LCCOMB_X4_Y31_N30
\debounce_c|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|LessThan0~5_combout\ = (\debounce_c|s_debounceCnt\(9) & (\debounce_c|s_debounceCnt\(11) & \debounce_c|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(9),
	datab => \debounce_c|s_debounceCnt\(11),
	datad => \debounce_c|LessThan0~4_combout\,
	combout => \debounce_c|LessThan0~5_combout\);

-- Location: LCCOMB_X4_Y31_N4
\debounce_c|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|LessThan0~6_combout\ = (\debounce_c|s_debounceCnt\(6) & ((\debounce_c|s_debounceCnt\(0)) # ((\debounce_c|s_debounceCnt\(5)) # (!\debounce_c|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(0),
	datab => \debounce_c|s_debounceCnt\(6),
	datac => \debounce_c|s_debounceCnt\(5),
	datad => \debounce_c|s_pulsedOut~5_combout\,
	combout => \debounce_c|LessThan0~6_combout\);

-- Location: LCCOMB_X4_Y31_N10
\debounce_c|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|LessThan0~1_combout\ = (\debounce_c|s_debounceCnt\(13)) # ((\debounce_c|s_debounceCnt\(12)) # ((\debounce_c|s_debounceCnt\(11) & \debounce_c|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(13),
	datab => \debounce_c|s_debounceCnt\(12),
	datac => \debounce_c|s_debounceCnt\(11),
	datad => \debounce_c|s_debounceCnt\(10),
	combout => \debounce_c|LessThan0~1_combout\);

-- Location: LCCOMB_X4_Y31_N0
\debounce_c|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|LessThan0~2_combout\ = (\debounce_c|s_debounceCnt\(16)) # ((\debounce_c|s_debounceCnt\(15)) # ((\debounce_c|s_debounceCnt\(14) & \debounce_c|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(14),
	datab => \debounce_c|s_debounceCnt\(16),
	datac => \debounce_c|s_debounceCnt\(15),
	datad => \debounce_c|LessThan0~1_combout\,
	combout => \debounce_c|LessThan0~2_combout\);

-- Location: LCCOMB_X4_Y31_N18
\debounce_c|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|LessThan0~3_combout\ = (\debounce_c|s_debounceCnt\(19) & (\debounce_c|s_debounceCnt\(18) & ((\debounce_c|s_debounceCnt\(17)) # (\debounce_c|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(19),
	datab => \debounce_c|s_debounceCnt\(18),
	datac => \debounce_c|s_debounceCnt\(17),
	datad => \debounce_c|LessThan0~2_combout\,
	combout => \debounce_c|LessThan0~3_combout\);

-- Location: LCCOMB_X4_Y31_N2
\debounce_c|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|LessThan0~7_combout\ = (\debounce_c|LessThan0~3_combout\) # ((\debounce_c|LessThan0~5_combout\ & ((\debounce_c|s_debounceCnt\(7)) # (\debounce_c|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|LessThan0~5_combout\,
	datab => \debounce_c|s_debounceCnt\(7),
	datac => \debounce_c|LessThan0~6_combout\,
	datad => \debounce_c|LessThan0~3_combout\,
	combout => \debounce_c|LessThan0~7_combout\);

-- Location: LCCOMB_X2_Y31_N30
\debounce_c|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_pulsedOut~2_combout\ = (!\debounce_c|s_debounceCnt\(7) & (!\debounce_c|s_debounceCnt\(8) & (!\debounce_c|s_debounceCnt\(10) & !\debounce_c|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(7),
	datab => \debounce_c|s_debounceCnt\(8),
	datac => \debounce_c|s_debounceCnt\(10),
	datad => \debounce_c|s_debounceCnt\(9),
	combout => \debounce_c|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X2_Y31_N0
\debounce_c|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_pulsedOut~3_combout\ = (!\debounce_c|s_debounceCnt\(14) & (!\debounce_c|s_debounceCnt\(11) & (!\debounce_c|s_debounceCnt\(18) & !\debounce_c|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(14),
	datab => \debounce_c|s_debounceCnt\(11),
	datac => \debounce_c|s_debounceCnt\(18),
	datad => \debounce_c|s_debounceCnt\(19),
	combout => \debounce_c|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X3_Y31_N18
\debounce_c|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~40_combout\ = (\debounce_c|s_debounceCnt\(20) & ((GND) # (!\debounce_c|Add0~39\))) # (!\debounce_c|s_debounceCnt\(20) & (\debounce_c|Add0~39\ $ (GND)))
-- \debounce_c|Add0~41\ = CARRY((\debounce_c|s_debounceCnt\(20)) # (!\debounce_c|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce_c|Add0~39\,
	combout => \debounce_c|Add0~40_combout\,
	cout => \debounce_c|Add0~41\);

-- Location: LCCOMB_X3_Y31_N28
\debounce_c|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt[20]~9_combout\ = (\debounce_c|s_debounceCnt[0]~3_combout\ & (\debounce_c|s_previousIn~q\ & (\debounce_c|s_debounceCnt[0]~0_combout\ & \debounce_c|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[0]~3_combout\,
	datab => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|s_debounceCnt[0]~0_combout\,
	datad => \debounce_c|Add0~40_combout\,
	combout => \debounce_c|s_debounceCnt[20]~9_combout\);

-- Location: FF_X3_Y31_N29
\debounce_c|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(20));

-- Location: LCCOMB_X2_Y31_N4
\debounce_c|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_pulsedOut~1_combout\ = (!\debounce_c|s_debounceCnt\(12) & (!\debounce_c|s_debounceCnt\(20) & (!\debounce_c|s_debounceCnt\(21) & !\debounce_c|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(12),
	datab => \debounce_c|s_debounceCnt\(20),
	datac => \debounce_c|s_debounceCnt\(21),
	datad => \debounce_c|s_debounceCnt\(13),
	combout => \debounce_c|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X2_Y31_N12
\debounce_c|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_pulsedOut~0_combout\ = (!\debounce_c|s_debounceCnt\(16) & (!\debounce_c|s_debounceCnt\(15) & (!\debounce_c|s_debounceCnt\(6) & !\debounce_c|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(16),
	datab => \debounce_c|s_debounceCnt\(15),
	datac => \debounce_c|s_debounceCnt\(6),
	datad => \debounce_c|s_debounceCnt\(17),
	combout => \debounce_c|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X2_Y31_N18
\debounce_c|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_pulsedOut~4_combout\ = (\debounce_c|s_pulsedOut~2_combout\ & (\debounce_c|s_pulsedOut~3_combout\ & (\debounce_c|s_pulsedOut~1_combout\ & \debounce_c|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_pulsedOut~2_combout\,
	datab => \debounce_c|s_pulsedOut~3_combout\,
	datac => \debounce_c|s_pulsedOut~1_combout\,
	datad => \debounce_c|s_pulsedOut~0_combout\,
	combout => \debounce_c|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X2_Y31_N16
\debounce_c|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt[0]~2_combout\ = (\debounce_c|s_debounceCnt\(0)) # ((\debounce_c|s_debounceCnt\(5)) # ((!\debounce_c|s_pulsedOut~4_combout\) # (!\debounce_c|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(0),
	datab => \debounce_c|s_debounceCnt\(5),
	datac => \debounce_c|s_pulsedOut~5_combout\,
	datad => \debounce_c|s_pulsedOut~4_combout\,
	combout => \debounce_c|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X4_Y31_N26
\debounce_c|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt[22]~24_combout\ = (\debounce_c|s_debounceCnt\(22) & (!\debounce_c|LessThan0~7_combout\ & (\debounce_c|LessThan0~0_combout\))) # (!\debounce_c|s_debounceCnt\(22) & (((\debounce_c|s_debounceCnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|LessThan0~7_combout\,
	datab => \debounce_c|s_debounceCnt\(22),
	datac => \debounce_c|LessThan0~0_combout\,
	datad => \debounce_c|s_debounceCnt[0]~2_combout\,
	combout => \debounce_c|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X5_Y31_N20
\debounce_c|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt[22]~25_combout\ = (\debounce_c|s_previousIn~q\ & (\debounce_c|s_dirtyIn~q\)) # (!\debounce_c|s_previousIn~q\ & ((\debounce_c|s_debounceCnt[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_dirtyIn~q\,
	datac => \debounce_c|s_debounceCnt[0]~0_combout\,
	datad => \debounce_c|s_previousIn~q\,
	combout => \debounce_c|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X3_Y31_N20
\debounce_c|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~42_combout\ = (\debounce_c|s_debounceCnt\(21) & (\debounce_c|Add0~41\ & VCC)) # (!\debounce_c|s_debounceCnt\(21) & (!\debounce_c|Add0~41\))
-- \debounce_c|Add0~43\ = CARRY((!\debounce_c|s_debounceCnt\(21) & !\debounce_c|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounce_c|Add0~41\,
	combout => \debounce_c|Add0~42_combout\,
	cout => \debounce_c|Add0~43\);

-- Location: LCCOMB_X3_Y31_N22
\debounce_c|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~44_combout\ = \debounce_c|Add0~43\ $ (\debounce_c|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounce_c|s_debounceCnt\(22),
	cin => \debounce_c|Add0~43\,
	combout => \debounce_c|Add0~44_combout\);

-- Location: LCCOMB_X4_Y31_N16
\debounce_c|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt[22]~26_combout\ = (\debounce_c|s_debounceCnt[22]~25_combout\ & (((\debounce_c|s_debounceCnt[22]~24_combout\ & \debounce_c|Add0~44_combout\)) # (!\debounce_c|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[22]~24_combout\,
	datab => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|s_debounceCnt[22]~25_combout\,
	datad => \debounce_c|Add0~44_combout\,
	combout => \debounce_c|s_debounceCnt[22]~26_combout\);

-- Location: FF_X4_Y31_N17
\debounce_c|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(22));

-- Location: LCCOMB_X2_Y31_N14
\debounce_c|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt[0]~3_combout\ = ((\debounce_c|s_debounceCnt\(22)) # ((\debounce_c|s_debounceCnt[0]~2_combout\) # (!\debounce_c|s_dirtyIn~q\))) # (!\debounce_c|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_previousIn~q\,
	datab => \debounce_c|s_debounceCnt\(22),
	datac => \debounce_c|s_dirtyIn~q\,
	datad => \debounce_c|s_debounceCnt[0]~2_combout\,
	combout => \debounce_c|s_debounceCnt[0]~3_combout\);

-- Location: LCCOMB_X3_Y31_N30
\debounce_c|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt[21]~10_combout\ = (\debounce_c|s_debounceCnt[0]~3_combout\ & (\debounce_c|s_previousIn~q\ & (\debounce_c|s_debounceCnt[0]~0_combout\ & \debounce_c|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt[0]~3_combout\,
	datab => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|s_debounceCnt[0]~0_combout\,
	datad => \debounce_c|Add0~42_combout\,
	combout => \debounce_c|s_debounceCnt[21]~10_combout\);

-- Location: FF_X3_Y31_N31
\debounce_c|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(21));

-- Location: LCCOMB_X3_Y31_N26
\debounce_c|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|LessThan0~0_combout\ = (!\debounce_c|s_debounceCnt\(21) & !\debounce_c|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_c|s_debounceCnt\(21),
	datad => \debounce_c|s_debounceCnt\(20),
	combout => \debounce_c|LessThan0~0_combout\);

-- Location: LCCOMB_X4_Y31_N6
\debounce_c|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt[0]~0_combout\ = (\debounce_c|s_dirtyIn~q\ & (((\debounce_c|LessThan0~0_combout\ & !\debounce_c|LessThan0~7_combout\)) # (!\debounce_c|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|LessThan0~0_combout\,
	datab => \debounce_c|s_debounceCnt\(22),
	datac => \debounce_c|s_dirtyIn~q\,
	datad => \debounce_c|LessThan0~7_combout\,
	combout => \debounce_c|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X4_Y31_N20
\debounce_c|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~23_combout\ = (\debounce_c|Add0~0_combout\ & (\debounce_c|s_previousIn~q\ & \debounce_c|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|Add0~0_combout\,
	datab => \debounce_c|s_previousIn~q\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~23_combout\);

-- Location: FF_X3_Y32_N11
\debounce_c|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce_c|s_debounceCnt~23_combout\,
	sload => VCC,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(0));

-- Location: LCCOMB_X3_Y32_N12
\debounce_c|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|Add0~2_combout\ = (\debounce_c|s_debounceCnt\(1) & (\debounce_c|Add0~1\ & VCC)) # (!\debounce_c|s_debounceCnt\(1) & (!\debounce_c|Add0~1\))
-- \debounce_c|Add0~3\ = CARRY((!\debounce_c|s_debounceCnt\(1) & !\debounce_c|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounce_c|Add0~1\,
	combout => \debounce_c|Add0~2_combout\,
	cout => \debounce_c|Add0~3\);

-- Location: LCCOMB_X3_Y32_N4
\debounce_c|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~19_combout\ = (\debounce_c|Add0~2_combout\ & (\debounce_c|s_previousIn~q\ & \debounce_c|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|Add0~2_combout\,
	datac => \debounce_c|s_previousIn~q\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~19_combout\);

-- Location: FF_X3_Y32_N5
\debounce_c|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~19_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(1));

-- Location: LCCOMB_X3_Y32_N6
\debounce_c|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_debounceCnt~20_combout\ = (\debounce_c|s_previousIn~q\ & (\debounce_c|Add0~4_combout\ & \debounce_c|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_c|s_previousIn~q\,
	datac => \debounce_c|Add0~4_combout\,
	datad => \debounce_c|s_debounceCnt[0]~0_combout\,
	combout => \debounce_c|s_debounceCnt~20_combout\);

-- Location: FF_X3_Y32_N7
\debounce_c|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_debounceCnt~20_combout\,
	ena => \debounce_c|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_debounceCnt\(2));

-- Location: LCCOMB_X3_Y32_N8
\debounce_c|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_pulsedOut~5_combout\ = (!\debounce_c|s_debounceCnt\(2) & (!\debounce_c|s_debounceCnt\(4) & (!\debounce_c|s_debounceCnt\(1) & !\debounce_c|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(2),
	datab => \debounce_c|s_debounceCnt\(4),
	datac => \debounce_c|s_debounceCnt\(1),
	datad => \debounce_c|s_debounceCnt\(3),
	combout => \debounce_c|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X3_Y31_N24
\debounce_c|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_pulsedOut~6_combout\ = (\debounce_c|s_debounceCnt\(0) & (\debounce_c|s_dirtyIn~q\ & (\debounce_c|s_previousIn~q\ & !\debounce_c|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_debounceCnt\(0),
	datab => \debounce_c|s_dirtyIn~q\,
	datac => \debounce_c|s_previousIn~q\,
	datad => \debounce_c|s_debounceCnt\(22),
	combout => \debounce_c|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X1_Y33_N22
\debounce_c|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_c|s_pulsedOut~7_combout\ = (\debounce_c|s_pulsedOut~5_combout\ & (\debounce_c|s_pulsedOut~4_combout\ & (\debounce_c|s_pulsedOut~6_combout\ & !\debounce_c|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_c|s_pulsedOut~5_combout\,
	datab => \debounce_c|s_pulsedOut~4_combout\,
	datac => \debounce_c|s_pulsedOut~6_combout\,
	datad => \debounce_c|s_debounceCnt\(5),
	combout => \debounce_c|s_pulsedOut~7_combout\);

-- Location: FF_X1_Y33_N23
\debounce_c|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_c|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_c|s_pulsedOut~q\);

-- Location: LCCOMB_X1_Y33_N4
\drink_i|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|Selector6~0_combout\ = (\debounce_v|s_pulsedOut~q\) # ((\debounce_c|s_pulsedOut~q\) # (\drink_i|s_currentState.ESTADO6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_v|s_pulsedOut~q\,
	datac => \debounce_c|s_pulsedOut~q\,
	datad => \drink_i|s_currentState.ESTADO6~q\,
	combout => \drink_i|Selector6~0_combout\);

-- Location: CLKCTRL_G3
\drink_i|Selector6~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \drink_i|Selector6~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \drink_i|Selector6~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y33_N0
\drink_i|s_nextState.ESTADO1_267\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_nextState.ESTADO1_267~combout\ = (GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & ((\drink_i|s_currentState.ESTADO6~q\))) # (!GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & (\drink_i|s_nextState.ESTADO1_267~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_i|s_nextState.ESTADO1_267~combout\,
	datac => \drink_i|s_currentState.ESTADO6~q\,
	datad => \drink_i|Selector6~0clkctrl_outclk\,
	combout => \drink_i|s_nextState.ESTADO1_267~combout\);

-- Location: LCCOMB_X1_Y33_N26
\drink_i|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_currentState~13_combout\ = (!\debounce_reset|s_pulsedOut~q\ & !\drink_i|s_nextState.ESTADO1_267~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \drink_i|s_nextState.ESTADO1_267~combout\,
	combout => \drink_i|s_currentState~13_combout\);

-- Location: FF_X1_Y33_N27
\drink_i|s_currentState.ESTADO1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drink_i|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_i|s_currentState.ESTADO1~q\);

-- Location: LCCOMB_X1_Y33_N2
\drink_i|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|Selector2~0_combout\ = (!\drink_i|s_currentState.ESTADO1~q\ & \debounce_v|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_i|s_currentState.ESTADO1~q\,
	datac => \debounce_v|s_pulsedOut~q\,
	combout => \drink_i|Selector2~0_combout\);

-- Location: LCCOMB_X1_Y33_N18
\drink_i|s_nextState.ESTADO2_244\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_nextState.ESTADO2_244~combout\ = (GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & ((\drink_i|Selector2~0_combout\))) # (!GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & (\drink_i|s_nextState.ESTADO2_244~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_i|s_nextState.ESTADO2_244~combout\,
	datac => \drink_i|Selector6~0clkctrl_outclk\,
	datad => \drink_i|Selector2~0_combout\,
	combout => \drink_i|s_nextState.ESTADO2_244~combout\);

-- Location: LCCOMB_X1_Y33_N14
\drink_i|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_currentState~12_combout\ = (!\debounce_reset|s_pulsedOut~q\ & \drink_i|s_nextState.ESTADO2_244~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \drink_i|s_nextState.ESTADO2_244~combout\,
	combout => \drink_i|s_currentState~12_combout\);

-- Location: FF_X1_Y33_N15
\drink_i|s_currentState.ESTADO2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drink_i|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_i|s_currentState.ESTADO2~q\);

-- Location: LCCOMB_X2_Y33_N6
\drink_i|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|Selector3~0_combout\ = (\debounce_v|s_pulsedOut~q\ & \drink_i|s_currentState.ESTADO2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_v|s_pulsedOut~q\,
	datad => \drink_i|s_currentState.ESTADO2~q\,
	combout => \drink_i|Selector3~0_combout\);

-- Location: LCCOMB_X2_Y33_N16
\drink_i|s_nextState.ESTADO3_221\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_nextState.ESTADO3_221~combout\ = (GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & ((\drink_i|Selector3~0_combout\))) # (!GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & (\drink_i|s_nextState.ESTADO3_221~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_i|s_nextState.ESTADO3_221~combout\,
	datac => \drink_i|Selector6~0clkctrl_outclk\,
	datad => \drink_i|Selector3~0_combout\,
	combout => \drink_i|s_nextState.ESTADO3_221~combout\);

-- Location: LCCOMB_X2_Y33_N28
\drink_i|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_currentState~10_combout\ = (!\debounce_reset|s_pulsedOut~q\ & \drink_i|s_nextState.ESTADO3_221~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \drink_i|s_nextState.ESTADO3_221~combout\,
	combout => \drink_i|s_currentState~10_combout\);

-- Location: FF_X2_Y33_N29
\drink_i|s_currentState.ESTADO3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drink_i|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_i|s_currentState.ESTADO3~q\);

-- Location: LCCOMB_X1_Y33_N10
\drink_i|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|Selector4~0_combout\ = (\debounce_v|s_pulsedOut~q\ & ((\drink_i|s_currentState.ESTADO3~q\))) # (!\debounce_v|s_pulsedOut~q\ & (!\drink_i|s_currentState.ESTADO1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_i|s_currentState.ESTADO1~q\,
	datac => \debounce_v|s_pulsedOut~q\,
	datad => \drink_i|s_currentState.ESTADO3~q\,
	combout => \drink_i|Selector4~0_combout\);

-- Location: LCCOMB_X1_Y33_N16
\drink_i|s_nextState.ESTADO4_198\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_nextState.ESTADO4_198~combout\ = (GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & ((\drink_i|Selector4~0_combout\))) # (!GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & (\drink_i|s_nextState.ESTADO4_198~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_i|s_nextState.ESTADO4_198~combout\,
	datac => \drink_i|Selector6~0clkctrl_outclk\,
	datad => \drink_i|Selector4~0_combout\,
	combout => \drink_i|s_nextState.ESTADO4_198~combout\);

-- Location: LCCOMB_X1_Y33_N30
\drink_i|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_currentState~11_combout\ = (!\debounce_reset|s_pulsedOut~q\ & \drink_i|s_nextState.ESTADO4_198~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \drink_i|s_nextState.ESTADO4_198~combout\,
	combout => \drink_i|s_currentState~11_combout\);

-- Location: FF_X1_Y33_N31
\drink_i|s_currentState.ESTADO4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drink_i|s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_i|s_currentState.ESTADO4~q\);

-- Location: LCCOMB_X1_Y33_N12
\drink_i|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|Selector5~0_combout\ = (\debounce_v|s_pulsedOut~q\ & ((\drink_i|s_currentState.ESTADO4~q\))) # (!\debounce_v|s_pulsedOut~q\ & (\drink_i|s_currentState.ESTADO2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_i|s_currentState.ESTADO2~q\,
	datac => \drink_i|s_currentState.ESTADO4~q\,
	datad => \debounce_v|s_pulsedOut~q\,
	combout => \drink_i|Selector5~0_combout\);

-- Location: LCCOMB_X1_Y33_N20
\drink_i|s_nextState.ESTADO5_175\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_nextState.ESTADO5_175~combout\ = (GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & ((\drink_i|Selector5~0_combout\))) # (!GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & (\drink_i|s_nextState.ESTADO5_175~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_i|s_nextState.ESTADO5_175~combout\,
	datac => \drink_i|Selector6~0clkctrl_outclk\,
	datad => \drink_i|Selector5~0_combout\,
	combout => \drink_i|s_nextState.ESTADO5_175~combout\);

-- Location: LCCOMB_X1_Y33_N8
\drink_i|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_currentState~9_combout\ = (!\debounce_reset|s_pulsedOut~q\ & \drink_i|s_nextState.ESTADO5_175~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \drink_i|s_nextState.ESTADO5_175~combout\,
	combout => \drink_i|s_currentState~9_combout\);

-- Location: FF_X1_Y33_N9
\drink_i|s_currentState.ESTADO5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drink_i|s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_i|s_currentState.ESTADO5~q\);

-- Location: LCCOMB_X1_Y33_N28
\drink_i|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|Selector0~0_combout\ = (\drink_i|s_currentState.ESTADO5~q\) # ((!\debounce_v|s_pulsedOut~q\ & ((\drink_i|s_currentState.ESTADO4~q\) # (\drink_i|s_currentState.ESTADO3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_i|s_currentState.ESTADO4~q\,
	datab => \drink_i|s_currentState.ESTADO5~q\,
	datac => \debounce_v|s_pulsedOut~q\,
	datad => \drink_i|s_currentState.ESTADO3~q\,
	combout => \drink_i|Selector0~0_combout\);

-- Location: LCCOMB_X1_Y33_N24
\drink_i|s_nextState.ESTADO6_152\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_nextState.ESTADO6_152~combout\ = (GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & ((\drink_i|Selector0~0_combout\))) # (!GLOBAL(\drink_i|Selector6~0clkctrl_outclk\) & (\drink_i|s_nextState.ESTADO6_152~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_i|s_nextState.ESTADO6_152~combout\,
	datac => \drink_i|Selector6~0clkctrl_outclk\,
	datad => \drink_i|Selector0~0_combout\,
	combout => \drink_i|s_nextState.ESTADO6_152~combout\);

-- Location: LCCOMB_X1_Y33_N6
\drink_i|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_i|s_currentState~8_combout\ = (!\debounce_reset|s_pulsedOut~q\ & \drink_i|s_nextState.ESTADO6_152~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \drink_i|s_nextState.ESTADO6_152~combout\,
	combout => \drink_i|s_currentState~8_combout\);

-- Location: FF_X1_Y33_N7
\drink_i|s_currentState.ESTADO6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \drink_i|s_currentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_i|s_currentState.ESTADO6~q\);

ww_LEDG <= \LEDG~output_o\;
END structure;


