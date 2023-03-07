show databases;

select * from employees.employees where (first_name ='irena' or first_name = 'vidya' or first_name = 'maya') order by last_name asc , first_name asc;

select * from employees.employees where last_name like 'E%' order by emp_no desc;

select * from employees.employees where last_name like '%q%';

select *
from employees.employees
where last_name
like 'E%'
or last_name
like '%E';

select concat(first_name,' ',last_name)
as fullname
from employees.employees
where last_name
like 'E%'
and last_name
like '%E';

select *
from employees.employees
where last_name
like '%q%'
and last_name
not like '%qu%';

select  concat(first_name,' ',last_name,' has worked in the company for ', year(now()) - year(hire_date),' years') as fullname
from employees.employees where year(hire_date) between 1990 and 2000
and month(birth_date) = 12
and day(birth_date)= 25
order by birth_date asc, hire_date desc;

