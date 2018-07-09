LIBRARY WORK;
USE work.ffjk.all, work.and3.all, work.and2.all;

ENTITY cont_sinc IS
	PORT(
		clk, clr, es : IN BIT;
		q, qbar : BUFFER BIT_VECTOR(3 DOWNTO 0)
	);
END cont_sinc;

ARCHITECTURE logic OF cont_sinc IS
	BEGIN		
		fft3 : ffjk_bdc PORT MAP(es, es, clk, clr, q(0), qbar(0));
		fft2 : ffjk_bdc PORT MAP(q(0), qbar(0), clk, clr, q(1), qbar(1));		
		fft1 : ffjk_bdc PORT MAP(q(1), qbar(1), clk, clr, q(2), qbar(2));
		fft0 : ffjk_bdc PORT MAP(q(2), qbar(2), clk, clr, q(3), qbar(3));
END logic;