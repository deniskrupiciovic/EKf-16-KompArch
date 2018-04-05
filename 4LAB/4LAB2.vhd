library ieee;
use ieee.std_logic_1164.all;

entity Lab41 is port (
	A : in  std_logic_vector(0 to 1);
	F1, F2 : out std_logic_vector(0 to 2)
	);
end Lab41;
architecture rtl of Lab41 is
begin
process (A)
begin
	if A="00" then F1<="011";
	elsif A="01" then F1<="100";
	elsif A="10" then F1<="101";
	elsif A="11" then F1<="110";
	end if;

	case A is
		when "00" => F2 <= "011";
		when "01" => F2 <= "100";
		when "10" => F2 <= "101";
		when "11" => F2 <= "110";
		when others => null;
	end case; 
end process;
end rtl;