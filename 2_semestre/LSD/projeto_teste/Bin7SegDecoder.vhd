library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Bin7SegDecoder is
 port(binInput : in std_logic_vector(3 downto 0);
		enable	: in std_logic;
		decOut_n : out std_logic_vector(6 downto 0));
end Bin7SegDecoder;
architecture Behavioral of Bin7SegDecoder is
begin
 decOut_n <="1111111" when (enable = '0') else 
				"1111001" when (binInput = "0001") else
				"0100100" when (binInput = "0010") else
				"0110000" when (binInput = "0011") else 
				"0011001" when (binInput = "0100") else 
				"0010010" when (binInput = "0101") else 
				"0000010" when (binInput = "0110") else 
				"1111000" when (binInput = "0111") else 
				"0000000" when (binInput = "1000") else 
				"0010000" when (binInput = "1001") else 
				"0001000" when (binInput = "1010") else 
				"0000011" when (binInput = "1011") else 
				"1000110" when (binInput = "1100") else 
				"0100001" when (binInput = "1101") else 
				"0000110" when (binInput = "1110") else 
				"0001110" when (binInput = "1111") else 
				"1000000";
end Behavioral;