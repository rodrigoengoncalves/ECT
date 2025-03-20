library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Bin2BCD is
    Port ( bin : in  unsigned(3 downto 0);  
           bcd : out  unsigned(7 downto 0)  
         );
end Bin2BCD;

architecture Behavioral of Bin2BCD is
begin
    process(bin)
    variable temp : unsigned(7 downto 0); 
    begin
        
        temp := (others => '0');

       
        temp(3 downto 0) := bin;  

        
        
        if temp(3 downto 0) > "1001" then
            temp := temp + "00010000";  
        end if;

       
        bcd <= temp;
    end process;
end Behavioral;
