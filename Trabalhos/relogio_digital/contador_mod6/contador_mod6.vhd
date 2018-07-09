LIBRARY WORK;
USE work.ffjk.all, work.and3.all, work.and2.all;

ENTITY contador_mod6 IS
	PORT(clock, clear, entrada : IN BIT;
		 saidas, saidasbarra : BUFFER BIT_VECTOR(2 DOWNTO 0));
END contador_mod6;

ARCHITECTURE estrutural OF contador_mod6 IS

	SIGNAL j1, j2 : BIT;
	BEGIN
		ffjk0 : ffjk_bdc PORT MAP(entrada, entrada, clear, clock, saidas(0), saidasbarra(0));
		and_j1 : and_2 PORT MAP(saidas(0), saidasbarra(2), j1);
		ffjk1 : ffjk_bdc PORT MAP(j1, saidas(0), clear, clock, saidas(1), saidasbarra(1));
		and_j2 : and_2 PORT MAP(saidas(0), saidas(1), j2);
		ffjk2 : ffjk_bdc PORT MAP(j2, saidas(0), clear, clock, saidas(2), saidasbarra(2));	
END estrutural;

PACKAGE contador_mod6_pkg IS
	COMPONENT contador_mod6 IS
		PORT(clock, clear, entrada : IN BIT;
			 saidas, saidasbarra : BUFFER BIT_VECTOR(2 DOWNTO 0));
	END COMPONENT;
END contador_mod6_pkg;