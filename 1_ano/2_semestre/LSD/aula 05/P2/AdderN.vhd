library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AdderN is
    generic (N : integer := 8); 
    port (
        A     : in  STD_LOGIC_VECTOR(N-1 downto 0);
        B     : in  STD_LOGIC_VECTOR(N-1 downto 0);
        SUM   : out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end AdderN;

architecture Behavioral of AdderN is
begin
    SUM <= A + B; 
end Behavioral;