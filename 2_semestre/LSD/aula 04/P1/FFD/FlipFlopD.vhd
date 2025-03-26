library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

-- (un)comment version you want to test

/*
-- without reset / set
entity FlipFlopD is 
	port(clk : in  std_logic; 
		d   : in  std_logic; 
		q   : out std_logic); 
end FlipFlopD; 

architecture Behavioral of FlipFlopD is 
begin 
	process(clk) 
		begin 
		if (rising_edge(clk)) then 
			q <= d; 
		end if; 
	end process; 
end Behavioral; 
*/


entity FlipFlopD is
  port(
    clk   : in  std_logic;
    d     : in  std_logic;
    reset : in  std_logic; 
    set   : in  std_logic;  
    q     : out std_logic
  );
end FlipFlopD;

architecture Behavioral of FlipFlopD is
begin

  process(clk)
  begin
    if rising_edge(clk) then
      if (reset = '1') then
        q <= '0';               
      elsif (set = '1') then
        q <= '1';               
      else
        q <= d;             
      end if;
    end if;
  end process;

end Behavioral;


-- architecture com reset e set assíncronos
architecture BehavioralAssincrona of FlipFlopD is
begin
  process(clk, reset, set)
  begin
    if (reset = '1') then
      q <= '0'; 
    elsif (set = '1') then
      q <= '1';  
    elsif rising_edge(clk) then
      q <= d; 
    end if;
  end process;
end BehavioralAssincrona;