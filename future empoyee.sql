use soumyadb;
create table Future_Employee(
emp_id int primary key,
Ename varchar(20) not null,
desigation varchar(25) not null,
dept varchar (10) not null,
working_hour varchar (10),
 Esalary double(10,2));
 insert into Future_Employee values
 (1,'Niladri','Engineer','ECE','8',10000),
 (2,'Soumya','MGR','BSC','9',20000),
 (3,'Nisha','SME','BSC','8',30000),
 (4,'Misbha','Engineer','CSE','9',25000),
 (5,'Avishek','Admin','EE','10',15000),
 (6,'Akshay','MGR','IT','11',14000),
 (7,'Shruti','Engineer','12','8',17000),
 (8,'Elina','SME','AIE','7',13000),
 (9,'Sreeprasad','Admin','CE','8',18000),
 (10,'Sourav','Engineer','ECE','6',19000);
 # aggricate function - count
 select dept,count(dept) as 'Total_emp_in_dpt' from Future_Employee group by dept;
 # sum
 select dept,sum(working_hour) as 'total_hrs' from Future_Employee group by dept;
 select dept,sum(working_hour) as 'total_hrs' from Future_Employee where dept = 'ME';
 select dept,sum(Esalary) as 'total_salary' from Future_Employee group by dept;
 select dept,sum(Esalary) as 'total_salary' from Future_Employee where dept = 'EE';
# avarage
select dept,avg(Esalary) as ' avg_dpt_salary' from Future_Employee group by dept;
# min
select Ename,dept,min(Esalary) as ' min_dpt_salary' from Future_Employee group by dept;
select Ename,dept,min(Esalary) from Future_Employee;
# max
select dept,max(Esalary) as ' max_dpt_salary' from Future_Employee group by dept;
select max(Esalary) from Future_Employee where dept = 'EE';
select max(esalary) from Future_Employee;
# having
select dept,sum(working_hour) as 'total_hours' from Future_Employee group by dept having sum(working_hour)>15;
#subquery
select ename,dept,esalary as "min_dept_salary" from Future_Employee where esalary=(select min(Esalary) from Future_Employee);