library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PriorityEncoder is
    Port (
        inp : in  STD_LOGIC_VECTOR (3 downto 0);
        outp : out STD_LOGIC_VECTOR (1 downto 0);
        valid : out STD_LOGIC
    );
end PriorityEncoder;

architecture Behavioral of PriorityEncoder is
begin
    process (inp)
    begin
        if inp(3) = '1' then
            outp <= "11";
            valid <= '1';
        elsif inp(2) = '1' then
            outp <= "10";
            valid <= '1';
        elsif inp(1) = '1' then
            outp <= "01";
            valid <= '1';
        elsif inp(0) = '1' then
            outp <= "00";
            valid <= '1';
        else
            outp <= "00"; 
            valid <= '0';
        end if;
    end process;
end Behavioral;