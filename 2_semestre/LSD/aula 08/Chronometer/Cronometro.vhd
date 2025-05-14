library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Cronometro is
    Port (
        clk_50MHz   : in  STD_LOGIC;
        globalReset : in  STD_LOGIC;
        startStop   : in  STD_LOGIC;
        lapReset    : in  STD_LOGIC;
        HEX2        : out STD_LOGIC_VECTOR(6 downto 0);
        HEX3        : out STD_LOGIC_VECTOR(6 downto 0);
        HEX4        : out STD_LOGIC_VECTOR(6 downto 0);
        HEX5        : out STD_LOGIC_VECTOR(6 downto 0);
        LED_1Hz     : out STD_LOGIC
    );
end Cronometro;

architecture Structural of Cronometro is
    signal clk_1MHz, clk_100Hz, clk_1Hz : STD_LOGIC;
    
    signal cntRst, cntEnb, regEnb : STD_LOGIC;
    signal startStop_deb, lapReset_deb : STD_LOGIC;
    
    signal counterValue : STD_LOGIC_VECTOR(15 downto 0);
    signal regValue     : STD_LOGIC_VECTOR(15 downto 0);
    
    signal digit0, digit1, digit2, digit3 : STD_LOGIC_VECTOR(3 downto 0);
    
    
    signal globalReset_sync : STD_LOGIC;
    
begin

    SYNC_RESET: process(clk_100Hz)
    begin
        if rising_edge(clk_100Hz) then
            globalReset_sync <= globalReset;
        end if;
    end process;
    
    DIV_1MHz: entity work.ClkDividerN
        generic map(divFactor => 50)
        port map(
            clkIn  => clk_50MHz,
            clkOut => clk_1MHz
        );
    
    DIV_100Hz: entity work.ClkDividerN
        generic map(divFactor => 10000)
        port map(
            clkIn  => clk_1MHz,
            clkOut => clk_100Hz
        );
    
    DIV_1Hz: entity work.ClkDividerN
        generic map(divFactor => 100)
        port map(
            clkIn  => clk_100Hz,
            clkOut => clk_1Hz
        );
    
    PULSE_LED: entity work.PulseGeneratorN
        generic map(
            numberSteps => 100,
            out0CompVal => 50,
            out1CompVal => 50
        )
        port map(
            clkIn     => clk_100Hz,
            pulseOut0 => open,
            pulseOut1 => LED_1Hz
        );
    
    DEBOUNCE_START: entity work.DebounceUnit
        generic map(
            kHzClkFreq     => 50000,
            mSecMinInWidth => 100,
            inPolarity     => '1',
            outPolarity    => '1'
        )
        port map(
            refClk    => clk_1MHz,
            dirtyIn   => startStop,
            pulsedOut => startStop_deb
        );
    
    DEBOUNCE_LAP: entity work.DebounceUnit
        generic map(
            kHzClkFreq     => 50000,
            mSecMinInWidth => 100,
            inPolarity     => '1',
            outPolarity    => '1'
        )
        port map(
            refClk    => clk_1MHz,
            dirtyIn   => lapReset,
            pulsedOut => lapReset_deb
        );
    
    CONTROL_UNIT: entity work.ControlUnit
        port map(
            reset   => globalReset_sync,  
            clk     => clk_100Hz,
            statop  => startStop_deb,
            laprst  => lapReset_deb,
            cntRst  => cntRst,
            cntEnb  => cntEnb,
            regEnb  => regEnb
        );
    
    BCD_COUNTER: entity work.CntBCDUp4
        port map(
            reset    => cntRst or globalReset_sync,  
            clk      => clk_100Hz,
            enable1  => cntEnb,
            enable2  => '1',
            count    => counterValue
        );
    
    VALUE_REGISTER: entity work.RegN
        generic map(size => 16)
        port map(
            asyncReset => '0',           
            clk       => clk_100Hz,
            enable    => regEnb,
            syncReset => globalReset_sync, 
            dataIn    => counterValue,
            dataOut   => regValue
        );
    
    digit0 <= counterValue(3 downto 0) when regEnb = '1' else regValue(3 downto 0);
    digit1 <= counterValue(7 downto 4) when regEnb = '1' else regValue(7 downto 4);
    digit2 <= counterValue(11 downto 8) when regEnb = '1' else regValue(11 downto 8);
    digit3 <= counterValue(15 downto 12) when regEnb = '1' else regValue(15 downto 12);
    
    DECODER0: entity work.Bin7SegDecoder
        port map(
            binInput => digit0,
            decOut_n => HEX2
        );
    
    DECODER1: entity work.Bin7SegDecoder
        port map(
            binInput => digit1,
            decOut_n => HEX3
        );
    
    DECODER2: entity work.Bin7SegDecoder
        port map(
            binInput => digit2,
            decOut_n => HEX4
        );
    
    DECODER3: entity work.Bin7SegDecoder
        port map(
            binInput => digit3,
            decOut_n => HEX5
        );

end Structural;