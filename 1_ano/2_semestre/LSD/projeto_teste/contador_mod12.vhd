library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador_mod12 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           count : out INTEGER range 0 to 11);
end contador_mod12;

architecture Behavioral of contador_mod12 is
    signal cnt : INTEGER range 0 to 11 := 0;
begin
    process(clk, rst)
    begin
        if rst = '1' then
            cnt <= 0;
        elsif rising_edge(clk) then
            if cnt = 11 then
                cnt <= 0;
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end process;
    
    count <= cnt;
end Behavioral;