-- Module 7 Challenge
--   Deliverable-1 The Number of Retiring Employees 

SELECT * FROM employees;
SELECT * FROM titles;
SELECT * FROM dept_emp;

-- Creating retirement_titles table
SELECT e.emp_no,
	e.first_name, e.last_name,
	tt.title, tt.from_date, tt.to_date
-- INTO retirement_titles
FROM employees as e
LEFT JOIN titles as tt 
	ON e.emp_no = tt.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no
;

















-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;










