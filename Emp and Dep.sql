create table Employee(Empid number,Ename varchar(25),Salary number,Place varchar(20)); 
insert into Employee values(1,'Gayathri',35000,'PTA');
insert into Employee values(2,'Megha',60000,'Ranni');
insert into Employee values(3,'Arya',80000,'Alapuzha'); 
insert into Employee values(4,'Athulya'30000,'Adoor'); 
insert into Employee values(5,'Sandra',25000,'Kollam'); 
insert into Employee values(5,'Anju',20000,'TVM');  
select * from Employee;

create table Department(Empid number(10),DNo varchar(5),Dname varchar(20));
insert into Department values(1,'D01','MCA');
insert into Department values(2,'D02','M.Tech')
insert into Department values(3,'D03','MBA');
insert into Department values(4,'D04','');
insert into Department values(5,'D05','B.Tech');
insert into Department values(5,'D06','');
insert into Department values(6,'D06','');
insert into Department values(7,'D07','');
select * from Department;


select Empid from Employee union select Empid from Department;
select Empid from Employee intersect select Empid from Department;
select Empid from Department minus select Empid from Employee;
select distinct(Empid) from Employee;  
select distinct(Empid) from Department;


select avg(Salary) from Employee;
select max(Salary) from Employee;
select min(Salary) from Employee;
select sum(Salary) from Employee;
select count(*) from Employee;
select sum(Salary),avg(Salary),max(Salary),min(Salary),count(Salary) from Employee;

select * from Department where Empid in(select Empid from Employee where Salary<35000);  

alter table Department add Stname varchar(20); 
select * from Department;  
alter table Department modify Stname varchar(40);
  alter table Department drop Stname varchar(20);  

select * from Employee where Salary between 20000 and 50000;
select * from Employee where Salary not between 20000 and 50000;
select * from Employee where Salary in(20000,60000);
select * from Employee where Salary not in(20000,60000);
select * from Employee where Salary is null;
select * from Employee where Salary is not null;

select Ename Salary from Employee where Ename like 'A%';
select Ename Salary from Employee where Ename like '_n%';
select Ename Salary from Employee where Ename like '%a%';
select Ename Salary from Employee where Ename like '_______';
select Ename,Salary from Employee where Salary like '%5%';


