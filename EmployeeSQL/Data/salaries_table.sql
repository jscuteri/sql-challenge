-- Drop table if exists
DROP TABLE IF EXISTS salaries;

-- Create a new table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
)

-- Query all fields from the table
SELECT * FROM salaries;
