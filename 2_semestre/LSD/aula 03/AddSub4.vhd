library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AddSub4 is
    Port (
        a, b  : in STD_LOGIC_VECTOR(3 downto 0);
        sub   : in STD_LOGIC;
        s     : out STD_LOGIC_VECTOR(3 downto 0);
        cout  : out STD_LOGIC
    );
end AddSub4;

architecture Structural of AddSub4 is
    signal s_b : STD_LOGIC_VECTOR(3 downto 0);
    signal cin : STD_LOGIC;

    component Adder4
        Port (
            a, b : in STD_LOGIC_VECTOR(3 downto 0);
            cin  : in STD_LOGIC;
            s    : out STD_LOGIC_VECTOR(3 downto 0);
            cout : out STD_LOGIC
        );
    end component;
begin

    s_b <= b when (sub = '0') else not b;
    cin <= sub;


    U1: Adder4 port map (
        a    => a,
        b    => s_b,
        cin  => cin,
        s    => s,
        cout => cout
    );
end Structural;