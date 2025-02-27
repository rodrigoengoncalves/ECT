library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dec2_4EnDemo is
    port (
        SW   : in  std_logic_vector(2 downto 0);
        LEDG : out std_logic_vector(3 downto 0)
    );
end Dec2_4EnDemo;

architecture Shell of Dec2_4EnDemo is
    component Dec2_4En
        port (
            enable : in std_logic;
            inputs : in std_logic_vector(1 downto 0);
            outputs : out std_logic_vector(3 downto 0)
        );
    end component;
begin
    system_core : Dec2_4En
        port map (
            enable  => SW(2),
            inputs  => SW(1 downto 0),
            outputs => LEDG
        );
end Shell;