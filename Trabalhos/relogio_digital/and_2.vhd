ENTITY and_2 IS
	PORT(x, y : IN BIT;
		 z : OUT BIT);
END and_2;

ARCHITECTURE rtl OF and_2 IS
	BEGIN
		z <= x AND y;
END rtl;

PACKAGE and2 IS
	COMPONENT and_2 IS
		PORT(x, y : IN BIT;
		 z : OUT BIT);
	END COMPONENT;
END and2;