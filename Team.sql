use gth_hub;
select * from team;
/*
Create database name as team and create the following table in it
Table description
Column Name
Data Type
Constraints
Pid
Int
Primary key auto increment
Name
Varchar
Not null
Email
Varchar
Not null
Contact
Varchar
Not null
State
Varchar
Not null
Run record
Int
Not null
Salary
Int
Not null
Insert the 20 player’s record in table and perform following task
Q1. WASQL Query show the player records whose state is Maharashtra
*/
 select * from team where state='MH';
 
/* 2.Q.  WASQL Query show the player records whose state is Maharashtra, Punjab, gujrat and Delhi?*/
select * from team where state in ('MH','PB','GJ','DL');

/*3.Q. WASQL Query show the player record run wise in descending order*/
 select * from team order by run_record DESC;
 
/*Q4. WASQL Query shows the player record whose state is Maharashtra and run record greater than 2000*/
 select * from team where state='MH' and run_record>2000;

/*Q5.WASQL Query shows the player record whose state is Maharashtra and run record between 2000 to 20000 and display player record in descending order*/
select * from team where state='MH' and run_record between 2000 and 20000 order by pid DESC;

/*Q6  WASQL Query show the player record whose state is not Maharashtra*/
 select * from team where state!='MH';
 
 /*Q7.  WASQL Query show the player record whose state is not maharastra, Punjab and Delhi*/
select * from team where not state IN('MH','PB' 'DL');

/*Q8. WASQL Query show the player record whose run record and salary is greater arranges player record in descending order.*/
select * from team where run_record>2500 and salary >15000 order by salary Desc;

 
 /*  Group Function Question */
 /*Q1. WASQL Query to count the number of employee from table.*/
 select count(*) from team;

 /*Q2. WASQL Query to count the employee whose salary between 15000 to 20000*/
 select * from team where salary between 15000 and 20000;
 
/*Q3. WASQL Query to count the employee whose salary greater than 3000 and less than 20000 and whose name is not a Vaibhav and Amit.*/
select * from team where run_record>2500 and salary >15000 and name Not in('Vaibhav', 'Amit');

/*Q4. WASQL Query to calculate the sum of all employee salary from employee table.*/
select sum(pid) from team;

/*Q5. WASQL Query to calculate the sum of employee except the ramesh and vaibhav*/
select sum(pid) from team where name not in('ramesh' 'vaibhav');

/*Q6. WASQL Query to find the minimum salary of employee*/
select min(salary) from team;

/*Q7. WASQL Query to find the maximum salary of employee from employee table.*/
select max(salary) from team;

/*Q8. WASQL Query to find the average salary of employee from employee table.*/
select avg(salary) from team;


 







