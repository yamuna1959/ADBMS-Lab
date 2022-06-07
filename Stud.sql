create table stud(roll varchar(10),name varchar(10),marks integer);
insert into stud values(:roll,:name,:marks);
select * from stud;

DECLARE
N STUD.MARKS%TYPE;
M STUD.MARKS%TYPE;
NAM STUD.NAME%TYPE;
R STUD.MARKS%TYPE;
BEGIN
SELECT MAX(MARKS) INTO M FROM STUD;
DBMS_OUTPUT.PUT_LINE('TOP MARK '||M);

SELECT NAME INTO NAM FROM STUD WHERE MARKS=M; 
DBMS_OUTPUT.PUT_LINE('TOP STUDENT '||NAM);

SELECT AVG(MARKS) INTO N FROM STUD;
DBMS_OUTPUT.PUT_LINE('AVERAGE MARK '||N);

SELECT MARKS INTO R FROM STUD WHERE ROLL=1;
DBMS_OUTPUT.PUT_LINE('ROLL NUMBER '||R);
END;