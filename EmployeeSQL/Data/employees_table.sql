-- Drop table if exists
DROP TABLE IF EXISTS employees;

-- Create a new table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL
)

-- Query all fields from the table
SELECT * FROM employees;
