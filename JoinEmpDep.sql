create table Employe(Eid number,Ename varchar(15),Did number);
insert into Employe  values(101,'Ravi',10);
insert into Employe values(102,'Ajay',10);
insert into Employe values(103,'Animesh',20);
insert into Employe values(104,'Nishant',40);
insert into Employe values(105,'Ganesh',50);
insert into Employe values(106,'Imran',60);
insert into Employe values(107,'Nishant',60);
select * from Employe;

create table Depart(Did number,Dname varchar(12),Location varchar(16));
insert into Depart values(:Did,:Dname,:Location);
select * from Depart;

select Employe.Eid,Employe.Ename,Employe.Did,Depart.Did,Depart.Dname,Depart.Location from Employe,Depart where Employe.Did=Depart.Did;
select Employe.*,Depart.* from Employe,Depart where Employe.Did=Depart.Did; 

select Employe.*,Depart.* from Employe,Depart where Employe.Did=Depart.Did and Ename='Ajay';
select  Employe.Eid,Employe.Ename,Employe.Did,Depart.Did,Depart.Dname,Depart.Location from Employe,Depart where Employe.Did=Depart.Did and Ename='Ajay';
select Eid,Ename,Employe.Did,Depart.Did,Dname,Location from Employe,Depart where Employe.Did=Depart.Did and Ename='Ajay';

select e.Eid,e.Ename,e.Did,d.Did,d.Dname,d.Location from Employe e,Depart d where e.Did=d.Did;

create table location(Location varchar(16),City varchar(15));
insert into location values(:Location,:City);
select * from location;

select e.*,d.*,l.* from Employe e,Depart d,location l where e.Did=d.Did and d.Location=l.Location;

create table Employes(Ename varchar(10),Salary number);
insert into Employes values(:Ename,:Salary);
select * from Employes;

create table Job_salary(Grade varchar(5),Lowersal number,Highersal number); 
insert into Job_salary values(:Grade,:Lowersal,:Highersal);
select * from Job_salary;

select e.Ename,e.Salary,j.Grade from Employes e, Job_salary j where e.Salary between j.Lowersal and j.Highersal;

create table Employ(Empno number primary key,Eaddress varchar(20),Hiredate Date,Ename varchar(10),Salary number);
insert into Employ values(:Empno,:Eaddress,:Hiredate,:Ename,:Salary);
select * from Employ;

create table Salary(Grade varchar(5),Bonus number,Basic number,Empno number);