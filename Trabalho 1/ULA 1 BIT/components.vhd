ENTITY compon IS
	PORT(
		x,y,in1, in2, in3, in4: IN BIT;
		e: IN BIT_VECTOR(2 DOWNTO 0);
		sel: IN BIT_VECTOR(1 DOWNTO 0);
		z,dataout: OUT BIT;
		s: OUT BIT_VECTOR(1 DOWNTO 0)
	);
END compon;

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

ARCHITECTURE som OF compon IS

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

ARCHITECTURE subt OF compon IS

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

ARCHITECTURE decod OF compon IS
BEGIN
END decod;

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

PACKAGE aritimetica IS

	COMPONENT somador IS
		PORT(
			e: IN BIT_VECTOR(2 DOWNTO 0);
			s: OUT BIT_VECTOR(1 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT subtrator IS
		PORT(
			e: IN BIT_VECTOR(2 DOWNTO 0);
			s: OUT BIT_VECTOR(1 DOWNTO 0)
		);
	END COMPONENT;

END aritimetica;

PACKAGE decodificador IS
	COMPONENT decod IS
		PORT(
			in1, in2, in3, in4: IN BIT;
			sel: IN BIT_VECTOR(1 DOWNTO 0);
			dataout: OUT BIT
		);
	END COMPONENT;
END decodificador;

