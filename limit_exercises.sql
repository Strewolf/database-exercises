use employees;
show index from employees.employees;
show create table employees.employees;

SELECT DISTINCT last_name FROM employees.employees order by last_name  desc limit 10;
select emp_no from salaries order by salary desc limit 45,5;
select * from employees.
employees