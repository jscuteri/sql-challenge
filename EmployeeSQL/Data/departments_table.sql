-- Drop table if exists
DROP TABLE IF EXISTS departments;

-- Create a new table
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL
)

-- Query all fields from the table
SELECT * FROM departments;
