/*-- Parent Table
CREATE TABLE project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    location VARCHAR(100),
    budget DECIMAL(12,2)
);
 
-- Child Table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    designation VARCHAR(100),
    salary DECIMAL(10,2),
    manager_id INT,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES project(project_id));

*/
use join_data;

/*1. All employees with project details (even if not assigned)*/
select e.eid,e.ename,e.designation,e.salary,p.pid,p.pname,p.location,p.budget from employee e left join project p on e.pid = p.pid;

/*2. Employees not assigned to any project*/
select * from employee where pid is null;

/*3. All employees with project info*/
select e.eid,e.ename,e.designation,e.salary,p.pid,p.pname,p.location,p.budget from employee e left join project p on e.pid = p.pid;

/*4. Employees without projects*/
select e.* from employee e left join project p on e.pid=p.pid  where p.pid is null;

/*5. Employee count including unassigned*/
SELECT COUNT(*) AS TOTAL_EMP FROM EMPLOYEE;

/* 6. All projects and employees*/
SELECT e.ename,p.pname FROM employee e left join project p on e.pid = p.pid 
UNION
SELECT e.ename,p.pname FROM employee e right join project p on e.pid = p.pid ;


 /*7. Combined data with salary*/
 select e.ename,e.salary,p.pname ,p.location from employee e inner join project p on e.pid = p.pid;
 
 /*8. Employee with their Manager*/
 SELECT e.ename as employee, m.ename as manager from employee e inner join employee m on e.manager_id = m.eid;
 
 /*9. Employees working under same manager*/
 select e.ename as employee,m.ename as manager from employee e inner join employee m on e.manager_id = m.eid order by m.ename;
 
/*10. Manager and total team salary*/
SELECT m.ename AS Manager,SUM(e.salary) AS total_team_salary FROM employee e INNER JOIN employee m ON e.manager_id = m.eid GROUP BY m.ename;


/*11. All possible combinations*/
select * from employee inner join project p on 1=1;


/*12. Count total combinations*/
select count(*) from employee inner join project p on 1=1;

/*13. Cartesian join with condition (filter after join)*/

select * from employee e inner join project p on 1=1 where e.salary >30000;

