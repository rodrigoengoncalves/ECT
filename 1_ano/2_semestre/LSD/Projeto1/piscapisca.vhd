library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity piscapisca is
port(
	clock : in std_logic;
	vetor : in std_logic_vector(3 downto 0);
	output : out std_logic_vector(3 downto 0)
);
end piscapisca;


architecture Behavioral of piscapisca is
begin
	process(clock, vetor)
	begin
		if clock = '1' then
			output <= vetor;
		else
			output <= "0000"; 
		end if;
	end process;
end Behavioral;