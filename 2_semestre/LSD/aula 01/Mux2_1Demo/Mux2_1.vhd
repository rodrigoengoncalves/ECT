library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2_1 is
    Port (
        A   : in  STD_LOGIC;
        B   : in  STD_LOGIC;
        Sel : in  STD_LOGIC;
        Y   : out STD_LOGIC
    );
end Mux2_1;

architecture Behavioral of Mux2_1 is
begin
    Y <= A when Sel = '0' else B;
end Behavioral;