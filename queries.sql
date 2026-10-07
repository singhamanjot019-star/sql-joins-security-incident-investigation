-- Task 1: Match employees to their machines
SELECT * 
FROM machines 
INNER JOIN employees ON machines.device_id = employees.device_id;

-- Task 2a: Find all machines (including unassigned) - LEFT JOIN
SELECT * 
FROM machines 
LEFT JOIN employees ON machines.device_id = employees.device_id;

-- Task 2b: Find all employees (including without machine) - RIGHT JOIN
SELECT * 
FROM machines 
RIGHT JOIN employees ON machines.device_id = employees.device_id;

-- Task 3: Retrieve login attempt data
SELECT * 
FROM employees 
INNER JOIN log_in_attempts ON employees.username = log_in_attempts.username;
