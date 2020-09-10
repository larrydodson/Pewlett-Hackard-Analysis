-- Module 7 Challenge
--   Deliverable-1 The Number of Retiring Employees 

SELECT * FROM employees;
SELECT * FROM titles;
SELECT * FROM dept_emp;
SELECT * FROM retirement_titles;

-- Creating retirement_titles table
SELECT e.emp_no,
	e.first_name, e.last_name,
	tt.title, tt.from_date, tt.to_date
-- INTO retirement_titles
FROM employees as e
LEFT JOIN titles as tt 
	ON e.emp_no = tt.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no, to_date DESC
--ORDER BY emp_no, from_date
;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name, last_name,
	title
INTO unique_titles
FROM retirement_titles as rt 
ORDER BY emp_no, to_date DESC
;



