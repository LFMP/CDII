ENTITY decodificador_bcd IS
	PORT(bcd : IN BIT_VECTOR(3 DOWNTO 0);
		 segmentos : OUT BIT_VECTOR(6 DOWNTO 0));
END decodificador_bcd;

ARCHITECTURE comportamental OF decodificador_bcd IS
	BEGIN
		segmentos <= "1111110" WHEN bcd = "0000" ELSE
					 "0110000" WHEN bcd = "0001" ELSE
					 "1101101" WHEN bcd = "0010" ELSE
					 "1111001" WHEN bcd = "0011" ELSE
					 "0110011" WHEN bcd = "0100" ELSE
					 "1011011" WHEN bcd = "0101" ELSE
					 "1011111" WHEN bcd = "0110" ELSE
					 "1110000" WHEN bcd = "0111" ELSE
					 "1111111" WHEN bcd = "1000" ELSE
					 "1111011" WHEN bcd = "1001" ELSE
					 "1111110";
END comportamental; 

PACKAGE decodificador_bcd_pkg IS
	COMPONENT decodificador_bcd
		PORT(bcd : IN BIT_VECTOR(3 DOWNTO 0);
			 segmentos : OUT BIT_VECTOR(6 DOWNTO 0));
	END COMPONENT;
END decodificador_bcd_pkg;