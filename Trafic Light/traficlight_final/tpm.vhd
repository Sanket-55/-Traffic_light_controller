library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


entity tpm is
	port (clk : in  STD_LOGIC;
			r1,g1,y1,r2,g2,y2,r3,g3,y3,r4,g4,y4 : out  STD_LOGIC;
			L1,L2,L3,L4 : out STD_LOGIC);
end tpm;
	
architecture Behavioral of tpm is


component master_clock
	port(i1 : in  STD_LOGIC;
			o : out  STD_LOGIC);
end component;

component lights
	port(i2 : in STD_LOGIC;
			mr1,mg1,my1,mr2,mg2,my2,mr3,mg3,my3,mr4,mg4,my4 : out  STD_LOGIC);

end component;

component left
	port(clk_3 : in STD_LOGIC;
		L11,L12,L13,L14 : out  STD_LOGIC);

end component;

signal q:std_logic;


begin

ms1: master_clock port map(clk,q);
ligh1: lights port map(q,r1,g1,y1,r2,g2,y2,r3,g3,y3,r4,g4,y4);
left1: left port map(q,L1,L2,L3,L4);

end Behavioral;

