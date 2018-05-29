ENTITY compon IS
	PORT(
		en: IN BIT_VECTOR(2 DOWNTO 0);
		res, reso: OUT BIT_VECTOR(1 DOWNTO 0);
		sel: IN BIT_VECTOR(2 DOWNTO 0);
		dataout: OUT BIT_VECTOR(7 DOWNTO 0);
		x,y,a,b,c,d,e,f,g,h: IN BIT;
		z: OUT BIT);
END compon;


ENTITY arithm IS
	PORT(
		en: IN BIT_VECTOR(2 DOWNTO 0);
		res, reso: OUT BIT_VECTOR(1 DOWNTO 0)
	);
END arithm;

ARCHITECTURE som OF compon IS
BEGIN
	reso <= "00" WHEN en = "000" ELSE
		"10" WHEN en = "010" ELSE
		"10" WHEN en = "100" ELSE
	  	"01" WHEN en = "110" ELSE
		"10" WHEN en = "001" ELSE
		"01" WHEN en = "011" ELSE
		"01" WHEN en = "101" ELSE
		"11";
END som;

ARCHITECTURE subt OF compon IS
BEGIN
	PROCESS(en)
	BEGIN
		CASE en IS
			WHEN "000" => res <= "00";
			WHEN "010" => res <= "11";
			WHEN "100" => res <= "10";
			WHEN "110" => res <= "00";
			WHEN "001" => res <= "11";
			WHEN "011" => res <= "01";
			WHEN "101" => res <= "00";
			WHEN "111" => res <= "11";
		END CASE;
	END PROCESS;
END subt;
---------------------------------------------------------------------
PACKAGE aritimetica IS

	COMPONENT somador IS
		PORT(
			en: IN BIT_VECTOR(2 DOWNTO 0);
			reso: OUT BIT_VECTOR(1 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT subtrator IS
		PORT(
			en: IN BIT_VECTOR(2 DOWNTO 0);
			res: OUT BIT_VECTOR(1 DOWNTO 0)
		);
	END COMPONENT;

END aritimetica;
---------------------------------------------------------------------
ENTITY decodif IS
	PORT(
		sel: IN BIT_VECTOR(2 DOWNTO 0);
		dataout: OUT BIT_VECTOR(7 DOWNTO 0));
END decodif;

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
ENTITY logic IS
	PORT(
		x,y,a,b,c,d,e,f,g,h: IN BIT;
		z: OUT BIT);
END logic;

ARCHITECTURE not_1 OF compon IS
	BEGIN
		PROCESS(x)
		BEGIN
			IF(x = '1') THEN
				z <= '0';
			ELSE
				z <= '1';
			END IF;
		END PROCESS;
END not_1;

ARCHITECTURE and_1 OF compon IS
	BEGIN
		PROCESS(x,y)
		BEGIN
			IF(x = '1' and y = '1') THEN
				z <= '1';
			ELSE
				z <= '0';
			END IF;
		END PROCESS;
END and_1;

ARCHITECTURE nand_1 OF compon IS
	BEGIN
		PROCESS(x,y)
		BEGIN
			IF(x = '0' and y = '0') THEN
				z <= '0';
			ELSE
				z <= '1';
			END IF;
		END PROCESS;
END nand_1;

ARCHITECTURE or_1 OF compon IS
	BEGIN
		PROCESS(x,y)
		BEGIN
			IF(x = '0' and y = '0') THEN
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
		PROCESS(x,y)
		BEGIN
			IF(x = '0' and y = '0') THEN
				z <= '1';
			ELSE
				z <= '0';
			END IF;
		END PROCESS;
END nor_1;

ARCHITECTURE xor_1 OF compon IS
	BEGIN
		PROCESS(x,y)
		BEGIN
			IF(x = y) THEN
				z <= '0';
			ELSE
				z <= '1';
			END IF;
		END PROCESS;
END xor_1;

ARCHITECTURE xnor_1 OF compon IS
	BEGIN
		PROCESS(x,y)
		BEGIN
			IF(x = y) THEN
				z <= '1';
			ELSE
				z <= '0';
			END IF;
		END PROCESS;
END xnor_1;
---------------------------------------------------------------------
PACKAGE logica IS

	COMPONENT not_1 IS
		PORT(
			x: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT and_1 IS
		PORT(
			x,y: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT nand_1 IS
		PORT(
			x,y: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT or_1 IS
		PORT(
			x,y: IN BIT;
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
			x,y: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT xor_1 IS
		PORT(
			x,y: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT xnor_1 IS
		PORT(
			x,y: IN BIT;
			Z: OUT BIT
		);
	END COMPONENT;

END logica;