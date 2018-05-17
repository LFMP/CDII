library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity multip is
  port (
	a,b : IN BIT;
	S : IN BIT;
	F : OUT BIT
  );
end multip ; -- mux2_fd

architecture fluxo of multip is

begin
	f <= ((NOT s) AND a) OR (s AND b);
end fluxo ; -- arch