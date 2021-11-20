--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

-- Select everything from employees table
SELECT * FROM employees

-- Count the amount of last names in employees table
SELECT COUNT(last_name) FROM employees

-- Create an alias
SELECT COUNT(last_name) AS "Last Names"
FROM employees

-- Group by last_name and aggregate the Last Name count
SELECT last_name, COUNT(last_name) AS "Last Names"
FROM employees
GROUP BY last_name
ORDER BY "Last Names" DESC

