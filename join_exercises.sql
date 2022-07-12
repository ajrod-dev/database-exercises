USE employees;

/*  write a query that shows each department along with the name of the current manager for that department.
 */

SELECT d.dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees as e
         JOIN dept_manager AS dm on e.emp_no = dm.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE YEAR(dm.to_date) = 9999;

# Find the name of all departments currently managed by women.

SELECT d.dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees as e
         JOIN dept_manager AS dm on e.emp_no = dm.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE YEAR(dm.to_date) = 9999;

# Find the current titles of employees currently working in the Customer Service department.

SELECT t.title, COUNT(t.title) AS Total
FROM employees AS e
JOIN titles AS t ON e.emp_no = t.emp_no
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;

# Find the current salary of all current managers.

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments as d JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on dm.emp_no = e.emp_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name .



