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

SELECT first_name, 
       last_name, 
       hire_date
FROM employees
WHERE hire_date 
    BETWEEN '1986-01-01' AND '1986-12-31';
    
    
-- 3. List the manager of each department with the following information: 
--    department number, department name, the managee's employee number, last name, first name.  
--     (This code is using 'd' for the departments Table, 'dm' for the dept_manager Table, 'e' for the employees Table)

SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        e.last_name,
        e.first_name
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN employees AS e
        ON (dm.emp_no = e.emp_no);

-- 4. List the department of each employee with the following information:
--      employee number, last name, first name, department name
--      (This code is using 'd' for the departments Table, 'e' for the employees Table, 'de' for the dept_emp Table)

SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
ORDER BY e.emp_no;













    
    


