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


