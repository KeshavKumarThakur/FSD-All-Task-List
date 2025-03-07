use nit ; 
select * from student ;
delete from student  where  
select sum(marks) from student ;
select avg(marks) from student;
select count(marks) from student;
select max(marks) from student;s
select min(marks) from student;
select * from student order by marks;
select * from student order by marks desc;
-- Wild Card characters --
-- Like  %  _ 
select * from student where name like 'k%'
select * from student where name like '%k'
select * from student where name like '____a%'

select curtime()


--  Joints 
create table emp1(
				id int not null primary key ,
                salary int,
                empcode int,
                name varchar(30)          
)
desc emp1
insert into emp1 values (1,20000,67,'Keshav'),(2,20000,67,'Rajesh'),(3,20000,68,'Rishav'),(4,8000,611,'Chandu')

Select * from emp1 
select * from student 
-- inneer join
select * from student inner join emp1 on student.id = emp1.id ;

select * from  emp1 inner join  student on emp1.id = student.id ;

select * from student left  join emp1 on student.id = emp1.id ;


-- Right join --

select * from student cross join emp1
select * from emp1 cross join student;




