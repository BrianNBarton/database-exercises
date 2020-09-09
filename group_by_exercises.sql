USE employees;

SELECT DISTINCT title
FROM employees.titles;


SELECT last_name
FROM employees.employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name;


SELECT last_name
from employees.employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
group by last_name
order by count(*) desc;


SELECT COUNT(*), gender FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
group by gender;


SELECT COUNT(*) AS '# of occurances', gender FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
group by gender;