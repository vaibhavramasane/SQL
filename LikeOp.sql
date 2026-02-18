
use gth_hub;
select * from employee;
/*1.Find employees whose name starts with the letter 'A'.*/
select * from employee where ename like 'A%';

/*2.Retrieve employees whose name ends with the letter 't'.*/
Select * from employee where ename like '%t';

/*3.Find employees whose name contains the letter 'm' anywhere.*/
Select * from employee where ename like '%m%' ;

/*4.Get employees whose name starts with 'a' and ends with 't'.*/
select * from employee where ename like 'a%t';

/*5.Retrieve employees whose department starts with 'I'.*/
select * from employee where department like 'I%';

/* 6.Find employees whose name contains 'om' and salary is equal to 20000.*/
select * from employee where ename like '%om%' and sal>20000;

/*7.Get employees whose name has exactly 5 characters and age is less than 23.*/
select * from employee where ename like '_____' and age<23;

/*8.Retrieve employees whose department contains 'IT' and age is between 21 and 24.*/
select * from employee where department like '%IT%' and age between 21 and 24;

/*9.Find employees whose name starts with 'a' or salary is greater than 25000.*/
select * from employee where ename like 'a%' or sal>25000;

/* 10.Find employees whose name contains 'a' and salary is not equal to 30000.*/
select * from employee where ename like '%a%' and sal!=30000;

