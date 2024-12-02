library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


entity master_clock is
    Port ( i1 : in  STD_LOGIC;
				o : out  STD_LOGIC);
end master_clock;

 architecture Behavioral of master_clock is

signal temp :STD_LOGIC_vector (23 downto 0):="000000000000000000000000";
-- signal clk_1 :STD_LOGIC;
--signal a: integer:= 0;

begin

process (i1)
		begin
			if (i1' event and i1='1' )then
				if ( temp = "100110001001011010000000")then 
					temp <= "000000000000000000000000";
			else 
				temp <= temp + 1;
			end if ;
			end if;
			end process;
	process (temp)
		begin 
			if (temp >= "000000000000000000000000" and temp <= "010011000100101101000000")then
				o <='1';
			else
				o <= '0';
			end if;
		end process;

	
end Behavioral;

