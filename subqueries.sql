/*1.Department Table :-
Column Name
Data Type
Description
dept_id
INT
Department ID
dept_name
VARCHAR
Department Name
location
VARCHAR
Department Location


2.Employee Table :- 
Column Name
Data Type
Description
emp_id
INT
Employee ID
emp_name
VARCHAR
Employee Name
dept_id
INT
Department ID
salary
INT
Employee Salary
join_year
INT
Year of Joining

3.  Project Table :- 
Column Name
Data Type
Description
project_id
INT
Project ID
project_name
VARCHAR
Project Name
emp_id
INT
Employee working on project
budget
INT
Project Budget

Subquery :- 
*/
use onlineexamdb;

-- 1.Write a query to find employees whose salary is greater than the average salary of all employees.
select * from employee where salary > (select avg(salary) from employee);

-- 2.Write a query to display employees who work in the department named 'HR'.


-- 3.Find employees whose salary is greater than the minimum salary in the Employee table.


-- 4.Display employees whose department location is 'Mumbai'.


-- 5.Find employees who are working on any project.


-- 6.Display employees whose salary is equal to the maximum salary in the Employee table.


-- 7.Find employees who joined in the same year as employee with emp_id = 3.


-- 8.Display employees whose salary is greater than the salary of employee 'Rahul'.


-- 9.Find employees whose department id exists in the Department table.


-- 10.Display employees who are working on a project with budget greater than 50000.
