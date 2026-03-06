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
SELECT e.empname FROM Employee e JOIN Department d ON e.deptid = d.deptid WHERE d.location = 'Mumbai';

-- 5.Find employees who are working on any project.
select * from employee where empid IN(select empid from project);

-- 6.Display employees whose salary is equal to the maximum salary in the Employee table.
select * from employee where salary = (select max(salary) from employee);

-- 7.Find employees who joined in the same year as employee with emp_id = 3.
select empname from employee where joinyear = (select joinyear from employee where empid=3);

-- 8.Display employees whose salary is greater than the salary of employee 'Rahul'.
select empname,salary from employee where salary > (select salary from employee where empname='Rahul');

-- 9.Find employees whose department id exists in the Department table.
select empname from employee where deptid IN(select deptid from department);

-- 10.Display employees who are working on a project with budget greater than 50000.
select e.empname, p.pname from Employee e join Project p on e.empid = p.empid where p.budget > 50000;

-- 11.Write a query to display employees whose salary is greater than the average salary of their department.

select empname,salary from employee e where salary > (select avg(salary) from employee where deptid = e.deptid);

-- 12.Find departments where no employee is assigned.
select deptname from department where deptid not in(select deptid from employee);

-- 13.Display employees who earn more than the average salary of employees in 'IT' department.
SELECT empname, salary FROM employee WHERE salary > ( SELECT AVG(salary) FROM employee WHERE deptid = (SELECT deptid FROM department WHERE deptname = 'IT'));


-- 14.Find employees who are working on the project with the highest budget.
SELECT empname FROM Employee WHERE empid IN (SELECT empid FROM Project WHERE budget = (SELECT MAX(budget) FROM Project));

-- 15Display employees whose salary is higher than at least one employee in department 2.


-- 16.Find employees whose salary is less than the maximum salary in their department.


-- 17.Display employees who work in departments located in the same location as the 'Sales' department.


-- 18.Find employees who are not assigned to any project.


-- 19.Display departments where average salary of employees is greater than 60000.


-- 20.Find employees whose salary is greater than all employees in department 3.

-- 21.Find employees whose salary is greater than the average salary of employees working on projects.


-- 22.Display employees who are working on more expensive projects than the average project budget.


-- 23.Find the department with the highest average salary and display employees of that department.


-- 24.Display employees whose salary is greater than the salary of every employee in the HR department.


-- 25.Find employees who work on projects where the budget is greater than the average budget of all projects.


-- 26.Display employees who belong to departments where more than 3 employees work.


-- 27.Find employees whose salary is greater than the average salary of employees who joined after 2020.


-- 28.Display employees working in departments where total project budget exceeds 200000.


-- 29.Find employees whose salary is greater than the maximum salary of employees working in 'Pune' location departments.


-- 30.Display employees who are working on projects handled by employees earning more than 70000.
