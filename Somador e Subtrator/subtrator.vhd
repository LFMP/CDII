LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


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