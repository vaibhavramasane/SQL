/* Create the database name as Billing and create the Following table in billing database
Table name: Product
*/

/*Q1.WASQL Query to search product name whose name contain b letter any where*/
select name from Bproduct where name like '%b%';

/*Q2. WASQL Query to search product name whose name ends with nia and price greater than 10*/
 select name from bproduct where name like '%nia' and price>5000;

/*Q3. WALSQL query to search product name whose name Start with p and price greater than equal 5000 and less than equal 31000*/
 select name from bproduct where name like 'p%' and price>5000 and price<31000;


/*Q4.WALSQL Query count the total number of product whose brand is HP*/
 select count(*) from bproduct where brand='HP';

/*Q5. WASQL Query count the total number of product Whose price greater than 10 and less than 100 and  name start with h*/
select count(*) from bproduct where price>10000 and price <=100000 and name like 'h%';

/*Q6. WASQL query to count the sum of all product prices*/
 select count(price) from bproduct;


/*Q7.WASQL Query to calculate the avg () price of product*/
select avg(price) from bproduct;


/*Q8.WASQL query to show the min () and max () price of product*/
select min(price),max(price) from bproduct;


/*Q9.WASQL query to display the product details whose brand is Noise and HP*/
select * from bproduct where Brand='Noise' and 'HP';

/*Q10. WASQL query to display the product detail whose description contain electronic inch*/
select *from bproduct where des like '%inch%';

/*Q11. WALSQL query to display the product information whose price not between 10000 and 40000*/
 select * from bproduct where not price between 10000 and 40000;
