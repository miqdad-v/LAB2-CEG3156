library ieee;
use ieee.std_logic_1164.all;

entity comparator8_bit is
	port(A,B : in std_logic_vector(7 downto 0); --Data bits
		  AgtB,BgtA,AeqB   : out std_logic); --Out bits
end comparator8_bit;

architecture dataflow of comparator8_bit is
	use ieee.numeric_std.all;
	signal outs : STD_logic_vector(2 downto 0);
begin
	compBehavior : process (A,B)
	begin
		if(A > B) then
			outs <= "001";
		elsif(A = B)then
			outs <= "010";
		elsif(B > A)then
			outs <= "100";
		end if;
		AgtB <= outs(0);
		AeqB <= outs(1);
		BgtA <= outs(2);
	end process compBehavior;
end dataflow;