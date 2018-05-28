LIBRARY components;
USE components.aritimetica.all, components.decodificador.all,components.logica.all;

ENTITY ULA1BIT IS
	PORT(ope: IN BIT_VECTOR(2 downto 0);
		E0, E1: IN BIT);
END ULA1BIT;

ARCHITECTURE logica1 OF ULA1BIT IS
SIGNAL X1 : BIT;
SIGNAL sel: BIT_VECTOR(7 DOWNTO 0);

BEGIN
	S0: decod PORT MAP (ope, sel);
END logica1;
