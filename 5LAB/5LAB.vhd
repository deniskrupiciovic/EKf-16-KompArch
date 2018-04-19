library ieee;
use ieee.std_logic_1164.all; 
 
 
entity Lab5 is port ( 
	A, B, C : in  std_logic; 
	F1, F2 : out std_logic 
	); 
end Lab5; 
architecture rtl of Lab5 is 
begin 
process (A,B,C) 
begin 
	if (A='1' and B='0') or (A='0' and C='0') then F1<='1'; 
	else F1<='0'; 
	end if; 

	case (A and not B) or (not A and not C) is 
		when '1' => F2 <= '1'; 
		when '0' => F2 <= '0';  
		when others => null; 
	end case;  
end process; 
end rtl; 
