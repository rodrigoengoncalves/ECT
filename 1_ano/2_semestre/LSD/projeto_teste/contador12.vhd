library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Contador12 is
    Port (
        CLK_50MHz : in std_logic;  -- Relógio de 50MHz
        SW        : in std_logic_vector(1 downto 0); -- SW[1] = enable display
        KEY       : in std_logic_vector(0 downto 0); -- KEY[0] = reset síncrono
        LEDR      : out std_logic_vector(3 downto 0);
        LEDG      : out std_logic_vector(3 downto 0); -- LEDs verdes sempre ligados
        HEX0      : out std_logic_vector(6 downto 0);
        HEX1      : out std_logic_vector(6 downto 0)
    );
end Contador12;

architecture Behavioral of Contador12 is
    signal count        : std_logic_vector(3 downto 0) := "0000";
    signal tens         : std_logic_vector(3 downto 0) := "0000";
    signal ones         : std_logic_vector(3 downto 0) := "0000";
    signal clk_1Hz      : std_logic := '0';
    signal clk_4Hz      : std_logic := '0';
    signal counter_1Hz  : integer := 0;
    signal counter_4Hz  : integer := 0;
    
    component Bin7SegDecoder
        Port (
            binInput : in std_logic_vector(3 downto 0);
            enable   : in std_logic;
            decOut_n : out std_logic_vector(6 downto 0)
        );
    end component;
    
begin
    -- Gerar um sinal de 1Hz a partir de 50MHz
    process(CLK_50MHz)
    begin
        if rising_edge(CLK_50MHz) then
            if counter_1Hz = 25000000 then  -- 50M/2 = 25M para 1 segundo
                clk_1Hz <= not clk_1Hz;
                counter_1Hz <= 0;
            else
                counter_1Hz <= counter_1Hz + 1;
            end if;
        end if;
    end process;
    
    -- Gerar um sinal de 4Hz a partir de 50MHz
    process(CLK_50MHz)
    begin
        if rising_edge(CLK_50MHz) then
            if counter_4Hz = 6250000 then  -- 50M/(2*4) = 6.25M
                clk_4Hz <= not clk_4Hz;
                counter_4Hz <= 0;
            else
                counter_4Hz <= counter_4Hz + 1;
            end if;
        end if;
    end process;
    
    -- Contador módulo 12
    process(clk_1Hz)
    begin
        if rising_edge(clk_1Hz) then
            if KEY(0) = '1' then
                count <= "0000";
            elsif count = "1100" then  -- 12 em binário
                count <= "0000";
            else
                count <= count + 1;
            end if;
        end if;
    end process;
    
    -- Separar dígitos das unidades e dezenas
    tens <= "0001" when count > "1001" else "0000";  -- Se maior que 9, tens = 1
    ones <= count when count <= "1001" else count - "1010";
    
    -- LEDs piscando a 4Hz
    LEDR <= count when clk_4Hz = '1' else "0000";
    
    -- LEDs verdes sempre ligados
    LEDG <= "1111";
    
    -- Instanciar decodificadores para os displays de 7 segmentos com controle de ativação
    HEX0_Decoder: Bin7SegDecoder port map(ones, SW(1), HEX0);
    HEX1_Decoder: Bin7SegDecoder port map(tens, SW(1), HEX1);
    
end Behavioral;