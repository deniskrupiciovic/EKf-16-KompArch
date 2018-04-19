library ieee;
use ieee.std_logic_1164.all; 
 
 
entity Lab5p is port (
	d0, d1, d2, d3  : in  std_logic;
	A : in  std_logic_vector (0 to 1); 
	F : out std_logic 
	); 
end Lab5p; 
architecture rtl of Lab5p is  
begin 
	with A select F <=
	d0 when "00",
	d1 when "01",
	d2 when "10",
	d3 when "11",
	'0' when others;	   
end rtl; 