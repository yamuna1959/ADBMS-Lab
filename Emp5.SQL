create table Emp5(Empno number,Empname varchar(20),Deptno number);
insert into Emp5 values(:Empno,:Empname,:Deptno);
select * from Emp5;

 
declare
Veno Emp5.Empno%type:=:Empno;
Vename Emp5.Empname%type;
Vdeptno Emp5.Deptno%type;
begin
select Empno,Empname,Deptno into Veno,Vename,Vdeptno from Emp5 where Empno=Veno;
dbms_output.put_line('Deptno is '||Vdeptno);
dbms_output.put_line('Empname is '||Vename);
exception
when no_data_found then 
dbms_output.put_line('No record found');
end;
 



