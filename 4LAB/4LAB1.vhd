library ieee;
use ieee.std_logic_1164.all;

entity Lab4 is
port 	(
	s : in  std_logic_vector(0 to 1);
	x : out std_logic_vector(0 to 2)
	);
end Lab4;
architecture rtl of Lab4 is
begin
	with s select x <=
	"011" when "00",
	"100" when "01",
	"101" when "10",
	"110" when "11",
	"000" when others;
end rtl;