create database Keshav ;
use Keshav ;
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE,
    department_id INT
);
CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments (id, department_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

INSERT INTO employees (name, department, salary, hire_date, department_id) VALUES
('Amit', 'IT', 70000, '2022-05-10', 1),
('Ravi', 'HR', 50000, '2021-07-15', 2),
('Priya', 'Finance', 65000, '2020-03-25', 3),
('Suman', 'Marketing', 60000, '2023-01-10', 4),
('Karan', 'IT', 80000, '2021-09-05', 1),
('Neha', 'HR', 55000, '2022-11-20', 2),
('Rahul', 'Finance', 75000, '2023-06-30', 3),
('Rohit', 'IT', 90000, '2019-02-18', 1),
('Simran', 'Marketing', 62000, '2020-12-14', 4),
('Anjali', 'IT', 72000, '2022-08-22', 1);




use Keshav ;
Select * from   departments  ;
-- . Basic Queries
-- Q1: Sabhi employees ka data fetch karo
select * from Employees ;
-- Q3: salary > 50000 wale employees ko fetch karo 
Select  salary from employees  where salary > 50000
-- Q4: IT department ke employees ka data lao 

Select * from employees where department = 'IT'
-- Q5: Unique departments ka naam batao
Select distinct department from  employees ;
-- Q7: Top 3 highest paid employees ka data fetch karo  
select salary from employees order by  salary DESC limit 5 ;
-- Q8: 5th highest salary wale employee ka data fetch karo
select salary from employees order by salary  desc  limit 1 offset 4
-- Q8: 2th highest salary wale employee ka data fetch karo
Select salary from employees order by salary desc limit 1 offset 1 ;

SELECT salary FROM employees ORDER BY salary DESC  

-- Aggregation (COUNT, SUM, AVG, MAX, MIN)
-- Q9: Total employees ka count batao
select count(name) from employees ;
--  total employees in the table are 70
-- 10: IT department me kitne employees hai?
select * from employees 
select count(*) from employees where department = 'IT'
-- Q11: Employees ki average salary nikalni hai
-- Q12: Sabse jyada salary aur sabse kam salary nikalni hai
Select Max(salary) as Highest_salary , min(salary) as Lowest_salary from employees ;






--  4. Group By & Having

-- Q13: Har department me kitne employees hai?
select department , count(*) from employees   group by department ;


-- Q14: Aise departments dikhao jisme 5 ya usse jyada employees hai
select department , count(*) as Total_employees  from employees group by department having Total_employees >=5     


                                         -- Joins 
						
-- Q15: Employees ka department name bhi fetch karna hai (INNER JOIN) 
SELECT e.name, e.salary, d.department_name 
FROM employees e  
INNER JOIN departments d ON e.department_id = d.id;



-- Q16: Aise employees dikhana hai jinke paas department assign nahi hai (LEFT JOIN)

select e.name , e.salary ,d.department_name 
from employees e 
left join departments d on e.department_id = d.id 
where d.department_name is null ;

--  Q17 : 2nd highest salary wale employee ka naam nikalna hai 
Select name , salary from employees where salary = (Select distinct salary from employees order by salary desc limit 1 offset 1 )



-- Q18 : Wo employees dikhane hai jinki salary average salary se jyada hai
select name , salary from employees 
where salary > (Select Avg(Salary) from employees);

--  7. String Functions
 -- Q19: Sabhi employees ka naam uppercase me dikhana hai
select upper(name) from employees ;



--  Q20: Sabhi employees ke naam ka length count karo
select name , length(name) from employees ;



--   8. Date & Time Functions
-- Q21: Aise employees dikhane hai jo last 1 saal me hire hue hai
SELECT * FROM employees WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- Q22: Employees ki joining date ko YYYY-MM format me dikhana hai
SELECT name, DATE_FORMAT(hire_date, '%Y-%m') FROM employees;

--    9. Window Functions

-- Q23: Har employee ka salary rank nikalna hai
SELECT name, salary, RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- Q24: Department-wise highest paid employee ka data dikhana hai


SELECT name, department, salary
FROM (
    SELECT name, department, salary,
           RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rnk
    FROM employees
) t WHERE rnk = 1;




Select * from employees ;
select * from departments









































