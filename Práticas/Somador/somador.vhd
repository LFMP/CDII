LIBRARY ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
ENTITY somador is
	PORT(
			a,b,c : IN BIT;
			s0,s1: OUT BIT);
END somador;

architecture fluxo of somador is

	begin
		s0 <= a XOR b XOR c;
		s1 <= (a AND b) OR (b AND c) OR (a AND c);

	end fluxo;