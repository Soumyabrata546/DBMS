USE c2544; # DDL (CREATE, ALTER , DROP, TRUNCATE)
create table Student ( id int primary key,  # Create table table_name
sname varchar(20) not null, 
sphone bigint(11) not null unique, 
semail varchar(30) not null unique, 
sadd varchar(50), 
squalification varchar(10) not null, 
sdept varchar(20));
# insert multiple rows
insert into student values # insert the value
(1,'RANOJOY',831122288,'ran@gmail.com','chennai','MCA','IT'),
(2,'DEBKANTA',822822288,'dev@gmail.com','kolkata','BE','IT'),
(3,'ARNAB',834332288,'ganesh@gmail.com','delhi','B Tech','CIVIL'),
(4,'PUJA',834772288,'puja@gmail.com','pune','MCA','IT'),
(5,'AVIJIT',834888288,'avi@gmail.com','mumbai','BE','ELECTRICAL'),
(6,'AKASH',834992288,'akash@gmail.com','goa','B Tech','MECHANICAL'),
(7,'ABHISHEK',834821188,'abhishek@gmail.com','darjeeling','MSc','IT'),
(8,'BIDISHA',834824488,'bidi@gmail.com','jammu and kashmir','BE','CIVIL'),
(9,'TIYASA',834800288,'tiyasa@gmail.com','chennai','BSc','CS');
# add new column
alter table Student ADD age int after sname;
# modify datatype size
alter table Student MODIFY squalification varchar(20) not null;
#modify constraint
alter table Student MODIFY sphone int not null;
# drop column
alter table Student DROP COLUMN sdept;
# change column name
alter table Student CHANGE COLUMN age sage int;
# rename table name
alter table Student RENAME TO student_details;
# insert single row
insert into student_details values
(10,'Pallabi',27,785955229,'pallabi@gmail.com','kolkata','MSC');
truncate student_details; # delete rows
drop table student_details; # delete whole table
# DML --- INSERT, UPDATE, DELETE
update student_details set sage = 20 where ID = 1;
update student_details set sage = 23 where ID = 2;
update student_details set sage = 25 where ID = 3;
update student_details set sage = 22 where ID = 4;
update student_details set sage = 26 where ID = 5;
update student_details set sage = 22 where ID = 6;
update student_details set sage = 25 where ID = 7;
update student_details set sage = 27 where ID = 8;
update student_details set sage = 21 where ID = 9;
alter table student_details add fees double after squalification;
update student_details set fees = 1000.50 where ID = 1;
update student_details set fees = 1000.50 where ID = 2;
update student_details set fees = 1000.50 where ID = 3;
update student_details set fees = 1000.50 where ID = 4;
update student_details set fees = 1000.50 where ID = 5;
update student_details set fees = 1000.50 where ID = 6;
update student_details set fees = 1000.50 where ID = 7;
update student_details set fees = 1000.50 where ID = 8;
update student_details set fees = 1000.50 where ID = 9;
update student_details set fees = 1000.50 where ID = 10;
update student_details set squalification = 'BCA' where sname ='ARNAB';
update student_details set fees = 2000.50;
update student_details set sadd= 'mumbai' where sname ='puja';
# delete any specific row
delete from student_details where sname='pallabi'; 
# delete any specific column 
alter table student_details DROP COLUMN fees;
