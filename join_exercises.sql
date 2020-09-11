
USE employees;
use join_test_db;

SELECT employees.departments.dept_name AS 'Department Name', CONCAT(emp.first_name, ' ', emp.last_name) AS 'Department Manager'
FROM employees.departments
         JOIN employees.dept_manager ON dept_manager.dept_no = departments.dept_no
         JOIN employees.employees AS emp ON emp.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY 'Department Name';


SELECT employees.departments.dept_name AS 'Department Name', CONCAT(emp.first_name, ' ', emp.last_name) AS 'Manager Name'
FROM employees.departments
         JOIN employees.dept_manager ON dept_manager.dept_no = departments.dept_no
         JOIN employees.employees AS emp ON emp.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND emp.gender = 'F'
ORDER BY 'Department Name';


SELECT titles.title AS Title, COUNT(dept_emp.emp_no) AS Count
FROM employees.departments
         JOIN employees.dept_emp ON dept_emp.dept_no = departments.dept_no
         JOIN employees.titles ON titles.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Customer Service' AND titles.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01'
GROUP BY Title;


SELECT titles.title AS Title, COUNT(dept_emp.emp_no) AS Count
FROM employees.titles
         JOIN employees.dept_emp ON dept_emp.emp_no = titles.emp_no
         JOIN employees.departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Customer Service' AND titles.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01'
GROUP BY Title;


SELECT departments.dept_name AS 'Department Name', CONCAT(emp.first_name, ' ', emp.last_name) AS 'Name', salaries.salary AS 'Salary'
FROM employees.departments
         JOIN employees.dept_manager AS dm ON departments.dept_no = dm.dept_no
         JOIN employees.employees AS emp ON emp.emp_no = dm.emp_no
         JOIN employees.salaries ON emp.emp_no = salaries.emp_no
WHERE dm.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%'
ORDER BY departments.dept_name;

#
SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(emp2.first_name, ' ', emp2.last_name)
FROM employees.employees as emp
         JOIN employees.dept_emp de on emp.emp_no = de.emp_no
         JOIN employees.departments d on de.dept_no = d.dept_no
         JOIN employees.dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees.employees emp2 on dm.emp_no = emp2.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';