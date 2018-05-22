ENTITY compon IS
	PORT(x,y,in1, in2, in3, in4: IN BIT;
		e: IN BIT_VECTOR(2 DOWNTO 0);
		sel: IN BIT_VECTOR(1 DOWNTO 0);
		z,dataout: OUT BIT;
		s: OUT BIT_VECTOR(1 DOWNTO 0));
END compon;

ARCHITECTURE not_1 OF compon IS
	BEGIN
	z <= NOT X;
END not_1;

ARCHITECTURE and_1 OF compon IS
	BEGIN
	z <= x AND y;
END and_1;

ARCHITECTURE nand_1 OF compon IS
	BEGIN
	z <= NOT(x AND y);
END nand_1;

ARCHITECTURE or_1 OF compon IS
	BEGIN
	z <= x OR y;
END or_1;

ARCHITECTURE nor_1 OF compon IS
	BEGIN
	z <= NOT(x OR y);
END nor_1;

ARCHITECTURE xor_1 OF compon IS
	BEGIN
	z <= x XOR y;
END xor_1;

ARCHITECTURE xnor_1 OF compon IS
	BEGIN
	z <= NOT(x XOR y);
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

ARCHITECTURE mux OF compon IS
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

END logic1;

PACKAGE arithmetic2 IS

		COMPONENT somador IS
		PORT(e: IN BIT_VECTOR(2 DOWNTO 0);
			s: OUT BIT_VECTOR(1 DOWNTO 0));
		END COMPONENT;
		
		COMPONENT subtrator IS
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