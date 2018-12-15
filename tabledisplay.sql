BEGIN
FOR rec IN (SELECT * FROM BRANCH_DETAIL)
LOOP
dbms_output.put_line('CODE : ' || rec.code || ' NAME : '|| rec.name ||
' ASSETS : '|| rec.assets);
END LOOP;
FOR rec IN (SELECT * FROM CUSTOMER_DETAIL)
LOOP
dbms_output.put_line('SSN : ' || rec.ssn || ' NAME : '|| rec.name ||
' PLACE : '|| rec.place);
END LOOP;
FOR rec IN (SELECT * FROM ACCOUNT_DETAIL)
LOOP
dbms_output.put_line('ACCNo : ' || rec.accno || ' SSN : '|| rec.ssn
|| ' CODE : '|| rec.code || ' BALANCE : '|| rec.balance);
END LOOP;
UPDATE ACCOUNT_DETAIL
SET BALANCE=120000
WHERE SSN=1;
dbms_output.put_line(‘SOME ROWS ARE UPDATED’ );
END;
/