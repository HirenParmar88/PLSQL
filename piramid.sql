DECLARE
	N NUMBER;
	I NUMBER;
	J NUMBER;
	
BEGIN
	DBMS_OUTPUT.PUT_LINE('-----------------');
	N:=&NUMBER;
	
	FOR I IN 1..5 LOOP
	FOR J IN 1..I LOOP
	DBMS_OUTPUT.PUT('I');
	END LOOP;
	DBMS_OUTPUT.NEW_LINE;
	END LOOP;
END;
/
Enter value for number: 5
old   8: N:=&NUMBER;
new   8: N:=5;
-----------------
I
II
III
IIII
IIIII

PL/SQL procedure successfully completed.
