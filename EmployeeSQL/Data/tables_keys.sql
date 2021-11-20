-------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS departments;

-- Create a new table
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Query all fields from the table
SELECT * FROM departments;

-------------------------------------

-- Drop table if exists
DROP TABLE IF EXISTS dept_emp;

-- Create a new table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Query all fields from the table
SELECT * FROM dept_emp;

-------------------------------------

-- Drop table if exists
DROP TABLE IF EXISTS dept_manager;

-- Create a new table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no)
)

-- Query all fields from the table
SELECT * FROM dept_manager;

-------------------------------------

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
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no)
)

-- Query all fields from the table
SELECT * FROM employees;

-------------------------------------

-- Drop table if exists
DROP TABLE IF EXISTS salaries;

-- Create a new table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (salary),
	FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no)
)

-- Query all fields from the table
SELECT * FROM salaries;

-------------------------------------

-- Drop table if exists
DROP TABLE IF EXISTS titles;

-- Create a new table
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
)

-- Query all fields from the table
SELECT * FROM titles;

-------------------------------------
