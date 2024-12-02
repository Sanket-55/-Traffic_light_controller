library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity lights is
    Port (i2 : in std_logic;
	 mr1,mg1,my1,mr2,mg2,my2,mr3,mg3,my3,mr4,mg4,my4: out  STD_LOGIC);
end lights;

architecture Behavioral of lights is


type state_type is (a,b,c,d,e,f,g,h);
signal state,next_state:state_type;
signal rst:std_logic :='0';
signal j:integer:= 0;

begin


	process(rst,i2)
		begin
			if(i2' event and i2 = '1')then
				if (next_state = state)then
						j<= j+1;
				else 
					j<=0;end if;
				
				if rst = '1' then
				
				state<= a;
				else
				state <= next_state;
				end if;
			end if;
		
	end process;

	
process(state,j)
		begin
			case state is
				when a=>
					if (j <= 20) then
						mr1<= '0'; mg1<= '1'; my1<= '0'; 
						mr2<= '1'; mg2<= '0'; my2<= '0';
						mr3<= '1'; mg3<= '0'; my3<= '0';
						mr4<= '1'; mg4<= '0'; my4<= '0';
						next_state <= a;
					else
						next_state <= b;
						
						
					end if;
						
					
				when b =>
					
					if j <= 10 then
						mr1<= '0'; mg1<= '0'; my1<= '1'; 
						mr2<= '1'; mg2<= '0'; my2<= '0';
						mr3<= '1'; mg3<= '0'; my3<= '0';
						mr4<= '1'; mg4<= '0'; my4<= '0';
						next_state <= b;
					else
						next_state <= c;
						
						
					end if;
					
				
				when c =>
				
					if j<= 20 then
						mr1<= '1'; mg1<= '0'; my1<= '0'; 
						mr2<= '0'; mg2<= '1'; my2<= '0';
						mr3<= '1'; mg3<= '0'; my3<= '0';
						mr4<= '1'; mg4<= '0'; my4<= '0';
						next_state <= c;
					else
						next_state <= d;
						
						
					end if;
					
				
				when d =>
				
					if j <= 10 then
						mr1<= '1'; mg1<= '0'; my1<= '0'; 
						mr2<= '0'; mg2<= '0'; my2<= '1';
						mr3<= '1'; mg3<= '0'; my3<= '0';
						mr4<= '1'; mg4<= '0'; my4<= '0';
						next_state <= d;
					else
					
					next_state <= e;
					end if;
					
						
					
				when e =>
				
					if j <= 20 then
						mr1<= '1'; mg1<= '0'; my1<= '0'; 
						mr2<= '1'; mg2<= '0'; my2<= '0';
						mr3<= '0'; mg3<= '1'; my3<= '0';
						mr4<= '1'; mg4<= '0'; my4<= '0';
						next_state <= e;
					else
						
						next_state <=f;
					
					end if;
					
				when f =>
				
					if j <= 20 then
						mr1<= '1'; mg1<= '0'; my1<= '0'; 
						mr2<= '1'; mg2<= '0'; my2<= '0';
						mr3<= '0'; mg3<= '0'; my3<= '1';
						mr4<= '1'; mg4<= '0'; my4<= '0';
						next_state <= f;
					else
						
						next_state <=g;
						
					end if;
					
				when g =>
				
					if j <= 10 then
						mr1<= '1'; mg1<= '0'; my1<= '0'; 
						mr2<= '1'; mg2<= '0'; my2<= '0';
						mr3<= '1'; mg3<= '0'; my3<= '0';
						mr4<= '0'; mg4<= '1'; my4<= '0';
						next_state <= g;
					else
						
						next_state <=h;
					
					end if;
					
				when h =>
				
					if j <= 10 then
						mr1<= '1'; mg1<= '0'; my1<= '0'; 
						mr2<= '1'; mg2<= '0'; my2<= '0';
						mr3<= '1'; mg3<= '0'; my3<= '0';
						mr4<= '0'; mg4<= '0'; my4<= '1';
						next_state <= h;
					else
						
						next_state <= a;
						
					end if;		
				end case;
			end process;


end Behavioral;

