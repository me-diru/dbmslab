CREATE TABLE emp1
    AS
        SELECT
            *
        FROM
            scott.emp;

CREATE TABLE dept1
    AS
        SELECT
            *
        FROM
            scott.dept;
SELECT * from emp1;
SELECT * FROM dept1;
SELECT ENAME from emp1;
SELECT DISTINCT JOB FROM EMP1;
SELECT SAL*10 FROM EMP1;
SELECT ENAME,JOB,SAL 
FROM EMP1
WHERE EMP1.JOB='SALESMAN' AS 'LOWJOB' AND EMP1.SAL>1000;
INSERT INTO EMP1
    VALUES(121,'ROHIT','BOSS','7888','12-12-99',10000,200,20);
DELETE FROM EMP1;
INSERT INTO  EMP1
SELECT *FROM SCOTT.EMP;
DELETE FROM EMP1
WHERE ENAME='ROHIT';
CREATE TABLE PerINFO (fullname varchar(20),
    contact number(11),
    age number(2),
    collegename varchar(10));
INSERT INTO PerINFO VALUES('&fullname','&contact','&age','&collegename','&DOB');
COMMIT ;
INSERT INTO PerINFO VALUES('ROHIT',99999999,'CBIT','10-10-10',19);
ALTER TABLE PerINFO ADD(DOB date);
ALTER TABLE PerINFO ADD(AGE number(2));
ALTER TABLE PerINFO ADD (01-01-2000 DOB);
UPDATE PerINFO SET DOB='10-10-10' WHERE FULLNAME='Rohit D';
SELECT * FROM PerINFO;
COMMIT;
TRUNCATE TABLE PerINFO;
DELETE FROM PerINFO;
ROLLBACK;
ALTER TABLE PerINFO
DROP COLUMN AGE;
ALTER table PerINFO MODIFY ( contact number(11), fullname varchar(30),
    collegename varchar(10) ,DOB date);
ALTER TABLE PerINFO
  RENAME COLUMN DOB TO DATEOFBIRTH;
