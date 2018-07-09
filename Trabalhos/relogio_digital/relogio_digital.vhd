LIBRARY work;
USE work.decodificador_bcd_pkg.all, work.contador_mod10_pkg.all, work.contador_mod6_pkg.all;
USE work.and3.all, work.and2.all;

ENTITY relogio_digital IS
	PORT(
		 entrada, clock, clear : IN BIT;
		 dez_min, uni_min, dez_sec, uni_sec : OUT BIT_VECTOR(6 DOWNTO 0)
	);
END relogio_digital;

ARCHITECTURE estrutural OF relogio_digital IS

	SIGNAL d_min, d_sec, u_min, u_sec, barra_4 : BIT_VECTOR(3 DOWNTO 0);
	SIGNAL d_min_2, d_sec_2, barra_3 : BIT_VECTOR(2 DOWNTO 0);
	SIGNAL clk_d_min, clk_d_sec : BIT;
	
	BEGIN

		unidades_segundos : contador_mod10 PORT MAP(clock, clear, entrada, u_sec, barra_4);
		clock_dezenas_segundos : and_2 PORT MAP(u_sec(0), u_sec(3), clk_d_sec);
		dezenas_segundos : contador_mod6 PORT MAP(clk_d_sec, clear, entrada, d_sec_2, barra_3);
		d_sec <= '0' & d_sec_2;
		
		unidades_minutos : contador_mod10 PORT MAP(d_sec(2), clear, entrada, u_min, barra_4);
		clock_dezenas_minutos : and_2 PORT MAP(u_min(0), u_min(3), clk_d_min);
		dezenas_minutos : contador_mod6 PORT MAP(clk_d_min, clear, entrada, d_min_2, barra_3);
		d_min <= '0' & d_min_2;
		
		bcd_dez_min : decodificador_bcd PORT MAP(d_min, dez_min);
		bcd_uni_min : decodificador_bcd PORT MAP(u_min, uni_min);
		bcd_dez_seg : decodificador_bcd PORT MAP(d_sec, dez_sec);
		bcd_uni_seg : decodificador_bcd PORT MAP(u_sec, uni_sec);
END estrutural;