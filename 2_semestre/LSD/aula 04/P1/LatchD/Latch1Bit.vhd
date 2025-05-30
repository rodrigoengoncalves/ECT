library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity LatchD is
	port(enable  : in  std_logic;
		dataIn : in  std_logic;
		dataOut : out std_logic);
end LatchD;

architecture Behav of LatchD is
	begin
	process(enable, dataIn)
	begin
		if (enable = '1') then
			dataOut <= dataIn;
		end if;
	end process;
end Behav;