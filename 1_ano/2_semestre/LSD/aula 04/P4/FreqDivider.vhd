library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider is 
  port(
    clkIn  : in  std_logic;
    k      : in  std_logic_vector(31 downto 0) := x"017D7840";
    clkOut : out std_logic
  );
end FreqDivider;

architecture Behavioral of FreqDivider is
  signal s_counter : unsigned(31 downto 0) := (others => '0');
  signal s_halfWay : unsigned(31 downto 0);
begin
  -- Calcula a metade do valor de k
  s_halfWay <= unsigned(k) / 2;
  
  process(clkIn)
  begin
    if rising_edge(clkIn) then
      if s_counter = unsigned(k) - 1 then
        -- Quando o contador atinge k-1, reseta o contador e coloca a saída em '0'
        s_counter <= (others => '0');
        clkOut <= '0';
      elsif s_counter = s_halfWay - 1 then
        -- Quando o contador atinge k/2 - 1, incrementa e coloca a saída em '1'
        s_counter <= s_counter + 1;
        clkOut <= '1';
      else
        -- Em todas as outras contagens, incrementa o contador
        s_counter <= s_counter + 1;
      end if;
    end if;
  end process;
  
end Behavioral;