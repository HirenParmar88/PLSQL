DECLARE
	VNO NUMBER(3);
BEGIN
	VNO:=&VNO;
	DBMS_OUTPUT.PUT_LINE('==================');
	FOR I IN 1..10
	LOOP
		DBMS_OUTPUT.PUT_LINE(VNO ||' X '|| I ||' = '||I*VNO);
	END LOOP;
	
	DBMS_OUTPUT.PUT_LINE('==================');
END;
/

/*OUTPUT

Enter value for vno: 9
old   4: VNO:=&VNO;
new   4: VNO:=9;
==================
9 X 1 = 9
9 X 2 = 18
9 X 3 = 27
9 X 4 = 36
9 X 5 = 45
9 X 6 = 54
9 X 7 = 63
9 X 8 = 72
9 X 9 = 81
9 X 10 = 90
==================

PL/SQL procedure successfully completed.