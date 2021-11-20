--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

--Tables: employees & departments & dept_emp

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS j
ON e.emp_no=j.emp_no
INNER JOIN departments as d
ON j.dept_no=d.dept_no
;

