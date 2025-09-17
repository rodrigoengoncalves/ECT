library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL;


entity ClkDividerN is
    generic(divFactor : natural := 50_000_000); -- 50 MHz para 1 Hz (50M/1 = 50M)
    port(clkIn  : in  std_logic;
         clkOut : buffer std_logic);
end ClkDividerN;

architecture RTL of ClkDividerN is
    signal s_divCounter : natural range 0 to divFactor-1 := 0;
begin
    process(clkIn)
    begin
        if rising_edge(clkIn) then
            if s_divCounter = divFactor - 1 then
                clkOut <= not clkOut; -- Inverte o sinal (50% duty cycle)
                s_divCounter <= 0;
            else
                s_divCounter <= s_divCounter + 1;
            end if;
        end if;
    end process;
end RTL;