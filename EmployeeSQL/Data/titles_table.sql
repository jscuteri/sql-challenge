-- Drop table if exists
DROP TABLE IF EXISTS titles;

-- Create a new table
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL
)

-- Query all fields from the table
SELECT * FROM titles;
