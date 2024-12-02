library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity left is
    Port ( clk_3 : in  STD_LOGIC;
           L1,L2,L3,L4 : out  STD_LOGIC);
end lest;

architecture Behavioral of left is

begin
process(clk_3)
	if (clk_3' event and clk_3 = '1')then
		L1<='1';
		L2<='1';
		L3<='1';
		L4<='1';
	else
		L1<='0';
		L2<='0';
		L3<='0';
		L4<='0';
	end if;

end Behavioral;

