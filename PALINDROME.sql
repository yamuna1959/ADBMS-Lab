DECLARE
N INT;
M INT;
S INT;
R INT;
BEGIN
N:=:N;
M:=N;
S:=0;
WHILE(N>0)
LOOP
R:=N MOD 10;
S:=(S*10)+R;
N:=FLOOR(N/10);
END LOOP;
IF(M=S)
THEN
DBMS_OUTPUT.PUT_LINE('THE GIVEN NUMBER IS PALINDROME');
ELSE
DBMS_OUTPUT.PUT_LINE('THE GIVEN NUMBER IS NOT PALINDROME');
END IF;
END;