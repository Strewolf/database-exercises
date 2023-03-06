show databases;

select * from employees.employees where (first_name ='irena' or first_name = 'vidya' or first_name = 'maya') and  gender ='M';

select * from employees.employees where last_name like 'E%';

select * from employees.employees where last_name like '%q%';

select * from employees.employees where last_name like 'E%' or last_name like '%E';

select * from employees.employees where last_name like 'E%' and last_name like '%E';

select * from employees.employees where last_name like '%q%' and last_name not like '%qu%';