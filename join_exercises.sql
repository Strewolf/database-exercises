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

