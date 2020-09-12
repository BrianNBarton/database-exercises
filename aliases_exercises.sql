USE employees;


SELECT CONCAT(emp_no, ' x- ', last_name, ',','full_name', birth_date AS 'DOB') AS full_name
from employees.employees
limit 10;

SELECT CONCAT(emp_no, ' - ', last_name);