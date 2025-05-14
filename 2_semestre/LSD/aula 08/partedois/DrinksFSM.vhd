library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM is
	port(reset	: in  std_logic;
		  clk		: in  std_logic;
		  C	: in  std_logic;
		  V	: in  std_logic;
		  drink	: out std_logic);
end DrinksFSM;

architecture Behavioral of DrinksFSM is

	type TState is (ESTADO1, ESTADO2, ESTADO3, ESTADO4, ESTADO5, ESTADO6);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= ESTADO1;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;
	
	comb_proc : process(s_currentState, V, C)
	begin
		case(s_currentState) is
		when ESTADO1 =>
			drink <= '0';
			if (V='1') then
				s_nextState <= ESTADO2;
			elsif (C='1') then
				s_nextState <= ESTADO4;
			end if;
			
		when ESTADO2 =>
			drink <= '0';
			if (V='1') then
				s_nextState <= ESTADO3;
			elsif (C='1') then
				s_nextState <= ESTADO5;
			end if;
				
		when ESTADO3 =>
			drink <= '0';
			if (V='1') then
				s_nextState <= ESTADO4;
			elsif (C='1') then
				s_nextState <= ESTADO6;
			end if;
		when ESTADO4 =>
			drink <= '0';
			if (V='1') then
				s_nextState <= ESTADO5;
			elsif (C='1') then
				s_nextState <= ESTADO6;
			end if;
	
		when ESTADO5 =>
			drink <= '0';
			if (V='1') then
				s_nextState <= ESTADO6;
			elsif (C='1') then
				s_nextState <= ESTADO6;
			end if;
				
		when ESTADO6 =>
			drink <= '1';
			s_nextState <= ESTADO1;
		
		end case;
		
		end process;
		
end Behavioral;
		