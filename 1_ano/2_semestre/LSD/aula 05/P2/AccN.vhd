library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AccN is
    generic (N : positive := 8); 
    port (
        clk     : in  STD_LOGIC;
        reset   : in  STD_LOGIC;
        enable  : in  STD_LOGIC;
        dataln  : in  STD_LOGIC_VECTOR(N-1 downto 0);
        dataOut : out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end entity AccN;

architecture Behavioral of AccN is

    component AdderN is
        generic (N : integer := 8);
        port (
            A   : in  STD_LOGIC_VECTOR(N-1 downto 0);
            B   : in  STD_LOGIC_VECTOR(N-1 downto 0);
            SUM : out STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component;


    component RegN is
        generic (N : positive := 8);
        port (
            clk     : in  STD_LOGIC;
            reset   : in  STD_LOGIC;
            enable  : in  STD_LOGIC;
            dataIn  : in  STD_LOGIC_VECTOR(N-1 downto 0);
            dataOut : out STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component;


    signal s_adderOut : STD_LOGIC_VECTOR(N-1 downto 0);
    signal s_regOut   : STD_LOGIC_VECTOR(N-1 downto 0);

begin

    adder_inst : AdderN
        generic map (N => N)
        port map (
            A   => s_regOut,
            B   => dataln,
            SUM => s_adderOut
        );


    reg_inst : RegN
        generic map (N => N)
        port map (
            clk     => clk,
            reset   => reset,
            enable  => enable,
            dataIn  => s_adderOut,
            dataOut => s_regOut
        );


    dataOut <= s_regOut;

end architecture Behavioral;
