LIBRARY ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
ENTITY somadorES is
	PORT(
			a,b,c : IN BIT;
			s0,s1: OUT BIT);
END somadorES;

architecture estrutural of somadorES is
SIGNAL t0, t1, t2,t3,t4, e1, e2 : BIT;
	begin
		t0 <= a xor b;
		t1 <= a AND B;
		t2 <= b AND c;
		t3 <= a AND c;
		t4 <= t1 OR t2;
		
		e1 <= t0 xor c;
		e2 <= t3 OR t4;
	end estrutural;