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
 select empname from employee where deptid IN (select deptid from department where deptname ='HR');
 
 
-- 3.Find employees whose salary is greater than the minimum salary in the Employee table.
select * from employee where salary > (select  min(salary) from employee);

-- 4.Display employees whose department location is 'Mumbai'.
-- joins

-- 5.Find employees who are working on any project.
select * from employee where empid IN(select empid from project);


-- 6.Display employees whose salary is equal to the maximum salary in the Employee table.
select * from employee where salary = (select max(salary) from employee);

-- 7.Find employees who joined in the same year as employee with emp_id = 3.
select empname from employee where joinyear = (select joinyear from employee where empid=3);

-- 8.Display employees whose salary is greater than the salary of employee 'Rahul'.


-- 9.Find employees whose department id exists in the Department table.


-- 10.Display employees who are working on a project with budget greater than 50000.


-- 11.Write a query to display employees whose salary is greater than the average salary of their department.


-- 12.Find departments where no employee is assigned.


-- 13.Display employees who earn more than the average salary of employees in 'IT' department.


-- 14.Find employees who are working on the project with the highest budget.


-- 15Display employees whose salary is higher than at least one employee in department 2.


-- 16.Find employees whose salary is less than the maximum salary in their department.


-- 17.Display employees who work in departments located in the same location as the 'Sales' department.


Find employees who are not assigned to any project.


Display departments where average salary of employees is greater than 60000.


Find employees whose salary is greater than all employees in department 3.

Find employees whose salary is greater than the average salary of employees working on projects.


Display employees who are working on more expensive projects than the average project budget.


Find the department with the highest average salary and display employees of that department.


Display employees whose salary is greater than the salary of every employee in the HR department.


Find employees who work on projects where the budget is greater than the average budget of all projects.


Display employees who belong to departments where more than 3 employees work.


Find employees whose salary is greater than the average salary of employees who joined after 2020.


Display employees working in departments where total project budget exceeds 200000.


Find employees whose salary is greater than the maximum salary of employees working in 'Pune' location departments.


Display employees who are working on projects handled by employees earning more than 70000.
