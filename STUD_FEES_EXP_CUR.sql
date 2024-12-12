SQL> DESC STUDENT1
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 SNO                                                               NOT NULL NUMBER(3)
 NAME                                                              NOT NULL VARCHAR2(20)
 COURSE                                                                     VARCHAR2(10)

SQL> DESC FEES2
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 SNO                                                                        NUMBER(3)
 AMOUNT                                                                     NUMBER(4)
 FEESDATE                                                                   DATE
 TNO                                                                        NUMBER(3)
*** -------------------------------------------------------------------------------------------------***

DECLARE
	VSNO STUDENT1.SNO%TYPE;
	VNAME STUDENT1.NAME%TYPE;
	VTNO FEES2.TNO%TYPE;
	VAMOUNT FEES2.AMOUNT%TYPE;
	VFEESDATE FEES2.FEESDATE%TYPE;
	VCOURCE STUDENT1.COURSE%TYPE;
	
	CURSOR STUDFEE IS
	SELECT S.SNO,S.NAME,S.COURSE,F.TNO,F.AMOUNT,F.FEESDATE
	FROM STUDENT1 S,FEES2 F 
	WHERE S.SNO=F.SNO AND S.SNO=&NO;
BEGIN
	OPEN STUDFEE;
	FETCH STUDFEE INTO VSNO,VNAME,VCOURSE,VTNO,VAMOUNT,VFEESDATE;
	DBMS_OUTPUT.PUT_LINE('STUDENT NO: ' ||VSNO||'STUDENT NAME:'||VNAME||'COURSE:'||VCOURSE);
	LOOP
		VTOT:=VTOT+VAMOUNT;
		DBMS_OUTPUT.PUT_LINE(VTNO||' '||VAMOUNT||' '||VFEESDATE);
		FETCH STUDFEE INTO VSNO,VNAME,VCOURSE,VTNO,VAMOUNT,VFEESDATE;
		EXIT WHEN STUDFEE%NOTFOUND;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('TOTAL PAID'||VTOT);
	CLOSE STUDFEE;
END;
/