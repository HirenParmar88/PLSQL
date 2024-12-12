DECLARE
	VENAME EMP.ENAME%TYPE;
	VSAL EMP.SAL%TYPE;
BEGIN
	SELECT ENAME,SAL INTO VENAME,VSAL FROM EMP
	WHERE SAL=(SELECT MAX(SAL) FROM EMP);
	
	DBMS_OUTPUT.PUT_LINE('=============================');
	DBMS_OUTPUT.PUT_LINE('HIGHEST PAID EMPLOYEE NAME:-' || VENAME);
	DBMS_OUTPUT.PUT_LINE('SAL:-' || VSAL);
END;
/
OP:

HIGHEST PAID EMPLOYEE NAME:-KING
SAL:-5000

PL/SQL procedure successfully completed.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

8 rows selected.