use employees;
select first_name, last_name
from employees
where hire_date  in (
    select hire_date
    from employees
    where emp_no = 101010
    );

select title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod');

select * from dept_manager
where gender = f;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    where gender = 'f' and to_date = '9999-01-01'
);

select * from dept_manager;