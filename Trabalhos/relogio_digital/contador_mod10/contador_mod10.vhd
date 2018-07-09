LIBRARY WORK;
USE work.ffjk.all, work.and3.all, work.and2.all;

ENTITY contador_mod10 IS
	PORT(clock, clear, entrada : IN BIT;
		 saidas, saidasbarra : BUFFER BIT_VECTOR(3 DOWNTO 0));
END contador_mod10;

ARCHITECTURE estrutural OF contador_mod10 IS
	
	SIGNAL j1, j2, j3 : BIT;
	BEGIN
		ffjk0 : ffjk_bdc PORT MAP(entrada, entrada, clear, clock, saidas(0), saidasbarra(0));
		and_j1 : and_2 PORT MAP(saidas(0), saidasbarra(3), j1);
		ffjk1 : ffjk_bdc PORT MAP(j1, saidas(0), clear, clock, saidas(1), saidasbarra(1));
		and_j2 : and_2 PORT MAP(saidas(0), saidas(1), j2);
		ffjk2 : ffjk_bdc PORT MAP(j2, j2, clear, clock, saidas(2), saidasbarra(2));
		and_j3 : and_3 PORT MAP(saidas(0), saidas(1), saidas(2), j3);
		ffjk3 : ffjk_bdc PORT MAP(j3, saidas(0), clear, clock, saidas(3), saidasbarra(3));
END estrutural;

PACKAGE contador_mod10_pkg IS
	COMPONENT contador_mod10
		PORT(clock, clear, entrada : IN BIT;
			 saidas, saidasbarra : BUFFER BIT_VECTOR(3 DOWNTO 0));
	END COMPONENT;
END contador_mod10_pkg;