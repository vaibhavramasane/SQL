use gth_hub;
select * from emp;


/*1.Write a SQL query to insert a new employee with emp_id 8 emp_name 'Rohan', department 'IT', salary 30000, and join_date '2024-02-01'.*/
insert into emp values((8,'Aditya','CS',30000,'2026-08-04'));


/*2.Write a SQL query to insert two new employees:
 (9, 'Sneha', 'HR', 26000, '2023-11-10')
 (10, 'Vikram', 'Finance', 38000, '2022-08-18').*/
 
  insert into emp values((9,'Sneha','HR',26000,'2023-11-10'),(10,'Vikram','Finance',38000,'2022-08-18'));


/*3.Write a SQL query to insert a new employee with emp_id 11, emp_name 'Anjali', department 'Marketing', salary 42000, and today’s date as join_date.*/
insert into emp values(11,'Anjali','Marketing',42000,'2026-02-20');


/*4.Write a SQL query to insert a new employee whose salary is greater than 50000.*/
Insert into emp values(12,'vaibhav','CS',60000,'2026-04-12');


/*5.Write a SQL query to insert a record for emp_id 13, emp_name 'Rahul', department 'IT', salary 35000, and join_date '2023-06-25'.*/
insert into emp values(13,'Rahul','IT',35000,'2023-06-25');

/*6.Write a SQL query to display  all records from the Employee table.*/
Select * from emp;


/*7.Write a SQL queries to display only emp_name and salary of all employees.*/
select empname,sal from emp;


/*8.Write a SQL query to display employees working in the 'IT' department.*/
select * from emp where department='IT';


/*9.Write a SQL query to display employees whose salary is greater than 30000.*/
select * from emp where sal >30000;

/*10.Write a SQL query to display employees who joined after '2022-01-01'.*/
 select * from emp where join_date>'2020-01-01';

/*11.Write a SQL query to display distinct department names from the Employee table.*/
select distinct department from employee;

/*12.Write a SQL query to display employees whose salary is between 25000 and 40000.*/
select * from emp where sal between 25000 and 40000;

/*13.Write a SQL query to display employees whose salary is not equal to 35000.*/
select * from emp where sal!=35000;

/*14.Write a SQL query to display employees who work in 'HR' or 'IT' department.*/
select * from emp where department In('HR','IT');

/*15.Write a SQL query to display employees whose name starts with letter 'P'.*/
select * from emp where empname like 'P%';

/*16.Write a SQL query to display employees whose salary is greater than or equal to 30000 and department is 'IT'.*/
select * from emp where sal >= 30000 and department='IT';

/*17.Write a SQL query to display employees whose salary is less than 30000 or department is 'Finance'.*/
select * from emp where sal<=30000 or department='finance';

/*18.Write a SQL query to display employees whose name contains the letter 'a'.*/
Select * from emp where empname like '%a%';

/*19.Write a SQL query to increase salary of all employees in the 'IT' department by 2000.*/
update emp set sal = sal + 2000 where department = 'IT';

/*20.Write a SQL query to update department of employee with emp_id 3 to 'HR'.*/
update emp set department='HR' where empid=3;

-- 21.Write a SQL query to update salary of employee named 'Amit' to 30000.*/
update emp set sal=30000 where empname ='Amit';

-- 22.Write a SQL query to change join_date of employee with emp_id 5 to '2024-01-01'.*/
update emp set join_date='2024-01-01' where empid=5;

-- 23.Write a SQL query to increase salary by 10% for employees in 'HR' department.*/
update emp set sal= 26260 where department ='HR';
select * from emp;

-- 24.Write a SQL query to delete employee whose emp_id is 2.*/
delete from emp where empid=2;

-- 25.Write a SQL query to delete employees from 'Marketing' department.*/

-- 26.Write a SQL query to delete employees whose salary is less than 25000.*/


-- 27.Write a SQL query to find the total salary of all employees.*/


-- 28.Write a SQL query to find the average salary of employees in 'IT' department.*/


-- 29.Write a SQL query to find the maximum and minimum salary from the Employee table.*/


-- 30.Write a SQL query to display all employees ordered by salary in descending order.*/

31.Write a SQL query to display employees whose salary is greater than or equal to 30000 and less than or equal to 50000, ordered by salary ascending.*/


32.Write a SQL query to display employees whose department is not 'HR' and salary is greater than 25000.*/


33.Write a SQL query to display employees whose name does not start with 'A' and salary is greater than 30000.*/


34.Write a SQL query to display employees who joined between '2021-01-01' and '2023-12-31', ordered by join_date descending.*/


35.Write a SQL query to display employees whose salary is divisible by 5000.*/


36.Write a SQL query to increase salary by 15% for employees who joined before '2022-01-01'.*/


37.Write a SQL query to decrease salary by 5% for employees whose department is 'Finance'.*/


38.Write a SQL query to update the department to 'Senior IT' for employees whose salary is greater than or equal to 45000.*/


39.Write a SQL query to update salary to 30000 for employees whose salary is less than 25000.*/


40.Write a SQL query to delete employees who joined before '2021-01-01'.*/


41.Write a SQL query to delete employees whose department is not 'IT' and salary is less than 28000.*/


42.Write a SQL query to display the total salary department-wise using GROUP BY.*/


43.Write a SQL query to display the average salary department-wise and order the result by average salary descending.*/


44.Write a SQL query to display the count of employees in each department.*/


45.Write a SQL query to display departments having more than 2 employees using GROUP BY and HAVING.*/


46.Write a SQL query to display the maximum salary department-wise.*/


47.Write a SQL query to display departments where the minimum salary is greater than 30000.*/


48.Write a SQL query to display employees whose name contains exactly 4 characters.*/


49.Write a SQL query to display employees whose name ends with a vowel.*/


50.Write a SQL query to display employees ordered first by department ascending and then by salary descending.*/




