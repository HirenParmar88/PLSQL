DECLARE
	CURSOR MYCUR
	IS
	SELECT ENAME FROM EMP
	WHERE EMPNO=&NO;
	VENAME VARCHAR2(10);
BEGIN
	OPEN MYCUR;
		FETCH MYCUR INTO VENAME;
		DBMS_OUTPUT.PUT_LINE('============');
		DBMS_OUTPUT.PUT_LINE(VENAME);
	CLOSE MYCUR;
END;
/