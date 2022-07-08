USE employees;
/* ORDER BY EXERCISES */
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, emp_no DESC;

/* Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
 */
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, last_name ASC;
/* Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
 */
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name ASC ;

/* Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
 */
SELECT *
FROM employees
WHERE last_name  LIKE '%E%'
ORDER BY emp_no;

/* Now reverse the sort order for both queries and compare results.
 */

SELECT *
FROM employees
WHERE last_name  LIKE '%E%'
ORDER BY emp_no DESC;