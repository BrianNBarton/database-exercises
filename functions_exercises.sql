USE employees;

SELECT * FROM employees.employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees.employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT * FROM employees.employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25' ORDER BY birth_date ASC, hire_date DESC;

SELECT *
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name;

SELECT *
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name, last_name;

SELECT *
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY last_name, first_name;



SELECT *
FROM employees.employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees.employees
WHERE hire_date
    BETWEEN '1990-01-01'
    AND '1999-12-31'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;



SELECT *
FROM employees.employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M';


SELECT *
FROM employees.employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';


SELECT *
FROM employees.employees
WHERE last_name LIKE 'E%E';



SELECT *
FROM employees.employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT birth_date
FROM employees.employees
WHERE birth_date LIKE '%-12-25';


SELECT *
FROM employees.employees
WHERE birth_date LIKE '%-12-25'
  AND hire_date LIKE '199%';


SELECT *
from employees.employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';



