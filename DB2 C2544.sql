use c2544;

create table Employee(
id int primary key ,
Ename varchar(20) not null,
Ephone bigint(11) not null unique,
Eaddr varchar(50),
Edept varchar(10) not null,
Esalary double);
insert into Employee values
(1,'Bishnupriya',5598522288,'mumbai','IT',10000.5);
# insert multiple rows
insert into Employee values
(2,'Suchitra',8348224588,'kolkata','IT',20000.5),
(3,'Shifa',785248854,'Pune','A/C',15000.80),
(4,'Nisha',985231288,'Mumbai','MGR',35000.50),
(5,'Elina',782244528,'Kolkata','A/c',10000.50);
#select
select * from Employee where Edept = 'IT';
#and ( both the condition should true )
select * from Employee where Eaddr = 'Kolkata' and Esalary = '10000.50';
#or ( any one condition should true )
select * from Employee where Eaddr = 'Mumbai' or Esalary = '35000.50';
#not
select * from Employee where Edept != 'IT';
#in
select * from Employee where Eaddr in('mumbai','Pune');
#starts with
select * from Employee where Ename like 'E%';
#ends with
select * from Employee where Ename like '%a';
#In between
select * from Employee where Ename like '%f%';
# start & ends With
select * from Employee where Ename like 'N%a';
#missing letter
select * from Employee where Eaddr like 'pu_e';
select * from Employee where Edept like  'M_R';

select id,Ename,Ephone,Eaddr from Employee;
select * from Employee where Id = 5;
select * from Employee where EName = 'Nisha';
#distinct
select distinct Id from Employee;
alter table Employee add Comm_Pct int after Esalary;
update Employee set Comm_Pct = 20 where id = 1;
update Employee set Comm_Pct = 15 where id = 2;
update Employee set Comm_Pct = 10 where id = 3;
update Employee set Comm_Pct = 15 where id = 4;
update Employee set Comm_Pct = 25 where id = 5;
#as
select EName,Esalary,ESalary + 300 as 'Increased_Salary' from Employee;
select EName,ESalary,ESalary + Comm_Pct + 100 as 'Annual_Compensation' from Employee;
select Comm_Pct from Employee;
# greatr than
select id,  ESalary from employee where ESALARY >15000;
#between
select EName, ESalary from employee where ESALARY between 20000 and 30000;
select * from employee where ESALARY =10000.5 or ESALARY=20000.5 or ESALARY=35000.50;
select * from employee where ID=1 or ID = 5 or ID=3;
#not equal
select * from employee where ESALARY != 15000.8;
select * from employee where Ename = 'Shifa';
update employee set id = 9 where ESALARY > 20000.5;
select * from employee where id = 5 and ESALARY<15000;
select Ename,id from employee where ESALARY>15000 and Eaddr='kolkata';