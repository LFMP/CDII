ENTITY somador IS
	PORT(
		E0,E1,CIN: IN BIT;
		S, COUT: OUT BIT
	);
END somador;

ARCHITECTURE logic OF somador IS
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
	S <= OUTPUTS(0);
	COUT <= OUTPUTS(1);
END logic;

ENTITY subtrator IS
	PORT(
		E0,E1,CIN: IN BIT;
		S, COUT: OUT BIT
	);
END subtrator;

ARCHITECTURE logic OF subtrator IS
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
		
		S <= OUTPUTS(0);
		COUT <= OUTPUTS(1);
	END PROCESS;
END logic;
---------------------------------------------------------------------
PACKAGE UA IS
	COMPONENT somador IS
		PORT(
			E0,E1,CIN: IN BIT;
			S, COUT: OUT BIT
		);
	END COMPONENT;
	
	COMPONENT subtrator IS
		PORT(
			E0,E1,CIN: IN BIT;
			S, COUT: OUT BIT
		);
	END COMPONENT;
END UA;