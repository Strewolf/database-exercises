use employees;
select first_name, last_name
from employees
where hire_date  in (
    select hire_date
    from employees
    where emp_no = 101010
    );