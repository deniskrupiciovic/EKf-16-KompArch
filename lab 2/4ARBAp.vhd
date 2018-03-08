library ieee;
use ieee.std_logic_1164.all;
 
entity or4 is
  port (
	i_bit1    : in  std_logic;
	i_bit2    : in  std_logic;
	i_bit3    : in  std_logic;
	i_bit4    : in  std_logic;
	o_bit1 : out std_logic
    );
end or4;
 
architecture rtl of or4 is
	signal r1or2 : std_logic;
	signal r3or4 : std_logic;

begin
	r1or2 <= i_bit1 or i_bit2;
	r3or4 <= i_bit3 or i_bit4;
	o_bit1 <= r1or2 or r3or4;
end rtl;
