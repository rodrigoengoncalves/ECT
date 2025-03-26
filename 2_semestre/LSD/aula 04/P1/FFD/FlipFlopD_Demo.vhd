library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity FlipFlopD_Demo is 
	port(SW   : in std_logic_vector(2 downto 0);
		  KEY  : in std_logic_vector(1 downto 0);
		  LEDR : out std_logic_vector(1 downto 0)); 
end entity;
-- Ao pressionar o botão key0, força-se um risingedge do clock.
architecture Shell of FlipFlopD_Demo is 
begin 
	ff_d : work.FlipFlopD(Behavioral) 
		port map(clk   => not KEY(0), 
					d     => SW(0),
					set   => SW(1), 
					reset => SW(2), 
					q     => LEDR(0));
end Shell; 