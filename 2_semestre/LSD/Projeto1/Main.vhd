library IEEE;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Main is 
	port (CLOCK_50 : in std_logic;
			LEDG		: out std_logic_vector(7 downto 0);
			LEDR		: out std_logic_vector(3 downto 0);
			SW       : in std_logic_vector(1 downto 0);
			KEY		: in std_logic_vector(0 downto 0);
			HEX0		: out std_logic_vector(6 downto 0);
		   HEX1		: out std_logic_vector(6 downto 0));
end Main;

architecture WorkFlow of Main is 
	signal turnon : std_logic_vector(7 downto 0) := "11111111" ; 
	signal enablehex0 : std_logic := '1';
	signal isNine : unsigned(3 downto 0) := "1001";  
	signal menable , mreset , clk1Hz ,nul, clk4Hz ,modes  , m_enable_g, m_enable_g_d : std_logic;
	signal desenas_BCD , unidades_BCD , counter_output : std_logic_vector(3 downto 0) := "0000";
	signal blink_signal : std_logic_vector(3 downto 0);
	signal carryout : std_logic := '0';
begin
	
	LEDG(7 downto 0) <= turnon ; 
	
	

	
	
	mreset <= not KEY(0); 
	menable <= SW(1); 
	

	Counter : entity work.Count1_12(Behavioral)  
				    generic map(MAX => 11)
				 port map(enable => menable,  
                      reset  => mreset,
                      clk	  => clk1Hz,
                      output => counter_output,
							 termCnt => nul);
							 

	div1hz : entity work.FreqDivSatic(Behavioral)  
							generic map(N			=> 50000000)
							port map(clkIn			=> CLOCK_50,
										clkOut		=> clk1Hz);
										
	
	div4hz : entity work.FreqDivSatic(Behavioral)  
							generic map(N			=> 12500000) 
							port map(clkIn			=> CLOCK_50,
										clkOut		=> clk4Hz);
										

	clk_enb_gen : entity work.ClkEnableGenerator(Behavioral)  
							port map(clkIn4Hz		=> clk4Hz,
										mode => modes,
										clkEnable	=> m_enable_g);
			

	binto12 : entity work.Bin2BCD(Behavioral)	
							port map (bin   => counter_output, 
										 tens  => desenas_BCD,    
										 ones  => unidades_BCD);  
										 
										 
	pisca_ledr : entity work.piscapisca(Behavioral)
        port map(
            clock  => clk4Hz,           
            vetor  => counter_output,  
            output => LEDR(3 downto 0)); 

	
	hex0_unidades : entity work.Bin7SegDecoder(Behavioral)
							port map(enable	=> SW(0),
										binInput	=> unidades_BCD,
										decOut_n	=> HEX0);
										
	hex1_desenas : entity work.Bin7SegDecoder(Behavioral)
							port map(enable	=> SW(0),
										binInput	=> desenas_BCD,
										decOut_n	=> HEX1);


end WorkFlow;
