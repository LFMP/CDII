LIBRARY compon;
USE work.aritimetica.all, work.decodificador.all, work.logica.all;

ENTITY ULA1BIT IS
	PORT(
		sel: IN BIT_VECTOR(2 DOWNTO 0);
		E0, E1, CIN: IN BIT;
		COUT, S: OUT BIT);
END ULA1BIT;

ARCHITECTURE des OF ULA1BIT IS

SIGNAL P0, P1, P2, P3, P4, P5, RSO, RSU, OSO, OSU, R1, R2, R3, R4, R5, R6, R7, R8: BIT;
SIGNAL PORT_DECOD : BIT_VECTOR(7 DOWNTO 0);

BEGIN
	-------------ATRIBUI A SELE��O---------------------------------
	D0: decod PORT MAP(sel, PORT_DECOD);
	-------------REALIZA AS OPERA��ES------------------------------
	L0: and_1 PORT MAP(E0,E1,P0);
	L1: nand_1 PORT MAP(E0,E1,P1);
	L2: or_1 PORT MAP(E0,E1,P2);
	L3: nor_1 PORT MAP(E0,E1,P3);
	L4: xor_1 PORT MAP(E0,E1,P4);
	L5: xnor_1 PORT MAP(E0,E1,P5);
	A0: somador PORT MAP(E0,E1,CIN,RSO,OSO);
	A1: subtrator PORT MAP(E0,E1,CIN,RSU,OSU);
	AS: or_1 PORT MAP(OSO, OSU, COUT);
	-------------JUN��O DO DECODIFICADOR COM AS OPERA��ES-----------
	OP0: and_1 PORT MAP(P0,PORT_DECOD(0),R1);
	OP1: and_1 PORT MAP(P1,PORT_DECOD(1),R2);
	OP2: and_1 PORT MAP(P2,PORT_DECOD(2),R3);
	OP3: and_1 PORT MAP(P3,PORT_DECOD(3),R4);
	OP4: and_1 PORT MAP(P4,PORT_DECOD(4),R5);
	OP5: and_1 PORT MAP(P5,PORT_DECOD(5),R6);
	OP6: and_1 PORT MAP(RSO,PORT_DECOD(6),R7);
	OP7: and_1 PORT MAP(RSU,PORT_DECOD(7),R8);
	----------------------SAIDA 1 BIT--------------------------------
	SP: or_2 PORT MAP(R1, R2, R3, R4, R5, R6, R7, R8, S);
END des;
