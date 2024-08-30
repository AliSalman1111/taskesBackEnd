----create database CompanyDB
----use CompanyDB
--create schema Sales

CREATE SEQUENCE i
    AS INT
    START WITH 1
    INCREMENT BY 1;

create table Sales.employees ( id int  DEFAULT (NEXT VALUE FOR i),firstname varchar(20),lastname varchar(20),
salary DECIMAL)

alter table Sales.employees add  hire_date date

select * from Sales.employees

select firstname,lastname from Sales.employees

select firstname+' ' +lastname as 'fullname' from Sales.employees

select id ,AVG(salary) from Sales.employees group by id

select * from Sales.employees where salary>50000

select *from Sales.employees
where YEAR(hire_date) = 2020;

select lastname from Sales.employees where lastname like 'S%'

select top 10 *
from   Sales.employees
ORDER BY salary ;

 select *from Sales.employees
where salary between 4000 and 6000;

select *
from Sales.employees
where firstname LIKE '%man%';


select *from Sales.employees
where hire_date = NULL;

 select *from Sales.employees
where salary in(40000, 45000, 50000);

 select *from Sales.employees
where hire_date between '2020-01-01' and '2021-01-01';

 select *from Sales.employees order by salary DESC

 SELECT TOP 5 *
FROM Sales.employees
ORDER BY lastname ASC;

 select *from Sales.employees where salary>55000 and YEAR(hire_date) = 2020 ;

 select *from Sales.employees where firstname='John' or firstname='Jane'

 select *from Sales.employees where salary<=55000 and hire_date > '2022-01-01' ;

select *from Sales.employees where salary > (select AVG(salary) from Sales.employees );

select * from Sales.employees where hire_date > '2021-01-01' order by lastname ASC, firstname ASC;

SELECT *
FROM Sales.employees
WHERE salary > 50000
  AND lastname NOT LIKE 'A%';

  select *from Sales.employees
where salary  != NULL;

select *from Sales.employees where (firstname LIKE  '%e%' OR firstname LIKE '%i%' OR lastname LIKE '%e%' OR lastname LIKE '%i%') AND salary > 45000;


