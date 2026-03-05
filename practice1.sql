use gth_hub;
select * from employee;
-- 1️⃣ Write a query to display all employees from the 'IT' department.
select * from employee where department='IT';

-- 2️⃣ Write a query to display employees whose salary is between 25000 and 50000.
select * from employee where sal between 25000 and 50000;

-- 3️⃣ Write a query to display employees whose name contains exactly 4 characters.
SELECT *  FROM employee WHERE ename LIKE '____';

-- 4️⃣ Write a query to display employees who's age >25;.
select * from employee where age>25;

-- 5️⃣ Write a query to find the total salary of all employees.
select max(sal) from employee;

-- 6️⃣ Write a query to display department-wise average salary.
select department,avg(sal) from employee group by department;

-- 7️⃣ Write a query to display the second highest salary.
SELECT MAX(sal) FROM employee WHERE sal < (SELECT MAX(sal) FROM employee);

-- 8️⃣ Write a query to count number of employees in each department.
select department,count(*) from employee group by department;

-- 9️⃣ Write a query to display employees earning more than the average salary.
SELECT * FROM employee WHERE sal > (SELECT AVG(sal) FROM employee);

-- 10.write a query to display min salary
select  min(sal) from  employee;