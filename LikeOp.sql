
use gth_hub;
select * from employee;
/*1.Find employees whose name starts with the letter 'A'.
*/

select * from employee where ename like 'A%';


/*
2.Retrieve employees whose name ends with the letter 't'.
*/

Select * from employee where ename like '%t';

/*
3.Find employees whose name contains the letter 'm' anywhere.
*/

Select * from employee where ename like '%m%' ;


/*
4.Get employees whose name starts with 'a' and ends with 't'.
*/
select * from employee where ename like 'a%t';


/*
Retrieve employees whose department starts with 'I'.

*/
select * from employee where department like 'I%';

