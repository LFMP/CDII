library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;
	
ENTITY not1 IS
 	PORT (x : IN BIT;
		 z : OUT BIT);
END not1;

ARCHITECTURE logica2 OF not1 IS
BEGIN
	z <= NOT x;
END logica2;

ENTITY and1 IS
 	PORT (x,y : IN BIT;
		 z : OUT BIT);
END and1;

ARCHITECTURE logica2 OF and1 IS
BEGIN
	z <= y AND x;
END logica2;

ENTITY or1 IS
 	PORT (x,y : IN BIT;
		 z : OUT BIT);
END or1;

ARCHITECTURE logica2 OF or1 IS
BEGIN
	z <= y or x;
END logica2;


entity multipe2 is
  port (
	a,b : IN BIT;
	S : IN BIT;
	F : OUT BIT
  );
end multipe2;

architecture fluxo of multipe2 is
SIGNAL t0,t1,t2,t3 : BIT;
	COMPONENT not1
 		PORT (x : IN BIT;
 			z : OUT BIT);
	END component;

	COMPONENT and1
 		PORT (x, y : IN BIT;
 			z : OUT BIT);
	END component; 

	COMPONENT or1
 		PORT (x, y : IN BIT;
 			z : OUT BIT);
	END component; 
	
BEGIN
	P1: not1 PORT MAP (s, t0);
 	P2: and1 PORT MAP (t0, a, t1);
 	P3: and1 PORT MAP (s, b, t2);
 	P4: or1 PORT MAP (t1, t2, f);

end fluxo ; -- arch