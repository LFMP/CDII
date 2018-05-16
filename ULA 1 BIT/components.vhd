LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY not_1 IS
	PORT(x: IN BIT;
		z: OUT BIT);
END not_1;

ARCHITECTURE logica1 OF not_1 IS
	BEGIN
	z <= NOT X;
END logica1;

ENTITY and_1 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END and_1;

ARCHITECTURE logica1 OF and_1 IS
	BEGIN
	z <= x AND y;
END logica1;

ENTITY nand_1 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END nand_1;

ARCHITECTURE logica1 OF nand_1 IS
	BEGIN
	z <= NOT(x AND y);
END logica1;

ENTITY or_1 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END or_1;

ARCHITECTURE logica1 OF or_1 IS
	BEGIN
	z <= x OR y;
END logica1;

ENTITY nor_1 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END nor_1;

ARCHITECTURE logica1 OF nor_1 IS
	BEGIN
	z <= NOT(x OR y);
END logica1;

ENTITY xor_1 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END xor_1;

ARCHITECTURE logica1 OF xor_1 IS
	BEGIN
	z <= x XOR y;
END logica1;

ENTITY xnor_1 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END xnor_1;

ARCHITECTURE logica1 OF xnor_1 IS
	BEGIN
	z <= NOT(x XOR y);
END logica1;

ENTITY somador IS
	PORT(e: IN BIT_VECTOR(2 DOWNTO 0);
			s: OUT BIT_VECTOR(1 DOWNTO 0));
END somador;

ARCHITECTURE som OF somador IS

BEGIN
	S <= "00" WHEN e = "000" ELSE
		 "10" WHEN e = "010" ELSE
		 "10" WHEN e = "100" ELSE
	  	 "01" WHEN e = "110" ELSE
		 "10" WHEN e = "001" ELSE
		 "01" WHEN e = "011" ELSE
		 "01" WHEN e = "101" ELSE
		 "11";

END som;

ENTITY subtrator IS
	PORT(e: IN BIT_VECTOR(2 DOWNTO 0);
			s: OUT BIT_VECTOR(1 DOWNTO 0));
END subtrator;

ARCHITECTURE subt OF subtrator IS

BEGIN
	PROCESS(e)
	BEGIN
		CASE e IS
			WHEN "000" => s <= "00";
			WHEN "010" => s <= "11";
			WHEN "100" => s <= "10";
			WHEN "110" => s <= "00";
			WHEN "001" => s <= "11";
			WHEN "011" => s <= "01";
			WHEN "101" => s <= "00";
			WHEN "111" => s <= "11";
		END CASE;
	END PROCESS;
END subt;

PACKAGE logic IS

	COMPONENT not_1 IS
		PORT(x: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
	COMPONENT and_1 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
		COMPONENT nand_1 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
		COMPONENT or_1 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
		COMPONENT nor_1 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
		COMPONENT xor_1 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
		COMPONENT xnor_1 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;

END logic;

PACKAGE arithmetic IS

		COMPONENT somador IS
		PORT(e: IN BIT_VECTOR(2 DOWNTO 0);
			s: OUT BIT_VECTOR(1 DOWNTO 0));
		END COMPONENT;
		
		COMPONENT subtrator IS
			PORT(e: IN BIT_VECTOR(2 DOWNTO 0);
				s: OUT BIT_VECTOR(1 DOWNTO 0));
		END COMPONENT;

END arithmetic;