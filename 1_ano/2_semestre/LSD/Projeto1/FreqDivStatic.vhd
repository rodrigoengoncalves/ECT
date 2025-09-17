library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivSatic is
	generic(n 	: natural);
	port(clkIn	: in  std_logic;
		  clkOut	: out std_logic);
		  
end FreqDivSatic;

architecture Behavioral of FreqDivSatic is

	signal s_divCounter : natural;

begin
	assert(N >= 2);
	
	process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if (s_divCounter = n - 1) then
				clkOut		 <= '0';
				s_divCounter <= 0;
			else
				if (s_divCounter = (n / 2 - 1)) then
					clkOut	 <= '1';
				end if;
				s_divCounter <= s_divCounter + 1;
			end if;
		end if;
	end process;
end Behavioral;
