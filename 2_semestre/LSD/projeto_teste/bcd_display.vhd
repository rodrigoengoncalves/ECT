-- Conversor para Display de 7 Segmentos
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_display is
    Port ( bcd : in INTEGER range 0 to 11;
           seg0 : out STD_LOGIC_VECTOR(6 downto 0);  -- HEX0[6..0]
           seg1 : out STD_LOGIC_VECTOR(6 downto 0));  -- HEX1[6..0]
end bcd_display;

architecture Behavioral of bcd_display is
begin
    process(bcd)
    begin
        case bcd is
            when 0 => seg0 <= "0111111"; seg1 <= "0111111";  -- 0 no display
            when 1 => seg0 <= "0000110"; seg1 <= "0111111";  -- 1 no display
            when 2 => seg0 <= "1011011"; seg1 <= "0111111";  -- 2 no display
            when 3 => seg0 <= "1001111"; seg1 <= "0111111";  -- 3 no display
            when 4 => seg0 <= "1100110"; seg1 <= "0111111";  -- 4 no display
            when 5 => seg0 <= "1101101"; seg1 <= "0111111";  -- 5 no display
            when 6 => seg0 <= "1111101"; seg1 <= "0111111";  -- 6 no display
            when 7 => seg0 <= "0000111"; seg1 <= "0111111";  -- 7 no display
            when 8 => seg0 <= "1111111"; seg1 <= "0111111";  -- 8 no display
            when 9 => seg0 <= "1101111"; seg1 <= "0111111";  -- 9 no display
            when 10 => seg0 <= "1110111"; seg1 <= "0111111"; -- 10 no display
            when 11 => seg0 <= "1110011"; seg1 <= "0111111"; -- 11 no display
            when others => seg0 <= "0000000"; seg1 <= "0111111"; -- Default
        end case;
    end process;
end Behavioral;
