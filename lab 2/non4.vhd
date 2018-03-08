library ieee;
use ieee.std_logic_1164.all;
 
entity non4 is
  port (
	i_bit1    : in  std_logic;
	i_bit2    : in  std_logic;
	i_bit3    : in  std_logic;
	i_bit4    : in  std_logic;
	o_bit1 : out std_logic;
	o_bit2 : out std_logic;
	o_bit3 : out std_logic;
	o_bit4 : out std_logic
    );
end non4;
 
architecture rtl of non4 is
begin
	o_bit1 <= not i_bit1;
	o_bit2 <= not i_bit2;
	o_bit3 <= not i_bit3;
	o_bit4 <= not i_bit4;
end rtl;