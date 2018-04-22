library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity multipe is
  port (
	a,b : IN BIT;
	S : IN BIT;
	F : OUT BIT
  );
end multipe ; -- mux2_fd

architecture estrut of multipe is
SIGNAL t0, t1, t2, t3 : BIT;
begin
	t0 <= NOT s;
	t1 <= t0 AND a;
	t2 <= s AND b;
	t3 <= t1 OR t2;
end estrut ; -- arch