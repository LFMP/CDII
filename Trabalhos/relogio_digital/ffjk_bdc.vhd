ENTITY ffjk_bdc IS
	PORT(j, k, clear, clock : IN BIT;
		 q, qbarra : BUFFER BIT);
END ffjk_bdc;

ARCHITECTURE comportamental OF ffjk_bdc IS
	BEGIN
		PROCESS(j,k,clear,clock) IS 
			VARIABLE qtemp : BIT;
		BEGIN
			IF(clear = '0')THEN
				qtemp := '0';
			ELSIF (clock'EVENT AND clock = '0')THEN
				IF(j = '0' AND k = '1')THEN
					qtemp := '0';
				ELSIF(j = '1' AND k = '0')THEN
					qtemp := '1';
				ELSIF(j = '0' AND k = '0')THEN
					qtemp := qtemp;
				ELSE
					qtemp := NOT qtemp;
				END IF;
			END IF;
			q <= qtemp;
			qbarra <= NOT qtemp;
		END PROCESS;
END comportamental;

PACKAGE ffjk IS
	COMPONENT ffjk_bdc IS
		PORT(
			j, k, clear, clock : IN BIT;
			q, qbarra : BUFFER BIT
		);
	END COMPONENT ;
END ffjk;
		
			
			
