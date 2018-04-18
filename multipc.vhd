library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity multipc is
  port (
	a,b : IN BIT;
	S : IN BIT;
	F : OUT BIT
  );
end multipc ; -- mux2_fd

architecture comport of multipc is

begin
	process (a,b,s)
	BEGIN
		if (s='0') then
			f <= a;
		else
			f <= b;
		end if;
	END process;
end comport ; -- arch