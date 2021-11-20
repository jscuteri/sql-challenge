-- Drop table if exists
DROP TABLE IF EXISTS dept_manager;

-- Create a new table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no VARCHAR(30) NOT NULL
)

-- Query all fields from the table
SELECT * FROM dept_manager;

