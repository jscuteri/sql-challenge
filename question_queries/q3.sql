-- List the manager of each department with the following information: 
-- department number (departments), department name(departments), the manager's employee number, last name, first name.

SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager AS m
INNER JOIN departments AS d
ON m.dept_no=d.dept_no
INNER JOIN employees as e
ON m.emp_no=e.emp_no





