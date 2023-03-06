
use employees;
select distinct title from titles;

select distinct first_name, last_name
from employees.employees where last_name like '%E' and last_name like 'E%'
order by last_name,first_name;

select distinct last_name from employees.employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by count(*) desc;

select gender, count(*) as count
from employees
where first_name in ('irena','vidya','maya')
group by gender;


