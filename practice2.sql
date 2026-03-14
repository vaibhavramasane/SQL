use gth_hub;
/*Write a SQL query to create a table Employee with columns:
id
name
salary
department */
create table employe(eid int primary key, ename varchar(200),esalary int,edepart varchar(300));


-- Insert 5 records into the Employee table.
insert into employe values(1,'vaibhav',20000,'CS'),(2,'Om',30000,'IT');
insert into employe values(3,'shri',50000,'IT'),(4,'onkar',60000,'CS'),(5,'kartik',70000,'IT');


-- Write a query to display all records from the Employee table.
select * from employe;


-- Write a query to display only the employee names.
select ename from employe;

-- Write a query to display employees whose salary is greater than 30000.
select * from employe where esalary >30000;


-- Increase the salary of employee id = 2 to 45000.
update employe set esalary =45000 where eid=2;

-- delete the employee whose id = 4.
delete from employe where eid =4;

-- Write a query to count total number of employees.
select count(*) from employe;

-- Write a query to display the highest salary from the Employee table.
select max(esalary) from employe;

-- Write a query to display employees from 'IT' department.
select edepart from  employe group by edepart ;

-- display employees sorted by salary in descending order.
select esalary from employe group by esalary Desc;

-- Display total salary of each department.
select count(esalary) from employe group by edepart;

-- Write a query to display table structure.
desc employe;




