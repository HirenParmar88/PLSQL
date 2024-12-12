DECLARE
	VEMPNO EMP.EMPNO%TYPE;
	VENAME EMP.ENAME%TYPE;
	VSAL EMP.SAL%TYPE;
	VJOB EMP.JOB%TYPE;
	VHIREDATE EMP.HIREDATE%TYPE;
BEGIN
	SELECT EMPNO, ENAME, SAL, JOB, HIREDATE
	INTO VEMPNO, VENAME, VSAL, VJOB, VHIREDATE
	FROM EMP
	WHERE EMPNO=&NO;
	
	DBMS_OUTPUT.PUT_LINE('====================');
	DBMS_OUTPUT.PUT_LINE('EMPLOYEE DETAILS');
	
	DBMS_OUTPUT.PUT_LINE('====================');
	DBMS_OUTPUT.PUT_LINE('EMPNO:-' || VEMPNO);
	DBMS_OUTPUT.PUT_LINE('ENAME:-' || VENAME);
	DBMS_OUTPUT.PUT_LINE('JOB:-' || VJOB);
	DBMS_OUTPUT.PUT_LINE('SAL:-' || VJOB);
	DBMS_OUTPUT.PUT_LINE('HIREDATE:-' || VHIREDATE);

END;
/

/**********OUTPUT:

Enter value for no: 7902
old  11: WHERE EMPNO=&NO;
new  11: WHERE EMPNO=7902;

PL/SQL procedure successfully completed.

SQL> set serveroutput on
SQL> /
Enter value for no: 7902
old  11: WHERE EMPNO=&NO;
new  11: WHERE EMPNO=7902;
====================
EMPLOYEE DETAILS
====================
EMPNO:-7902
ENAME:-FORD
JOB:-ANALYST
SAL:-ANALYST
HIREDATE:-03-DEC-81

PL/SQL procedure successfully completed.

			OR
			
SQL> @D:\hiren\emp.sql
Enter value for no: 7566
old  11:        WHERE EMPNO=&NO;
new  11:        WHERE EMPNO=7566;
====================
EMPLOYEE DETAILS
====================
EMPNO:-7566
ENAME:-JONES
JOB:-MANAGER
SAL:-MANAGER
HIREDATE:-02-APR-81

PL/SQL procedure successfully completed.