DECLARE
	N1 NUMBER;
	N2 NUMBER;
	TEMP NUMBER;
BEGIN
	N1:=1000;
	N2:=2000;
	
	DBMS_OUTPUT.PUT_LINE('---BEFORE---');
	DBMS_OUTPUT.PUT_LINE('N1='||N1 || ' N2='||N2);
	
	TEMP:=N1;
	N1:=N2;
	N2:=TEMP;
	
	DBMS_OUTPUT.PUT_LINE('---AFTER---');
	DBMS_OUTPUT.PUT_LINE('N1='||N1 || ' N2='||N2);
END;
/

/*OUTPUT

---BEFORE---
N1=1000 N2=2000
---AFTER---
N1=2000 N2=1000

PL/SQL procedure successfully completed.