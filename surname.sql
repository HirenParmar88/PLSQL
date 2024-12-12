DECLARE
	SURNAME VARCHAR2(30);
	NAME VARCHAR2(20);
BEGIN
	SURNAME :='&SURNAME';
	NAME :='&NAME';
	DBMS_OUTPUT.PUT_LINE('----------------------');
	DBMS_OUTPUT.PUT_LINE(SURNAME || ' ' || NAME);
END;
/

/*OUTPUT

Enter value for surname: PARMAR
old   5: SURNAME :='&SURNAME';
new   5: SURNAME :='PARMAR';
Enter value for name: HIREN
old   6: NAME :='&NAME';
new   6: NAME :='HIREN';
----------------------
PARMAR HIREN

PL/SQL procedure successfully completed.