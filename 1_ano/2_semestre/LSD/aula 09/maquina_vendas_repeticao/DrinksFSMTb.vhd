library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSMTb is

end DrinksFSMTb;

architecture Stimulus of DrinksFSMTb is
	signal s_reset : std_logic;
	signal s_c : std_logic;
	signal s_v : std_logic;
	signal s_drink : std_logic;
	signal s_clk : std_logic;
	
begin 	

	uut: entity work.DrinksFSM(Behavioral)
		port map(reset	=> s_reset,
		  clk		=> s_clk,
		  C	=> s_c,
		  V	=> s_v,
		  drink	=> s_drink);
		  
	clock_proc : process
	begin
		s_clk <= '0'; wait for 50ns;
		s_clk <= '1'; wait for 50ns;
	end process;
	
	stim_proc : process
	begin
		s_reset <= '1'; s_v <= '0'; s_c <= '0';
		wait for 100 ns;
		s_reset <= '0';
		wait for 100 ns;
		s_v <= '1';
		wait for 100 ns;
		s_c <= '1';
		wait for 100 ns;
		s_v <= '0';
		wait for 100 ns;
		s_v <= '0';
		wait for 100 ns;
		s_reset <= '0';
		wait for 100 ns;
	end process;

end Stimulus;