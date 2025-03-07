-- Mysql  Categories of Sql Commands : --
/*
1>DML - data Definitons Language 
		1> Insert 2> Update 3>delete 4> Select 
2> DDL -- Data definitions Language( it mainly database structure)
		1>Create  2>Alter 3>Drop 4> Turncate 5> rename 
3> TCL -- Transcations Control Language 
			1>savepoint ,2>rollback , 3>commit 
4> Dql - Data Querry language 
				Select 
5> DCl --  Data Control language 
			1> grant 2> revoke 
*/

-- Here we are using the nit database -- 
use nit ;
create table Employees (
			empid smallint , 
            ename varchar(30) ,
            job varchar(20),
            sal decimal(10,2),
            hiredate date ) 
            
Desc Employees ;
 
-- Insert Data into table Uisng the Insert Commands  --
Insert into Employees Values (1,'Keshav Kumar Thakur','Software Engineer ',20000.20,'2024-05-03')
Insert into Employees Values (2,'Keshav Kumar','Software Developer ', 20002.20 ,'2024-05-02'),
				( 3,'Ratnesh','Insurance', 30000.20 ,'2023-05-03' );
                
-- Inserting Null Values into tables --
Insert into Employees Values (2,null,null, 20002.20 ,'2024-05-02'),
				( 3,'Ratnesh',null, 30000.20 ,'2023-05-03' );
-- Displaying Data -- 
-- Select  command is used to diplsya data from the table --
Select * from Employees 
								    
                                    
                                    -- operations in MySql --
/*         1> Airthmetic Operators
           2>Relational Operators 
           3> Logical Operators 
           4> Special Operators
           5> Set Operators            
 */
 
 -- Here are simple examples showing usage of SQL Arithmetic Operators:--
 Select 10 + 12 
 Select 10  - 12 
 Select 10 * 12 
 Select 10/2 
 Select 10%2
 use nit ;
 Select * from Employees 
-- DMl -- Data Definitions Languagae  ------- Insert Update Delete --
# Update Command 
Update Employees 
set sal = 5000.00
 where sal = 20002.20 ;
use nit ;
UPDATE Employees 
SET sal = 5000.00 
WHERE sal = 20000.20;             
Select * from Employees
--          IN operators  


use nit ; 
-- In operators 
-- Use in operators when comparsions based on lists of values 
 -- in oporator is used when there is comparsion between more 2 
-- display employees whose empid  is 1,2,3 /
select * from emp where empid in (1,2,3)
Select  * from emp where empid not in (1,2,3,4,5,6)


--  Between Operators 
Use between operators for range comparsions 
display the employees whies earning  between 9000 and 100000
select * from emp where sal between 8000 and 90000;


Like Operators 
--  Use like operators for pattern comparsions 
display employee name start with s 
Select * from emp where ename Like 'K%'

-- Display employee name end with h?
select * from emp where ename like '%h'

-- Display employee name contains 's'
select * from emp where ename like '%h%' 
display employee name contains 4 char 
use nit ;
select * from emp where ename like '______'


--  Is Operators 
-- Is operataor is used for null value comparsions 


 -- Order BY caluse :
 -- use to sort data on one or more columns based on asc or desc order 














