library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Count1_12 is 
	generic(MAX		: natural := 9);  
	  port( enable : in std_logic;
			  reset  : in std_logic;
			  clk	 : in std_logic;
			  termCnt	: out std_logic;
			  output : out std_logic_vector(3 downto 0));
end Count1_12;

architecture Behavioral of Count1_12 is 
	signal scount : unsigned(3 downto 0) := (others => '0');  
	signal termCnt_s : std_logic := '0';
	
begin 
	process(clk, reset)  
	begin
		if reset = '1' then
			scount <= (others => '0');
		elsif rising_edge(clk) then 
			if enable = '1' then
				if scount = to_unsigned(MAX, 4) then   
					scount <= (others => '0');
					termCnt_s <= '1';  
				else 
					scount <= scount + 1;
					termCnt_s <= '0';  
				end if;
			end if;
		end if;
	end process;
 termCnt <= termCnt_s;
 output <= std_logic_vector(scount); 
end Behavioral;
