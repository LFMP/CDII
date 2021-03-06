LIBRARY decodi,logic,ari;
USE decodi.seletor.all,logic.portas.all,ari.UA.all;

ENTITY ULA1BIT IS
	PORT(
		sel: IN BIT_VECTOR(2 DOWNTO 0);
		E0, E1, CIN: IN BIT;
		COUT, S: OUT BIT);
END ULA1BIT;

ARCHITECTURE des OF ULA1BIT IS
---------------------------------------------------------------------------------------
SIGNAL P0, P1, P2, P3, P4, P5, RSO, RSU, OSO, OSU, R1, R2, R3, R4, R5, R6, R7, R8: BIT;
SIGNAL PORT_DECOD : BIT_VECTOR(7 DOWNTO 0);
---------------------------------------------------------------------------------------
BEGIN
	-------------ATRIBUI A SELE��O-----------------------------------------------------
	selecao: decod PORT MAP(sel, PORT_DECOD);
	-------------REALIZA AS OPERA��ES--------------------------------------------------
	S0: and_1 PORT MAP(E0,E1,P0);
	S1: nand_1 PORT MAP(E0,E1,P1);
	S2: or_1 PORT MAP(E0,E1,P2);
	S3: nor_1 PORT MAP(E0,E1,P3);
	S4: xor_1 PORT MAP(E0,E1,P4);
	S5: xnor_1 PORT MAP(E0,E1,P5);
	S6: somador PORT MAP(E0,E1,CIN,RSO,OSO);
	S7: subtrator PORT MAP(E0,E1,CIN,RSU,OSU);
	-------------JUN��O DO DECODIFICADOR COM AS OPERA��ES------------------------------
	oAND: and_1 PORT MAP(P0,PORT_DECOD(0),R1);
	oNAND: and_1 PORT MAP(P1,PORT_DECOD(1),R2);
	oOR: and_1 PORT MAP(P2,PORT_DECOD(2),R3);
	oNOR: and_1 PORT MAP(P3,PORT_DECOD(3),R4);
	oXOR: and_1 PORT MAP(P4,PORT_DECOD(4),R5);
	oXNOR: and_1 PORT MAP(P5,PORT_DECOD(5),R6);
	oSOM: and_1 PORT MAP(RSO,PORT_DECOD(6),R7);
	oSUB: and_1 PORT MAP(RSU,PORT_DECOD(7),R8);
	----------------------SAIDA COUT---------------------------------------------------
	sCOUT: or_1 PORT MAP(OSO, OSU, COUT);
	----------------------SAIDA 1 BIT--------------------------------------------------
	sULA: or_2 PORT MAP(R1, R2, R3, R4, R5, R6, R7, R8, S);
END des;
