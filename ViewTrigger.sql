select * from Employee;

select Salary as "Basic pay" from Employee;

create view empview1 as select Empid,Ename,Salary from Employee;
select * from empview1;

create view  empview3 as select * from Employee where Salary<40000;
select * from empview3;

create table Emply(Empid number(6) primary key,Firstname varchar(10),Lastname varchar(10),Salary number(8,2),Mgrid number(6),Depid number(4));
insert into Emply values(:Empid,:Firstname,:Lastname,:Salary,:Mgrid,:Depid);
select * from Emply;

create table Dept1(Deptid number(4) primary key,Deptname varchar(30),Mgrid number(6),Locid number(4));
insert into Dept1 values(:Deptid,:Deptname,:Mgrid,:Locid);
select * from Dept1;

create or replace trigger trig1
after insert
on Dept1
for each row
begin
update Emply set Salary=40000 where Depid=20;
end;

select * from Emply;