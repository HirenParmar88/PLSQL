DECLARE
	VNAME VARCHAR2(12);
BEGIN
	VNAME:='&VNAME';
	DBMS_OUTPUT.PUT_LINE('_____________');
	DBMS_OUTPUT.PUT_LINE(VNAME);
END;
/

/*OUTPUT

Enter value for vname: HIREN PARMAR
old   4: VNAME:='&VNAME';
new   4: VNAME:='HIREN PARMAR';
_____________
HIREN PARMAR

PL/SQL procedure successfully completed.