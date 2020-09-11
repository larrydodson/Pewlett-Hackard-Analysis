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
--INTO retirement_titles
FROM employees as e
LEFT JOIN titles as tt 
	ON e.emp_no = tt.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no, from_date
;

-- Creating unique_titles table
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name, last_name,
	title
--INTO unique_titles
FROM retirement_titles as rt 
ORDER BY emp_no, to_date DESC
;

-- Creating retiring_titles table
SELECT COUNT(ut.title), ut.title
--INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY ut.count DESC
;

-- Deliverable 2: The Employees Eligible for the Mentorship Program
--   Creating mentorship_cand table, as interim data table
SELECT e.emp_no,
	e.first_name, e.last_name, 
	e.birth_date,
	de.from_date, de.to_date, 
	tt.title
--INTO mentorship_cand
FROM employees AS e 
	LEFT JOIN dept_emp AS de
		ON e.emp_no = de.emp_no
	LEFT JOIN titles AS tt
		ON e.emp_no = tt.emp_no
	WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
		AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Use Dictinct ON with Order by to remove duplicate rows
--   Creating mentorship_eligibilty table
SELECT DISTINCT ON (emp_no) emp_no,
	first_name, last_name, birth_date,
	from_date, to_date, title
INTO mentorship_eligibilty
FROM mentorship_cand AS mc 
ORDER BY emp_no
;
