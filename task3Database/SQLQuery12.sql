--•	Create a new database named "CompanyDB."
create database CompanyDB

----use CompanyDB
--•	Create a schema named "Sales" within the "CompanyDB" database.
create schema Sales
--•	Create a table named "employees" with columns: employee_id (INT), first_name (VARCHAR), last_name (VARCHAR), and salary (DECIMAL) within the "Sales" schema.
CREATE SEQUENCE i
    AS INT
    START WITH 1
    INCREMENT BY 1;

create table Sales.employees ( id int  DEFAULT (NEXT VALUE FOR i),firstname varchar(20),lastname varchar(20),
salary DECIMAL)
--•	Alter the "employees" table to add a new column named "hire_date" with the data type DATE.
alter table Sales.employees add  hire_date date
--•	Select all columns from the "employees" table.
select * from Sales.employees
--•	Retrieve only the "first_name" and "last_name" columns from the "employees" table.
select firstname,lastname from Sales.employees
--•	Retrieve “full name” as a one column from "first_name" and "last_name" columns from the "employees" table.
select firstname+' ' +lastname as 'fullname' from Sales.employees
--•	Show the average salary of all employees.
select id ,AVG(salary) from Sales.employees group by id
--•	Select employees whose salary is greater than 50000.
select * from Sales.employees where salary>50000
--•	Retrieve employees hired in the year 2020.
select *from Sales.employees
--where YEAR(hire_date) = 2020;

--•	List employees whose last names start with 'S.'
select lastname from Sales.employees where lastname like 'S%'
--•	Display the top 10 highest-paid employees.
select top 10 * from   Sales.employees order by  salary ;

--•	Find employees with salaries between 40000 and 60000.
 select *from Sales.employees
where salary between 4000 and 6000;
--•	Show employees with names containing the substring 'man.'
select *
from Sales.employees
where firstname LIKE '%man%';

--•	Display employees with a NULL value in the "hire_date" column.
select *from Sales.employees
where hire_date = NULL;
--•	Select employees with a salary in the set (40000, 45000, 50000).
 select *from Sales.employees
where salary in(40000, 45000, 50000);
--•	Retrieve employees hired between '2020-01-01' and '2021-01-01.'
 select *from Sales.employees
where hire_date between '2020-01-01' and '2021-01-01';
--•	List employees with salaries in descending order.
 select *from Sales.employees order by salary DESC
 --•	Show the first 5 employees ordered by "last_name" in ascending order.
 SELECT TOP 5 *
FROM Sales.employees
ORDER BY lastname ASC;
--•	Display employees with a salary greater than 55000 and hired in 2020.
 select *from Sales.employees where salary>55000 and YEAR(hire_date) = 2020 ;
 --•	Select employees whose first name is 'John' or 'Jane.'
 select *from Sales.employees where firstname='John' or firstname='Jane'
 --•	List employees with a salary less than or equal to 55000 and a hire date after '2022-01-01.'
 select *from Sales.employees where salary<=55000 and hire_date > '2022-01-01' ;
 --•	Retrieve employees with a salary greater than the average salary.
select *from Sales.employees where salary > (select AVG(salary) from Sales.employees );
--•	•	List employees hired after '2021-01-01' in alphabetical order.
select * from Sales.employees where hire_date > '2021-01-01' order by lastname ASC, firstname ASC;
--•	Retrieve employees with a salary greater than 50000 and last name not starting with 'A.'
select *from Sales.employees where  salary > 50000  and  lastname not like 'A%';
  --•	Display employees with a salary that is not NULL.
  select *from Sales.employees where salary  != NULL;
--•	Show employees with names containing 'e' or 'i' and a salary greater than 45000.
select *from Sales.employees where (firstname LIKE  '%e%' OR firstname LIKE '%i%' OR lastname LIKE '%e%' OR lastname LIKE '%i%') AND salary > 45000;


