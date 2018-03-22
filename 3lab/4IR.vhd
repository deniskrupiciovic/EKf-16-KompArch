library ieee;
use ieee.std_logic_1164.all;

entity ir4 is
port 	(
	i_bit0,i_bit1,i_bit2,i_bit3 : in std_logic;
	o_bit0,o_bit1,o_bit2    : out std_logic
	);
end ir4;

architecture rtl of ir4 is
begin
	o_bit0 <= (i_bit0 and i_bit1 and i_bit2 and i_bit3);
	
	with (i_bit0 and i_bit1 and i_bit2 and i_bit3) select o_bit1 <=
	'1' when '1',
	'0' when others;
	
	o_bit2 <= '1' when (i_bit0 and i_bit1 and i_bit2 and i_bit3) ='1' else 
	'0';
end rtl;
