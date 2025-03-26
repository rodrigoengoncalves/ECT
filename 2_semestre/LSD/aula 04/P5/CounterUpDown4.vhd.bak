library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterLoadUpDown4 is
  port(
    clk    : in  std_logic;
    upDown : in  std_logic;  -- '1' para contagem ascendente, '0' para descendente
    enable : in  std_logic;  -- Quando '1', permite a operação do contador
    load   : in  std_logic;  -- Quando '1', carrega o valor de dataIn
    reset  : in  std_logic;  -- Reset síncrono (ativa em '1', prioridade mais alta)
    dataIn : in  std_logic_vector(3 downto 0);
    count: out std_logic_vector(3 downto 0)
  );
end CounterLoadUpDown4;

architecture Behavioral of CounterLoadUpDown4 is
  signal s_count : unsigned(3 downto 0) := (others => '0');
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        s_count <= (others => '0');           -- Reset tem prioridade máxima
      elsif enable = '1' then                 -- Se enable estiver ativo
        if load = '1' then                    -- Em seguida, verifica o load
          s_count <= unsigned(dataIn);
        elsif upDown = '1' then               -- Se não houver load, verifica a direção
          s_count <= s_count + 1;
        else
          s_count <= s_count - 1;
        end if;
      end if;
      -- Se enable = '0', mantém o valor atual (s_count)
    end if;
  end process;

  count <= std_logic_vector(s_count);
end Behavioral;