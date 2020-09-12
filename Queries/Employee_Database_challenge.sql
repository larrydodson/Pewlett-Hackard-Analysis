-- Module 7 Challenge

--   Deliverable-1 The Number of Retiring Employees 

-- SELECT * FROM employees;
-- SELECT * FROM titles;
-- SELECT * FROM dept_emp;
-- SELECT * FROM retirement_titles;
-- SELECT * FROM departments;

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

-- Creating a retiring count by department table 
-- for comparison and for the Challenge Report submission
-- SELECT * FROM unique_titles;

SELECT ut.emp_no, de.dept_no
--, di.dept_name
--INTO rdn
FROM unique_titles as ut
INNER JOIN dept_emp AS de
	ON ut.emp_no = de.emp_no
;

SELECT COUNT(rdn.dept_no), rdn.dept_no
--INTO rdn_name
FROM rdn
GROUP BY rdn.dept_no
ORDER BY rdn.count DESC
;
SELECT rdnn.dept_no, rdnn.count, d.dept_name
--INTO retire_dept
FROM rdn_name AS rdnn
INNER JOIN departments AS d
	ON rdnn.dept_no = d.dept_no
;

-- Deliverable 2: The Employees Eligible for the Mentorship Program
--   Creating mentorship_cand table, as interim candidate table
SELECT e.emp_no,
	e.first_name, e.last_name, 
	e.birth_date,
	tt.from_date, de.to_date, 
	tt.title
--INTO mentorship_cand
FROM employees AS e 
	INNER JOIN dept_emp AS de
		ON e.emp_no = de.emp_no
	INNER JOIN titles AS tt
		ON e.emp_no = tt.emp_no
	WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
		AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no, tt.from_date DESC
;

-- Use Dictinct ON with Order by to remove duplicate rows
--   Creating mentorship_eligibilty table
SELECT DISTINCT ON (emp_no) emp_no,
	first_name, last_name, birth_date,
	from_date, to_date, title
--INTO mentorship_eligibilty
FROM mentorship_cand AS mc 
ORDER BY emp_no
;

-- Creating a mentorship count by title
SELECT COUNT(title), title
--INTO mentorship_count 
FROM mentorship_eligibilty as me
GROUP BY title
ORDER BY me.count DESC
;
