ENTITY not_2 IS
	PORT(x: IN BIT;
		z: OUT BIT);
END not_2;

ARCHITECTURE logica1 OF not_2 IS
	BEGIN
	z <= NOT X;
END logica1;

ENTITY and_2 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END and_2;

ARCHITECTURE logica1 OF and_2 IS
	BEGIN
	z <= x AND y;
END logica1;

ENTITY nand_2 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END nand_2;

ARCHITECTURE logica1 OF nand_2 IS
	BEGIN
	z <= NOT(x AND y);
END logica1;

ENTITY or_2 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END or_2;

ARCHITECTURE logica1 OF or_2 IS
	BEGIN
	z <= x OR y;
END logica1;

ENTITY nor_2 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END nor_2;

ARCHITECTURE logica1 OF nor_2 IS
	BEGIN
	z <= NOT(x OR y);
END logica1;

ENTITY xor_2 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END xor_2;

ARCHITECTURE logica1 OF xor_2 IS
	BEGIN
	z <= x XOR y;
END logica1;

ENTITY xnor_2 IS
	PORT(x,y: IN BIT;
		z: OUT BIT);
END xnor_2;

ARCHITECTURE logica1 OF xnor_2 IS
	BEGIN
	z <= NOT(x XOR y);
END logica1;

ENTITY somador2 IS
	PORT(e: IN BIT_VECTOR(2 DOWNTO 0);
			s: OUT BIT_VECTOR(1 DOWNTO 0));
END somador2;

ARCHITECTURE som OF somador2 IS

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

ENTITY subtrator2 IS
	PORT(e: IN BIT_VECTOR(2 DOWNTO 0);
			s: OUT BIT_VECTOR(1 DOWNTO 0));
END subtrator2;

ARCHITECTURE subt OF subtrator2 IS

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

ENTITY decod4x1 IS
	PORT(in1, in2, in3, in4: IN BIT;
		sel: IN BIT_VECTOR(1 DOWNTO 0);
		dataout: OUT BIT);
END decod4x1;

ARCHITECTURE mux OF decod4x1 IS
BEGIN
		PROCESS(sel, in1, in2, in3, in4)
			BEGIN
				CASE sel IS
					WHEN "00" => dataout <= in1;
					WHEN "01" => dataout <= in2;
					WHEN "10" => dataout <= in3;
					WHEN "11" => dataout <= in4;
					WHEN others => dataout <= '0';
				END CASE;
			END PROCESS;
END mux;

PACKAGE logic1 IS

	COMPONENT not_2 IS
		PORT(x: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
	COMPONENT and_2 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
		COMPONENT nand_2 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
		COMPONENT or_2 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
		COMPONENT nor_2 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
		COMPONENT xor_2 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;
	
		COMPONENT xnor_2 IS
		PORT(x,y: IN BIT;
			Z: OUT BIT);
	END COMPONENT;

END logic1;

PACKAGE arithmetic2 IS

		COMPONENT somador2 IS
		PORT(e: IN BIT_VECTOR(2 DOWNTO 0);
			s: OUT BIT_VECTOR(1 DOWNTO 0));
		END COMPONENT;
		
		COMPONENT subtrator2 IS
			PORT(e: IN BIT_VECTOR(2 DOWNTO 0);
				s: OUT BIT_VECTOR(1 DOWNTO 0));
		END COMPONENT;

END arithmetic2;

PACKAGE decodificador2 IS
	COMPONENT decod4x1 IS
		PORT(in1, in2, in3, in4: IN BIT;
			sel: IN BIT_VECTOR(1 DOWNTO 0);
			dataout: OUT BIT);
	END COMPONENT;
END decodificador2;