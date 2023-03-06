show databases;

select * from employees.employees where (first_name ='irena' or first_name = 'vidya' or first_name = 'maya') order by last_name asc , first_name asc;

select * from employees.employees where last_name like 'E%' order by emp_no desc;

select * from employees.employees where last_name like '%q%';

select * from employees.employees where last_name like 'E%' or last_name like '%E';

select * from employees.employees where last_name like 'E%' and last_name like '%E';

select * from employees.employees where last_name like '%q%' and last_name not like '%qu%';


