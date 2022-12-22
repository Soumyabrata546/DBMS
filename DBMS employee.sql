USE soumyadb;
#1. Create a table EMP1 with following structure.
create table EMP1(id int primary key auto_increment, name varchar(10) not null, Basic float(6,2) not null ,
designation varchar(30) not null,age int(10));
#2. Change the data type of the field Basic from float to integer with required size of the 
#EMP1 table.
alter table emp1 modify basic int(20);
#3. Change the field size of Name column of the EMP1 table from 10 to 15. 
alter table emp1 MODIFY name varchar(15) not null;
#4. Create another table EMP_trainee with the same (changed) structure. The column ID to 
#be renamed as Emp_id in the EMP_trainee table.
create table EMP_trainee(Emp_id int primary key auto_increment, name varchar(10) not null, Basic double(6,2) not null ,
designation varchar(30) not null,age int(10));
#5. Insert following data in EMP1 table: -
insert into EMP1 values
(1,'Rohit',6700,'manager',24),
(2,'Sunil',6200,'Engineer',27),
(3,'Payel',6300,'Enginner',25),
(4,'Kunal',6700,'Trainee',28),
(5,'Sunita',6230,'Trainee',26),
(6,'Bimal',7000,'Trainee',25);

create table EMP_trainee(Emp_id int primary key auto_increment, name varchar(10) not null, Basic double(6,2) not null ,
designation varchar(30) not null,age int(10));
#6. Insert all rows with the designation ‘trainee’ from the EMP1 table to EMP_trainee table

INSERT INTO EMP_trainee (Emp_id,Name,Basic,Designation,Age) select ID,Name,Basic,Designation,
Age FROM EMP1 WHERE Designation = 'Trainee';
#7. Display the structure of both the tables.
select * from emp1,emp_trainee;

#8. Add columns Skills (data type-varchar2 and size-10) and DOJ (data type-date) to the 
#EMP1 table and add data for the Skills and DOJ columns according to your own wish
alter table EMP1 ADD Skills varchar(10) after age;
update EMP1 set Skills='java' where id=1;
update EMP1 set Skills='c' where id=2;
update EMP1 set Skills='c++' where id=3;
update EMP1 set Skills='python' where id=4;
update EMP1 set Skills='DBMS' where id=5;
update EMP1 set Skills='PHP' where id=6;
alter table EMP1 ADD DOJ varchar(10) after skills;
update EMP1 set DOJ='1/11/22' where id=1;
update EMP1 set DOJ='2/11/22' where id=2;
update EMP1 set DOJ='1/11/22' where id=3;
update EMP1 set DOJ='3/11/22' where id=4;
update EMP1 set DOJ='2/11/22' where id=5;
update EMP1 set DOJ='3/11/22' where id=6;
#9. Change the designation of all trainees in EMP_trainee table to ‘Programmer _Trainee’.
update EMP_trainee set designation='P_trainee';
#10. Update more than one row in one query in EMP1 table.
update emp1 set name ='Ram'  where id=1 or id=2;

#11.Change the data type of ID in EMP1 table to varchar2 and increase the data size to 5
alter table emp1 modify id varchar(5);
#12.Display both the tables EMP1 and EMP_trainee.
select * from emp1,EMP_trainee;

#13.Rename the column Age of EMP1 table to Age_in_Years
alter table emp1 rename column age to age_in_years;
#14.Delete the details of all the trainees from the EMP1 table.
delete from emp1 where designation='trainee';
#15.Drop the Age column from the EMP_trainee table.
alter table emp_trainee drop column age;
#16.Drop two columns in one query from EMP_trainee tabl
alter table emp_trainee drop column basic,drop column designation;
#17.Rename the table EMP to EMP_Mgr_Engr.
alter table emp1 rename to EMP_Mgr_Engr;
#18.Drop the table EMP_Trainee. 
drop table  emp_trainee;
#19.Truncate EMP_Mgr_Engr table (Delete all the rows)
truncate table EMP_Mgr_Engr;
#20.Recover the data of EMP_Mgr_Engr.



