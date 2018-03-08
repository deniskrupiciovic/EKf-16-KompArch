library ieee;
use ieee.std_logic_1164.all;
 
entity multiplex is
  port (
	i_bit0    : in  std_logic;
	i_bit1    : in  std_logic;
	i_sel    : in  std_logic;
	o_mux : out std_logic
    );
end multiplex;
 
architecture rtl of multiplex is
	signal r1 : std_logic;
	signal r2 : std_logic;
begin
	r1 <= (not i_sel) and i_bit1;
	r2 <= i_sel and i_bit0;
	o_mux <= r1 or r2;
end rtl;