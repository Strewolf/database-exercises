
use employees;
select distinct title from titles;
select distinct first_name, last_name
from employees.employees where last_name like '%E' and last_name like 'E%'
order by last_name,first_name;
