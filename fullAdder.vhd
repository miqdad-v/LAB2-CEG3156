library ieee;
use ieee.std_logic_1164.all;

entity fullAdder is
	port(
	A,B,Cin : in STD_LOGIC;
	Sum,Cout   : out STD_LOGIC);
end fullAdder;

architecture rtl of fullAdder is
begin

Sum  <=  A XOR B XOR Cin;
Cout <= ((A XOR B) AND (Cin)) OR (A AND B);

end architecture rtl;