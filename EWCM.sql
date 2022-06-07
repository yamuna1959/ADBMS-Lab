create table Employees(Empname varchar(20) primary key,Street varchar(15),City varchar(10));
insert into Employees values('Gayathri','Kodumthara','PTA');
insert into Employees values('Lakshmi','Ezhumattoor','MLPY');
insert into Employees values('Anjana','Kallarakadavu','PTA');
insert into Employees values('Athulya','Adoor','Adoor');
insert into Employees values('Sandra','Kolanada','Kottarakar');
insert into Employees values('Akash','Kozhenchery','PTA');
insert into Employees values('Akashaya','Kozhenchery','PTA');
select * from Employees;

create table Works(Empname varchar(20) primary key,Cname varchar(18),Salary number);
insert into Works values('Gayathri','Abasoft',40000);
insert into Works values('Lakshmi','Infosys',30000);
insert into Works values('Anjana','Wipro',50000);
insert into Works values('Athulya','Abc',25000);
insert into Works values('Sandra','Technopark',20000);
insert into Works values('Akash','GHT',60000);
select * from Works;
drop table Works;
create table Company(Cname varchar(18) primary key,City varchar(15));
insert into Company values('Abasoft','Ernakulam');
insert into Company values('Infosys','EKM');
insert into Company values('Wipro','Banglore');
insert into Company values('Abc','Ernakulam');
insert into Company values('Technopark','TVM');
insert into Company values('GHT','PTA');
select * from Company;

create table Manager(Empname varchar(20) primary key,Mname varchar(15),Mcity varchar(15));
insert into Manager values('Gayathri','Akhil','Kodumthara');
insert into Manager values('Lakshmi','Gokul','EKM');
insert into Manager values('Anjana','Vishnu','Kozhenchery');
insert into Manager values('Athulya','Amal','Adoor');
insert into Manager values('Sandra','Paster','TVM');
insert into Manager values('Akash','Sushilan','PTA');
insert into Manager values('Akashaya','Athulya','PTA');
select * from Manager;

select Empname from Works where Cname='Abc';

select e.Empname,City from Employees e,Works w where w.Cname='Abc' and w.Empname=e.Empname;

select * from Employees where Empname in(select Empname from Works where Cname='Abc' and Salary>10000);

select e.Empname from Employees e,Works w,Company c where e.Empname=w.Empname and e.City=c.City and w.Cname=c.Cname;

select p.Empname from Employees p,Employees r,Manager m where p.Empname=m.Empname and m.Mname=r.Empname and p.Street=r.Street and p.City=r.City;

select Empname from Works where Cname<>'Abc';

select Empname from Works where Salary>all(select Salary from Works where Cname='Abc');

select Empname from Works t where Salary>(select avg(Salary) from Works s where t.Cname=s.Cname);

select Cname from Works group by Cname having count(distinct Empname)>=all(select count(distinct Empname) from Works group by Cname);

select Cname from Works group by Cname having sum(Salary)<=all(select sum(Salary) from Works group by Cname);

select Cname from Works group by Cname having avg(Salary)>(select avg(Salary) from Works where Cname='Abc');

update Employees set City='Bhopal' where Empname='Anjana';
select * from Employees;

update Works set Salary=Salary*1.1 where Cname='Abc';
select * from Works;

update Works set Salary=Salary*2 where Empname in(select Mname from Manager) and Cname='Abc';
select * from Works;

delete Works where Cname='Abc';
select * from Works;
