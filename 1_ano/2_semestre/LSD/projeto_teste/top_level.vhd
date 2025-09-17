-- Top Level
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           SW : in STD_LOGIC_VECTOR(17 downto 0);  -- Interruptores
           KEY : in STD_LOGIC_VECTOR(3 downto 0);  -- Botões de reset
           LEDR : out STD_LOGIC_VECTOR(3 downto 0); -- LEDs
           HEX0 : out STD_LOGIC_VECTOR(6 downto 0);  -- Display 7 segmentos 0
           HEX1 : out STD_LOGIC_VECTOR(6 downto 0)); -- Display 7 segmentos 1
end top_level;

architecture Structural of top_level is
    signal clk_1Hz, clk_4Hz : STD_LOGIC;
    signal count : INTEGER range 0 to 11;
begin
    -- Divisor de Frequência
    U1: entity work.divisor_frequencia port map (clk, KEY(0), clk_1Hz, clk_4Hz);

    -- Contador Módulo 12
    U2: entity work.contador_mod12 port map (clk_1Hz, KEY(1), count);

    -- Controlador de LEDs
    U3: entity work.controlador_leds port map (clk_4Hz, KEY(2), count, LEDR);

    -- Conversor para Display de 7 Segmentos
    U4: entity work.bcd_display port map (count, HEX0, HEX1);
end Structural;
