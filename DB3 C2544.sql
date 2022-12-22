use c2544;
create table Future_Emp(
emp_id int primary key,
ename varchar(20) not null,
designation varchar(25) not null,
dept varchar(20),
working_hour varchar(10),
salary double(10,2)
);
#aggregate function - count
select dept,count(dept) as 'total_emp_in_dept' from Future_Emp group by dept;
#sum
select dept,sum(working_hour) as 'total_hours' from Future_Emp group by dept;
select dept,sum(working_hour) as 'total_hours' from Future_Emp where dept = 'operation';
select dept,sum(salary) as 'total_dept_salary' from Future_Emp group by dept;
#average
select dept,avg(salary) as 'avg_dept_salary' from Future_Emp group by dept;
#min
select ename,dept,min(salary) as 'avg_dept_salary' from Future_Emp group by dept;
select ename,dept,min(salary) from Future_Emp;
#max
select dept,max(salary) as 'avg_dept_salary' from Future_Emp group by dept;
#having
select dept,sum(working_hour) as 'total hours' from Future_Emp group by dept having sum(working_hour)>15;