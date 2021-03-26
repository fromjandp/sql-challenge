-- 1. List the following details of each employee, employee number, last name, first name, sex and salary.
--     (This code is using 'e' for employees table and 's' for salaries table)

SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        e.sex,
        s.salary
FROM employees as e
    LEFT JOIN salaries as s
    ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no;


-- 2. list first name, last name, and hire dat for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date 
    BETWEEN '1986-01-01' AND '1986-12-31';
    
    
    


