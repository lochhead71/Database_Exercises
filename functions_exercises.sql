SELECT COUNT(gender), gender
FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
GROUP BY gender;

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
OR last_name LIKE '%e'
ORDER BY emp_no desc;

SELECT CONCAT(first_name, " ", last_name) AS full_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY full_name;

SELECT emp_no, last_name, " ", "has worked for ", DATEDIFF(curdate(), hire_date), " days."
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY hire_date ASC;

SELECT first_name, last_name, count(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY count(last_name) DESC;