--1  List the following details of each employee: employee number, last name, first name, sex, and salary.

-- Perform an LEFT JOIN on the two tables
	-- employees table & salaries table

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s 
ON e.emp_no=s.emp_no;

-- 2 List first name, last name, and hire date for employees who were hired in 1986.
	-- employees table filtered 
	
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE e.hire_date 
between '1986-01-01' and '1986-12-31';

-- 3 List the manager of each department with the following information: 
-- department number (departments), department name(departments), the manager's employee number, last name, first name.

SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager AS m
INNER JOIN departments AS d
ON m.dept_no=d.dept_no
INNER JOIN employees as e
ON m.emp_no=e.emp_no

-- 4 List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

--Tables: employees & departments & dept_emp

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS j
ON e.emp_no=j.emp_no
INNER JOIN departments as d
ON j.dept_no=d.dept_no
;

-- 5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' and e.last_name LIKE 'B%'

-- 6 List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS j
ON e.emp_no=j.emp_no
INNER JOIN departments as d
ON j.dept_no=d.dept_no
WHERE dept_name = 'Sales'
;

-- 7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS j
ON e.emp_no=j.emp_no
INNER JOIN departments as d
ON j.dept_no=d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'
;

-- 8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

-- Select everything from employees table
SELECT * FROM employees

-- Count the amount of last names in employees table
SELECT COUNT(last_name) FROM employees

-- Create an alias
SELECT COUNT(last_name) AS "Last Names"
FROM employees

-- Group by last_name and aggregate the Last Name count
SELECT last_name, COUNT(last_name) AS "Last Names"
FROM employees
GROUP BY last_name
ORDER BY "Last Names" DESC





