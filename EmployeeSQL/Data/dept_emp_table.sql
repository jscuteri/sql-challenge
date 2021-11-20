-- Drop table if exists
DROP TABLE IF EXISTS dept_emp;

-- Create a new table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL
)

-- Query all fields from the table
SELECT * FROM dept_emp;

