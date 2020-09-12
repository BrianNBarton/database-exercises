USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT *
FROM employees.employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);




# Find all the titles held by all employees with the first name Aamod
SELECT title, COUNT(title)
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT title, COUNT(title)
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

# Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees.employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
)
  AND gender = 'F';


SELECT first_name, last_name
FROM employees.employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE TO_DATE > NOW()
)
    AND gender = 'F';




