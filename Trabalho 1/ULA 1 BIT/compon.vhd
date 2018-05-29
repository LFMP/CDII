ENTITY compon IS
	PORT(
		--decodificador
		sel: IN BIT_VECTOR(2 DOWNTO 0);
		dataout: OUT BIT_VECTOR(7 DOWNTO 0);
		--decodificador
		-----------------------------------
		--or_2
		a,b,c,d,e,f,g,h: IN BIT;
		--or_2
		-----------------------------------
		E0,E1,CIN: IN BIT;
		z,SO,SU, COUTO, COUTU: OUT BIT);
END compon;

ARCHITECTURE som OF compon IS
SIGNAL INPUTS: BIT_VECTOR(2 DOWNTO 0);
SIGNAL OUTPUTS: BIT_VECTOR(1 DOWNTO 0);
BEGIN
	INPUTS(2) <= E0;
	INPUTS(1) <= E1;
	INPUTS(0) <= CIN;
	
	OUTPUTS <= "00" WHEN INPUTS = "000" ELSE
		"10" WHEN INPUTS = "010" ELSE
		"10" WHEN INPUTS = "100" ELSE
	  	"01" WHEN INPUTS = "110" ELSE
		"10" WHEN INPUTS = "001" ELSE
		"01" WHEN INPUTS = "011" ELSE
		"01" WHEN INPUTS = "101" ELSE
		"11";
	SO <= OUTPUTS(0);
	COUTO <= OUTPUTS(1);
END som;

ARCHITECTURE subt OF compon IS
SIGNAL INPUTS: BIT_VECTOR(2 DOWNTO 0);
SIGNAL OUTPUTS: BIT_VECTOR(1 DOWNTO 0);
BEGIN
	PROCESS(INPUTS)
	BEGIN
		INPUTS(2) <= E0;
		INPUTS(1) <= E1;
		INPUTS(0) <= CIN;
		
		CASE INPUTS IS
			WHEN "000" => OUTPUTS <= "00";
			WHEN "010" => OUTPUTS <= "11";
			WHEN "100" => OUTPUTS <= "10";
			WHEN "110" => OUTPUTS <= "00";
			WHEN "001" => OUTPUTS <= "11";
			WHEN "011" => OUTPUTS <= "01";
			WHEN "101" => OUTPUTS <= "00";
			WHEN "111" => OUTPUTS <= "11";
		END CASE;
		
		SU <= OUTPUTS(0);
		COUTU <= OUTPUTS(1);
	END PROCESS;
END subt;
---------------------------------------------------------------------
PACKAGE aritimetica IS

	COMPONENT somador IS
		PORT(
			E0,E1,CIN: IN BIT;
			S0, COUTO: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT subtrator IS
		PORT(
			E0,E1,CIN: IN BIT;
			SU, COUTU: OUT BIT
		);
	END COMPONENT;

END aritimetica;
---------------------------------------------------------------------
ARCHITECTURE decod OF compon IS
BEGIN
	PROCESS(sel)
	BEGIN
		CASE(sel) IS
			WHEN "000" => dataout <= "00000001";
			WHEN "001" => dataout <= "00000010";
			WHEN "010" => dataout <= "00000100";
			WHEN "011" => dataout <= "00001000";
			WHEN "100" => dataout <= "00010000";
			WHEN "101" => dataout <= "00100000";
			WHEN "110" => dataout <= "01000000";
			WHEN "111" => dataout <= "10000000";
			WHEN OTHERS => dataout <= "00000000";
		END CASE;
	END PROCESS;
END decod;

---------------------------------------------------------------------
PACKAGE decodificador IS
	COMPONENT decod IS
		PORT(
			sel: IN BIT_VECTOR(2 DOWNTO 0);
			dataout: OUT BIT_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;
END decodificador;
---------------------------------------------------------------------
ARCHITECTURE and_1 OF compon IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = '1' and E1 = '1') THEN
				z <= '1';
			ELSE
				z <= '0';
			END IF;
		END PROCESS;
END and_1;

ARCHITECTURE nand_1 OF compon IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = '0' and E1 = '0') THEN
				z <= '0';
			ELSE
				z <= '1';
			END IF;
		END PROCESS;
END nand_1;

ARCHITECTURE or_1 OF compon IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = '0' and E1 = '0') THEN
				z <= '0';
			ELSE
				z <= '1';
			END IF;
		END PROCESS;
END or_1;

ARCHITECTURE or_2 OF compon IS
	BEGIN
		PROCESS(a,b,c,d,e,f,g)
		BEGIN
			IF(a = '1' OR b = '1' OR c = '1' OR d = '1' OR e = '1' OR f = '1' OR g = '1' OR h = '1') THEN
				z <= '1';
			ELSE
				z <= '0';
			END IF;
		END PROCESS;
END or_2;

ARCHITECTURE nor_1 OF compon IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = '0' and E1 = '0') THEN
				z <= '1';
			ELSE
				z <= '0';
			END IF;
		END PROCESS;
END nor_1;

ARCHITECTURE xor_1 OF compon IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = E1) THEN
				z <= '0';
			ELSE
				z <= '1';
			END IF;
		END PROCESS;
END xor_1;

ARCHITECTURE xnor_1 OF compon IS
	BEGIN
		PROCESS(E0,E1)
		BEGIN
			IF(E0 = E1) THEN
				z <= '1';
			ELSE
				z <= '0';
			END IF;
		END PROCESS;
END xnor_1;
---------------------------------------------------------------------
PACKAGE logica IS
	
	COMPONENT and_1 IS
		PORT(
			E0,E1: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT nand_1 IS
		PORT(
			E0,E1: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT or_1 IS
		PORT(
			E0,E1: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
		COMPONENT or_2 IS
		PORT(
			a,b,c,d,e,f,g, h: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT nor_1 IS
		PORT(
			E0,E1: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT xor_1 IS
		PORT(
			E0,E1: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT xnor_1 IS
		PORT(
			E0,E1: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;

END logica;
