LIBRARY decodif,logic,arithm;
USE work.aritimetica.all, work.decodificador.all, work.logica.all;

ENTITY ULA1BIT IS
	PORT(sel, ENT: IN BIT_VECTOR(2 DOWNTO 0);
		E0, E1: IN BIT;
		COUT, S: OUT BIT);
END ULA1BIT;

ARCHITECTURE des OF ULA1BIT IS
SIGNAL P0, P1, P2, P3, P4, P5, I0, I1, CIN, SS, R1, R2, R3, R4, R5, R6, R7, R8: BIT;
SIGNAL PORT_DECOD : BIT_VECTOR(7 DOWNTO 0);
SIGNAL PORT_ARIT1,PORT_ARIT2 : BIT_VECTOR(1 DOWNTO 0);

BEGIN
	I0 <= ENT(0);
	I1 <= ENT(1);
	CIN <= ENT(2);
	
	D0: decod PORT MAP(sel, PORT_DECOD);
	
	L0: and_1 PORT MAP(E0,E1,P0);
	L1: nand_1 PORT MAP(E0,E1,P1);
	L2: or_1 PORT MAP(E0,E1,P2);
	L3: nor_1 PORT MAP(E0,E1,P3);
	L4: xor_1 PORT MAP(E0,E1,P4);
	L5: xnor_1 PORT MAP(E0,E1,P5);
	A0: somador PORT MAP(ENT,PORT_ARIT1);
	A1: subtrator PORT MAP(ENT,PORT_ARIT2);
	AS: or_1 PORT MAP(PORT_ARIT1(1), PORT_ARIT1(1), COUT);
	
	OP0: and_1 PORT MAP(P0,PORT_DECOD(0),R1);
	OP1: and_1 PORT MAP(P1,PORT_DECOD(1),R2);
	OP2: and_1 PORT MAP(P2,PORT_DECOD(2),R3);
	OP3: and_1 PORT MAP(P3,PORT_DECOD(3),R4);
	OP4: and_1 PORT MAP(P4,PORT_DECOD(4),R5);
	OP5: and_1 PORT MAP(P5,PORT_DECOD(5),R6);
	OP6: and_1 PORT MAP(PORT_ARIT1(0),PORT_DECOD(6),R7);
	OP7: and_1 PORT MAP(PORT_ARIT1(0),PORT_DECOD(7),R8);
	
	SP: or_2 PORT MAP(R1, R2, R3, R4, R5, R6, R7, R8, S);
END des;
