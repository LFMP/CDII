---------------------------------------------------------------------
ENTITY and_1 IS
	PORT(
		E0,E1: IN BIT;
		S: OUT BIT
	);
END and_1;

ARCHITECTURE logic OF and_1 IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = '1' and E1 = '1') THEN
				S <= '1';
			ELSE
				S <= '0';
			END IF;
		END PROCESS;
END logic;

ENTITY nand_1 IS
	PORT(
		E0,E1: IN BIT;
		S: OUT BIT
	);
END nand_1;

ARCHITECTURE logic OF nand_1 IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = '0' and E1 = '0') THEN
				S <= '0';
			ELSE
				S <= '1';
			END IF;
		END PROCESS;
END logic;

ENTITY or_1 IS
	PORT(
		E0,E1: IN BIT;
		S: OUT BIT
	);
END or_1;

ARCHITECTURE logic OF or_1 IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = '0' and E1 = '0') THEN
				S <= '0';
			ELSE
				S <= '1';
			END IF;
		END PROCESS;
END logic;

ENTITY or_2 IS
	PORT(
		a,b,c,d,e,f,g,h: IN BIT;
		S: OUT BIT
	);
END or_2;

ARCHITECTURE logic OF or_2 IS
	BEGIN
		PROCESS(a,b,c,d,e,f,g)
		BEGIN
			IF(a = '1' OR b = '1' OR c = '1' OR d = '1' OR e = '1' OR f = '1' OR g = '1' OR h = '1') THEN
				S <= '1';
			ELSE
				S <= '0';
			END IF;
		END PROCESS;
END logic;

ENTITY nor_1 IS
	PORT(
		E0,E1: IN BIT;
		S: OUT BIT
	);
END nor_1;

ARCHITECTURE logic OF nor_1 IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = '0' and E1 = '0') THEN
				S <= '1';
			ELSE
				S <= '0';
			END IF;
		END PROCESS;
END logic;

ENTITY xor_1 IS
	PORT(
		E0,E1: IN BIT;
		S: OUT BIT
	);
END xor_1;

ARCHITECTURE logic OF  xor_1 IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = E1) THEN
				S <= '0';
			ELSE
				S <= '1';
			END IF;
		END PROCESS;
END logic;

ENTITY xnor_1 IS
	PORT(
		E0,E1: IN BIT;
		S: OUT BIT
	);
END xnor_1;

ARCHITECTURE logic OF xnor_1 IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = E1) THEN
				S <= '1';
			ELSE
				S <= '0';
			END IF;
		END PROCESS;
END logic;
---------------------------------------------------------------------
PACKAGE portas IS
	COMPONENT and_1 IS
		PORT(
			E0,E1: IN BIT;
			S: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT nand_1 IS
		PORT(
			E0,E1: IN BIT;
			S: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT or_1 IS
		PORT(
			E0,E1: IN BIT;
			S: OUT BIT
		);
	END COMPONENT;
	
		COMPONENT or_2 IS
		PORT(
			a,b,c,d,e,f,g, h: IN BIT;
			S: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT nor_1 IS
		PORT(
			E0,E1: IN BIT;
			S: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT xor_1 IS
		PORT(
			E0,E1: IN BIT;
			S: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT xnor_1 IS
		PORT(
			E0,E1: IN BIT;
			S: OUT BIT
		);
	END COMPONENT;
END portas;