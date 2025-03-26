library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity FreqDivider_Demo is
  port(
    CLOCK_50 : in  std_logic;   -- Relógio de 50 MHz da FPGA
	 SW       : in  std_logic_vector(1 downto 0);   -- Controle reset
    HEX0     : out std_logic_vector(6 downto 0)  -- Display de 7 segmentos
  );
end FreqDivider_Demo;

architecture Behavioral of FreqDivider_Demo is

  -- Sinais internos
  signal clk_1Hz  : std_logic;   -- Relógio de 1 Hz gerado pelo divisor
  signal countVal : std_logic_vector(3 downto 0);  -- Valor do contador

  -- Constante para divisão de frequência de 50 MHz para 1 Hz
  constant K_VALUE : std_logic_vector(31 downto 0) := x"02FAF080"; --50*10^6

begin

  -- Instância do divisor de frequência
  U1: entity work.FreqDivider(Behavioral)
    port map(
      clkIn  => CLOCK_50,
      k      => K_VALUE,
      clkOut => clk_1Hz
    );

  -- Instância do contador Up/Down
  U2: entity work.CounterUpDown4(Behavioral)
    port map(
      clk    => clk_1Hz,
		reset  => SW(0),
      upDown => SW(1),     -- Controle do sentido da contagem
      count  => countVal
    );

  -- Instância do decodificador de 7 segmentos
  U3: entity work.Bin7SegDecoder(Behavioral)
    port map(
      binInput  => countVal,
		enable => '1',
      decOut_n => HEX0
    );

end Behavioral;