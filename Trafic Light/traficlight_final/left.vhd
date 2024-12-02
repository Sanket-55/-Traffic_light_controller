library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity left is
    Port ( clk_3 : in  STD_LOGIC;
           L11,L12,L13,L14 : out  STD_LOGIC);
end left;

architecture Behavioral of left is
--signal u :integer:=0;

begin
process(clk_3)
	begin
		
	
	if	clk_3 = '1' then
		L11<='1';
		L12<='1';
		L13<='1';
		L14<='1';
	else
		L11<='0';
		L12<='0';
		L13<='0';
		L14<='0';
	end if;
end process;
end Behavioral;

