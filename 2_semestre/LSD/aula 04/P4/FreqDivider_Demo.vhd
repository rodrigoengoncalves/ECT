library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider_Demo is
  port(
    CLOCK_50 : in  std_logic;  -- Relógio principal da FPGA (50 MHz)
    LEDR     : out std_logic_vector(1 downto 0)   -- Saída ligada a um LED
  );
end FreqDivider_Demo;

architecture Behavioral of FreqDivider_Demo is
  -- Constante para o valor de k (25x10^6 em hexadecimal: x"017D7840")
  constant K_VALUE : std_logic_vector(31 downto 0) := x"017D7840";
begin

  -- Instância do divisor de frequência
  U1: entity work.FreqDivider(Behavioral)
  port map(
    clkIn  => CLOCK_50,
    k      => K_VALUE,
    clkOut => LEDR(0)
  );

end Behavioral;