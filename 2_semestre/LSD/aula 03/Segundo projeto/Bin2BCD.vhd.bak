library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Bin2BCD is
    Port ( bin : in  unsigned(3 downto 0);  -- Entrada binária de 4 bits
           bcd : out  unsigned(7 downto 0)  -- Saída BCD de 8 bits (2 dígitos BCD)
         );
end Bin2BCD;

architecture Behavioral of Bin2BCD is
begin
    process(bin)
    variable temp : unsigned(7 downto 0);  -- Variável para armazenar o valor BCD
    begin
        -- Inicialização da variável
        temp := (others => '0');

        -- Passo 1: Converter a entrada binária para BCD
        temp(3 downto 0) := bin;  -- O valor binário vai para o primeiro dígito BCD

        -- Passo 2: Atualizar o valor BCD se for necessário (para garantir que o valor BCD
        -- nunca seja maior que 9, caso o número binário seja maior que 9)
        if temp(3 downto 0) > "1001" then
            temp := temp + "00010000";  -- Adiciona 10 (em binário) ao número BCD
        end if;

        -- Passo 3: Atribui o valor BCD para a saída
        bcd <= temp;
    end process;
end Behavioral;
