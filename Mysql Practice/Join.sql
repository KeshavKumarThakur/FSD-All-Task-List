-- Join
 -- joins are used combine two  or more table that have some common atrribute Its help oin retrive data  spread over the tables 
--  Type of joins 
  Inner Joints 
Left join(Left Outer Join )
Right join (Right outer join)
Full join (Full Outer Join ) -- no directly suppoerted in mysql 
Cross join 
Self Join 




Inner Join -- It return only the matching  rows between both tables 

Create table Keshav (
				emp_id int primary key ,
                emp_name varchar(30),
                Dept_id int )
                
desc Keshav
Create table department (
				dept_id int primary key ,
                dept_name varchar(30)
		)
 Insert into Keshav values(1,'Alice',101),(2,'Bob',102),(3,'Charilee',103)
  Insert into department values(101,'HR'),(102,'IT'),(103,'Sales')
 
 Select * from department
 Select * from Keshav 
 
 
 Select Keshav.emp_id , Keshav.emp_name ,department.dept_name 
 from Keshav 
 inner join department on Keshav.dept_id = department.dept_id;
 
 
 select * from Keshav inner join department on department.dept_id = Keshav.dept_id ;
 Select * from Keshav Left join department on department.dept_id = keshav.Dept_id;
 CREATE TABLE customer (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    AGE INT,
    ADDRESS VARCHAR(100),
    SALARY DECIMAL(10,2)
);
INSERT INTO customer (ID, NAME, AGE, ADDRESS, SALARY) VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00),
(2, 'Khilan', 25, 'Delhi', 1500.00),
(3, 'Kaushik', 23, 'Kota', 2000.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00),
(5, 'Hardik', 27, 'Bhopal', 8500.00),
(6, 'Komal', 22, 'MP', 4500.00),
(7, 'Muffy', 24, 'Indore', 10000.00);


CREATE TABLE orders (
    OID INT PRIMARY KEY,
    DATE DATETIME,
    CUSTOMER_ID INT,
    AMOUNT DECIMAL(10,2),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES customer(ID)  -- Linking CUSTOMER_ID to customer table
);
INSERT INTO orders (OID, DATE, CUSTOMER_ID, AMOUNT) VALUES
(102, '2009-10-08 00:00:00', 3, 3000.00),
(100, '2009-10-08 00:00:00', 3, 1500.00),
(101, '2009-11-20 00:00:00', 2, 1560.00),
(103, '2008-05-20 00:00:00', 4, 2060.00);

Select * from orders
Select * from customer 
use nit ;
select Name ,Age , Amount , Salary from orders,customer where customer.ID = orders.CUSTOMER_ID
 /*Inner join -- It reurn all the matching rows  .
 left join - it return all the rows from the left tabkes and matching rows from the right tables s
 right join it return all the rows from the right tables and matching rows from the left table 
 full join - it retuen all the rows from both the tables 
 cross join  it return all the possible combinations 
 self join -- it join the all table within itself 
 */
  select * from orders ;
 select * from customer ; 
 --                          Inner join -- it return all the common rows between two or more tables 
 Select Id , Name , Age ,Address  from customer 
 inner join orders on CUSTOMER.id = orders.CUSTOMER_ID
  left join -- it return all the rows from the left tables and all display the matching roos from the right tables .. 
  use nit ;
  Select Id , name , AMOUNT , DATE from customer left join orders on customer.id = orders.customer_id 
  
  Right Join 
    Select Id , name , AMOUNT , DATE from customer right join orders on customer.id = orders.customer_id ;
SELECT customer.ID, customer.NAME, orders.AMOUNT, orders.DATE
FROM customer
LEFT JOIN orders ON customer.ID = orders.CUSTOMER_ID

UNION

SELECT customer.ID, customer.NAME, orders.AMOUNT, orders.DATE
FROM customer
RIGHT JOIN orders ON customer.ID = orders.CUSTOMER_ID; 
-- Self join --
SELECT  a.ID, b.NAME, a.SALARY      FROM CUSTOMER a, CUSTOMER b      WHERE a.SALARY < b.SALARY;
 SELECT  ID, NAME, AMOUNT, DATE      FROM CUSTOMER, ORDERS;

