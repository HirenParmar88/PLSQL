DECLARE
	N1 NUMBER;
	N2 NUMBER;
BEGIN
	N1 :=&N1;
	N2 :=&N2;
	DBMS_OUTPUT.PUT_LINE('===========');
	DBMS_OUTPUT.PUT_LINE(N1+N2);
END;
/


/*OUTPUT

Enter value for n1: 100
old   5: N1 :=&N1;
new   5: N1 :=100;
Enter value for n2: 100
old   6: N2 :=&N2;
new   6: N2 :=100;
===========
200

PL/SQL procedure successfully completed.