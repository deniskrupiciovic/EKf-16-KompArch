--Component definition for AND_1
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
entity and_1 is port(
    i1, i2: in std_logic;
    o1: out std_logic    );
end and_1;
architecture dataflow of and_1 is
begin
    o1 <= i1 and i2;
end dataflow;

--Component definition for AND_2 
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
entity and_2 is port(
    i1, i2: in std_logic;
    o1: out std_logic    );
end and_2;
architecture dataflow of and_2 is
begin
    o1 <= i1 and i2;
end dataflow;

--Component definition for AND_3 
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
entity and_3 is port(
    i1, i2: in std_logic;
    o1: out std_logic    );
end and_3;
architecture dataflow of and_3 is
begin
    o1 <= i1 and i2;
end dataflow;
 
 --Structural Design (top level)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Small_ckt is port
	( A, B, C, D : in std_logic;
	F : out std_logic
    );
end Small_ckt;
 
architecture structural of Small_ckt is

--internal signal declarations for A_B and C_D
   signal A_B, C_D: std_logic;
--Component declaration for and_1
component and_1 is port (
    i1, i2: in std_logic;
    o1: out std_logic
    );
end component;

--Component declaration for and_2
component and_2 is port (
    i1, i2: in std_logic;
    o1: out std_logic
    );
end component;
--Component declaration for and_3
component and_3 is port (
    i1, i2: in std_logic;
    o1: out std_logic
    );
end component;

begin
--Component placement and connections (formally called component instantiations)
    C1: and_1 port map (i1 => A, i2 => B, o1 => A_B);
    C2: and_2 port map (i1 => C, i2 => D, o1 => C_D);
	C3: and_3 port map (i1 => A_B, i2 => C_D, o1 => F);
end structural;