LIBRARY components;
USE components.all;

ENTITY ULA1BIT IS
	PORT(ope: IN BIT_VECTOR(3 downto 0);
		ea, eb, cin : IN BIT;
		s: OUT BIT);
END ULA1BIT;

ARCHITECTURE logica1 OF ULA1BIT IS
SIGNAL X1, X2, X3, X4, X5: BIT;
BEGIN
END logica1;
