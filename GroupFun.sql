use gth_hub;
select * from employee;
/*1.Find the total number of employees in the Employee table.*/
select count(eid) from employee;

/*2.Calculate the total salary of all employees.*/
select sum(sal) from employee;

/*3.Find the average salary of employees.*/
select avg(sal) from employee;

/*4.Find the highest salary in the company.*/
select max(sal) from employee;

/*5.Find the lowest salary in the company.*/
select min(sal) from employee;

/*6.Count how many employees have salary greater than 25000.*/
Select count(*) from employee group by sal>25000;

/*7.Calculate the total salary paid in each department.*/
select department,sum(sal) from employee group by department;

/*8.Find the average salary in each department.*/
select department,avg(sal) from employee group by department;

/*9.Find the highest salary in each department.*/
select department,max(sal) from employee group by department;

/*10.Find the minimum age of employees.*/
select min(age) from employee;
