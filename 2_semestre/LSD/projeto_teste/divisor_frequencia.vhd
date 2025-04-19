library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_frequencia is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk_1Hz : out STD_LOGIC;
           clk_4Hz : out STD_LOGIC);
end divisor_frequencia;

architecture Behavioral of divisor_frequencia is
    signal count_1Hz : INTEGER := 0;
    signal count_4Hz : INTEGER := 0;
    signal toggle_1Hz : STD_LOGIC := '0';
    signal toggle_4Hz : STD_LOGIC := '0';
begin
    process(clk, rst)
    begin
        if rst = '1' then
            count_1Hz <= 0;
            count_4Hz <= 0;
            toggle_1Hz <= '0';
            toggle_4Hz <= '0';
        elsif rising_edge(clk) then
            -- Divisor para 1Hz
            if count_1Hz = 25000000 then
                count_1Hz <= 0;
                toggle_1Hz <= not toggle_1Hz;
            else
                count_1Hz <= count_1Hz + 1;
            end if;
            
            -- Divisor para 4Hz
            if count_4Hz = 6250000 then
                count_4Hz <= 0;
                toggle_4Hz <= not toggle_4Hz;
            else
                count_4Hz <= count_4Hz + 1;
            end if;
        end if;
    end process;
    
    clk_1Hz <= toggle_1Hz;
    clk_4Hz <= toggle_4Hz;
end Behavioral;