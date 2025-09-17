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

-- DATE "05/13/2025 13:52:43"

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
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \CLOCK_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \KEY[0]~padout\ : std_logic;
SIGNAL \KEY[1]~padout\ : std_logic;
SIGNAL \KEY[2]~padout\ : std_logic;
SIGNAL \KEY[3]~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \SW[0]~padout\ : std_logic;
SIGNAL \SW[10]~padout\ : std_logic;
SIGNAL \SW[11]~padout\ : std_logic;
SIGNAL \SW[12]~padout\ : std_logic;
SIGNAL \SW[13]~padout\ : std_logic;
SIGNAL \SW[14]~padout\ : std_logic;
SIGNAL \SW[15]~padout\ : std_logic;
SIGNAL \SW[16]~padout\ : std_logic;
SIGNAL \SW[17]~padout\ : std_logic;
SIGNAL \SW[1]~padout\ : std_logic;
SIGNAL \SW[2]~padout\ : std_logic;
SIGNAL \SW[3]~padout\ : std_logic;
SIGNAL \SW[4]~padout\ : std_logic;
SIGNAL \SW[5]~padout\ : std_logic;
SIGNAL \SW[6]~padout\ : std_logic;
SIGNAL \SW[7]~padout\ : std_logic;
SIGNAL \SW[8]~padout\ : std_logic;
SIGNAL \SW[9]~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \KEY[0]~ibuf_o\ : std_logic;
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[0]~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \SW[1]~ibuf_o\ : std_logic;
SIGNAL \SW[2]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
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

ENTITY 	Cronometro IS
    PORT (
	clk_50MHz : IN std_logic;
	globalReset : IN std_logic;
	startStop : IN std_logic;
	lapReset : IN std_logic;
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	LED_1Hz : BUFFER std_logic
	);
END Cronometro;

-- Design Ports Information
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED_1Hz	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- globalReset	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lapReset	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- startStop	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Cronometro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL ww_globalReset : std_logic;
SIGNAL ww_startStop : std_logic;
SIGNAL ww_lapReset : std_logic;
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED_1Hz : std_logic;
SIGNAL \DIV_100Hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV_1MHz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \LED_1Hz~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \clk_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[0]~6_combout\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[3]~13\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[4]~14_combout\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[4]~15\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[5]~16_combout\ : std_logic;
SIGNAL \DIV_1MHz|LessThan0~0_combout\ : std_logic;
SIGNAL \DIV_1MHz|LessThan0~1_combout\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[0]~7\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[1]~8_combout\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[1]~9\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[2]~10_combout\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[2]~11\ : std_logic;
SIGNAL \DIV_1MHz|s_divCounter[3]~12_combout\ : std_logic;
SIGNAL \DIV_1MHz|LessThan1~0_combout\ : std_logic;
SIGNAL \DIV_1MHz|clkOut~q\ : std_logic;
SIGNAL \DIV_1MHz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[0]~14_combout\ : std_logic;
SIGNAL \DIV_100Hz|LessThan0~1_combout\ : std_logic;
SIGNAL \DIV_100Hz|LessThan0~0_combout\ : std_logic;
SIGNAL \DIV_100Hz|LessThan0~2_combout\ : std_logic;
SIGNAL \DIV_100Hz|LessThan0~3_combout\ : std_logic;
SIGNAL \DIV_100Hz|LessThan0~4_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[0]~15\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[1]~16_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[1]~17\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[2]~18_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[2]~19\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[3]~20_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[3]~21\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[4]~22_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[4]~23\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[5]~24_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[5]~25\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[6]~26_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[6]~27\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[7]~28_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[7]~29\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[8]~30_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[8]~31\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[9]~32_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[9]~33\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[10]~34_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[10]~35\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[11]~36_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[11]~37\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[12]~38_combout\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[12]~39\ : std_logic;
SIGNAL \DIV_100Hz|s_divCounter[13]~40_combout\ : std_logic;
SIGNAL \DIV_100Hz|LessThan1~1_combout\ : std_logic;
SIGNAL \DIV_100Hz|LessThan1~0_combout\ : std_logic;
SIGNAL \DIV_100Hz|LessThan1~2_combout\ : std_logic;
SIGNAL \DIV_100Hz|LessThan1~3_combout\ : std_logic;
SIGNAL \DIV_100Hz|clkOut~q\ : std_logic;
SIGNAL \DIV_100Hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \globalReset~input_o\ : std_logic;
SIGNAL \globalReset_sync~q\ : std_logic;
SIGNAL \lapReset~input_o\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_dirtyIn~q\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_previousIn~q\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~1\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~3\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~5\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~7\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~8_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~9\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~10_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~11\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~12_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~13\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~14_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~15\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~16_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~17\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~18_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~19\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~20_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~21\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~22_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~23\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~24_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~25\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~26_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~27\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~28_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~29\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~30_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~31\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~32_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~33\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~34_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~35\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~36_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~37\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~38_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~39\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~40_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt[18]~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~41\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~42_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|LessThan0~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|LessThan0~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|LessThan0~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|LessThan0~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|LessThan0~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|LessThan0~5_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|LessThan0~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|LessThan0~7_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~43\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~44_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|Add0~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \DEBOUNCE_LAP|s_pulsedOut~q\ : std_logic;
SIGNAL \CONTROL_UNIT|reg_fstate.LAPVIEW~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|fstate.LAPVIEW~q\ : std_logic;
SIGNAL \startStop~input_o\ : std_logic;
SIGNAL \DEBOUNCE_START|s_dirtyIn~q\ : std_logic;
SIGNAL \DEBOUNCE_START|s_previousIn~q\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~1\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~3\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~5\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~7\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~8_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~9\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~10_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~11\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~12_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~13\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~14_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~15\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~16_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~17\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~18_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~19\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~20_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~21\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~22_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~23\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~24_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~25\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~26_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~27\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~28_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~29\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~30_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~31\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~32_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~33\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~34_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~35\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~36_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~37\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~38_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt[21]~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt[21]~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~39\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~40_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|LessThan0~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|LessThan0~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|LessThan0~5_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|LessThan0~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|LessThan0~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|LessThan0~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|LessThan0~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|LessThan0~7_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt[21]~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~41\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~42_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~43\ : std_logic;
SIGNAL \DEBOUNCE_START|Add0~44_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \DEBOUNCE_START|s_pulsedOut~q\ : std_logic;
SIGNAL \CONTROL_UNIT|reg_fstate.STARTED~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|reg_fstate.STARTED~1_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|fstate.STARTED~q\ : std_logic;
SIGNAL \CONTROL_UNIT|reg_fstate.STOPPED~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|reg_fstate.STOPPED~1_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|fstate.STOPPED~q\ : std_logic;
SIGNAL \CONTROL_UNIT|reg_fstate.CLEARED~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|reg_fstate.CLEARED~1_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|fstate.CLEARED~q\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~24_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~22_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count[2]~23_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Add3~0_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~34_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Add3~1_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~35_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Equal0~0_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~25_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|regEnb~0_combout\ : std_logic;
SIGNAL \digit0[1]~1_combout\ : std_logic;
SIGNAL \digit0[3]~3_combout\ : std_logic;
SIGNAL \digit0[0]~0_combout\ : std_logic;
SIGNAL \digit0[2]~2_combout\ : std_logic;
SIGNAL \DECODER0|Mux6~0_combout\ : std_logic;
SIGNAL \DECODER0|Mux5~0_combout\ : std_logic;
SIGNAL \DECODER0|Mux4~0_combout\ : std_logic;
SIGNAL \DECODER0|Mux3~0_combout\ : std_logic;
SIGNAL \DECODER0|Mux2~0_combout\ : std_logic;
SIGNAL \DECODER0|Mux1~0_combout\ : std_logic;
SIGNAL \DECODER0|Mux0~0_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~26_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count[6]~36_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~27_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Add2~1_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~38_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Equal1~0_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Add2~0_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~37_combout\ : std_logic;
SIGNAL \digit1[2]~2_combout\ : std_logic;
SIGNAL \digit1[1]~1_combout\ : std_logic;
SIGNAL \digit1[3]~3_combout\ : std_logic;
SIGNAL \digit1[0]~0_combout\ : std_logic;
SIGNAL \DECODER1|Mux6~0_combout\ : std_logic;
SIGNAL \DECODER1|Mux5~0_combout\ : std_logic;
SIGNAL \DECODER1|Mux4~0_combout\ : std_logic;
SIGNAL \DECODER1|Mux3~0_combout\ : std_logic;
SIGNAL \DECODER1|Mux2~0_combout\ : std_logic;
SIGNAL \DECODER1|Mux1~0_combout\ : std_logic;
SIGNAL \DECODER1|Mux0~0_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~28_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count[9]~29_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~30_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Add1~1_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~40_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Equal2~0_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Add1~0_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~39_combout\ : std_logic;
SIGNAL \digit2[2]~2_combout\ : std_logic;
SIGNAL \digit2[1]~1_combout\ : std_logic;
SIGNAL \digit2[3]~3_combout\ : std_logic;
SIGNAL \digit2[0]~0_combout\ : std_logic;
SIGNAL \DECODER2|Mux6~0_combout\ : std_logic;
SIGNAL \DECODER2|Mux5~0_combout\ : std_logic;
SIGNAL \DECODER2|Mux4~0_combout\ : std_logic;
SIGNAL \DECODER2|Mux3~0_combout\ : std_logic;
SIGNAL \DECODER2|Mux2~0_combout\ : std_logic;
SIGNAL \DECODER2|Mux1~0_combout\ : std_logic;
SIGNAL \DECODER2|Mux0~0_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Add0~0_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~43_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count[15]~32_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count[15]~42_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count[15]~31_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~41_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~33_combout\ : std_logic;
SIGNAL \BCD_COUNTER|Add0~1_combout\ : std_logic;
SIGNAL \BCD_COUNTER|s_count~44_combout\ : std_logic;
SIGNAL \digit3[3]~3_combout\ : std_logic;
SIGNAL \digit3[2]~2_combout\ : std_logic;
SIGNAL \digit3[1]~1_combout\ : std_logic;
SIGNAL \digit3[0]~0_combout\ : std_logic;
SIGNAL \DECODER3|Mux6~0_combout\ : std_logic;
SIGNAL \DECODER3|Mux5~0_combout\ : std_logic;
SIGNAL \DECODER3|Mux4~0_combout\ : std_logic;
SIGNAL \DECODER3|Mux3~0_combout\ : std_logic;
SIGNAL \DECODER3|Mux2~0_combout\ : std_logic;
SIGNAL \DECODER3|Mux1~0_combout\ : std_logic;
SIGNAL \DECODER3|Mux0~0_combout\ : std_logic;
SIGNAL \PULSE_LED|s_counter[0]~7_combout\ : std_logic;
SIGNAL \PULSE_LED|s_counter[5]~18\ : std_logic;
SIGNAL \PULSE_LED|s_counter[6]~19_combout\ : std_logic;
SIGNAL \PULSE_LED|LessThan0~0_combout\ : std_logic;
SIGNAL \PULSE_LED|LessThan0~1_combout\ : std_logic;
SIGNAL \PULSE_LED|s_counter[0]~8\ : std_logic;
SIGNAL \PULSE_LED|s_counter[1]~9_combout\ : std_logic;
SIGNAL \PULSE_LED|s_counter[1]~10\ : std_logic;
SIGNAL \PULSE_LED|s_counter[2]~11_combout\ : std_logic;
SIGNAL \PULSE_LED|s_counter[2]~12\ : std_logic;
SIGNAL \PULSE_LED|s_counter[3]~13_combout\ : std_logic;
SIGNAL \PULSE_LED|s_counter[3]~14\ : std_logic;
SIGNAL \PULSE_LED|s_counter[4]~15_combout\ : std_logic;
SIGNAL \PULSE_LED|s_counter[4]~16\ : std_logic;
SIGNAL \PULSE_LED|s_counter[5]~17_combout\ : std_logic;
SIGNAL \PULSE_LED|LessThan1~0_combout\ : std_logic;
SIGNAL \PULSE_LED|LessThan1~1_combout\ : std_logic;
SIGNAL \VALUE_REGISTER|dataOut\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PULSE_LED|s_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DIV_100Hz|s_divCounter\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \DIV_1MHz|s_divCounter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \BCD_COUNTER|s_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DEBOUNCE_START|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \DEBOUNCE_LAP|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \DECODER2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DECODER0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DECODER3|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHz <= clk_50MHz;
ww_globalReset <= globalReset;
ww_startStop <= startStop;
ww_lapReset <= lapReset;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LED_1Hz <= ww_LED_1Hz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DIV_100Hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV_100Hz|clkOut~q\);

\DIV_1MHz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV_1MHz|clkOut~q\);

\clk_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHz~input_o\);
\DECODER2|ALT_INV_Mux0~0_combout\ <= NOT \DECODER2|Mux0~0_combout\;
\DECODER1|ALT_INV_Mux0~0_combout\ <= NOT \DECODER1|Mux0~0_combout\;
\DECODER0|ALT_INV_Mux0~0_combout\ <= NOT \DECODER0|Mux0~0_combout\;
\DECODER3|ALT_INV_Mux0~0_combout\ <= NOT \DECODER3|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\LED_1Hz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PULSE_LED|LessThan1~1_combout\,
	devoe => ww_devoe,
	o => \LED_1Hz~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: CLKCTRL_G2
\clk_50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y36_N12
\DIV_1MHz|s_divCounter[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_1MHz|s_divCounter[0]~6_combout\ = \DIV_1MHz|s_divCounter\(0) $ (VCC)
-- \DIV_1MHz|s_divCounter[0]~7\ = CARRY(\DIV_1MHz|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_1MHz|s_divCounter\(0),
	datad => VCC,
	combout => \DIV_1MHz|s_divCounter[0]~6_combout\,
	cout => \DIV_1MHz|s_divCounter[0]~7\);

-- Location: LCCOMB_X1_Y36_N18
\DIV_1MHz|s_divCounter[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_1MHz|s_divCounter[3]~12_combout\ = (\DIV_1MHz|s_divCounter\(3) & (!\DIV_1MHz|s_divCounter[2]~11\)) # (!\DIV_1MHz|s_divCounter\(3) & ((\DIV_1MHz|s_divCounter[2]~11\) # (GND)))
-- \DIV_1MHz|s_divCounter[3]~13\ = CARRY((!\DIV_1MHz|s_divCounter[2]~11\) # (!\DIV_1MHz|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_1MHz|s_divCounter\(3),
	datad => VCC,
	cin => \DIV_1MHz|s_divCounter[2]~11\,
	combout => \DIV_1MHz|s_divCounter[3]~12_combout\,
	cout => \DIV_1MHz|s_divCounter[3]~13\);

-- Location: LCCOMB_X1_Y36_N20
\DIV_1MHz|s_divCounter[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_1MHz|s_divCounter[4]~14_combout\ = (\DIV_1MHz|s_divCounter\(4) & (\DIV_1MHz|s_divCounter[3]~13\ $ (GND))) # (!\DIV_1MHz|s_divCounter\(4) & (!\DIV_1MHz|s_divCounter[3]~13\ & VCC))
-- \DIV_1MHz|s_divCounter[4]~15\ = CARRY((\DIV_1MHz|s_divCounter\(4) & !\DIV_1MHz|s_divCounter[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_1MHz|s_divCounter\(4),
	datad => VCC,
	cin => \DIV_1MHz|s_divCounter[3]~13\,
	combout => \DIV_1MHz|s_divCounter[4]~14_combout\,
	cout => \DIV_1MHz|s_divCounter[4]~15\);

-- Location: FF_X1_Y36_N21
\DIV_1MHz|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \DIV_1MHz|s_divCounter[4]~14_combout\,
	sclr => \DIV_1MHz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_1MHz|s_divCounter\(4));

-- Location: LCCOMB_X1_Y36_N22
\DIV_1MHz|s_divCounter[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_1MHz|s_divCounter[5]~16_combout\ = \DIV_1MHz|s_divCounter\(5) $ (\DIV_1MHz|s_divCounter[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_1MHz|s_divCounter\(5),
	cin => \DIV_1MHz|s_divCounter[4]~15\,
	combout => \DIV_1MHz|s_divCounter[5]~16_combout\);

-- Location: FF_X1_Y36_N23
\DIV_1MHz|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \DIV_1MHz|s_divCounter[5]~16_combout\,
	sclr => \DIV_1MHz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_1MHz|s_divCounter\(5));

-- Location: LCCOMB_X1_Y36_N10
\DIV_1MHz|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_1MHz|LessThan0~0_combout\ = (!\DIV_1MHz|s_divCounter\(0) & (!\DIV_1MHz|s_divCounter\(2) & (!\DIV_1MHz|s_divCounter\(1) & !\DIV_1MHz|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_1MHz|s_divCounter\(0),
	datab => \DIV_1MHz|s_divCounter\(2),
	datac => \DIV_1MHz|s_divCounter\(1),
	datad => \DIV_1MHz|s_divCounter\(3),
	combout => \DIV_1MHz|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y36_N4
\DIV_1MHz|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_1MHz|LessThan0~1_combout\ = (\DIV_1MHz|s_divCounter\(4) & (\DIV_1MHz|s_divCounter\(5) & !\DIV_1MHz|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_1MHz|s_divCounter\(4),
	datac => \DIV_1MHz|s_divCounter\(5),
	datad => \DIV_1MHz|LessThan0~0_combout\,
	combout => \DIV_1MHz|LessThan0~1_combout\);

-- Location: FF_X1_Y36_N13
\DIV_1MHz|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \DIV_1MHz|s_divCounter[0]~6_combout\,
	sclr => \DIV_1MHz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_1MHz|s_divCounter\(0));

-- Location: LCCOMB_X1_Y36_N14
\DIV_1MHz|s_divCounter[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_1MHz|s_divCounter[1]~8_combout\ = (\DIV_1MHz|s_divCounter\(1) & (!\DIV_1MHz|s_divCounter[0]~7\)) # (!\DIV_1MHz|s_divCounter\(1) & ((\DIV_1MHz|s_divCounter[0]~7\) # (GND)))
-- \DIV_1MHz|s_divCounter[1]~9\ = CARRY((!\DIV_1MHz|s_divCounter[0]~7\) # (!\DIV_1MHz|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_1MHz|s_divCounter\(1),
	datad => VCC,
	cin => \DIV_1MHz|s_divCounter[0]~7\,
	combout => \DIV_1MHz|s_divCounter[1]~8_combout\,
	cout => \DIV_1MHz|s_divCounter[1]~9\);

-- Location: FF_X1_Y36_N15
\DIV_1MHz|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \DIV_1MHz|s_divCounter[1]~8_combout\,
	sclr => \DIV_1MHz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_1MHz|s_divCounter\(1));

-- Location: LCCOMB_X1_Y36_N16
\DIV_1MHz|s_divCounter[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_1MHz|s_divCounter[2]~10_combout\ = (\DIV_1MHz|s_divCounter\(2) & (\DIV_1MHz|s_divCounter[1]~9\ $ (GND))) # (!\DIV_1MHz|s_divCounter\(2) & (!\DIV_1MHz|s_divCounter[1]~9\ & VCC))
-- \DIV_1MHz|s_divCounter[2]~11\ = CARRY((\DIV_1MHz|s_divCounter\(2) & !\DIV_1MHz|s_divCounter[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_1MHz|s_divCounter\(2),
	datad => VCC,
	cin => \DIV_1MHz|s_divCounter[1]~9\,
	combout => \DIV_1MHz|s_divCounter[2]~10_combout\,
	cout => \DIV_1MHz|s_divCounter[2]~11\);

-- Location: FF_X1_Y36_N17
\DIV_1MHz|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \DIV_1MHz|s_divCounter[2]~10_combout\,
	sclr => \DIV_1MHz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_1MHz|s_divCounter\(2));

-- Location: FF_X1_Y36_N19
\DIV_1MHz|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \DIV_1MHz|s_divCounter[3]~12_combout\,
	sclr => \DIV_1MHz|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_1MHz|s_divCounter\(3));

-- Location: LCCOMB_X1_Y36_N26
\DIV_1MHz|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_1MHz|LessThan1~0_combout\ = (\DIV_1MHz|s_divCounter\(5)) # ((\DIV_1MHz|s_divCounter\(3) & \DIV_1MHz|s_divCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_1MHz|s_divCounter\(3),
	datac => \DIV_1MHz|s_divCounter\(5),
	datad => \DIV_1MHz|s_divCounter\(4),
	combout => \DIV_1MHz|LessThan1~0_combout\);

-- Location: FF_X1_Y36_N27
\DIV_1MHz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \DIV_1MHz|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_1MHz|clkOut~q\);

-- Location: CLKCTRL_G0
\DIV_1MHz|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DIV_1MHz|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DIV_1MHz|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y72_N2
\DIV_100Hz|s_divCounter[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[0]~14_combout\ = \DIV_100Hz|s_divCounter\(0) $ (VCC)
-- \DIV_100Hz|s_divCounter[0]~15\ = CARRY(\DIV_100Hz|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_100Hz|s_divCounter\(0),
	datad => VCC,
	combout => \DIV_100Hz|s_divCounter[0]~14_combout\,
	cout => \DIV_100Hz|s_divCounter[0]~15\);

-- Location: LCCOMB_X56_Y72_N18
\DIV_100Hz|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|LessThan0~1_combout\ = ((!\DIV_100Hz|s_divCounter\(10)) # (!\DIV_100Hz|s_divCounter\(9))) # (!\DIV_100Hz|s_divCounter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_100Hz|s_divCounter\(8),
	datac => \DIV_100Hz|s_divCounter\(9),
	datad => \DIV_100Hz|s_divCounter\(10),
	combout => \DIV_100Hz|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y72_N0
\DIV_100Hz|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|LessThan0~0_combout\ = (!\DIV_100Hz|s_divCounter\(4) & (!\DIV_100Hz|s_divCounter\(6) & !\DIV_100Hz|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(4),
	datac => \DIV_100Hz|s_divCounter\(6),
	datad => \DIV_100Hz|s_divCounter\(5),
	combout => \DIV_100Hz|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y72_N12
\DIV_100Hz|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|LessThan0~2_combout\ = (((!\DIV_100Hz|s_divCounter\(0)) # (!\DIV_100Hz|s_divCounter\(1))) # (!\DIV_100Hz|s_divCounter\(2))) # (!\DIV_100Hz|s_divCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(3),
	datab => \DIV_100Hz|s_divCounter\(2),
	datac => \DIV_100Hz|s_divCounter\(1),
	datad => \DIV_100Hz|s_divCounter\(0),
	combout => \DIV_100Hz|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y72_N22
\DIV_100Hz|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|LessThan0~3_combout\ = (\DIV_100Hz|LessThan0~1_combout\) # ((!\DIV_100Hz|s_divCounter\(7) & (\DIV_100Hz|LessThan0~0_combout\ & \DIV_100Hz|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(7),
	datab => \DIV_100Hz|LessThan0~1_combout\,
	datac => \DIV_100Hz|LessThan0~0_combout\,
	datad => \DIV_100Hz|LessThan0~2_combout\,
	combout => \DIV_100Hz|LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y72_N30
\DIV_100Hz|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|LessThan0~4_combout\ = (\DIV_100Hz|s_divCounter\(13) & ((\DIV_100Hz|s_divCounter\(11)) # ((\DIV_100Hz|s_divCounter\(12)) # (!\DIV_100Hz|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(13),
	datab => \DIV_100Hz|s_divCounter\(11),
	datac => \DIV_100Hz|s_divCounter\(12),
	datad => \DIV_100Hz|LessThan0~3_combout\,
	combout => \DIV_100Hz|LessThan0~4_combout\);

-- Location: FF_X55_Y72_N3
\DIV_100Hz|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[0]~14_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(0));

-- Location: LCCOMB_X55_Y72_N4
\DIV_100Hz|s_divCounter[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[1]~16_combout\ = (\DIV_100Hz|s_divCounter\(1) & (!\DIV_100Hz|s_divCounter[0]~15\)) # (!\DIV_100Hz|s_divCounter\(1) & ((\DIV_100Hz|s_divCounter[0]~15\) # (GND)))
-- \DIV_100Hz|s_divCounter[1]~17\ = CARRY((!\DIV_100Hz|s_divCounter[0]~15\) # (!\DIV_100Hz|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_100Hz|s_divCounter\(1),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[0]~15\,
	combout => \DIV_100Hz|s_divCounter[1]~16_combout\,
	cout => \DIV_100Hz|s_divCounter[1]~17\);

-- Location: FF_X55_Y72_N5
\DIV_100Hz|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[1]~16_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(1));

-- Location: LCCOMB_X55_Y72_N6
\DIV_100Hz|s_divCounter[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[2]~18_combout\ = (\DIV_100Hz|s_divCounter\(2) & (\DIV_100Hz|s_divCounter[1]~17\ $ (GND))) # (!\DIV_100Hz|s_divCounter\(2) & (!\DIV_100Hz|s_divCounter[1]~17\ & VCC))
-- \DIV_100Hz|s_divCounter[2]~19\ = CARRY((\DIV_100Hz|s_divCounter\(2) & !\DIV_100Hz|s_divCounter[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(2),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[1]~17\,
	combout => \DIV_100Hz|s_divCounter[2]~18_combout\,
	cout => \DIV_100Hz|s_divCounter[2]~19\);

-- Location: FF_X55_Y72_N7
\DIV_100Hz|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[2]~18_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(2));

-- Location: LCCOMB_X55_Y72_N8
\DIV_100Hz|s_divCounter[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[3]~20_combout\ = (\DIV_100Hz|s_divCounter\(3) & (!\DIV_100Hz|s_divCounter[2]~19\)) # (!\DIV_100Hz|s_divCounter\(3) & ((\DIV_100Hz|s_divCounter[2]~19\) # (GND)))
-- \DIV_100Hz|s_divCounter[3]~21\ = CARRY((!\DIV_100Hz|s_divCounter[2]~19\) # (!\DIV_100Hz|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_100Hz|s_divCounter\(3),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[2]~19\,
	combout => \DIV_100Hz|s_divCounter[3]~20_combout\,
	cout => \DIV_100Hz|s_divCounter[3]~21\);

-- Location: FF_X55_Y72_N9
\DIV_100Hz|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[3]~20_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(3));

-- Location: LCCOMB_X55_Y72_N10
\DIV_100Hz|s_divCounter[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[4]~22_combout\ = (\DIV_100Hz|s_divCounter\(4) & (\DIV_100Hz|s_divCounter[3]~21\ $ (GND))) # (!\DIV_100Hz|s_divCounter\(4) & (!\DIV_100Hz|s_divCounter[3]~21\ & VCC))
-- \DIV_100Hz|s_divCounter[4]~23\ = CARRY((\DIV_100Hz|s_divCounter\(4) & !\DIV_100Hz|s_divCounter[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(4),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[3]~21\,
	combout => \DIV_100Hz|s_divCounter[4]~22_combout\,
	cout => \DIV_100Hz|s_divCounter[4]~23\);

-- Location: FF_X55_Y72_N11
\DIV_100Hz|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[4]~22_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(4));

-- Location: LCCOMB_X55_Y72_N12
\DIV_100Hz|s_divCounter[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[5]~24_combout\ = (\DIV_100Hz|s_divCounter\(5) & (!\DIV_100Hz|s_divCounter[4]~23\)) # (!\DIV_100Hz|s_divCounter\(5) & ((\DIV_100Hz|s_divCounter[4]~23\) # (GND)))
-- \DIV_100Hz|s_divCounter[5]~25\ = CARRY((!\DIV_100Hz|s_divCounter[4]~23\) # (!\DIV_100Hz|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(5),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[4]~23\,
	combout => \DIV_100Hz|s_divCounter[5]~24_combout\,
	cout => \DIV_100Hz|s_divCounter[5]~25\);

-- Location: FF_X55_Y72_N13
\DIV_100Hz|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[5]~24_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(5));

-- Location: LCCOMB_X55_Y72_N14
\DIV_100Hz|s_divCounter[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[6]~26_combout\ = (\DIV_100Hz|s_divCounter\(6) & (\DIV_100Hz|s_divCounter[5]~25\ $ (GND))) # (!\DIV_100Hz|s_divCounter\(6) & (!\DIV_100Hz|s_divCounter[5]~25\ & VCC))
-- \DIV_100Hz|s_divCounter[6]~27\ = CARRY((\DIV_100Hz|s_divCounter\(6) & !\DIV_100Hz|s_divCounter[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(6),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[5]~25\,
	combout => \DIV_100Hz|s_divCounter[6]~26_combout\,
	cout => \DIV_100Hz|s_divCounter[6]~27\);

-- Location: FF_X55_Y72_N15
\DIV_100Hz|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[6]~26_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(6));

-- Location: LCCOMB_X55_Y72_N16
\DIV_100Hz|s_divCounter[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[7]~28_combout\ = (\DIV_100Hz|s_divCounter\(7) & (!\DIV_100Hz|s_divCounter[6]~27\)) # (!\DIV_100Hz|s_divCounter\(7) & ((\DIV_100Hz|s_divCounter[6]~27\) # (GND)))
-- \DIV_100Hz|s_divCounter[7]~29\ = CARRY((!\DIV_100Hz|s_divCounter[6]~27\) # (!\DIV_100Hz|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_100Hz|s_divCounter\(7),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[6]~27\,
	combout => \DIV_100Hz|s_divCounter[7]~28_combout\,
	cout => \DIV_100Hz|s_divCounter[7]~29\);

-- Location: FF_X55_Y72_N17
\DIV_100Hz|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[7]~28_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(7));

-- Location: LCCOMB_X55_Y72_N18
\DIV_100Hz|s_divCounter[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[8]~30_combout\ = (\DIV_100Hz|s_divCounter\(8) & (\DIV_100Hz|s_divCounter[7]~29\ $ (GND))) # (!\DIV_100Hz|s_divCounter\(8) & (!\DIV_100Hz|s_divCounter[7]~29\ & VCC))
-- \DIV_100Hz|s_divCounter[8]~31\ = CARRY((\DIV_100Hz|s_divCounter\(8) & !\DIV_100Hz|s_divCounter[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_100Hz|s_divCounter\(8),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[7]~29\,
	combout => \DIV_100Hz|s_divCounter[8]~30_combout\,
	cout => \DIV_100Hz|s_divCounter[8]~31\);

-- Location: FF_X55_Y72_N19
\DIV_100Hz|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[8]~30_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(8));

-- Location: LCCOMB_X55_Y72_N20
\DIV_100Hz|s_divCounter[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[9]~32_combout\ = (\DIV_100Hz|s_divCounter\(9) & (!\DIV_100Hz|s_divCounter[8]~31\)) # (!\DIV_100Hz|s_divCounter\(9) & ((\DIV_100Hz|s_divCounter[8]~31\) # (GND)))
-- \DIV_100Hz|s_divCounter[9]~33\ = CARRY((!\DIV_100Hz|s_divCounter[8]~31\) # (!\DIV_100Hz|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_100Hz|s_divCounter\(9),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[8]~31\,
	combout => \DIV_100Hz|s_divCounter[9]~32_combout\,
	cout => \DIV_100Hz|s_divCounter[9]~33\);

-- Location: FF_X55_Y72_N21
\DIV_100Hz|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[9]~32_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(9));

-- Location: LCCOMB_X55_Y72_N22
\DIV_100Hz|s_divCounter[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[10]~34_combout\ = (\DIV_100Hz|s_divCounter\(10) & (\DIV_100Hz|s_divCounter[9]~33\ $ (GND))) # (!\DIV_100Hz|s_divCounter\(10) & (!\DIV_100Hz|s_divCounter[9]~33\ & VCC))
-- \DIV_100Hz|s_divCounter[10]~35\ = CARRY((\DIV_100Hz|s_divCounter\(10) & !\DIV_100Hz|s_divCounter[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(10),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[9]~33\,
	combout => \DIV_100Hz|s_divCounter[10]~34_combout\,
	cout => \DIV_100Hz|s_divCounter[10]~35\);

-- Location: FF_X55_Y72_N23
\DIV_100Hz|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[10]~34_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(10));

-- Location: LCCOMB_X55_Y72_N24
\DIV_100Hz|s_divCounter[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[11]~36_combout\ = (\DIV_100Hz|s_divCounter\(11) & (!\DIV_100Hz|s_divCounter[10]~35\)) # (!\DIV_100Hz|s_divCounter\(11) & ((\DIV_100Hz|s_divCounter[10]~35\) # (GND)))
-- \DIV_100Hz|s_divCounter[11]~37\ = CARRY((!\DIV_100Hz|s_divCounter[10]~35\) # (!\DIV_100Hz|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_100Hz|s_divCounter\(11),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[10]~35\,
	combout => \DIV_100Hz|s_divCounter[11]~36_combout\,
	cout => \DIV_100Hz|s_divCounter[11]~37\);

-- Location: FF_X55_Y72_N25
\DIV_100Hz|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[11]~36_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(11));

-- Location: LCCOMB_X55_Y72_N26
\DIV_100Hz|s_divCounter[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[12]~38_combout\ = (\DIV_100Hz|s_divCounter\(12) & (\DIV_100Hz|s_divCounter[11]~37\ $ (GND))) # (!\DIV_100Hz|s_divCounter\(12) & (!\DIV_100Hz|s_divCounter[11]~37\ & VCC))
-- \DIV_100Hz|s_divCounter[12]~39\ = CARRY((\DIV_100Hz|s_divCounter\(12) & !\DIV_100Hz|s_divCounter[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(12),
	datad => VCC,
	cin => \DIV_100Hz|s_divCounter[11]~37\,
	combout => \DIV_100Hz|s_divCounter[12]~38_combout\,
	cout => \DIV_100Hz|s_divCounter[12]~39\);

-- Location: FF_X55_Y72_N27
\DIV_100Hz|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[12]~38_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(12));

-- Location: LCCOMB_X55_Y72_N28
\DIV_100Hz|s_divCounter[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|s_divCounter[13]~40_combout\ = \DIV_100Hz|s_divCounter\(13) $ (\DIV_100Hz|s_divCounter[12]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(13),
	cin => \DIV_100Hz|s_divCounter[12]~39\,
	combout => \DIV_100Hz|s_divCounter[13]~40_combout\);

-- Location: FF_X55_Y72_N29
\DIV_100Hz|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|s_divCounter[13]~40_combout\,
	sclr => \DIV_100Hz|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|s_divCounter\(13));

-- Location: LCCOMB_X56_Y72_N8
\DIV_100Hz|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|LessThan1~1_combout\ = (\DIV_100Hz|s_divCounter\(9) & (\DIV_100Hz|s_divCounter\(7) & \DIV_100Hz|s_divCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_100Hz|s_divCounter\(9),
	datac => \DIV_100Hz|s_divCounter\(7),
	datad => \DIV_100Hz|s_divCounter\(8),
	combout => \DIV_100Hz|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y72_N16
\DIV_100Hz|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|LessThan1~0_combout\ = (!\DIV_100Hz|s_divCounter\(3) & (((!\DIV_100Hz|s_divCounter\(2)) # (!\DIV_100Hz|s_divCounter\(1))) # (!\DIV_100Hz|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(0),
	datab => \DIV_100Hz|s_divCounter\(1),
	datac => \DIV_100Hz|s_divCounter\(2),
	datad => \DIV_100Hz|s_divCounter\(3),
	combout => \DIV_100Hz|LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y72_N28
\DIV_100Hz|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|LessThan1~2_combout\ = (\DIV_100Hz|s_divCounter\(11)) # ((\DIV_100Hz|LessThan1~1_combout\ & ((!\DIV_100Hz|LessThan1~0_combout\) # (!\DIV_100Hz|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|LessThan0~0_combout\,
	datab => \DIV_100Hz|s_divCounter\(11),
	datac => \DIV_100Hz|LessThan1~1_combout\,
	datad => \DIV_100Hz|LessThan1~0_combout\,
	combout => \DIV_100Hz|LessThan1~2_combout\);

-- Location: LCCOMB_X56_Y72_N0
\DIV_100Hz|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_100Hz|LessThan1~3_combout\ = (\DIV_100Hz|s_divCounter\(13)) # ((\DIV_100Hz|s_divCounter\(12) & ((\DIV_100Hz|s_divCounter\(10)) # (\DIV_100Hz|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_100Hz|s_divCounter\(13),
	datab => \DIV_100Hz|s_divCounter\(10),
	datac => \DIV_100Hz|s_divCounter\(12),
	datad => \DIV_100Hz|LessThan1~2_combout\,
	combout => \DIV_100Hz|LessThan1~3_combout\);

-- Location: FF_X56_Y72_N1
\DIV_100Hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DIV_100Hz|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_100Hz|clkOut~q\);

-- Location: CLKCTRL_G14
\DIV_100Hz|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DIV_100Hz|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DIV_100Hz|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X96_Y0_N1
\globalReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_globalReset,
	o => \globalReset~input_o\);

-- Location: FF_X97_Y1_N27
globalReset_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \globalReset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \globalReset_sync~q\);

-- Location: IOIBUF_X94_Y0_N1
\lapReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lapReset,
	o => \lapReset~input_o\);

-- Location: FF_X98_Y4_N25
\DEBOUNCE_LAP|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	asdata => \lapReset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_dirtyIn~q\);

-- Location: FF_X99_Y4_N13
\DEBOUNCE_LAP|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	asdata => \DEBOUNCE_LAP|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_previousIn~q\);

-- Location: LCCOMB_X97_Y4_N10
\DEBOUNCE_LAP|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~0_combout\ = \DEBOUNCE_LAP|s_debounceCnt\(0) $ (VCC)
-- \DEBOUNCE_LAP|Add0~1\ = CARRY(\DEBOUNCE_LAP|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(0),
	datad => VCC,
	combout => \DEBOUNCE_LAP|Add0~0_combout\,
	cout => \DEBOUNCE_LAP|Add0~1\);

-- Location: LCCOMB_X98_Y4_N2
\DEBOUNCE_LAP|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~24_combout\ = (\DEBOUNCE_LAP|Add0~0_combout\ & \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|Add0~0_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~24_combout\);

-- Location: FF_X98_Y4_N3
\DEBOUNCE_LAP|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~24_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(0));

-- Location: LCCOMB_X97_Y4_N12
\DEBOUNCE_LAP|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~2_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(1) & (\DEBOUNCE_LAP|Add0~1\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(1) & (!\DEBOUNCE_LAP|Add0~1\))
-- \DEBOUNCE_LAP|Add0~3\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(1) & !\DEBOUNCE_LAP|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(1),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~1\,
	combout => \DEBOUNCE_LAP|Add0~2_combout\,
	cout => \DEBOUNCE_LAP|Add0~3\);

-- Location: LCCOMB_X97_Y4_N4
\DEBOUNCE_LAP|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~20_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ & \DEBOUNCE_LAP|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	datad => \DEBOUNCE_LAP|Add0~2_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~20_combout\);

-- Location: FF_X97_Y4_N5
\DEBOUNCE_LAP|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~20_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(1));

-- Location: LCCOMB_X97_Y4_N14
\DEBOUNCE_LAP|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~4_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(2) & ((GND) # (!\DEBOUNCE_LAP|Add0~3\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(2) & (\DEBOUNCE_LAP|Add0~3\ $ (GND)))
-- \DEBOUNCE_LAP|Add0~5\ = CARRY((\DEBOUNCE_LAP|s_debounceCnt\(2)) # (!\DEBOUNCE_LAP|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(2),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~3\,
	combout => \DEBOUNCE_LAP|Add0~4_combout\,
	cout => \DEBOUNCE_LAP|Add0~5\);

-- Location: LCCOMB_X97_Y4_N2
\DEBOUNCE_LAP|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~21_combout\ = (\DEBOUNCE_LAP|Add0~4_combout\ & \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|Add0~4_combout\,
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~21_combout\);

-- Location: FF_X97_Y4_N3
\DEBOUNCE_LAP|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~21_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(2));

-- Location: LCCOMB_X97_Y4_N16
\DEBOUNCE_LAP|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~6_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(3) & (\DEBOUNCE_LAP|Add0~5\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(3) & (!\DEBOUNCE_LAP|Add0~5\))
-- \DEBOUNCE_LAP|Add0~7\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(3) & !\DEBOUNCE_LAP|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(3),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~5\,
	combout => \DEBOUNCE_LAP|Add0~6_combout\,
	cout => \DEBOUNCE_LAP|Add0~7\);

-- Location: LCCOMB_X97_Y4_N18
\DEBOUNCE_LAP|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~8_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(4) & ((GND) # (!\DEBOUNCE_LAP|Add0~7\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(4) & (\DEBOUNCE_LAP|Add0~7\ $ (GND)))
-- \DEBOUNCE_LAP|Add0~9\ = CARRY((\DEBOUNCE_LAP|s_debounceCnt\(4)) # (!\DEBOUNCE_LAP|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(4),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~7\,
	combout => \DEBOUNCE_LAP|Add0~8_combout\,
	cout => \DEBOUNCE_LAP|Add0~9\);

-- Location: LCCOMB_X96_Y4_N28
\DEBOUNCE_LAP|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~23_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ & \DEBOUNCE_LAP|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	datad => \DEBOUNCE_LAP|Add0~8_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~23_combout\);

-- Location: FF_X96_Y4_N29
\DEBOUNCE_LAP|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~23_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(4));

-- Location: LCCOMB_X97_Y4_N20
\DEBOUNCE_LAP|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~10_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(5) & (\DEBOUNCE_LAP|Add0~9\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(5) & (!\DEBOUNCE_LAP|Add0~9\))
-- \DEBOUNCE_LAP|Add0~11\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(5) & !\DEBOUNCE_LAP|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(5),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~9\,
	combout => \DEBOUNCE_LAP|Add0~10_combout\,
	cout => \DEBOUNCE_LAP|Add0~11\);

-- Location: LCCOMB_X97_Y4_N8
\DEBOUNCE_LAP|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~27_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ & \DEBOUNCE_LAP|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	datad => \DEBOUNCE_LAP|Add0~10_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~27_combout\);

-- Location: FF_X97_Y4_N9
\DEBOUNCE_LAP|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~27_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(5));

-- Location: LCCOMB_X97_Y4_N22
\DEBOUNCE_LAP|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~12_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(6) & ((GND) # (!\DEBOUNCE_LAP|Add0~11\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(6) & (\DEBOUNCE_LAP|Add0~11\ $ (GND)))
-- \DEBOUNCE_LAP|Add0~13\ = CARRY((\DEBOUNCE_LAP|s_debounceCnt\(6)) # (!\DEBOUNCE_LAP|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(6),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~11\,
	combout => \DEBOUNCE_LAP|Add0~12_combout\,
	cout => \DEBOUNCE_LAP|Add0~13\);

-- Location: LCCOMB_X99_Y4_N28
\DEBOUNCE_LAP|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~1_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\ & ((\DEBOUNCE_LAP|Add0~12_combout\) # (!\DEBOUNCE_LAP|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_previousIn~q\,
	datab => \DEBOUNCE_LAP|Add0~12_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~1_combout\);

-- Location: FF_X99_Y4_N29
\DEBOUNCE_LAP|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~1_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(6));

-- Location: LCCOMB_X97_Y4_N24
\DEBOUNCE_LAP|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~14_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(7) & (\DEBOUNCE_LAP|Add0~13\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(7) & (!\DEBOUNCE_LAP|Add0~13\))
-- \DEBOUNCE_LAP|Add0~15\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(7) & !\DEBOUNCE_LAP|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(7),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~13\,
	combout => \DEBOUNCE_LAP|Add0~14_combout\,
	cout => \DEBOUNCE_LAP|Add0~15\);

-- Location: LCCOMB_X98_Y4_N4
\DEBOUNCE_LAP|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~12_combout\ = (\DEBOUNCE_LAP|Add0~14_combout\ & \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|Add0~14_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~12_combout\);

-- Location: FF_X98_Y4_N5
\DEBOUNCE_LAP|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~12_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(7));

-- Location: LCCOMB_X97_Y4_N26
\DEBOUNCE_LAP|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~16_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(8) & ((GND) # (!\DEBOUNCE_LAP|Add0~15\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(8) & (\DEBOUNCE_LAP|Add0~15\ $ (GND)))
-- \DEBOUNCE_LAP|Add0~17\ = CARRY((\DEBOUNCE_LAP|s_debounceCnt\(8)) # (!\DEBOUNCE_LAP|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(8),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~15\,
	combout => \DEBOUNCE_LAP|Add0~16_combout\,
	cout => \DEBOUNCE_LAP|Add0~17\);

-- Location: LCCOMB_X98_Y4_N6
\DEBOUNCE_LAP|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~13_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\ & ((\DEBOUNCE_LAP|Add0~16_combout\) # (!\DEBOUNCE_LAP|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_previousIn~q\,
	datac => \DEBOUNCE_LAP|Add0~16_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~13_combout\);

-- Location: FF_X98_Y4_N7
\DEBOUNCE_LAP|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~13_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(8));

-- Location: LCCOMB_X97_Y4_N28
\DEBOUNCE_LAP|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~18_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(9) & (\DEBOUNCE_LAP|Add0~17\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(9) & (!\DEBOUNCE_LAP|Add0~17\))
-- \DEBOUNCE_LAP|Add0~19\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(9) & !\DEBOUNCE_LAP|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(9),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~17\,
	combout => \DEBOUNCE_LAP|Add0~18_combout\,
	cout => \DEBOUNCE_LAP|Add0~19\);

-- Location: LCCOMB_X98_Y4_N20
\DEBOUNCE_LAP|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~14_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\ & ((\DEBOUNCE_LAP|Add0~18_combout\) # (!\DEBOUNCE_LAP|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|Add0~18_combout\,
	datac => \DEBOUNCE_LAP|s_previousIn~q\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~14_combout\);

-- Location: FF_X98_Y4_N21
\DEBOUNCE_LAP|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~14_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(9));

-- Location: LCCOMB_X97_Y4_N30
\DEBOUNCE_LAP|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~20_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(10) & ((GND) # (!\DEBOUNCE_LAP|Add0~19\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(10) & (\DEBOUNCE_LAP|Add0~19\ $ (GND)))
-- \DEBOUNCE_LAP|Add0~21\ = CARRY((\DEBOUNCE_LAP|s_debounceCnt\(10)) # (!\DEBOUNCE_LAP|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(10),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~19\,
	combout => \DEBOUNCE_LAP|Add0~20_combout\,
	cout => \DEBOUNCE_LAP|Add0~21\);

-- Location: LCCOMB_X98_Y4_N22
\DEBOUNCE_LAP|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~15_combout\ = (\DEBOUNCE_LAP|Add0~20_combout\ & \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|Add0~20_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~15_combout\);

-- Location: FF_X98_Y4_N23
\DEBOUNCE_LAP|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~15_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y4_N16
\DEBOUNCE_LAP|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_pulsedOut~2_combout\ = (!\DEBOUNCE_LAP|s_debounceCnt\(10) & (!\DEBOUNCE_LAP|s_debounceCnt\(9) & (!\DEBOUNCE_LAP|s_debounceCnt\(7) & !\DEBOUNCE_LAP|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(10),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(9),
	datac => \DEBOUNCE_LAP|s_debounceCnt\(7),
	datad => \DEBOUNCE_LAP|s_debounceCnt\(8),
	combout => \DEBOUNCE_LAP|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X97_Y3_N0
\DEBOUNCE_LAP|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~22_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(11) & (\DEBOUNCE_LAP|Add0~21\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(11) & (!\DEBOUNCE_LAP|Add0~21\))
-- \DEBOUNCE_LAP|Add0~23\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(11) & !\DEBOUNCE_LAP|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(11),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~21\,
	combout => \DEBOUNCE_LAP|Add0~22_combout\,
	cout => \DEBOUNCE_LAP|Add0~23\);

-- Location: LCCOMB_X99_Y4_N0
\DEBOUNCE_LAP|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~16_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\ & ((\DEBOUNCE_LAP|Add0~22_combout\) # (!\DEBOUNCE_LAP|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_previousIn~q\,
	datac => \DEBOUNCE_LAP|Add0~22_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~16_combout\);

-- Location: FF_X99_Y4_N1
\DEBOUNCE_LAP|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~16_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(11));

-- Location: LCCOMB_X97_Y3_N2
\DEBOUNCE_LAP|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~24_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(12) & ((GND) # (!\DEBOUNCE_LAP|Add0~23\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(12) & (\DEBOUNCE_LAP|Add0~23\ $ (GND)))
-- \DEBOUNCE_LAP|Add0~25\ = CARRY((\DEBOUNCE_LAP|s_debounceCnt\(12)) # (!\DEBOUNCE_LAP|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(12),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~23\,
	combout => \DEBOUNCE_LAP|Add0~24_combout\,
	cout => \DEBOUNCE_LAP|Add0~25\);

-- Location: LCCOMB_X99_Y4_N6
\DEBOUNCE_LAP|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~8_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ & \DEBOUNCE_LAP|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	datad => \DEBOUNCE_LAP|Add0~24_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~8_combout\);

-- Location: FF_X99_Y4_N7
\DEBOUNCE_LAP|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~8_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(12));

-- Location: LCCOMB_X97_Y3_N4
\DEBOUNCE_LAP|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~26_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(13) & (\DEBOUNCE_LAP|Add0~25\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(13) & (!\DEBOUNCE_LAP|Add0~25\))
-- \DEBOUNCE_LAP|Add0~27\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(13) & !\DEBOUNCE_LAP|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(13),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~25\,
	combout => \DEBOUNCE_LAP|Add0~26_combout\,
	cout => \DEBOUNCE_LAP|Add0~27\);

-- Location: LCCOMB_X99_Y4_N4
\DEBOUNCE_LAP|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~9_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ & \DEBOUNCE_LAP|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	datad => \DEBOUNCE_LAP|Add0~26_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~9_combout\);

-- Location: FF_X99_Y4_N5
\DEBOUNCE_LAP|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~9_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(13));

-- Location: LCCOMB_X97_Y3_N6
\DEBOUNCE_LAP|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~28_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(14) & ((GND) # (!\DEBOUNCE_LAP|Add0~27\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(14) & (\DEBOUNCE_LAP|Add0~27\ $ (GND)))
-- \DEBOUNCE_LAP|Add0~29\ = CARRY((\DEBOUNCE_LAP|s_debounceCnt\(14)) # (!\DEBOUNCE_LAP|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(14),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~27\,
	combout => \DEBOUNCE_LAP|Add0~28_combout\,
	cout => \DEBOUNCE_LAP|Add0~29\);

-- Location: LCCOMB_X99_Y4_N26
\DEBOUNCE_LAP|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~17_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\ & ((\DEBOUNCE_LAP|Add0~28_combout\) # (!\DEBOUNCE_LAP|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_previousIn~q\,
	datac => \DEBOUNCE_LAP|Add0~28_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~17_combout\);

-- Location: FF_X99_Y4_N27
\DEBOUNCE_LAP|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~17_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(14));

-- Location: LCCOMB_X97_Y3_N8
\DEBOUNCE_LAP|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~30_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(15) & (\DEBOUNCE_LAP|Add0~29\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(15) & (!\DEBOUNCE_LAP|Add0~29\))
-- \DEBOUNCE_LAP|Add0~31\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(15) & !\DEBOUNCE_LAP|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(15),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~29\,
	combout => \DEBOUNCE_LAP|Add0~30_combout\,
	cout => \DEBOUNCE_LAP|Add0~31\);

-- Location: LCCOMB_X97_Y3_N28
\DEBOUNCE_LAP|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~5_combout\ = (\DEBOUNCE_LAP|Add0~30_combout\ & \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|Add0~30_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~5_combout\);

-- Location: FF_X97_Y3_N29
\DEBOUNCE_LAP|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~5_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(15));

-- Location: LCCOMB_X97_Y3_N10
\DEBOUNCE_LAP|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~32_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(16) & ((GND) # (!\DEBOUNCE_LAP|Add0~31\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(16) & (\DEBOUNCE_LAP|Add0~31\ $ (GND)))
-- \DEBOUNCE_LAP|Add0~33\ = CARRY((\DEBOUNCE_LAP|s_debounceCnt\(16)) # (!\DEBOUNCE_LAP|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(16),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~31\,
	combout => \DEBOUNCE_LAP|Add0~32_combout\,
	cout => \DEBOUNCE_LAP|Add0~33\);

-- Location: LCCOMB_X99_Y4_N14
\DEBOUNCE_LAP|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~6_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ & \DEBOUNCE_LAP|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	datad => \DEBOUNCE_LAP|Add0~32_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~6_combout\);

-- Location: FF_X99_Y4_N15
\DEBOUNCE_LAP|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~6_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(16));

-- Location: LCCOMB_X97_Y3_N12
\DEBOUNCE_LAP|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~34_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(17) & (\DEBOUNCE_LAP|Add0~33\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(17) & (!\DEBOUNCE_LAP|Add0~33\))
-- \DEBOUNCE_LAP|Add0~35\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(17) & !\DEBOUNCE_LAP|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(17),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~33\,
	combout => \DEBOUNCE_LAP|Add0~34_combout\,
	cout => \DEBOUNCE_LAP|Add0~35\);

-- Location: LCCOMB_X97_Y3_N30
\DEBOUNCE_LAP|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~7_combout\ = (\DEBOUNCE_LAP|Add0~34_combout\ & \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|Add0~34_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~7_combout\);

-- Location: FF_X97_Y3_N31
\DEBOUNCE_LAP|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~7_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(17));

-- Location: LCCOMB_X97_Y3_N14
\DEBOUNCE_LAP|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~36_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(18) & ((GND) # (!\DEBOUNCE_LAP|Add0~35\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(18) & (\DEBOUNCE_LAP|Add0~35\ $ (GND)))
-- \DEBOUNCE_LAP|Add0~37\ = CARRY((\DEBOUNCE_LAP|s_debounceCnt\(18)) # (!\DEBOUNCE_LAP|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(18),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~35\,
	combout => \DEBOUNCE_LAP|Add0~36_combout\,
	cout => \DEBOUNCE_LAP|Add0~37\);

-- Location: LCCOMB_X97_Y3_N24
\DEBOUNCE_LAP|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt[18]~18_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\ & (\DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\ & ((\DEBOUNCE_LAP|Add0~36_combout\) # (!\DEBOUNCE_LAP|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_previousIn~q\,
	datab => \DEBOUNCE_LAP|Add0~36_combout\,
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt[18]~18_combout\);

-- Location: FF_X97_Y3_N25
\DEBOUNCE_LAP|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(18));

-- Location: LCCOMB_X97_Y3_N16
\DEBOUNCE_LAP|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~38_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(19) & (\DEBOUNCE_LAP|Add0~37\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(19) & (!\DEBOUNCE_LAP|Add0~37\))
-- \DEBOUNCE_LAP|Add0~39\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(19) & !\DEBOUNCE_LAP|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(19),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~37\,
	combout => \DEBOUNCE_LAP|Add0~38_combout\,
	cout => \DEBOUNCE_LAP|Add0~39\);

-- Location: LCCOMB_X97_Y3_N26
\DEBOUNCE_LAP|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt[19]~19_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\ & (\DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\ & ((\DEBOUNCE_LAP|Add0~38_combout\) # (!\DEBOUNCE_LAP|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_previousIn~q\,
	datab => \DEBOUNCE_LAP|Add0~38_combout\,
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt[19]~19_combout\);

-- Location: FF_X97_Y3_N27
\DEBOUNCE_LAP|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(19));

-- Location: LCCOMB_X97_Y3_N18
\DEBOUNCE_LAP|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~40_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(20) & ((GND) # (!\DEBOUNCE_LAP|Add0~39\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(20) & (\DEBOUNCE_LAP|Add0~39\ $ (GND)))
-- \DEBOUNCE_LAP|Add0~41\ = CARRY((\DEBOUNCE_LAP|s_debounceCnt\(20)) # (!\DEBOUNCE_LAP|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(20),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~39\,
	combout => \DEBOUNCE_LAP|Add0~40_combout\,
	cout => \DEBOUNCE_LAP|Add0~41\);

-- Location: LCCOMB_X98_Y4_N28
\DEBOUNCE_LAP|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt[20]~10_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ & (\DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\ & \DEBOUNCE_LAP|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	datad => \DEBOUNCE_LAP|Add0~40_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt[20]~10_combout\);

-- Location: FF_X98_Y4_N29
\DEBOUNCE_LAP|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(20));

-- Location: LCCOMB_X99_Y4_N2
\DEBOUNCE_LAP|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_pulsedOut~1_combout\ = (!\DEBOUNCE_LAP|s_debounceCnt\(12) & (!\DEBOUNCE_LAP|s_debounceCnt\(21) & (!\DEBOUNCE_LAP|s_debounceCnt\(13) & !\DEBOUNCE_LAP|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(12),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(21),
	datac => \DEBOUNCE_LAP|s_debounceCnt\(13),
	datad => \DEBOUNCE_LAP|s_debounceCnt\(20),
	combout => \DEBOUNCE_LAP|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X99_Y4_N8
\DEBOUNCE_LAP|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_pulsedOut~3_combout\ = (!\DEBOUNCE_LAP|s_debounceCnt\(14) & (!\DEBOUNCE_LAP|s_debounceCnt\(11) & (!\DEBOUNCE_LAP|s_debounceCnt\(19) & !\DEBOUNCE_LAP|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(14),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(11),
	datac => \DEBOUNCE_LAP|s_debounceCnt\(19),
	datad => \DEBOUNCE_LAP|s_debounceCnt\(18),
	combout => \DEBOUNCE_LAP|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X99_Y4_N16
\DEBOUNCE_LAP|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_pulsedOut~0_combout\ = (!\DEBOUNCE_LAP|s_debounceCnt\(6) & (!\DEBOUNCE_LAP|s_debounceCnt\(16) & (!\DEBOUNCE_LAP|s_debounceCnt\(15) & !\DEBOUNCE_LAP|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(6),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(16),
	datac => \DEBOUNCE_LAP|s_debounceCnt\(15),
	datad => \DEBOUNCE_LAP|s_debounceCnt\(17),
	combout => \DEBOUNCE_LAP|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X99_Y4_N10
\DEBOUNCE_LAP|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_pulsedOut~4_combout\ = (\DEBOUNCE_LAP|s_pulsedOut~2_combout\ & (\DEBOUNCE_LAP|s_pulsedOut~1_combout\ & (\DEBOUNCE_LAP|s_pulsedOut~3_combout\ & \DEBOUNCE_LAP|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_pulsedOut~2_combout\,
	datab => \DEBOUNCE_LAP|s_pulsedOut~1_combout\,
	datac => \DEBOUNCE_LAP|s_pulsedOut~3_combout\,
	datad => \DEBOUNCE_LAP|s_pulsedOut~0_combout\,
	combout => \DEBOUNCE_LAP|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X99_Y4_N20
\DEBOUNCE_LAP|s_debounceCnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt[18]~2_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(0)) # ((\DEBOUNCE_LAP|s_debounceCnt\(5)) # ((!\DEBOUNCE_LAP|s_pulsedOut~4_combout\) # (!\DEBOUNCE_LAP|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(0),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(5),
	datac => \DEBOUNCE_LAP|s_pulsedOut~5_combout\,
	datad => \DEBOUNCE_LAP|s_pulsedOut~4_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt[18]~2_combout\);

-- Location: LCCOMB_X99_Y4_N30
\DEBOUNCE_LAP|s_debounceCnt[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(22)) # (((\DEBOUNCE_LAP|s_debounceCnt[18]~2_combout\) # (!\DEBOUNCE_LAP|s_dirtyIn~q\)) # (!\DEBOUNCE_LAP|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(22),
	datab => \DEBOUNCE_LAP|s_previousIn~q\,
	datac => \DEBOUNCE_LAP|s_dirtyIn~q\,
	datad => \DEBOUNCE_LAP|s_debounceCnt[18]~2_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\);

-- Location: LCCOMB_X97_Y3_N20
\DEBOUNCE_LAP|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~42_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(21) & (\DEBOUNCE_LAP|Add0~41\ & VCC)) # (!\DEBOUNCE_LAP|s_debounceCnt\(21) & (!\DEBOUNCE_LAP|Add0~41\))
-- \DEBOUNCE_LAP|Add0~43\ = CARRY((!\DEBOUNCE_LAP|s_debounceCnt\(21) & !\DEBOUNCE_LAP|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(21),
	datad => VCC,
	cin => \DEBOUNCE_LAP|Add0~41\,
	combout => \DEBOUNCE_LAP|Add0~42_combout\,
	cout => \DEBOUNCE_LAP|Add0~43\);

-- Location: LCCOMB_X98_Y4_N30
\DEBOUNCE_LAP|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt[21]~11_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ & (\DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\ & \DEBOUNCE_LAP|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	datad => \DEBOUNCE_LAP|Add0~42_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt[21]~11_combout\);

-- Location: FF_X98_Y4_N31
\DEBOUNCE_LAP|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(21));

-- Location: LCCOMB_X98_Y4_N24
\DEBOUNCE_LAP|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|LessThan0~1_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(11) & \DEBOUNCE_LAP|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_LAP|s_debounceCnt\(11),
	datad => \DEBOUNCE_LAP|s_debounceCnt\(9),
	combout => \DEBOUNCE_LAP|LessThan0~1_combout\);

-- Location: LCCOMB_X98_Y4_N8
\DEBOUNCE_LAP|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|LessThan0~2_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(6) & ((\DEBOUNCE_LAP|s_debounceCnt\(5)) # ((\DEBOUNCE_LAP|s_debounceCnt\(0)) # (!\DEBOUNCE_LAP|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(5),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(0),
	datac => \DEBOUNCE_LAP|s_pulsedOut~5_combout\,
	datad => \DEBOUNCE_LAP|s_debounceCnt\(6),
	combout => \DEBOUNCE_LAP|LessThan0~2_combout\);

-- Location: LCCOMB_X98_Y3_N0
\DEBOUNCE_LAP|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|LessThan0~0_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(19) & (\DEBOUNCE_LAP|s_debounceCnt\(18) & (\DEBOUNCE_LAP|s_debounceCnt\(8) & \DEBOUNCE_LAP|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(19),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(18),
	datac => \DEBOUNCE_LAP|s_debounceCnt\(8),
	datad => \DEBOUNCE_LAP|s_debounceCnt\(14),
	combout => \DEBOUNCE_LAP|LessThan0~0_combout\);

-- Location: LCCOMB_X98_Y4_N14
\DEBOUNCE_LAP|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|LessThan0~3_combout\ = (\DEBOUNCE_LAP|LessThan0~1_combout\ & (\DEBOUNCE_LAP|LessThan0~0_combout\ & ((\DEBOUNCE_LAP|s_debounceCnt\(7)) # (\DEBOUNCE_LAP|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(7),
	datab => \DEBOUNCE_LAP|LessThan0~1_combout\,
	datac => \DEBOUNCE_LAP|LessThan0~2_combout\,
	datad => \DEBOUNCE_LAP|LessThan0~0_combout\,
	combout => \DEBOUNCE_LAP|LessThan0~3_combout\);

-- Location: LCCOMB_X99_Y4_N18
\DEBOUNCE_LAP|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|LessThan0~4_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(12)) # ((\DEBOUNCE_LAP|s_debounceCnt\(13)) # ((\DEBOUNCE_LAP|s_debounceCnt\(11) & \DEBOUNCE_LAP|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(12),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(11),
	datac => \DEBOUNCE_LAP|s_debounceCnt\(13),
	datad => \DEBOUNCE_LAP|s_debounceCnt\(10),
	combout => \DEBOUNCE_LAP|LessThan0~4_combout\);

-- Location: LCCOMB_X99_Y4_N24
\DEBOUNCE_LAP|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|LessThan0~5_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(16)) # ((\DEBOUNCE_LAP|s_debounceCnt\(15)) # ((\DEBOUNCE_LAP|s_debounceCnt\(14) & \DEBOUNCE_LAP|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(14),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(16),
	datac => \DEBOUNCE_LAP|s_debounceCnt\(15),
	datad => \DEBOUNCE_LAP|LessThan0~4_combout\,
	combout => \DEBOUNCE_LAP|LessThan0~5_combout\);

-- Location: LCCOMB_X99_Y4_N22
\DEBOUNCE_LAP|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|LessThan0~6_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(19) & (\DEBOUNCE_LAP|s_debounceCnt\(18) & ((\DEBOUNCE_LAP|s_debounceCnt\(17)) # (\DEBOUNCE_LAP|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(19),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(18),
	datac => \DEBOUNCE_LAP|s_debounceCnt\(17),
	datad => \DEBOUNCE_LAP|LessThan0~5_combout\,
	combout => \DEBOUNCE_LAP|LessThan0~6_combout\);

-- Location: LCCOMB_X98_Y4_N12
\DEBOUNCE_LAP|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|LessThan0~7_combout\ = (\DEBOUNCE_LAP|s_debounceCnt\(21)) # ((\DEBOUNCE_LAP|s_debounceCnt\(20)) # ((\DEBOUNCE_LAP|LessThan0~3_combout\) # (\DEBOUNCE_LAP|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(21),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(20),
	datac => \DEBOUNCE_LAP|LessThan0~3_combout\,
	datad => \DEBOUNCE_LAP|LessThan0~6_combout\,
	combout => \DEBOUNCE_LAP|LessThan0~7_combout\);

-- Location: LCCOMB_X98_Y4_N18
\DEBOUNCE_LAP|s_debounceCnt[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\ = (\DEBOUNCE_LAP|s_dirtyIn~q\ & ((!\DEBOUNCE_LAP|LessThan0~7_combout\) # (!\DEBOUNCE_LAP|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_dirtyIn~q\,
	datac => \DEBOUNCE_LAP|s_debounceCnt\(22),
	datad => \DEBOUNCE_LAP|LessThan0~7_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\);

-- Location: LCCOMB_X98_Y4_N26
\DEBOUNCE_LAP|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt[22]~25_combout\ = (\DEBOUNCE_LAP|s_dirtyIn~q\ & ((\DEBOUNCE_LAP|s_debounceCnt\(22) & ((!\DEBOUNCE_LAP|LessThan0~7_combout\))) # (!\DEBOUNCE_LAP|s_debounceCnt\(22) & (\DEBOUNCE_LAP|s_debounceCnt[18]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_dirtyIn~q\,
	datab => \DEBOUNCE_LAP|s_debounceCnt\(22),
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~2_combout\,
	datad => \DEBOUNCE_LAP|LessThan0~7_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X97_Y3_N22
\DEBOUNCE_LAP|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|Add0~44_combout\ = \DEBOUNCE_LAP|s_debounceCnt\(22) $ (\DEBOUNCE_LAP|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(22),
	cin => \DEBOUNCE_LAP|Add0~43\,
	combout => \DEBOUNCE_LAP|Add0~44_combout\);

-- Location: LCCOMB_X98_Y4_N10
\DEBOUNCE_LAP|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt[22]~26_combout\ = (\DEBOUNCE_LAP|s_previousIn~q\ & (((\DEBOUNCE_LAP|s_debounceCnt[22]~25_combout\ & \DEBOUNCE_LAP|Add0~44_combout\)))) # (!\DEBOUNCE_LAP|s_previousIn~q\ & (\DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_previousIn~q\,
	datab => \DEBOUNCE_LAP|s_debounceCnt[18]~0_combout\,
	datac => \DEBOUNCE_LAP|s_debounceCnt[22]~25_combout\,
	datad => \DEBOUNCE_LAP|Add0~44_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt[22]~26_combout\);

-- Location: FF_X98_Y4_N11
\DEBOUNCE_LAP|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(22));

-- Location: LCCOMB_X98_Y4_N0
\DEBOUNCE_LAP|s_debounceCnt[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ = (\DEBOUNCE_LAP|s_dirtyIn~q\ & (\DEBOUNCE_LAP|s_previousIn~q\ & ((!\DEBOUNCE_LAP|LessThan0~7_combout\) # (!\DEBOUNCE_LAP|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_dirtyIn~q\,
	datab => \DEBOUNCE_LAP|s_debounceCnt\(22),
	datac => \DEBOUNCE_LAP|s_previousIn~q\,
	datad => \DEBOUNCE_LAP|LessThan0~7_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\);

-- Location: LCCOMB_X97_Y4_N0
\DEBOUNCE_LAP|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_debounceCnt~22_combout\ = (\DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\ & \DEBOUNCE_LAP|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|s_debounceCnt[18]~4_combout\,
	datad => \DEBOUNCE_LAP|Add0~6_combout\,
	combout => \DEBOUNCE_LAP|s_debounceCnt~22_combout\);

-- Location: FF_X97_Y4_N1
\DEBOUNCE_LAP|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_debounceCnt~22_combout\,
	ena => \DEBOUNCE_LAP|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_debounceCnt\(3));

-- Location: LCCOMB_X97_Y4_N6
\DEBOUNCE_LAP|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_pulsedOut~5_combout\ = (!\DEBOUNCE_LAP|s_debounceCnt\(3) & (!\DEBOUNCE_LAP|s_debounceCnt\(4) & (!\DEBOUNCE_LAP|s_debounceCnt\(1) & !\DEBOUNCE_LAP|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_debounceCnt\(3),
	datab => \DEBOUNCE_LAP|s_debounceCnt\(4),
	datac => \DEBOUNCE_LAP|s_debounceCnt\(1),
	datad => \DEBOUNCE_LAP|s_debounceCnt\(2),
	combout => \DEBOUNCE_LAP|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X99_Y4_N12
\DEBOUNCE_LAP|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_pulsedOut~6_combout\ = (\DEBOUNCE_LAP|s_dirtyIn~q\ & (\DEBOUNCE_LAP|s_debounceCnt\(0) & (\DEBOUNCE_LAP|s_previousIn~q\ & !\DEBOUNCE_LAP|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_dirtyIn~q\,
	datab => \DEBOUNCE_LAP|s_debounceCnt\(0),
	datac => \DEBOUNCE_LAP|s_previousIn~q\,
	datad => \DEBOUNCE_LAP|s_debounceCnt\(22),
	combout => \DEBOUNCE_LAP|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X98_Y1_N10
\DEBOUNCE_LAP|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_LAP|s_pulsedOut~7_combout\ = (\DEBOUNCE_LAP|s_pulsedOut~5_combout\ & (!\DEBOUNCE_LAP|s_debounceCnt\(5) & (\DEBOUNCE_LAP|s_pulsedOut~6_combout\ & \DEBOUNCE_LAP|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_LAP|s_pulsedOut~5_combout\,
	datab => \DEBOUNCE_LAP|s_debounceCnt\(5),
	datac => \DEBOUNCE_LAP|s_pulsedOut~6_combout\,
	datad => \DEBOUNCE_LAP|s_pulsedOut~4_combout\,
	combout => \DEBOUNCE_LAP|s_pulsedOut~7_combout\);

-- Location: FF_X98_Y1_N11
\DEBOUNCE_LAP|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_LAP|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_LAP|s_pulsedOut~q\);

-- Location: LCCOMB_X97_Y1_N20
\CONTROL_UNIT|reg_fstate.LAPVIEW~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|reg_fstate.LAPVIEW~0_combout\ = (!\globalReset_sync~q\ & ((\DEBOUNCE_LAP|s_pulsedOut~q\ & (\CONTROL_UNIT|fstate.STARTED~q\)) # (!\DEBOUNCE_LAP|s_pulsedOut~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|fstate.STARTED~q\,
	datab => \DEBOUNCE_LAP|s_pulsedOut~q\,
	datac => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	datad => \globalReset_sync~q\,
	combout => \CONTROL_UNIT|reg_fstate.LAPVIEW~0_combout\);

-- Location: FF_X97_Y1_N21
\CONTROL_UNIT|fstate.LAPVIEW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \CONTROL_UNIT|reg_fstate.LAPVIEW~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|fstate.LAPVIEW~q\);

-- Location: IOIBUF_X100_Y0_N15
\startStop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_startStop,
	o => \startStop~input_o\);

-- Location: FF_X100_Y2_N7
\DEBOUNCE_START|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	asdata => \startStop~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_dirtyIn~q\);

-- Location: FF_X98_Y2_N5
\DEBOUNCE_START|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	asdata => \DEBOUNCE_START|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_previousIn~q\);

-- Location: LCCOMB_X99_Y3_N10
\DEBOUNCE_START|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~0_combout\ = \DEBOUNCE_START|s_debounceCnt\(0) $ (VCC)
-- \DEBOUNCE_START|Add0~1\ = CARRY(\DEBOUNCE_START|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(0),
	datad => VCC,
	combout => \DEBOUNCE_START|Add0~0_combout\,
	cout => \DEBOUNCE_START|Add0~1\);

-- Location: LCCOMB_X98_Y3_N20
\DEBOUNCE_START|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~23_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|Add0~0_combout\ & \DEBOUNCE_START|s_debounceCnt[21]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|Add0~0_combout\,
	datad => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~23_combout\);

-- Location: FF_X98_Y3_N21
\DEBOUNCE_START|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~23_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(0));

-- Location: LCCOMB_X99_Y3_N12
\DEBOUNCE_START|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~2_combout\ = (\DEBOUNCE_START|s_debounceCnt\(1) & (\DEBOUNCE_START|Add0~1\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(1) & (!\DEBOUNCE_START|Add0~1\))
-- \DEBOUNCE_START|Add0~3\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(1) & !\DEBOUNCE_START|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(1),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~1\,
	combout => \DEBOUNCE_START|Add0~2_combout\,
	cout => \DEBOUNCE_START|Add0~3\);

-- Location: LCCOMB_X99_Y3_N8
\DEBOUNCE_START|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~19_combout\ = (\DEBOUNCE_START|Add0~2_combout\ & (\DEBOUNCE_START|s_previousIn~q\ & \DEBOUNCE_START|s_debounceCnt[21]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|Add0~2_combout\,
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~19_combout\);

-- Location: FF_X99_Y3_N9
\DEBOUNCE_START|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~19_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(1));

-- Location: LCCOMB_X99_Y3_N14
\DEBOUNCE_START|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~4_combout\ = (\DEBOUNCE_START|s_debounceCnt\(2) & ((GND) # (!\DEBOUNCE_START|Add0~3\))) # (!\DEBOUNCE_START|s_debounceCnt\(2) & (\DEBOUNCE_START|Add0~3\ $ (GND)))
-- \DEBOUNCE_START|Add0~5\ = CARRY((\DEBOUNCE_START|s_debounceCnt\(2)) # (!\DEBOUNCE_START|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(2),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~3\,
	combout => \DEBOUNCE_START|Add0~4_combout\,
	cout => \DEBOUNCE_START|Add0~5\);

-- Location: LCCOMB_X99_Y3_N2
\DEBOUNCE_START|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~20_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|Add0~4_combout\ & \DEBOUNCE_START|s_debounceCnt[21]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_previousIn~q\,
	datab => \DEBOUNCE_START|Add0~4_combout\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~20_combout\);

-- Location: FF_X99_Y3_N3
\DEBOUNCE_START|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~20_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(2));

-- Location: LCCOMB_X99_Y3_N16
\DEBOUNCE_START|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~6_combout\ = (\DEBOUNCE_START|s_debounceCnt\(3) & (\DEBOUNCE_START|Add0~5\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(3) & (!\DEBOUNCE_START|Add0~5\))
-- \DEBOUNCE_START|Add0~7\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(3) & !\DEBOUNCE_START|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(3),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~5\,
	combout => \DEBOUNCE_START|Add0~6_combout\,
	cout => \DEBOUNCE_START|Add0~7\);

-- Location: LCCOMB_X99_Y3_N4
\DEBOUNCE_START|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~21_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|Add0~6_combout\ & \DEBOUNCE_START|s_debounceCnt[21]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_previousIn~q\,
	datab => \DEBOUNCE_START|Add0~6_combout\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~21_combout\);

-- Location: FF_X99_Y3_N5
\DEBOUNCE_START|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~21_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(3));

-- Location: LCCOMB_X99_Y3_N18
\DEBOUNCE_START|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~8_combout\ = (\DEBOUNCE_START|s_debounceCnt\(4) & ((GND) # (!\DEBOUNCE_START|Add0~7\))) # (!\DEBOUNCE_START|s_debounceCnt\(4) & (\DEBOUNCE_START|Add0~7\ $ (GND)))
-- \DEBOUNCE_START|Add0~9\ = CARRY((\DEBOUNCE_START|s_debounceCnt\(4)) # (!\DEBOUNCE_START|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(4),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~7\,
	combout => \DEBOUNCE_START|Add0~8_combout\,
	cout => \DEBOUNCE_START|Add0~9\);

-- Location: LCCOMB_X99_Y3_N6
\DEBOUNCE_START|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~22_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|Add0~8_combout\ & \DEBOUNCE_START|s_debounceCnt[21]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_previousIn~q\,
	datab => \DEBOUNCE_START|Add0~8_combout\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~22_combout\);

-- Location: FF_X99_Y3_N7
\DEBOUNCE_START|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~22_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(4));

-- Location: LCCOMB_X99_Y3_N20
\DEBOUNCE_START|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~10_combout\ = (\DEBOUNCE_START|s_debounceCnt\(5) & (\DEBOUNCE_START|Add0~9\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(5) & (!\DEBOUNCE_START|Add0~9\))
-- \DEBOUNCE_START|Add0~11\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(5) & !\DEBOUNCE_START|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(5),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~9\,
	combout => \DEBOUNCE_START|Add0~10_combout\,
	cout => \DEBOUNCE_START|Add0~11\);

-- Location: LCCOMB_X98_Y2_N8
\DEBOUNCE_START|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~27_combout\ = (\DEBOUNCE_START|Add0~10_combout\ & (\DEBOUNCE_START|s_previousIn~q\ & \DEBOUNCE_START|s_debounceCnt[21]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|Add0~10_combout\,
	datac => \DEBOUNCE_START|s_previousIn~q\,
	datad => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~27_combout\);

-- Location: FF_X98_Y2_N9
\DEBOUNCE_START|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~27_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(5));

-- Location: LCCOMB_X99_Y3_N0
\DEBOUNCE_START|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_pulsedOut~5_combout\ = (!\DEBOUNCE_START|s_debounceCnt\(4) & (!\DEBOUNCE_START|s_debounceCnt\(3) & (!\DEBOUNCE_START|s_debounceCnt\(1) & !\DEBOUNCE_START|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(4),
	datab => \DEBOUNCE_START|s_debounceCnt\(3),
	datac => \DEBOUNCE_START|s_debounceCnt\(1),
	datad => \DEBOUNCE_START|s_debounceCnt\(2),
	combout => \DEBOUNCE_START|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X99_Y3_N22
\DEBOUNCE_START|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~12_combout\ = (\DEBOUNCE_START|s_debounceCnt\(6) & ((GND) # (!\DEBOUNCE_START|Add0~11\))) # (!\DEBOUNCE_START|s_debounceCnt\(6) & (\DEBOUNCE_START|Add0~11\ $ (GND)))
-- \DEBOUNCE_START|Add0~13\ = CARRY((\DEBOUNCE_START|s_debounceCnt\(6)) # (!\DEBOUNCE_START|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(6),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~11\,
	combout => \DEBOUNCE_START|Add0~12_combout\,
	cout => \DEBOUNCE_START|Add0~13\);

-- Location: LCCOMB_X100_Y2_N0
\DEBOUNCE_START|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~1_combout\ = (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & ((\DEBOUNCE_START|Add0~12_combout\) # (!\DEBOUNCE_START|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datad => \DEBOUNCE_START|Add0~12_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~1_combout\);

-- Location: FF_X100_Y2_N1
\DEBOUNCE_START|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~1_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(6));

-- Location: LCCOMB_X99_Y3_N24
\DEBOUNCE_START|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~14_combout\ = (\DEBOUNCE_START|s_debounceCnt\(7) & (\DEBOUNCE_START|Add0~13\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(7) & (!\DEBOUNCE_START|Add0~13\))
-- \DEBOUNCE_START|Add0~15\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(7) & !\DEBOUNCE_START|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(7),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~13\,
	combout => \DEBOUNCE_START|Add0~14_combout\,
	cout => \DEBOUNCE_START|Add0~15\);

-- Location: LCCOMB_X100_Y2_N28
\DEBOUNCE_START|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~11_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & \DEBOUNCE_START|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datad => \DEBOUNCE_START|Add0~14_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~11_combout\);

-- Location: FF_X100_Y2_N29
\DEBOUNCE_START|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~11_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(7));

-- Location: LCCOMB_X99_Y3_N26
\DEBOUNCE_START|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~16_combout\ = (\DEBOUNCE_START|s_debounceCnt\(8) & ((GND) # (!\DEBOUNCE_START|Add0~15\))) # (!\DEBOUNCE_START|s_debounceCnt\(8) & (\DEBOUNCE_START|Add0~15\ $ (GND)))
-- \DEBOUNCE_START|Add0~17\ = CARRY((\DEBOUNCE_START|s_debounceCnt\(8)) # (!\DEBOUNCE_START|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(8),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~15\,
	combout => \DEBOUNCE_START|Add0~16_combout\,
	cout => \DEBOUNCE_START|Add0~17\);

-- Location: LCCOMB_X98_Y2_N10
\DEBOUNCE_START|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~12_combout\ = (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & ((\DEBOUNCE_START|Add0~16_combout\) # (!\DEBOUNCE_START|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|Add0~16_combout\,
	datad => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~12_combout\);

-- Location: FF_X98_Y2_N11
\DEBOUNCE_START|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~12_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(8));

-- Location: LCCOMB_X99_Y3_N28
\DEBOUNCE_START|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~18_combout\ = (\DEBOUNCE_START|s_debounceCnt\(9) & (\DEBOUNCE_START|Add0~17\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(9) & (!\DEBOUNCE_START|Add0~17\))
-- \DEBOUNCE_START|Add0~19\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(9) & !\DEBOUNCE_START|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(9),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~17\,
	combout => \DEBOUNCE_START|Add0~18_combout\,
	cout => \DEBOUNCE_START|Add0~19\);

-- Location: LCCOMB_X100_Y2_N22
\DEBOUNCE_START|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~13_combout\ = (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & ((\DEBOUNCE_START|Add0~18_combout\) # (!\DEBOUNCE_START|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datad => \DEBOUNCE_START|Add0~18_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~13_combout\);

-- Location: FF_X100_Y2_N23
\DEBOUNCE_START|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~13_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(9));

-- Location: LCCOMB_X99_Y3_N30
\DEBOUNCE_START|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~20_combout\ = (\DEBOUNCE_START|s_debounceCnt\(10) & ((GND) # (!\DEBOUNCE_START|Add0~19\))) # (!\DEBOUNCE_START|s_debounceCnt\(10) & (\DEBOUNCE_START|Add0~19\ $ (GND)))
-- \DEBOUNCE_START|Add0~21\ = CARRY((\DEBOUNCE_START|s_debounceCnt\(10)) # (!\DEBOUNCE_START|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(10),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~19\,
	combout => \DEBOUNCE_START|Add0~20_combout\,
	cout => \DEBOUNCE_START|Add0~21\);

-- Location: LCCOMB_X100_Y2_N12
\DEBOUNCE_START|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~14_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & \DEBOUNCE_START|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datad => \DEBOUNCE_START|Add0~20_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~14_combout\);

-- Location: FF_X100_Y2_N13
\DEBOUNCE_START|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~14_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(10));

-- Location: LCCOMB_X99_Y2_N0
\DEBOUNCE_START|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~22_combout\ = (\DEBOUNCE_START|s_debounceCnt\(11) & (\DEBOUNCE_START|Add0~21\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(11) & (!\DEBOUNCE_START|Add0~21\))
-- \DEBOUNCE_START|Add0~23\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(11) & !\DEBOUNCE_START|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(11),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~21\,
	combout => \DEBOUNCE_START|Add0~22_combout\,
	cout => \DEBOUNCE_START|Add0~23\);

-- Location: LCCOMB_X100_Y2_N2
\DEBOUNCE_START|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~15_combout\ = (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & ((\DEBOUNCE_START|Add0~22_combout\) # (!\DEBOUNCE_START|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|Add0~22_combout\,
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~15_combout\);

-- Location: FF_X100_Y2_N3
\DEBOUNCE_START|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~15_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(11));

-- Location: LCCOMB_X99_Y2_N2
\DEBOUNCE_START|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~24_combout\ = (\DEBOUNCE_START|s_debounceCnt\(12) & ((GND) # (!\DEBOUNCE_START|Add0~23\))) # (!\DEBOUNCE_START|s_debounceCnt\(12) & (\DEBOUNCE_START|Add0~23\ $ (GND)))
-- \DEBOUNCE_START|Add0~25\ = CARRY((\DEBOUNCE_START|s_debounceCnt\(12)) # (!\DEBOUNCE_START|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(12),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~23\,
	combout => \DEBOUNCE_START|Add0~24_combout\,
	cout => \DEBOUNCE_START|Add0~25\);

-- Location: LCCOMB_X100_Y2_N14
\DEBOUNCE_START|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~7_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & \DEBOUNCE_START|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datad => \DEBOUNCE_START|Add0~24_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~7_combout\);

-- Location: FF_X100_Y2_N15
\DEBOUNCE_START|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~7_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(12));

-- Location: LCCOMB_X99_Y2_N4
\DEBOUNCE_START|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~26_combout\ = (\DEBOUNCE_START|s_debounceCnt\(13) & (\DEBOUNCE_START|Add0~25\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(13) & (!\DEBOUNCE_START|Add0~25\))
-- \DEBOUNCE_START|Add0~27\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(13) & !\DEBOUNCE_START|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(13),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~25\,
	combout => \DEBOUNCE_START|Add0~26_combout\,
	cout => \DEBOUNCE_START|Add0~27\);

-- Location: LCCOMB_X100_Y2_N8
\DEBOUNCE_START|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~8_combout\ = (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & (\DEBOUNCE_START|s_previousIn~q\ & \DEBOUNCE_START|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|Add0~26_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~8_combout\);

-- Location: FF_X100_Y2_N9
\DEBOUNCE_START|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~8_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(13));

-- Location: LCCOMB_X99_Y2_N6
\DEBOUNCE_START|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~28_combout\ = (\DEBOUNCE_START|s_debounceCnt\(14) & ((GND) # (!\DEBOUNCE_START|Add0~27\))) # (!\DEBOUNCE_START|s_debounceCnt\(14) & (\DEBOUNCE_START|Add0~27\ $ (GND)))
-- \DEBOUNCE_START|Add0~29\ = CARRY((\DEBOUNCE_START|s_debounceCnt\(14)) # (!\DEBOUNCE_START|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(14),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~27\,
	combout => \DEBOUNCE_START|Add0~28_combout\,
	cout => \DEBOUNCE_START|Add0~29\);

-- Location: LCCOMB_X99_Y2_N26
\DEBOUNCE_START|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~16_combout\ = (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & ((\DEBOUNCE_START|Add0~28_combout\) # (!\DEBOUNCE_START|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|Add0~28_combout\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datad => \DEBOUNCE_START|s_previousIn~q\,
	combout => \DEBOUNCE_START|s_debounceCnt~16_combout\);

-- Location: FF_X99_Y2_N27
\DEBOUNCE_START|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~16_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(14));

-- Location: LCCOMB_X99_Y2_N8
\DEBOUNCE_START|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~30_combout\ = (\DEBOUNCE_START|s_debounceCnt\(15) & (\DEBOUNCE_START|Add0~29\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(15) & (!\DEBOUNCE_START|Add0~29\))
-- \DEBOUNCE_START|Add0~31\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(15) & !\DEBOUNCE_START|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(15),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~29\,
	combout => \DEBOUNCE_START|Add0~30_combout\,
	cout => \DEBOUNCE_START|Add0~31\);

-- Location: LCCOMB_X99_Y2_N24
\DEBOUNCE_START|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~4_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & \DEBOUNCE_START|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datad => \DEBOUNCE_START|Add0~30_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~4_combout\);

-- Location: FF_X99_Y2_N25
\DEBOUNCE_START|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~4_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(15));

-- Location: LCCOMB_X99_Y2_N10
\DEBOUNCE_START|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~32_combout\ = (\DEBOUNCE_START|s_debounceCnt\(16) & ((GND) # (!\DEBOUNCE_START|Add0~31\))) # (!\DEBOUNCE_START|s_debounceCnt\(16) & (\DEBOUNCE_START|Add0~31\ $ (GND)))
-- \DEBOUNCE_START|Add0~33\ = CARRY((\DEBOUNCE_START|s_debounceCnt\(16)) # (!\DEBOUNCE_START|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(16),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~31\,
	combout => \DEBOUNCE_START|Add0~32_combout\,
	cout => \DEBOUNCE_START|Add0~33\);

-- Location: LCCOMB_X98_Y2_N12
\DEBOUNCE_START|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~5_combout\ = (\DEBOUNCE_START|Add0~32_combout\ & (\DEBOUNCE_START|s_previousIn~q\ & \DEBOUNCE_START|s_debounceCnt[21]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|Add0~32_combout\,
	datac => \DEBOUNCE_START|s_previousIn~q\,
	datad => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt~5_combout\);

-- Location: FF_X98_Y2_N13
\DEBOUNCE_START|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~5_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(16));

-- Location: LCCOMB_X99_Y2_N12
\DEBOUNCE_START|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~34_combout\ = (\DEBOUNCE_START|s_debounceCnt\(17) & (\DEBOUNCE_START|Add0~33\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(17) & (!\DEBOUNCE_START|Add0~33\))
-- \DEBOUNCE_START|Add0~35\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(17) & !\DEBOUNCE_START|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(17),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~33\,
	combout => \DEBOUNCE_START|Add0~34_combout\,
	cout => \DEBOUNCE_START|Add0~35\);

-- Location: LCCOMB_X99_Y2_N30
\DEBOUNCE_START|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt~6_combout\ = (\DEBOUNCE_START|Add0~34_combout\ & (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & \DEBOUNCE_START|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|Add0~34_combout\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datad => \DEBOUNCE_START|s_previousIn~q\,
	combout => \DEBOUNCE_START|s_debounceCnt~6_combout\);

-- Location: FF_X99_Y2_N31
\DEBOUNCE_START|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt~6_combout\,
	ena => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(17));

-- Location: LCCOMB_X98_Y2_N30
\DEBOUNCE_START|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_pulsedOut~0_combout\ = (!\DEBOUNCE_START|s_debounceCnt\(16) & (!\DEBOUNCE_START|s_debounceCnt\(15) & (!\DEBOUNCE_START|s_debounceCnt\(6) & !\DEBOUNCE_START|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(16),
	datab => \DEBOUNCE_START|s_debounceCnt\(15),
	datac => \DEBOUNCE_START|s_debounceCnt\(6),
	datad => \DEBOUNCE_START|s_debounceCnt\(17),
	combout => \DEBOUNCE_START|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X98_Y2_N20
\DEBOUNCE_START|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_pulsedOut~1_combout\ = (!\DEBOUNCE_START|s_debounceCnt\(21) & (!\DEBOUNCE_START|s_debounceCnt\(20) & (!\DEBOUNCE_START|s_debounceCnt\(13) & !\DEBOUNCE_START|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(21),
	datab => \DEBOUNCE_START|s_debounceCnt\(20),
	datac => \DEBOUNCE_START|s_debounceCnt\(13),
	datad => \DEBOUNCE_START|s_debounceCnt\(12),
	combout => \DEBOUNCE_START|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X99_Y2_N14
\DEBOUNCE_START|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~36_combout\ = (\DEBOUNCE_START|s_debounceCnt\(18) & ((GND) # (!\DEBOUNCE_START|Add0~35\))) # (!\DEBOUNCE_START|s_debounceCnt\(18) & (\DEBOUNCE_START|Add0~35\ $ (GND)))
-- \DEBOUNCE_START|Add0~37\ = CARRY((\DEBOUNCE_START|s_debounceCnt\(18)) # (!\DEBOUNCE_START|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(18),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~35\,
	combout => \DEBOUNCE_START|Add0~36_combout\,
	cout => \DEBOUNCE_START|Add0~37\);

-- Location: LCCOMB_X100_Y2_N16
\DEBOUNCE_START|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt[18]~17_combout\ = (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & (\DEBOUNCE_START|s_debounceCnt[21]~3_combout\ & ((\DEBOUNCE_START|Add0~36_combout\) # (!\DEBOUNCE_START|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	datad => \DEBOUNCE_START|Add0~36_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt[18]~17_combout\);

-- Location: FF_X100_Y2_N17
\DEBOUNCE_START|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(18));

-- Location: LCCOMB_X99_Y2_N16
\DEBOUNCE_START|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~38_combout\ = (\DEBOUNCE_START|s_debounceCnt\(19) & (\DEBOUNCE_START|Add0~37\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(19) & (!\DEBOUNCE_START|Add0~37\))
-- \DEBOUNCE_START|Add0~39\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(19) & !\DEBOUNCE_START|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(19),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~37\,
	combout => \DEBOUNCE_START|Add0~38_combout\,
	cout => \DEBOUNCE_START|Add0~39\);

-- Location: LCCOMB_X100_Y2_N10
\DEBOUNCE_START|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt[19]~18_combout\ = (\DEBOUNCE_START|s_debounceCnt[21]~3_combout\ & (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & ((\DEBOUNCE_START|Add0~38_combout\) # (!\DEBOUNCE_START|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|Add0~38_combout\,
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	datad => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt[19]~18_combout\);

-- Location: FF_X100_Y2_N11
\DEBOUNCE_START|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(19));

-- Location: LCCOMB_X100_Y2_N4
\DEBOUNCE_START|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_pulsedOut~3_combout\ = (!\DEBOUNCE_START|s_debounceCnt\(19) & (!\DEBOUNCE_START|s_debounceCnt\(18) & (!\DEBOUNCE_START|s_debounceCnt\(14) & !\DEBOUNCE_START|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(19),
	datab => \DEBOUNCE_START|s_debounceCnt\(18),
	datac => \DEBOUNCE_START|s_debounceCnt\(14),
	datad => \DEBOUNCE_START|s_debounceCnt\(11),
	combout => \DEBOUNCE_START|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X98_Y2_N16
\DEBOUNCE_START|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_pulsedOut~2_combout\ = (!\DEBOUNCE_START|s_debounceCnt\(8) & (!\DEBOUNCE_START|s_debounceCnt\(7) & (!\DEBOUNCE_START|s_debounceCnt\(10) & !\DEBOUNCE_START|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(8),
	datab => \DEBOUNCE_START|s_debounceCnt\(7),
	datac => \DEBOUNCE_START|s_debounceCnt\(10),
	datad => \DEBOUNCE_START|s_debounceCnt\(9),
	combout => \DEBOUNCE_START|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X98_Y2_N2
\DEBOUNCE_START|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_pulsedOut~4_combout\ = (\DEBOUNCE_START|s_pulsedOut~0_combout\ & (\DEBOUNCE_START|s_pulsedOut~1_combout\ & (\DEBOUNCE_START|s_pulsedOut~3_combout\ & \DEBOUNCE_START|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_pulsedOut~0_combout\,
	datab => \DEBOUNCE_START|s_pulsedOut~1_combout\,
	datac => \DEBOUNCE_START|s_pulsedOut~3_combout\,
	datad => \DEBOUNCE_START|s_pulsedOut~2_combout\,
	combout => \DEBOUNCE_START|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X98_Y2_N6
\DEBOUNCE_START|s_debounceCnt[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt[21]~2_combout\ = (\DEBOUNCE_START|s_debounceCnt\(0)) # ((\DEBOUNCE_START|s_debounceCnt\(5)) # ((!\DEBOUNCE_START|s_pulsedOut~4_combout\) # (!\DEBOUNCE_START|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(0),
	datab => \DEBOUNCE_START|s_debounceCnt\(5),
	datac => \DEBOUNCE_START|s_pulsedOut~5_combout\,
	datad => \DEBOUNCE_START|s_pulsedOut~4_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt[21]~2_combout\);

-- Location: LCCOMB_X98_Y2_N4
\DEBOUNCE_START|s_debounceCnt[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt[21]~3_combout\ = (\DEBOUNCE_START|s_debounceCnt\(22)) # (((\DEBOUNCE_START|s_debounceCnt[21]~2_combout\) # (!\DEBOUNCE_START|s_previousIn~q\)) # (!\DEBOUNCE_START|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(22),
	datab => \DEBOUNCE_START|s_dirtyIn~q\,
	datac => \DEBOUNCE_START|s_previousIn~q\,
	datad => \DEBOUNCE_START|s_debounceCnt[21]~2_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\);

-- Location: LCCOMB_X99_Y2_N18
\DEBOUNCE_START|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~40_combout\ = (\DEBOUNCE_START|s_debounceCnt\(20) & ((GND) # (!\DEBOUNCE_START|Add0~39\))) # (!\DEBOUNCE_START|s_debounceCnt\(20) & (\DEBOUNCE_START|Add0~39\ $ (GND)))
-- \DEBOUNCE_START|Add0~41\ = CARRY((\DEBOUNCE_START|s_debounceCnt\(20)) # (!\DEBOUNCE_START|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(20),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~39\,
	combout => \DEBOUNCE_START|Add0~40_combout\,
	cout => \DEBOUNCE_START|Add0~41\);

-- Location: LCCOMB_X99_Y2_N28
\DEBOUNCE_START|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt[20]~9_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|s_debounceCnt[21]~3_combout\ & (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & \DEBOUNCE_START|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_previousIn~q\,
	datab => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datad => \DEBOUNCE_START|Add0~40_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt[20]~9_combout\);

-- Location: FF_X99_Y2_N29
\DEBOUNCE_START|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(20));

-- Location: LCCOMB_X100_Y2_N6
\DEBOUNCE_START|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|LessThan0~0_combout\ = (!\DEBOUNCE_START|s_debounceCnt\(21) & !\DEBOUNCE_START|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(21),
	datad => \DEBOUNCE_START|s_debounceCnt\(20),
	combout => \DEBOUNCE_START|LessThan0~0_combout\);

-- Location: LCCOMB_X100_Y2_N18
\DEBOUNCE_START|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|LessThan0~4_combout\ = (\DEBOUNCE_START|s_debounceCnt\(19) & (\DEBOUNCE_START|s_debounceCnt\(18) & (\DEBOUNCE_START|s_debounceCnt\(14) & \DEBOUNCE_START|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(19),
	datab => \DEBOUNCE_START|s_debounceCnt\(18),
	datac => \DEBOUNCE_START|s_debounceCnt\(14),
	datad => \DEBOUNCE_START|s_debounceCnt\(8),
	combout => \DEBOUNCE_START|LessThan0~4_combout\);

-- Location: LCCOMB_X100_Y2_N24
\DEBOUNCE_START|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|LessThan0~5_combout\ = (\DEBOUNCE_START|s_debounceCnt\(11) & (\DEBOUNCE_START|s_debounceCnt\(9) & \DEBOUNCE_START|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_START|s_debounceCnt\(11),
	datac => \DEBOUNCE_START|s_debounceCnt\(9),
	datad => \DEBOUNCE_START|LessThan0~4_combout\,
	combout => \DEBOUNCE_START|LessThan0~5_combout\);

-- Location: LCCOMB_X98_Y2_N22
\DEBOUNCE_START|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|LessThan0~6_combout\ = (\DEBOUNCE_START|s_debounceCnt\(6) & ((\DEBOUNCE_START|s_debounceCnt\(5)) # ((\DEBOUNCE_START|s_debounceCnt\(0)) # (!\DEBOUNCE_START|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(5),
	datab => \DEBOUNCE_START|s_debounceCnt\(6),
	datac => \DEBOUNCE_START|s_pulsedOut~5_combout\,
	datad => \DEBOUNCE_START|s_debounceCnt\(0),
	combout => \DEBOUNCE_START|LessThan0~6_combout\);

-- Location: LCCOMB_X100_Y2_N20
\DEBOUNCE_START|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|LessThan0~1_combout\ = (\DEBOUNCE_START|s_debounceCnt\(13)) # ((\DEBOUNCE_START|s_debounceCnt\(12)) # ((\DEBOUNCE_START|s_debounceCnt\(10) & \DEBOUNCE_START|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(10),
	datab => \DEBOUNCE_START|s_debounceCnt\(13),
	datac => \DEBOUNCE_START|s_debounceCnt\(12),
	datad => \DEBOUNCE_START|s_debounceCnt\(11),
	combout => \DEBOUNCE_START|LessThan0~1_combout\);

-- Location: LCCOMB_X98_Y2_N18
\DEBOUNCE_START|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|LessThan0~2_combout\ = (\DEBOUNCE_START|s_debounceCnt\(16)) # ((\DEBOUNCE_START|s_debounceCnt\(15)) # ((\DEBOUNCE_START|s_debounceCnt\(14) & \DEBOUNCE_START|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(16),
	datab => \DEBOUNCE_START|s_debounceCnt\(15),
	datac => \DEBOUNCE_START|s_debounceCnt\(14),
	datad => \DEBOUNCE_START|LessThan0~1_combout\,
	combout => \DEBOUNCE_START|LessThan0~2_combout\);

-- Location: LCCOMB_X98_Y2_N28
\DEBOUNCE_START|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|LessThan0~3_combout\ = (\DEBOUNCE_START|s_debounceCnt\(18) & (\DEBOUNCE_START|s_debounceCnt\(19) & ((\DEBOUNCE_START|s_debounceCnt\(17)) # (\DEBOUNCE_START|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(18),
	datab => \DEBOUNCE_START|s_debounceCnt\(17),
	datac => \DEBOUNCE_START|s_debounceCnt\(19),
	datad => \DEBOUNCE_START|LessThan0~2_combout\,
	combout => \DEBOUNCE_START|LessThan0~3_combout\);

-- Location: LCCOMB_X98_Y2_N24
\DEBOUNCE_START|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|LessThan0~7_combout\ = (\DEBOUNCE_START|LessThan0~3_combout\) # ((\DEBOUNCE_START|LessThan0~5_combout\ & ((\DEBOUNCE_START|s_debounceCnt\(7)) # (\DEBOUNCE_START|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|LessThan0~5_combout\,
	datab => \DEBOUNCE_START|s_debounceCnt\(7),
	datac => \DEBOUNCE_START|LessThan0~6_combout\,
	datad => \DEBOUNCE_START|LessThan0~3_combout\,
	combout => \DEBOUNCE_START|LessThan0~7_combout\);

-- Location: LCCOMB_X100_Y2_N30
\DEBOUNCE_START|s_debounceCnt[21]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt[21]~0_combout\ = (\DEBOUNCE_START|s_dirtyIn~q\ & (((\DEBOUNCE_START|LessThan0~0_combout\ & !\DEBOUNCE_START|LessThan0~7_combout\)) # (!\DEBOUNCE_START|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_dirtyIn~q\,
	datab => \DEBOUNCE_START|LessThan0~0_combout\,
	datac => \DEBOUNCE_START|s_debounceCnt\(22),
	datad => \DEBOUNCE_START|LessThan0~7_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\);

-- Location: LCCOMB_X99_Y2_N20
\DEBOUNCE_START|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~42_combout\ = (\DEBOUNCE_START|s_debounceCnt\(21) & (\DEBOUNCE_START|Add0~41\ & VCC)) # (!\DEBOUNCE_START|s_debounceCnt\(21) & (!\DEBOUNCE_START|Add0~41\))
-- \DEBOUNCE_START|Add0~43\ = CARRY((!\DEBOUNCE_START|s_debounceCnt\(21) & !\DEBOUNCE_START|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt\(21),
	datad => VCC,
	cin => \DEBOUNCE_START|Add0~41\,
	combout => \DEBOUNCE_START|Add0~42_combout\,
	cout => \DEBOUNCE_START|Add0~43\);

-- Location: LCCOMB_X100_Y2_N26
\DEBOUNCE_START|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt[21]~10_combout\ = (\DEBOUNCE_START|s_debounceCnt[21]~0_combout\ & (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|s_debounceCnt[21]~3_combout\ & \DEBOUNCE_START|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	datab => \DEBOUNCE_START|s_previousIn~q\,
	datac => \DEBOUNCE_START|s_debounceCnt[21]~3_combout\,
	datad => \DEBOUNCE_START|Add0~42_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt[21]~10_combout\);

-- Location: FF_X100_Y2_N27
\DEBOUNCE_START|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(21));

-- Location: LCCOMB_X99_Y2_N22
\DEBOUNCE_START|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|Add0~44_combout\ = \DEBOUNCE_START|Add0~43\ $ (\DEBOUNCE_START|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DEBOUNCE_START|s_debounceCnt\(22),
	cin => \DEBOUNCE_START|Add0~43\,
	combout => \DEBOUNCE_START|Add0~44_combout\);

-- Location: LCCOMB_X98_Y2_N0
\DEBOUNCE_START|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt[22]~24_combout\ = (\DEBOUNCE_START|s_debounceCnt\(22) & (\DEBOUNCE_START|LessThan0~0_combout\ & (!\DEBOUNCE_START|LessThan0~7_combout\))) # (!\DEBOUNCE_START|s_debounceCnt\(22) & 
-- (((\DEBOUNCE_START|s_debounceCnt[21]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|LessThan0~0_combout\,
	datab => \DEBOUNCE_START|LessThan0~7_combout\,
	datac => \DEBOUNCE_START|s_debounceCnt\(22),
	datad => \DEBOUNCE_START|s_debounceCnt[21]~2_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X98_Y2_N14
\DEBOUNCE_START|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt[22]~25_combout\ = (\DEBOUNCE_START|s_dirtyIn~q\ & \DEBOUNCE_START|s_debounceCnt[22]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_START|s_dirtyIn~q\,
	datad => \DEBOUNCE_START|s_debounceCnt[22]~24_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X98_Y2_N26
\DEBOUNCE_START|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_debounceCnt[22]~26_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (\DEBOUNCE_START|Add0~44_combout\ & (\DEBOUNCE_START|s_debounceCnt[22]~25_combout\))) # (!\DEBOUNCE_START|s_previousIn~q\ & 
-- (((\DEBOUNCE_START|s_debounceCnt[21]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_previousIn~q\,
	datab => \DEBOUNCE_START|Add0~44_combout\,
	datac => \DEBOUNCE_START|s_debounceCnt[22]~25_combout\,
	datad => \DEBOUNCE_START|s_debounceCnt[21]~0_combout\,
	combout => \DEBOUNCE_START|s_debounceCnt[22]~26_combout\);

-- Location: FF_X98_Y2_N27
\DEBOUNCE_START|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_debounceCnt\(22));

-- Location: LCCOMB_X98_Y3_N22
\DEBOUNCE_START|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_pulsedOut~6_combout\ = (\DEBOUNCE_START|s_previousIn~q\ & (!\DEBOUNCE_START|s_debounceCnt\(22) & (\DEBOUNCE_START|s_dirtyIn~q\ & \DEBOUNCE_START|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_previousIn~q\,
	datab => \DEBOUNCE_START|s_debounceCnt\(22),
	datac => \DEBOUNCE_START|s_dirtyIn~q\,
	datad => \DEBOUNCE_START|s_debounceCnt\(0),
	combout => \DEBOUNCE_START|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X98_Y1_N24
\DEBOUNCE_START|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_START|s_pulsedOut~7_combout\ = (\DEBOUNCE_START|s_pulsedOut~6_combout\ & (!\DEBOUNCE_START|s_debounceCnt\(5) & (\DEBOUNCE_START|s_pulsedOut~4_combout\ & \DEBOUNCE_START|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_START|s_pulsedOut~6_combout\,
	datab => \DEBOUNCE_START|s_debounceCnt\(5),
	datac => \DEBOUNCE_START|s_pulsedOut~4_combout\,
	datad => \DEBOUNCE_START|s_pulsedOut~5_combout\,
	combout => \DEBOUNCE_START|s_pulsedOut~7_combout\);

-- Location: FF_X98_Y1_N25
\DEBOUNCE_START|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_1MHz|clkOut~clkctrl_outclk\,
	d => \DEBOUNCE_START|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_START|s_pulsedOut~q\);

-- Location: LCCOMB_X97_Y1_N18
\CONTROL_UNIT|reg_fstate.STARTED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|reg_fstate.STARTED~0_combout\ = (\CONTROL_UNIT|fstate.LAPVIEW~q\ & (((\DEBOUNCE_LAP|s_pulsedOut~q\)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\CONTROL_UNIT|fstate.STARTED~q\ & (!\DEBOUNCE_LAP|s_pulsedOut~q\ & 
-- !\DEBOUNCE_START|s_pulsedOut~q\)) # (!\CONTROL_UNIT|fstate.STARTED~q\ & ((\DEBOUNCE_START|s_pulsedOut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|fstate.STARTED~q\,
	datab => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	datac => \DEBOUNCE_LAP|s_pulsedOut~q\,
	datad => \DEBOUNCE_START|s_pulsedOut~q\,
	combout => \CONTROL_UNIT|reg_fstate.STARTED~0_combout\);

-- Location: LCCOMB_X97_Y1_N28
\CONTROL_UNIT|reg_fstate.STARTED~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|reg_fstate.STARTED~1_combout\ = (!\globalReset_sync~q\ & \CONTROL_UNIT|reg_fstate.STARTED~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \globalReset_sync~q\,
	datad => \CONTROL_UNIT|reg_fstate.STARTED~0_combout\,
	combout => \CONTROL_UNIT|reg_fstate.STARTED~1_combout\);

-- Location: FF_X97_Y1_N29
\CONTROL_UNIT|fstate.STARTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \CONTROL_UNIT|reg_fstate.STARTED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|fstate.STARTED~q\);

-- Location: LCCOMB_X98_Y1_N22
\CONTROL_UNIT|reg_fstate.STOPPED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|reg_fstate.STOPPED~0_combout\ = (!\globalReset_sync~q\ & ((\DEBOUNCE_START|s_pulsedOut~q\ & ((\CONTROL_UNIT|fstate.STARTED~q\))) # (!\DEBOUNCE_START|s_pulsedOut~q\ & (\CONTROL_UNIT|fstate.STOPPED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|fstate.STOPPED~q\,
	datab => \CONTROL_UNIT|fstate.STARTED~q\,
	datac => \globalReset_sync~q\,
	datad => \DEBOUNCE_START|s_pulsedOut~q\,
	combout => \CONTROL_UNIT|reg_fstate.STOPPED~0_combout\);

-- Location: LCCOMB_X97_Y1_N0
\CONTROL_UNIT|reg_fstate.STOPPED~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|reg_fstate.STOPPED~1_combout\ = (!\DEBOUNCE_LAP|s_pulsedOut~q\ & \CONTROL_UNIT|reg_fstate.STOPPED~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_LAP|s_pulsedOut~q\,
	datad => \CONTROL_UNIT|reg_fstate.STOPPED~0_combout\,
	combout => \CONTROL_UNIT|reg_fstate.STOPPED~1_combout\);

-- Location: FF_X97_Y1_N1
\CONTROL_UNIT|fstate.STOPPED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \CONTROL_UNIT|reg_fstate.STOPPED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|fstate.STOPPED~q\);

-- Location: LCCOMB_X97_Y1_N12
\CONTROL_UNIT|reg_fstate.CLEARED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|reg_fstate.CLEARED~0_combout\ = (!\DEBOUNCE_START|s_pulsedOut~q\ & (((\CONTROL_UNIT|fstate.STOPPED~q\ & \DEBOUNCE_LAP|s_pulsedOut~q\)) # (!\CONTROL_UNIT|fstate.CLEARED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|fstate.CLEARED~q\,
	datab => \CONTROL_UNIT|fstate.STOPPED~q\,
	datac => \DEBOUNCE_LAP|s_pulsedOut~q\,
	datad => \DEBOUNCE_START|s_pulsedOut~q\,
	combout => \CONTROL_UNIT|reg_fstate.CLEARED~0_combout\);

-- Location: LCCOMB_X97_Y1_N2
\CONTROL_UNIT|reg_fstate.CLEARED~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|reg_fstate.CLEARED~1_combout\ = (!\globalReset_sync~q\ & !\CONTROL_UNIT|reg_fstate.CLEARED~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \globalReset_sync~q\,
	datad => \CONTROL_UNIT|reg_fstate.CLEARED~0_combout\,
	combout => \CONTROL_UNIT|reg_fstate.CLEARED~1_combout\);

-- Location: FF_X97_Y1_N3
\CONTROL_UNIT|fstate.CLEARED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \CONTROL_UNIT|reg_fstate.CLEARED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|fstate.CLEARED~q\);

-- Location: LCCOMB_X97_Y1_N30
\BCD_COUNTER|s_count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~24_combout\ = (!\globalReset_sync~q\ & \CONTROL_UNIT|fstate.CLEARED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \globalReset_sync~q\,
	datad => \CONTROL_UNIT|fstate.CLEARED~q\,
	combout => \BCD_COUNTER|s_count~24_combout\);

-- Location: LCCOMB_X97_Y1_N8
\BCD_COUNTER|s_count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~22_combout\ = (\CONTROL_UNIT|fstate.CLEARED~q\ & (!\BCD_COUNTER|s_count\(0) & !\globalReset_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL_UNIT|fstate.CLEARED~q\,
	datac => \BCD_COUNTER|s_count\(0),
	datad => \globalReset_sync~q\,
	combout => \BCD_COUNTER|s_count~22_combout\);

-- Location: LCCOMB_X97_Y1_N22
\BCD_COUNTER|s_count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count[2]~23_combout\ = (\globalReset_sync~q\) # ((!\CONTROL_UNIT|fstate.STOPPED~q\) # (!\CONTROL_UNIT|fstate.CLEARED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \globalReset_sync~q\,
	datac => \CONTROL_UNIT|fstate.CLEARED~q\,
	datad => \CONTROL_UNIT|fstate.STOPPED~q\,
	combout => \BCD_COUNTER|s_count[2]~23_combout\);

-- Location: FF_X97_Y1_N9
\BCD_COUNTER|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~22_combout\,
	ena => \BCD_COUNTER|s_count[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(0));

-- Location: LCCOMB_X97_Y1_N26
\BCD_COUNTER|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Add3~0_combout\ = \BCD_COUNTER|s_count\(2) $ (((\BCD_COUNTER|s_count\(1) & \BCD_COUNTER|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(1),
	datab => \BCD_COUNTER|s_count\(0),
	datad => \BCD_COUNTER|s_count\(2),
	combout => \BCD_COUNTER|Add3~0_combout\);

-- Location: LCCOMB_X97_Y1_N16
\BCD_COUNTER|s_count~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~34_combout\ = (\BCD_COUNTER|Add3~0_combout\ & (!\globalReset_sync~q\ & (\CONTROL_UNIT|fstate.CLEARED~q\ & \BCD_COUNTER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|Add3~0_combout\,
	datab => \globalReset_sync~q\,
	datac => \CONTROL_UNIT|fstate.CLEARED~q\,
	datad => \BCD_COUNTER|Equal0~0_combout\,
	combout => \BCD_COUNTER|s_count~34_combout\);

-- Location: FF_X97_Y1_N17
\BCD_COUNTER|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~34_combout\,
	ena => \BCD_COUNTER|s_count[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(2));

-- Location: LCCOMB_X97_Y1_N10
\BCD_COUNTER|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Add3~1_combout\ = \BCD_COUNTER|s_count\(3) $ (((\BCD_COUNTER|s_count\(1) & (\BCD_COUNTER|s_count\(0) & \BCD_COUNTER|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(1),
	datab => \BCD_COUNTER|s_count\(0),
	datac => \BCD_COUNTER|s_count\(3),
	datad => \BCD_COUNTER|s_count\(2),
	combout => \BCD_COUNTER|Add3~1_combout\);

-- Location: LCCOMB_X97_Y1_N6
\BCD_COUNTER|s_count~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~35_combout\ = (\BCD_COUNTER|Add3~1_combout\ & (!\globalReset_sync~q\ & (\CONTROL_UNIT|fstate.CLEARED~q\ & \BCD_COUNTER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|Add3~1_combout\,
	datab => \globalReset_sync~q\,
	datac => \CONTROL_UNIT|fstate.CLEARED~q\,
	datad => \BCD_COUNTER|Equal0~0_combout\,
	combout => \BCD_COUNTER|s_count~35_combout\);

-- Location: FF_X97_Y1_N7
\BCD_COUNTER|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~35_combout\,
	ena => \BCD_COUNTER|s_count[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(3));

-- Location: LCCOMB_X97_Y1_N24
\BCD_COUNTER|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Equal0~0_combout\ = (\BCD_COUNTER|s_count\(1)) # ((\BCD_COUNTER|s_count\(2)) # ((!\BCD_COUNTER|s_count\(3)) # (!\BCD_COUNTER|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(1),
	datab => \BCD_COUNTER|s_count\(2),
	datac => \BCD_COUNTER|s_count\(0),
	datad => \BCD_COUNTER|s_count\(3),
	combout => \BCD_COUNTER|Equal0~0_combout\);

-- Location: LCCOMB_X97_Y1_N14
\BCD_COUNTER|s_count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~25_combout\ = (\BCD_COUNTER|s_count~24_combout\ & (\BCD_COUNTER|Equal0~0_combout\ & (\BCD_COUNTER|s_count\(0) $ (\BCD_COUNTER|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count~24_combout\,
	datab => \BCD_COUNTER|s_count\(0),
	datac => \BCD_COUNTER|s_count\(1),
	datad => \BCD_COUNTER|Equal0~0_combout\,
	combout => \BCD_COUNTER|s_count~25_combout\);

-- Location: FF_X97_Y1_N15
\BCD_COUNTER|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~25_combout\,
	ena => \BCD_COUNTER|s_count[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(1));

-- Location: LCCOMB_X97_Y1_N4
\CONTROL_UNIT|regEnb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|regEnb~0_combout\ = (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & !\globalReset_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	datad => \globalReset_sync~q\,
	combout => \CONTROL_UNIT|regEnb~0_combout\);

-- Location: FF_X98_Y1_N31
\VALUE_REGISTER|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(1),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(1));

-- Location: LCCOMB_X98_Y1_N30
\digit0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit0[1]~1_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(1))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(1)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datab => \BCD_COUNTER|s_count\(1),
	datac => \VALUE_REGISTER|dataOut\(1),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit0[1]~1_combout\);

-- Location: FF_X98_Y1_N3
\VALUE_REGISTER|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(3),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(3));

-- Location: LCCOMB_X98_Y1_N2
\digit0[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit0[3]~3_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(3))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(3)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datab => \BCD_COUNTER|s_count\(3),
	datac => \VALUE_REGISTER|dataOut\(3),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit0[3]~3_combout\);

-- Location: FF_X98_Y1_N5
\VALUE_REGISTER|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(0),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(0));

-- Location: LCCOMB_X98_Y1_N4
\digit0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit0[0]~0_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(0))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(0)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datab => \BCD_COUNTER|s_count\(0),
	datac => \VALUE_REGISTER|dataOut\(0),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit0[0]~0_combout\);

-- Location: FF_X98_Y1_N13
\VALUE_REGISTER|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(2),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(2));

-- Location: LCCOMB_X98_Y1_N12
\digit0[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit0[2]~2_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(2))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(2)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datab => \BCD_COUNTER|s_count\(2),
	datac => \VALUE_REGISTER|dataOut\(2),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit0[2]~2_combout\);

-- Location: LCCOMB_X114_Y17_N4
\DECODER0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER0|Mux6~0_combout\ = (\digit0[3]~3_combout\ & (\digit0[0]~0_combout\ & (\digit0[1]~1_combout\ $ (\digit0[2]~2_combout\)))) # (!\digit0[3]~3_combout\ & (!\digit0[1]~1_combout\ & (\digit0[0]~0_combout\ $ (\digit0[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit0[1]~1_combout\,
	datab => \digit0[3]~3_combout\,
	datac => \digit0[0]~0_combout\,
	datad => \digit0[2]~2_combout\,
	combout => \DECODER0|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\DECODER0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER0|Mux5~0_combout\ = (\digit0[1]~1_combout\ & ((\digit0[0]~0_combout\ & (\digit0[3]~3_combout\)) # (!\digit0[0]~0_combout\ & ((\digit0[2]~2_combout\))))) # (!\digit0[1]~1_combout\ & (\digit0[2]~2_combout\ & (\digit0[3]~3_combout\ $ 
-- (\digit0[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit0[1]~1_combout\,
	datab => \digit0[3]~3_combout\,
	datac => \digit0[0]~0_combout\,
	datad => \digit0[2]~2_combout\,
	combout => \DECODER0|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y17_N0
\DECODER0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER0|Mux4~0_combout\ = (\digit0[3]~3_combout\ & (\digit0[2]~2_combout\ & ((\digit0[1]~1_combout\) # (!\digit0[0]~0_combout\)))) # (!\digit0[3]~3_combout\ & (\digit0[1]~1_combout\ & (!\digit0[0]~0_combout\ & !\digit0[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit0[1]~1_combout\,
	datab => \digit0[3]~3_combout\,
	datac => \digit0[0]~0_combout\,
	datad => \digit0[2]~2_combout\,
	combout => \DECODER0|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y17_N26
\DECODER0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER0|Mux3~0_combout\ = (\digit0[1]~1_combout\ & ((\digit0[0]~0_combout\ & ((\digit0[2]~2_combout\))) # (!\digit0[0]~0_combout\ & (\digit0[3]~3_combout\ & !\digit0[2]~2_combout\)))) # (!\digit0[1]~1_combout\ & (!\digit0[3]~3_combout\ & 
-- (\digit0[0]~0_combout\ $ (\digit0[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit0[1]~1_combout\,
	datab => \digit0[3]~3_combout\,
	datac => \digit0[0]~0_combout\,
	datad => \digit0[2]~2_combout\,
	combout => \DECODER0|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y17_N12
\DECODER0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER0|Mux2~0_combout\ = (\digit0[1]~1_combout\ & (!\digit0[3]~3_combout\ & (\digit0[0]~0_combout\))) # (!\digit0[1]~1_combout\ & ((\digit0[2]~2_combout\ & (!\digit0[3]~3_combout\)) # (!\digit0[2]~2_combout\ & ((\digit0[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit0[1]~1_combout\,
	datab => \digit0[3]~3_combout\,
	datac => \digit0[0]~0_combout\,
	datad => \digit0[2]~2_combout\,
	combout => \DECODER0|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\DECODER0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER0|Mux1~0_combout\ = (\digit0[1]~1_combout\ & (!\digit0[3]~3_combout\ & ((\digit0[0]~0_combout\) # (!\digit0[2]~2_combout\)))) # (!\digit0[1]~1_combout\ & (\digit0[0]~0_combout\ & (\digit0[3]~3_combout\ $ (!\digit0[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit0[1]~1_combout\,
	datab => \digit0[3]~3_combout\,
	datac => \digit0[0]~0_combout\,
	datad => \digit0[2]~2_combout\,
	combout => \DECODER0|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y17_N8
\DECODER0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER0|Mux0~0_combout\ = (\digit0[0]~0_combout\ & ((\digit0[3]~3_combout\) # (\digit0[1]~1_combout\ $ (\digit0[2]~2_combout\)))) # (!\digit0[0]~0_combout\ & ((\digit0[1]~1_combout\) # (\digit0[3]~3_combout\ $ (\digit0[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit0[1]~1_combout\,
	datab => \digit0[3]~3_combout\,
	datac => \digit0[0]~0_combout\,
	datad => \digit0[2]~2_combout\,
	combout => \DECODER0|Mux0~0_combout\);

-- Location: LCCOMB_X96_Y1_N16
\BCD_COUNTER|s_count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~26_combout\ = (!\globalReset_sync~q\ & (\CONTROL_UNIT|fstate.CLEARED~q\ & !\BCD_COUNTER|s_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datab => \CONTROL_UNIT|fstate.CLEARED~q\,
	datac => \BCD_COUNTER|s_count\(4),
	combout => \BCD_COUNTER|s_count~26_combout\);

-- Location: LCCOMB_X96_Y1_N0
\BCD_COUNTER|s_count[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count[6]~36_combout\ = (\globalReset_sync~q\) # (((!\CONTROL_UNIT|fstate.STOPPED~q\ & !\BCD_COUNTER|Equal0~0_combout\)) # (!\CONTROL_UNIT|fstate.CLEARED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datab => \CONTROL_UNIT|fstate.CLEARED~q\,
	datac => \CONTROL_UNIT|fstate.STOPPED~q\,
	datad => \BCD_COUNTER|Equal0~0_combout\,
	combout => \BCD_COUNTER|s_count[6]~36_combout\);

-- Location: FF_X96_Y1_N17
\BCD_COUNTER|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~26_combout\,
	ena => \BCD_COUNTER|s_count[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(4));

-- Location: LCCOMB_X96_Y1_N6
\BCD_COUNTER|s_count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~27_combout\ = (\BCD_COUNTER|s_count~24_combout\ & (\BCD_COUNTER|Equal1~0_combout\ & (\BCD_COUNTER|s_count\(5) $ (\BCD_COUNTER|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count~24_combout\,
	datab => \BCD_COUNTER|Equal1~0_combout\,
	datac => \BCD_COUNTER|s_count\(5),
	datad => \BCD_COUNTER|s_count\(4),
	combout => \BCD_COUNTER|s_count~27_combout\);

-- Location: FF_X96_Y1_N7
\BCD_COUNTER|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~27_combout\,
	ena => \BCD_COUNTER|s_count[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(5));

-- Location: LCCOMB_X96_Y1_N12
\BCD_COUNTER|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Add2~1_combout\ = \BCD_COUNTER|s_count\(7) $ (((\BCD_COUNTER|s_count\(6) & (\BCD_COUNTER|s_count\(4) & \BCD_COUNTER|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(6),
	datab => \BCD_COUNTER|s_count\(4),
	datac => \BCD_COUNTER|s_count\(7),
	datad => \BCD_COUNTER|s_count\(5),
	combout => \BCD_COUNTER|Add2~1_combout\);

-- Location: LCCOMB_X96_Y1_N30
\BCD_COUNTER|s_count~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~38_combout\ = (\CONTROL_UNIT|fstate.CLEARED~q\ & (\BCD_COUNTER|Equal1~0_combout\ & (!\globalReset_sync~q\ & \BCD_COUNTER|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|fstate.CLEARED~q\,
	datab => \BCD_COUNTER|Equal1~0_combout\,
	datac => \globalReset_sync~q\,
	datad => \BCD_COUNTER|Add2~1_combout\,
	combout => \BCD_COUNTER|s_count~38_combout\);

-- Location: FF_X96_Y1_N31
\BCD_COUNTER|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~38_combout\,
	ena => \BCD_COUNTER|s_count[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(7));

-- Location: LCCOMB_X96_Y1_N4
\BCD_COUNTER|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Equal1~0_combout\ = (\BCD_COUNTER|s_count\(5)) # ((\BCD_COUNTER|s_count\(6)) # ((!\BCD_COUNTER|s_count\(4)) # (!\BCD_COUNTER|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(5),
	datab => \BCD_COUNTER|s_count\(6),
	datac => \BCD_COUNTER|s_count\(7),
	datad => \BCD_COUNTER|s_count\(4),
	combout => \BCD_COUNTER|Equal1~0_combout\);

-- Location: LCCOMB_X96_Y1_N22
\BCD_COUNTER|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Add2~0_combout\ = \BCD_COUNTER|s_count\(6) $ (((\BCD_COUNTER|s_count\(5) & \BCD_COUNTER|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(5),
	datac => \BCD_COUNTER|s_count\(6),
	datad => \BCD_COUNTER|s_count\(4),
	combout => \BCD_COUNTER|Add2~0_combout\);

-- Location: LCCOMB_X96_Y1_N8
\BCD_COUNTER|s_count~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~37_combout\ = (!\globalReset_sync~q\ & (\BCD_COUNTER|Equal1~0_combout\ & (\BCD_COUNTER|Add2~0_combout\ & \CONTROL_UNIT|fstate.CLEARED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datab => \BCD_COUNTER|Equal1~0_combout\,
	datac => \BCD_COUNTER|Add2~0_combout\,
	datad => \CONTROL_UNIT|fstate.CLEARED~q\,
	combout => \BCD_COUNTER|s_count~37_combout\);

-- Location: FF_X96_Y1_N9
\BCD_COUNTER|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~37_combout\,
	ena => \BCD_COUNTER|s_count[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(6));

-- Location: FF_X100_Y1_N13
\VALUE_REGISTER|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(6),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(6));

-- Location: LCCOMB_X100_Y1_N12
\digit1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[2]~2_combout\ = (\CONTROL_UNIT|fstate.LAPVIEW~q\ & (((\VALUE_REGISTER|dataOut\(6))))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\globalReset_sync~q\ & ((\VALUE_REGISTER|dataOut\(6)))) # (!\globalReset_sync~q\ & (\BCD_COUNTER|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	datab => \BCD_COUNTER|s_count\(6),
	datac => \VALUE_REGISTER|dataOut\(6),
	datad => \globalReset_sync~q\,
	combout => \digit1[2]~2_combout\);

-- Location: FF_X100_Y1_N19
\VALUE_REGISTER|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(5),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(5));

-- Location: LCCOMB_X100_Y1_N18
\digit1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[1]~1_combout\ = (\CONTROL_UNIT|fstate.LAPVIEW~q\ & (((\VALUE_REGISTER|dataOut\(5))))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\globalReset_sync~q\ & ((\VALUE_REGISTER|dataOut\(5)))) # (!\globalReset_sync~q\ & (\BCD_COUNTER|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	datab => \BCD_COUNTER|s_count\(5),
	datac => \VALUE_REGISTER|dataOut\(5),
	datad => \globalReset_sync~q\,
	combout => \digit1[1]~1_combout\);

-- Location: FF_X100_Y1_N23
\VALUE_REGISTER|dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(7),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(7));

-- Location: LCCOMB_X100_Y1_N22
\digit1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[3]~3_combout\ = (\CONTROL_UNIT|fstate.LAPVIEW~q\ & (((\VALUE_REGISTER|dataOut\(7))))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\globalReset_sync~q\ & ((\VALUE_REGISTER|dataOut\(7)))) # (!\globalReset_sync~q\ & (\BCD_COUNTER|s_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(7),
	datab => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	datac => \VALUE_REGISTER|dataOut\(7),
	datad => \globalReset_sync~q\,
	combout => \digit1[3]~3_combout\);

-- Location: FF_X100_Y1_N25
\VALUE_REGISTER|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(4),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(4));

-- Location: LCCOMB_X100_Y1_N24
\digit1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~0_combout\ = (\CONTROL_UNIT|fstate.LAPVIEW~q\ & (((\VALUE_REGISTER|dataOut\(4))))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\globalReset_sync~q\ & ((\VALUE_REGISTER|dataOut\(4)))) # (!\globalReset_sync~q\ & (\BCD_COUNTER|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	datab => \BCD_COUNTER|s_count\(4),
	datac => \VALUE_REGISTER|dataOut\(4),
	datad => \globalReset_sync~q\,
	combout => \digit1[0]~0_combout\);

-- Location: LCCOMB_X100_Y1_N28
\DECODER1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER1|Mux6~0_combout\ = (\digit1[2]~2_combout\ & (!\digit1[1]~1_combout\ & (\digit1[3]~3_combout\ $ (!\digit1[0]~0_combout\)))) # (!\digit1[2]~2_combout\ & (\digit1[0]~0_combout\ & (\digit1[1]~1_combout\ $ (!\digit1[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1[2]~2_combout\,
	datab => \digit1[1]~1_combout\,
	datac => \digit1[3]~3_combout\,
	datad => \digit1[0]~0_combout\,
	combout => \DECODER1|Mux6~0_combout\);

-- Location: LCCOMB_X100_Y1_N26
\DECODER1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER1|Mux5~0_combout\ = (\digit1[1]~1_combout\ & ((\digit1[0]~0_combout\ & ((\digit1[3]~3_combout\))) # (!\digit1[0]~0_combout\ & (\digit1[2]~2_combout\)))) # (!\digit1[1]~1_combout\ & (\digit1[2]~2_combout\ & (\digit1[3]~3_combout\ $ 
-- (\digit1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1[2]~2_combout\,
	datab => \digit1[1]~1_combout\,
	datac => \digit1[3]~3_combout\,
	datad => \digit1[0]~0_combout\,
	combout => \DECODER1|Mux5~0_combout\);

-- Location: LCCOMB_X100_Y1_N8
\DECODER1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER1|Mux4~0_combout\ = (\digit1[2]~2_combout\ & (\digit1[3]~3_combout\ & ((\digit1[1]~1_combout\) # (!\digit1[0]~0_combout\)))) # (!\digit1[2]~2_combout\ & (\digit1[1]~1_combout\ & (!\digit1[3]~3_combout\ & !\digit1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1[2]~2_combout\,
	datab => \digit1[1]~1_combout\,
	datac => \digit1[3]~3_combout\,
	datad => \digit1[0]~0_combout\,
	combout => \DECODER1|Mux4~0_combout\);

-- Location: LCCOMB_X100_Y1_N10
\DECODER1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER1|Mux3~0_combout\ = (\digit1[1]~1_combout\ & ((\digit1[2]~2_combout\ & ((\digit1[0]~0_combout\))) # (!\digit1[2]~2_combout\ & (\digit1[3]~3_combout\ & !\digit1[0]~0_combout\)))) # (!\digit1[1]~1_combout\ & (!\digit1[3]~3_combout\ & 
-- (\digit1[2]~2_combout\ $ (\digit1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1[2]~2_combout\,
	datab => \digit1[1]~1_combout\,
	datac => \digit1[3]~3_combout\,
	datad => \digit1[0]~0_combout\,
	combout => \DECODER1|Mux3~0_combout\);

-- Location: LCCOMB_X100_Y1_N4
\DECODER1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER1|Mux2~0_combout\ = (\digit1[1]~1_combout\ & (((!\digit1[3]~3_combout\ & \digit1[0]~0_combout\)))) # (!\digit1[1]~1_combout\ & ((\digit1[2]~2_combout\ & (!\digit1[3]~3_combout\)) # (!\digit1[2]~2_combout\ & ((\digit1[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1[2]~2_combout\,
	datab => \digit1[1]~1_combout\,
	datac => \digit1[3]~3_combout\,
	datad => \digit1[0]~0_combout\,
	combout => \DECODER1|Mux2~0_combout\);

-- Location: LCCOMB_X100_Y1_N30
\DECODER1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER1|Mux1~0_combout\ = (\digit1[2]~2_combout\ & (\digit1[0]~0_combout\ & (\digit1[1]~1_combout\ $ (\digit1[3]~3_combout\)))) # (!\digit1[2]~2_combout\ & (!\digit1[3]~3_combout\ & ((\digit1[1]~1_combout\) # (\digit1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1[2]~2_combout\,
	datab => \digit1[1]~1_combout\,
	datac => \digit1[3]~3_combout\,
	datad => \digit1[0]~0_combout\,
	combout => \DECODER1|Mux1~0_combout\);

-- Location: LCCOMB_X100_Y1_N20
\DECODER1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER1|Mux0~0_combout\ = (\digit1[0]~0_combout\ & ((\digit1[3]~3_combout\) # (\digit1[2]~2_combout\ $ (\digit1[1]~1_combout\)))) # (!\digit1[0]~0_combout\ & ((\digit1[1]~1_combout\) # (\digit1[2]~2_combout\ $ (\digit1[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1[2]~2_combout\,
	datab => \digit1[1]~1_combout\,
	datac => \digit1[3]~3_combout\,
	datad => \digit1[0]~0_combout\,
	combout => \DECODER1|Mux0~0_combout\);

-- Location: LCCOMB_X95_Y1_N26
\BCD_COUNTER|s_count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~28_combout\ = (\CONTROL_UNIT|fstate.CLEARED~q\ & (!\BCD_COUNTER|s_count\(8) & !\globalReset_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL_UNIT|fstate.CLEARED~q\,
	datac => \BCD_COUNTER|s_count\(8),
	datad => \globalReset_sync~q\,
	combout => \BCD_COUNTER|s_count~28_combout\);

-- Location: LCCOMB_X95_Y1_N24
\BCD_COUNTER|s_count[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count[9]~29_combout\ = ((!\BCD_COUNTER|Equal1~0_combout\ & (!\CONTROL_UNIT|fstate.STOPPED~q\ & !\BCD_COUNTER|Equal0~0_combout\))) # (!\BCD_COUNTER|s_count~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|Equal1~0_combout\,
	datab => \CONTROL_UNIT|fstate.STOPPED~q\,
	datac => \BCD_COUNTER|s_count~24_combout\,
	datad => \BCD_COUNTER|Equal0~0_combout\,
	combout => \BCD_COUNTER|s_count[9]~29_combout\);

-- Location: FF_X95_Y1_N27
\BCD_COUNTER|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~28_combout\,
	ena => \BCD_COUNTER|s_count[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(8));

-- Location: LCCOMB_X95_Y1_N8
\BCD_COUNTER|s_count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~30_combout\ = (\BCD_COUNTER|s_count~24_combout\ & (\BCD_COUNTER|Equal2~0_combout\ & (\BCD_COUNTER|s_count\(8) $ (\BCD_COUNTER|s_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count~24_combout\,
	datab => \BCD_COUNTER|s_count\(8),
	datac => \BCD_COUNTER|s_count\(9),
	datad => \BCD_COUNTER|Equal2~0_combout\,
	combout => \BCD_COUNTER|s_count~30_combout\);

-- Location: FF_X95_Y1_N9
\BCD_COUNTER|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~30_combout\,
	ena => \BCD_COUNTER|s_count[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(9));

-- Location: LCCOMB_X95_Y1_N0
\BCD_COUNTER|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Add1~1_combout\ = \BCD_COUNTER|s_count\(11) $ (((\BCD_COUNTER|s_count\(9) & (\BCD_COUNTER|s_count\(8) & \BCD_COUNTER|s_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(9),
	datab => \BCD_COUNTER|s_count\(8),
	datac => \BCD_COUNTER|s_count\(10),
	datad => \BCD_COUNTER|s_count\(11),
	combout => \BCD_COUNTER|Add1~1_combout\);

-- Location: LCCOMB_X95_Y1_N4
\BCD_COUNTER|s_count~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~40_combout\ = (\BCD_COUNTER|Equal2~0_combout\ & (!\globalReset_sync~q\ & (\CONTROL_UNIT|fstate.CLEARED~q\ & \BCD_COUNTER|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|Equal2~0_combout\,
	datab => \globalReset_sync~q\,
	datac => \CONTROL_UNIT|fstate.CLEARED~q\,
	datad => \BCD_COUNTER|Add1~1_combout\,
	combout => \BCD_COUNTER|s_count~40_combout\);

-- Location: FF_X95_Y1_N5
\BCD_COUNTER|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~40_combout\,
	ena => \BCD_COUNTER|s_count[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(11));

-- Location: LCCOMB_X95_Y1_N10
\BCD_COUNTER|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Equal2~0_combout\ = (\BCD_COUNTER|s_count\(10)) # (((\BCD_COUNTER|s_count\(9)) # (!\BCD_COUNTER|s_count\(8))) # (!\BCD_COUNTER|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(10),
	datab => \BCD_COUNTER|s_count\(11),
	datac => \BCD_COUNTER|s_count\(9),
	datad => \BCD_COUNTER|s_count\(8),
	combout => \BCD_COUNTER|Equal2~0_combout\);

-- Location: LCCOMB_X95_Y1_N12
\BCD_COUNTER|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Add1~0_combout\ = \BCD_COUNTER|s_count\(10) $ (((\BCD_COUNTER|s_count\(9) & \BCD_COUNTER|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(10),
	datac => \BCD_COUNTER|s_count\(9),
	datad => \BCD_COUNTER|s_count\(8),
	combout => \BCD_COUNTER|Add1~0_combout\);

-- Location: LCCOMB_X95_Y1_N30
\BCD_COUNTER|s_count~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~39_combout\ = (\BCD_COUNTER|Equal2~0_combout\ & (!\globalReset_sync~q\ & (\CONTROL_UNIT|fstate.CLEARED~q\ & \BCD_COUNTER|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|Equal2~0_combout\,
	datab => \globalReset_sync~q\,
	datac => \CONTROL_UNIT|fstate.CLEARED~q\,
	datad => \BCD_COUNTER|Add1~0_combout\,
	combout => \BCD_COUNTER|s_count~39_combout\);

-- Location: FF_X95_Y1_N31
\BCD_COUNTER|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~39_combout\,
	ena => \BCD_COUNTER|s_count[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(10));

-- Location: FF_X95_Y1_N3
\VALUE_REGISTER|dataOut[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(10),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(10));

-- Location: LCCOMB_X95_Y1_N2
\digit2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[2]~2_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(10))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(10)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(10),
	datab => \globalReset_sync~q\,
	datac => \VALUE_REGISTER|dataOut\(10),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit2[2]~2_combout\);

-- Location: FF_X95_Y1_N29
\VALUE_REGISTER|dataOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(9),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(9));

-- Location: LCCOMB_X95_Y1_N28
\digit2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[1]~1_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(9))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(9)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(9),
	datab => \globalReset_sync~q\,
	datac => \VALUE_REGISTER|dataOut\(9),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit2[1]~1_combout\);

-- Location: FF_X95_Y1_N21
\VALUE_REGISTER|dataOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(11),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(11));

-- Location: LCCOMB_X95_Y1_N20
\digit2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[3]~3_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(11))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(11)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(11),
	datab => \globalReset_sync~q\,
	datac => \VALUE_REGISTER|dataOut\(11),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit2[3]~3_combout\);

-- Location: FF_X95_Y1_N19
\VALUE_REGISTER|dataOut[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(8),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(8));

-- Location: LCCOMB_X95_Y1_N18
\digit2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[0]~0_combout\ = (\CONTROL_UNIT|fstate.LAPVIEW~q\ & (((\VALUE_REGISTER|dataOut\(8))))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\globalReset_sync~q\ & ((\VALUE_REGISTER|dataOut\(8)))) # (!\globalReset_sync~q\ & (\BCD_COUNTER|s_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(8),
	datab => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	datac => \VALUE_REGISTER|dataOut\(8),
	datad => \globalReset_sync~q\,
	combout => \digit2[0]~0_combout\);

-- Location: LCCOMB_X95_Y1_N16
\DECODER2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER2|Mux6~0_combout\ = (\digit2[2]~2_combout\ & (!\digit2[1]~1_combout\ & (\digit2[3]~3_combout\ $ (!\digit2[0]~0_combout\)))) # (!\digit2[2]~2_combout\ & (\digit2[0]~0_combout\ & (\digit2[1]~1_combout\ $ (!\digit2[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[2]~2_combout\,
	datab => \digit2[1]~1_combout\,
	datac => \digit2[3]~3_combout\,
	datad => \digit2[0]~0_combout\,
	combout => \DECODER2|Mux6~0_combout\);

-- Location: LCCOMB_X95_Y1_N6
\DECODER2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER2|Mux5~0_combout\ = (\digit2[1]~1_combout\ & ((\digit2[0]~0_combout\ & ((\digit2[3]~3_combout\))) # (!\digit2[0]~0_combout\ & (\digit2[2]~2_combout\)))) # (!\digit2[1]~1_combout\ & (\digit2[2]~2_combout\ & (\digit2[3]~3_combout\ $ 
-- (\digit2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[2]~2_combout\,
	datab => \digit2[1]~1_combout\,
	datac => \digit2[3]~3_combout\,
	datad => \digit2[0]~0_combout\,
	combout => \DECODER2|Mux5~0_combout\);

-- Location: LCCOMB_X83_Y1_N4
\DECODER2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER2|Mux4~0_combout\ = (\digit2[2]~2_combout\ & (\digit2[3]~3_combout\ & ((\digit2[1]~1_combout\) # (!\digit2[0]~0_combout\)))) # (!\digit2[2]~2_combout\ & (\digit2[1]~1_combout\ & (!\digit2[3]~3_combout\ & !\digit2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[1]~1_combout\,
	datab => \digit2[2]~2_combout\,
	datac => \digit2[3]~3_combout\,
	datad => \digit2[0]~0_combout\,
	combout => \DECODER2|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y1_N6
\DECODER2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER2|Mux3~0_combout\ = (\digit2[1]~1_combout\ & ((\digit2[2]~2_combout\ & ((\digit2[0]~0_combout\))) # (!\digit2[2]~2_combout\ & (\digit2[3]~3_combout\ & !\digit2[0]~0_combout\)))) # (!\digit2[1]~1_combout\ & (!\digit2[3]~3_combout\ & 
-- (\digit2[2]~2_combout\ $ (\digit2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[1]~1_combout\,
	datab => \digit2[2]~2_combout\,
	datac => \digit2[3]~3_combout\,
	datad => \digit2[0]~0_combout\,
	combout => \DECODER2|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y1_N28
\DECODER2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER2|Mux2~0_combout\ = (\digit2[1]~1_combout\ & (((!\digit2[3]~3_combout\ & \digit2[0]~0_combout\)))) # (!\digit2[1]~1_combout\ & ((\digit2[2]~2_combout\ & (!\digit2[3]~3_combout\)) # (!\digit2[2]~2_combout\ & ((\digit2[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[1]~1_combout\,
	datab => \digit2[2]~2_combout\,
	datac => \digit2[3]~3_combout\,
	datad => \digit2[0]~0_combout\,
	combout => \DECODER2|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y1_N30
\DECODER2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER2|Mux1~0_combout\ = (\digit2[1]~1_combout\ & (!\digit2[3]~3_combout\ & ((\digit2[0]~0_combout\) # (!\digit2[2]~2_combout\)))) # (!\digit2[1]~1_combout\ & (\digit2[0]~0_combout\ & (\digit2[2]~2_combout\ $ (!\digit2[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[1]~1_combout\,
	datab => \digit2[2]~2_combout\,
	datac => \digit2[3]~3_combout\,
	datad => \digit2[0]~0_combout\,
	combout => \DECODER2|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y1_N12
\DECODER2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER2|Mux0~0_combout\ = (\digit2[0]~0_combout\ & ((\digit2[3]~3_combout\) # (\digit2[1]~1_combout\ $ (\digit2[2]~2_combout\)))) # (!\digit2[0]~0_combout\ & ((\digit2[1]~1_combout\) # (\digit2[2]~2_combout\ $ (\digit2[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[1]~1_combout\,
	datab => \digit2[2]~2_combout\,
	datac => \digit2[3]~3_combout\,
	datad => \digit2[0]~0_combout\,
	combout => \DECODER2|Mux0~0_combout\);

-- Location: LCCOMB_X95_Y1_N14
\BCD_COUNTER|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Add0~0_combout\ = \BCD_COUNTER|s_count\(14) $ (((\BCD_COUNTER|s_count\(13) & \BCD_COUNTER|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(14),
	datac => \BCD_COUNTER|s_count\(13),
	datad => \BCD_COUNTER|s_count\(12),
	combout => \BCD_COUNTER|Add0~0_combout\);

-- Location: LCCOMB_X96_Y1_N20
\BCD_COUNTER|s_count~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~43_combout\ = (\CONTROL_UNIT|fstate.CLEARED~q\ & (\BCD_COUNTER|s_count[15]~31_combout\ & (!\globalReset_sync~q\ & \BCD_COUNTER|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|fstate.CLEARED~q\,
	datab => \BCD_COUNTER|s_count[15]~31_combout\,
	datac => \globalReset_sync~q\,
	datad => \BCD_COUNTER|Add0~0_combout\,
	combout => \BCD_COUNTER|s_count~43_combout\);

-- Location: LCCOMB_X96_Y1_N28
\BCD_COUNTER|s_count[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count[15]~32_combout\ = (\BCD_COUNTER|Equal2~0_combout\) # ((\CONTROL_UNIT|fstate.STOPPED~q\) # ((\BCD_COUNTER|Equal1~0_combout\) # (\BCD_COUNTER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|Equal2~0_combout\,
	datab => \CONTROL_UNIT|fstate.STOPPED~q\,
	datac => \BCD_COUNTER|Equal1~0_combout\,
	datad => \BCD_COUNTER|Equal0~0_combout\,
	combout => \BCD_COUNTER|s_count[15]~32_combout\);

-- Location: LCCOMB_X96_Y1_N18
\BCD_COUNTER|s_count[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count[15]~42_combout\ = (\globalReset_sync~q\) # ((!\BCD_COUNTER|s_count[15]~32_combout\) # (!\CONTROL_UNIT|fstate.CLEARED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datac => \CONTROL_UNIT|fstate.CLEARED~q\,
	datad => \BCD_COUNTER|s_count[15]~32_combout\,
	combout => \BCD_COUNTER|s_count[15]~42_combout\);

-- Location: FF_X96_Y1_N21
\BCD_COUNTER|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~43_combout\,
	ena => \BCD_COUNTER|s_count[15]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(14));

-- Location: LCCOMB_X96_Y1_N2
\BCD_COUNTER|s_count[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count[15]~31_combout\ = ((\BCD_COUNTER|s_count\(13)) # ((\BCD_COUNTER|s_count\(14)) # (!\BCD_COUNTER|s_count\(12)))) # (!\BCD_COUNTER|s_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(15),
	datab => \BCD_COUNTER|s_count\(13),
	datac => \BCD_COUNTER|s_count\(12),
	datad => \BCD_COUNTER|s_count\(14),
	combout => \BCD_COUNTER|s_count[15]~31_combout\);

-- Location: LCCOMB_X96_Y1_N24
\BCD_COUNTER|s_count~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~41_combout\ = (!\globalReset_sync~q\ & (\BCD_COUNTER|s_count[15]~31_combout\ & (!\BCD_COUNTER|s_count\(12) & \CONTROL_UNIT|fstate.CLEARED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datab => \BCD_COUNTER|s_count[15]~31_combout\,
	datac => \BCD_COUNTER|s_count\(12),
	datad => \CONTROL_UNIT|fstate.CLEARED~q\,
	combout => \BCD_COUNTER|s_count~41_combout\);

-- Location: FF_X96_Y1_N25
\BCD_COUNTER|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~41_combout\,
	ena => \BCD_COUNTER|s_count[15]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(12));

-- Location: LCCOMB_X96_Y1_N10
\BCD_COUNTER|s_count~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~33_combout\ = (\BCD_COUNTER|s_count~24_combout\ & (\BCD_COUNTER|s_count[15]~31_combout\ & (\BCD_COUNTER|s_count\(12) $ (\BCD_COUNTER|s_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count~24_combout\,
	datab => \BCD_COUNTER|s_count\(12),
	datac => \BCD_COUNTER|s_count\(13),
	datad => \BCD_COUNTER|s_count[15]~31_combout\,
	combout => \BCD_COUNTER|s_count~33_combout\);

-- Location: FF_X96_Y1_N11
\BCD_COUNTER|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~33_combout\,
	ena => \BCD_COUNTER|s_count[15]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(13));

-- Location: LCCOMB_X96_Y1_N14
\BCD_COUNTER|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|Add0~1_combout\ = \BCD_COUNTER|s_count\(15) $ (((\BCD_COUNTER|s_count\(13) & (\BCD_COUNTER|s_count\(12) & \BCD_COUNTER|s_count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(15),
	datab => \BCD_COUNTER|s_count\(13),
	datac => \BCD_COUNTER|s_count\(12),
	datad => \BCD_COUNTER|s_count\(14),
	combout => \BCD_COUNTER|Add0~1_combout\);

-- Location: LCCOMB_X96_Y1_N26
\BCD_COUNTER|s_count~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_COUNTER|s_count~44_combout\ = (!\globalReset_sync~q\ & (\CONTROL_UNIT|fstate.CLEARED~q\ & (\BCD_COUNTER|Add0~1_combout\ & \BCD_COUNTER|s_count[15]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datab => \CONTROL_UNIT|fstate.CLEARED~q\,
	datac => \BCD_COUNTER|Add0~1_combout\,
	datad => \BCD_COUNTER|s_count[15]~31_combout\,
	combout => \BCD_COUNTER|s_count~44_combout\);

-- Location: FF_X96_Y1_N27
\BCD_COUNTER|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \BCD_COUNTER|s_count~44_combout\,
	ena => \BCD_COUNTER|s_count[15]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_COUNTER|s_count\(15));

-- Location: FF_X98_Y1_N7
\VALUE_REGISTER|dataOut[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(15),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(15));

-- Location: LCCOMB_X98_Y1_N6
\digit3[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit3[3]~3_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(15))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(15)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(15),
	datab => \globalReset_sync~q\,
	datac => \VALUE_REGISTER|dataOut\(15),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit3[3]~3_combout\);

-- Location: FF_X98_Y1_N1
\VALUE_REGISTER|dataOut[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(14),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(14));

-- Location: LCCOMB_X98_Y1_N0
\digit3[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit3[2]~2_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(14))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(14)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(14),
	datab => \globalReset_sync~q\,
	datac => \VALUE_REGISTER|dataOut\(14),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit3[2]~2_combout\);

-- Location: FF_X98_Y1_N15
\VALUE_REGISTER|dataOut[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(13),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(13));

-- Location: LCCOMB_X98_Y1_N14
\digit3[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit3[1]~1_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(13))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(13)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_COUNTER|s_count\(13),
	datab => \globalReset_sync~q\,
	datac => \VALUE_REGISTER|dataOut\(13),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit3[1]~1_combout\);

-- Location: FF_X98_Y1_N29
\VALUE_REGISTER|dataOut[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	asdata => \BCD_COUNTER|s_count\(12),
	sload => VCC,
	ena => \CONTROL_UNIT|regEnb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VALUE_REGISTER|dataOut\(12));

-- Location: LCCOMB_X98_Y1_N28
\digit3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit3[0]~0_combout\ = (\globalReset_sync~q\ & (((\VALUE_REGISTER|dataOut\(12))))) # (!\globalReset_sync~q\ & ((\CONTROL_UNIT|fstate.LAPVIEW~q\ & ((\VALUE_REGISTER|dataOut\(12)))) # (!\CONTROL_UNIT|fstate.LAPVIEW~q\ & (\BCD_COUNTER|s_count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \globalReset_sync~q\,
	datab => \BCD_COUNTER|s_count\(12),
	datac => \VALUE_REGISTER|dataOut\(12),
	datad => \CONTROL_UNIT|fstate.LAPVIEW~q\,
	combout => \digit3[0]~0_combout\);

-- Location: LCCOMB_X98_Y1_N16
\DECODER3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER3|Mux6~0_combout\ = (\digit3[3]~3_combout\ & (\digit3[0]~0_combout\ & (\digit3[2]~2_combout\ $ (\digit3[1]~1_combout\)))) # (!\digit3[3]~3_combout\ & (!\digit3[1]~1_combout\ & (\digit3[2]~2_combout\ $ (\digit3[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit3[3]~3_combout\,
	datab => \digit3[2]~2_combout\,
	datac => \digit3[1]~1_combout\,
	datad => \digit3[0]~0_combout\,
	combout => \DECODER3|Mux6~0_combout\);

-- Location: LCCOMB_X98_Y1_N26
\DECODER3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER3|Mux5~0_combout\ = (\digit3[3]~3_combout\ & ((\digit3[0]~0_combout\ & ((\digit3[1]~1_combout\))) # (!\digit3[0]~0_combout\ & (\digit3[2]~2_combout\)))) # (!\digit3[3]~3_combout\ & (\digit3[2]~2_combout\ & (\digit3[1]~1_combout\ $ 
-- (\digit3[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit3[3]~3_combout\,
	datab => \digit3[2]~2_combout\,
	datac => \digit3[1]~1_combout\,
	datad => \digit3[0]~0_combout\,
	combout => \DECODER3|Mux5~0_combout\);

-- Location: LCCOMB_X98_Y1_N20
\DECODER3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER3|Mux4~0_combout\ = (\digit3[3]~3_combout\ & (\digit3[2]~2_combout\ & ((\digit3[1]~1_combout\) # (!\digit3[0]~0_combout\)))) # (!\digit3[3]~3_combout\ & (!\digit3[2]~2_combout\ & (\digit3[1]~1_combout\ & !\digit3[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit3[3]~3_combout\,
	datab => \digit3[2]~2_combout\,
	datac => \digit3[1]~1_combout\,
	datad => \digit3[0]~0_combout\,
	combout => \DECODER3|Mux4~0_combout\);

-- Location: LCCOMB_X99_Y1_N24
\DECODER3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER3|Mux3~0_combout\ = (\digit3[1]~1_combout\ & ((\digit3[2]~2_combout\ & (\digit3[0]~0_combout\)) # (!\digit3[2]~2_combout\ & (!\digit3[0]~0_combout\ & \digit3[3]~3_combout\)))) # (!\digit3[1]~1_combout\ & (!\digit3[3]~3_combout\ & 
-- (\digit3[2]~2_combout\ $ (\digit3[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit3[2]~2_combout\,
	datab => \digit3[0]~0_combout\,
	datac => \digit3[3]~3_combout\,
	datad => \digit3[1]~1_combout\,
	combout => \DECODER3|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y1_N22
\DECODER3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER3|Mux2~0_combout\ = (\digit3[1]~1_combout\ & (((\digit3[0]~0_combout\ & !\digit3[3]~3_combout\)))) # (!\digit3[1]~1_combout\ & ((\digit3[2]~2_combout\ & ((!\digit3[3]~3_combout\))) # (!\digit3[2]~2_combout\ & (\digit3[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit3[2]~2_combout\,
	datab => \digit3[0]~0_combout\,
	datac => \digit3[3]~3_combout\,
	datad => \digit3[1]~1_combout\,
	combout => \DECODER3|Mux2~0_combout\);

-- Location: LCCOMB_X98_Y1_N18
\DECODER3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER3|Mux1~0_combout\ = (\digit3[2]~2_combout\ & (\digit3[0]~0_combout\ & (\digit3[3]~3_combout\ $ (\digit3[1]~1_combout\)))) # (!\digit3[2]~2_combout\ & (!\digit3[3]~3_combout\ & ((\digit3[1]~1_combout\) # (\digit3[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit3[3]~3_combout\,
	datab => \digit3[2]~2_combout\,
	datac => \digit3[1]~1_combout\,
	datad => \digit3[0]~0_combout\,
	combout => \DECODER3|Mux1~0_combout\);

-- Location: LCCOMB_X98_Y1_N8
\DECODER3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER3|Mux0~0_combout\ = (\digit3[0]~0_combout\ & ((\digit3[3]~3_combout\) # (\digit3[2]~2_combout\ $ (\digit3[1]~1_combout\)))) # (!\digit3[0]~0_combout\ & ((\digit3[1]~1_combout\) # (\digit3[3]~3_combout\ $ (\digit3[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit3[3]~3_combout\,
	datab => \digit3[2]~2_combout\,
	datac => \digit3[1]~1_combout\,
	datad => \digit3[0]~0_combout\,
	combout => \DECODER3|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y72_N8
\PULSE_LED|s_counter[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|s_counter[0]~7_combout\ = \PULSE_LED|s_counter\(0) $ (VCC)
-- \PULSE_LED|s_counter[0]~8\ = CARRY(\PULSE_LED|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PULSE_LED|s_counter\(0),
	datad => VCC,
	combout => \PULSE_LED|s_counter[0]~7_combout\,
	cout => \PULSE_LED|s_counter[0]~8\);

-- Location: LCCOMB_X49_Y72_N18
\PULSE_LED|s_counter[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|s_counter[5]~17_combout\ = (\PULSE_LED|s_counter\(5) & (!\PULSE_LED|s_counter[4]~16\)) # (!\PULSE_LED|s_counter\(5) & ((\PULSE_LED|s_counter[4]~16\) # (GND)))
-- \PULSE_LED|s_counter[5]~18\ = CARRY((!\PULSE_LED|s_counter[4]~16\) # (!\PULSE_LED|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE_LED|s_counter\(5),
	datad => VCC,
	cin => \PULSE_LED|s_counter[4]~16\,
	combout => \PULSE_LED|s_counter[5]~17_combout\,
	cout => \PULSE_LED|s_counter[5]~18\);

-- Location: LCCOMB_X49_Y72_N20
\PULSE_LED|s_counter[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|s_counter[6]~19_combout\ = \PULSE_LED|s_counter[5]~18\ $ (!\PULSE_LED|s_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PULSE_LED|s_counter\(6),
	cin => \PULSE_LED|s_counter[5]~18\,
	combout => \PULSE_LED|s_counter[6]~19_combout\);

-- Location: FF_X49_Y72_N21
\PULSE_LED|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \PULSE_LED|s_counter[6]~19_combout\,
	sclr => \PULSE_LED|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PULSE_LED|s_counter\(6));

-- Location: LCCOMB_X49_Y72_N24
\PULSE_LED|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|LessThan0~0_combout\ = (!\PULSE_LED|s_counter\(3) & (!\PULSE_LED|s_counter\(2) & ((!\PULSE_LED|s_counter\(0)) # (!\PULSE_LED|s_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE_LED|s_counter\(1),
	datab => \PULSE_LED|s_counter\(3),
	datac => \PULSE_LED|s_counter\(0),
	datad => \PULSE_LED|s_counter\(2),
	combout => \PULSE_LED|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y72_N26
\PULSE_LED|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|LessThan0~1_combout\ = (\PULSE_LED|s_counter\(5) & (\PULSE_LED|s_counter\(6) & ((\PULSE_LED|s_counter\(4)) # (!\PULSE_LED|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE_LED|s_counter\(5),
	datab => \PULSE_LED|s_counter\(4),
	datac => \PULSE_LED|s_counter\(6),
	datad => \PULSE_LED|LessThan0~0_combout\,
	combout => \PULSE_LED|LessThan0~1_combout\);

-- Location: FF_X49_Y72_N9
\PULSE_LED|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \PULSE_LED|s_counter[0]~7_combout\,
	sclr => \PULSE_LED|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PULSE_LED|s_counter\(0));

-- Location: LCCOMB_X49_Y72_N10
\PULSE_LED|s_counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|s_counter[1]~9_combout\ = (\PULSE_LED|s_counter\(1) & (!\PULSE_LED|s_counter[0]~8\)) # (!\PULSE_LED|s_counter\(1) & ((\PULSE_LED|s_counter[0]~8\) # (GND)))
-- \PULSE_LED|s_counter[1]~10\ = CARRY((!\PULSE_LED|s_counter[0]~8\) # (!\PULSE_LED|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE_LED|s_counter\(1),
	datad => VCC,
	cin => \PULSE_LED|s_counter[0]~8\,
	combout => \PULSE_LED|s_counter[1]~9_combout\,
	cout => \PULSE_LED|s_counter[1]~10\);

-- Location: FF_X49_Y72_N11
\PULSE_LED|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \PULSE_LED|s_counter[1]~9_combout\,
	sclr => \PULSE_LED|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PULSE_LED|s_counter\(1));

-- Location: LCCOMB_X49_Y72_N12
\PULSE_LED|s_counter[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|s_counter[2]~11_combout\ = (\PULSE_LED|s_counter\(2) & (\PULSE_LED|s_counter[1]~10\ $ (GND))) # (!\PULSE_LED|s_counter\(2) & (!\PULSE_LED|s_counter[1]~10\ & VCC))
-- \PULSE_LED|s_counter[2]~12\ = CARRY((\PULSE_LED|s_counter\(2) & !\PULSE_LED|s_counter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE_LED|s_counter\(2),
	datad => VCC,
	cin => \PULSE_LED|s_counter[1]~10\,
	combout => \PULSE_LED|s_counter[2]~11_combout\,
	cout => \PULSE_LED|s_counter[2]~12\);

-- Location: FF_X49_Y72_N13
\PULSE_LED|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \PULSE_LED|s_counter[2]~11_combout\,
	sclr => \PULSE_LED|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PULSE_LED|s_counter\(2));

-- Location: LCCOMB_X49_Y72_N14
\PULSE_LED|s_counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|s_counter[3]~13_combout\ = (\PULSE_LED|s_counter\(3) & (!\PULSE_LED|s_counter[2]~12\)) # (!\PULSE_LED|s_counter\(3) & ((\PULSE_LED|s_counter[2]~12\) # (GND)))
-- \PULSE_LED|s_counter[3]~14\ = CARRY((!\PULSE_LED|s_counter[2]~12\) # (!\PULSE_LED|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE_LED|s_counter\(3),
	datad => VCC,
	cin => \PULSE_LED|s_counter[2]~12\,
	combout => \PULSE_LED|s_counter[3]~13_combout\,
	cout => \PULSE_LED|s_counter[3]~14\);

-- Location: FF_X49_Y72_N15
\PULSE_LED|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \PULSE_LED|s_counter[3]~13_combout\,
	sclr => \PULSE_LED|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PULSE_LED|s_counter\(3));

-- Location: LCCOMB_X49_Y72_N16
\PULSE_LED|s_counter[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|s_counter[4]~15_combout\ = (\PULSE_LED|s_counter\(4) & (\PULSE_LED|s_counter[3]~14\ $ (GND))) # (!\PULSE_LED|s_counter\(4) & (!\PULSE_LED|s_counter[3]~14\ & VCC))
-- \PULSE_LED|s_counter[4]~16\ = CARRY((\PULSE_LED|s_counter\(4) & !\PULSE_LED|s_counter[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PULSE_LED|s_counter\(4),
	datad => VCC,
	cin => \PULSE_LED|s_counter[3]~14\,
	combout => \PULSE_LED|s_counter[4]~15_combout\,
	cout => \PULSE_LED|s_counter[4]~16\);

-- Location: FF_X49_Y72_N17
\PULSE_LED|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \PULSE_LED|s_counter[4]~15_combout\,
	sclr => \PULSE_LED|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PULSE_LED|s_counter\(4));

-- Location: FF_X49_Y72_N19
\PULSE_LED|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV_100Hz|clkOut~clkctrl_outclk\,
	d => \PULSE_LED|s_counter[5]~17_combout\,
	sclr => \PULSE_LED|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PULSE_LED|s_counter\(5));

-- Location: LCCOMB_X49_Y72_N4
\PULSE_LED|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|LessThan1~0_combout\ = ((!\PULSE_LED|s_counter\(3) & (!\PULSE_LED|s_counter\(1) & !\PULSE_LED|s_counter\(2)))) # (!\PULSE_LED|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PULSE_LED|s_counter\(3),
	datab => \PULSE_LED|s_counter\(4),
	datac => \PULSE_LED|s_counter\(1),
	datad => \PULSE_LED|s_counter\(2),
	combout => \PULSE_LED|LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y72_N2
\PULSE_LED|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PULSE_LED|LessThan1~1_combout\ = (!\PULSE_LED|s_counter\(6) & ((\PULSE_LED|LessThan1~0_combout\) # (!\PULSE_LED|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PULSE_LED|s_counter\(5),
	datac => \PULSE_LED|LessThan1~0_combout\,
	datad => \PULSE_LED|s_counter\(6),
	combout => \PULSE_LED|LessThan1~1_combout\);

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_LED_1Hz <= \LED_1Hz~output_o\;
END structure;


