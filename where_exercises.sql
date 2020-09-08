USE employees;


SELECT *
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya' ,'Maya');


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
WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%';


SELECT *
from employees.employees
WHERE last_name LIKE  '%q%' AND last_name NOT LIKE '%qu%';


