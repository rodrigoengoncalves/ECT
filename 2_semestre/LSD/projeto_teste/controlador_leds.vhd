-- Controlador de LEDs
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controlador_leds is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           count : in INTEGER range 0 to 11;
           led : buffer STD_LOGIC_VECTOR(3 downto 0)); -- Alterado para buffer
end controlador_leds;

architecture Behavioral of controlador_leds is
begin
    process(clk, rst)
    begin
        if rst = '1' then
            led <= "0000";  -- LEDs apagados
        elsif rising_edge(clk) then
            if led = "1111" then
                led <= "0000";  -- LEDs desligados
            else
                led <= "1111";  -- LEDs ligados
            end if;
        end if;
    end process;
end Behavioral;
