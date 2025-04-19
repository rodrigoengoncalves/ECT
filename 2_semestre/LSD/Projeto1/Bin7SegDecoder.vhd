library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(binInput : in std_logic_vector(3 downto 0);
			enable	:	in std_logic;
			decOut_n : out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
	process(binInput, enable)
	begin
		if enable = '0' then
			decOut_n <= "1111111";
		else
			case binInput is
                when "0000" => decOut_n <= "1000000";
                when "0001" => decOut_n <= "1111001"; 
                when "0010" => decOut_n <= "0100100"; 
                when "0011" => decOut_n <= "0110000"; 
                when "0100" => decOut_n <= "0011001"; 
                when "0101" => decOut_n <= "0010010"; 
                when "0110" => decOut_n <= "0000010"; 
                when "0111" => decOut_n <= "1111000"; 
                when "1000" => decOut_n <= "0000000"; 
                when "1001" => decOut_n <= "0010000"; 
                when "1010" => decOut_n <= "0001000";
                when "1011" => decOut_n <= "0000011"; 
                when others => decOut_n <= "1111111"; 
			end case;
		end if;
	end process;
end Behavioral;