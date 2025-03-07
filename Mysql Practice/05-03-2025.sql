show databases
create database nit;
use nit ;

create table student(
			name varchar(30),
            id int not null primary key,
            address varchar(50),
            marks int);

desc student
insert into student(marks,id,name,address)values(80,1,'Keshav Kumar','Hyd');
insert into student values('rakesh',3,'Mumbai',92),('keshav',4,'Mumbai',92);


Select * from student ;
select name from  student ;
select name,id from  student ;
select  * from student where id = 2;


update student  set address = 'Chennai' where id =2;

alter table student add phoneNo int;
update student set phoneNo = 127;
update student set phoneNo = 123 where id = 2;
select * from student ;
desc student;
alter table student modify column name varchar(60);
alter table student drop column phoneNo ;
select 10 + 20 ;
set default = 0
