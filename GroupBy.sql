use gth_hub;
select * from employee;

/*1.Count the number of employees in each department.*/
select department,count(*) from employee group by department;

/*2.Calculate the total salary paid in each department.*/
select department,sum(sal) from employee group by department;

/*3.Find the average salary in each department.*/
select department,avg(sal) from employee group by department;

/*4.Find the maximum salary in each department.*/
select department,max(sal) from employee group by department;

/*5.Find the minimum age in each department.*/
select department,min(age) from employee group by department;

/*6.Count how many employees are there for each age.*/
select age,count(age) from employee group by age;

/*7.Find the total salary of employees for each age.*/
select age,sum(sal) from employee group by age;

/*8.Count how many employees in each department have salary greater than 25000.*/
select department,count(*) from employee where sal>25000 group by department;

/*9.Find the average salary of employees in each department where age is greater than 23.*/
select department,avg(sal) from employee where age>23 group by department;

/* 10.Find departments having more than 2 employees.*/
select department,count(*) from employee group by department having count(*) >2;