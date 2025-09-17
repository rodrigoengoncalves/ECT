library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksMachine is
    port(
        KEY   : in  std_logic;                      
        CLOCK_50   : in  std_logic;                      
        SW    : in  std_logic_vector(1 downto 0);   
        LEDG  : out std_logic                       
    );
end DrinksMachine;

architecture Structural of DrinksMachine is

    signal V_clean, C_clean, reset_clean : std_logic;

begin

    debounce_v : entity work.DebounceUnit(Behavioral)
        port map(
            refClk     => CLOCK_50,
            dirtyIn    => SW(0),
            pulsedOut  => V_clean
        );

    debounce_c : entity work.DebounceUnit(Behavioral)
        port map(
            refClk     => CLOCK_50,
            dirtyIn    => SW(1),
            pulsedOut  => C_clean
        );
		  
    debounce_reset : entity work.DebounceUnit(Behavioral)
        port map(
            refClk     => CLOCK_50,
            dirtyIn    => KEY,
            pulsedOut  => reset_clean
        );
		  
    drink_i : entity work.DrinksFSM(Behavioral)
        port map(
            reset => reset_clean,
            clk   => CLOCK_50,
            V     => V_clean,
            C     => C_clean,
            drink => LEDG
        );

end Structural;
