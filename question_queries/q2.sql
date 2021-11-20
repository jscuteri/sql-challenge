-- List first name, last name, and hire date for employees who were hired in 1986.
	-- employees table filtered 
	
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE e.hire_date 
between '1986-01-01' and '1986-12-31';




