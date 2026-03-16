use gth_hub;

-- 1. Find All Records
select * from emp;

-- 2. Display Employees With Salary Greater Than 50000
select * from emp where sal>50000;

-- 3. Sort Employees by Salary
select * from emp order by sal desc;

-- 4. Count Number of Employees
select count(*)  from emp;

-- 5. Find Maximum Salary
select max(sal) from emp;

-- 6. Find Minimum Salary
select min(sal) from emp;

-- 7. Find Average Salary
select avg(sal) from emp;

-- 8. Find Total Salary
select sum(sal) from emp;

-- 9. Find Employees Whose Name Starts With 'A'
select * from empname where ename like 'A%';

-- 10. Display total salary 
select sum(sal) from emp;