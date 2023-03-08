use join_test_db;
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);

insert into users ( name, email, role_id) values
('hannah', 'hannah@gmail.com', null),
('bobby','bobby@gmail.com', 2),
('sara','sara@gmail.com', 2),
('toby','toby@gmail.com', 2);
describe users;
select * from users;

select concat( users.name,'/',users.email) as username, roles.name as role_name
from users
join roles on roles.id = role_id;

select concat( users.name,'/',users.email) as username, roles.name as role_name
from users
left join roles on roles.id = role_id;

select concat( users.name,'/',users.email) as username, roles.name as role_name
from users
right join roles on roles.id = role_id;

show databases;
use employees;
show tables;
select * from dept_manager;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS manager_name
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
where dept_manager.to_date = '9999-01-01';

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS manager_name
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
where dept_manager.to_date = '9999-01-01' and  gender = 'F';


SELECT titles.title AS title, COUNT(*) AS total
FROM titles
         JOIN employees ON titles.emp_no = employees.emp_no
         JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
         JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE  departments.dept_name = 'customer service' and dept_emp.to_date = '9999-01-01' and titles.to_date = '9999-01-01'
GROUP BY titles.title;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS department_manager, salaries.salary as salary
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date = '9999-01-01' and salaries.to_date = '9999-01-01';

# SELECT departments.dept_name as department,
# CONCAT(employees.first_name, ' ', employees.last_name) AS Employee,
# CONCAT(dept_manager.first_name, ' ', dept_manager.last_name) AS manager
# from departments
# JOIN dept_manager  on departments.dept_no = dept_manager.dept_no
# JOIN dept_emp on departments.dept_no = dept_emp.dept_no
# JOIN employees on departments.dept_no = dept_emp.dept_no AND dept_manager.emp_no = employees.emp_no
# where dept_manager.to_date = '9999-01-01' and dept_emp.to_date = '9999-01-01';

select * from employees;
select * from departments;
select * from dept_manager;
select * from dept_emp;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name)  ,CONCAT(employees.first_name, ' ', employees.last_name) AS manager
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
where dept_manager.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(m.first_name, ' ', m.last_name) AS Manager
FROM employees AS e
         JOIN dept_emp AS de ON e.emp_no = de.emp_no AND de.to_date = '9999-01-01'
         JOIN departments AS d ON de.dept_no = d.dept_no
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no AND dm.to_date = '9999-01-01'
         JOIN employees AS m ON dm.emp_no = m.emp_no;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;


