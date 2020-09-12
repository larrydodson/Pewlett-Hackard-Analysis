# Pewlett-Hackard-Analysis
### UTMCC DataViz Module 7

# Contents

- **Overview**
    - Purpose
    - Description
    - Resources
- **Results**
- **Summary**

---

# Overview

### Purpose

Pewlett-Hackard is preparing for expected retirements for a large group of employees that will be reaching the retirement age. Senior management requires carefully presented retirement-age information in order to adequately prepare for what is expected to be a large number of employees leaving in the next few years. 
With the available employee information that includes birth-dates, as well as start and end-dates of employment, and with other related information, data tables were created for management to help with planning and decisions.

### Description

Pewlett-Hackard, also known as "P-H", is upgrading its employee database structure, and will using SQL as the database query language. The relational database will be set up on PostgreSQL, and using pgAdmin as the user interface access system. 

This project is assisting Bobby in building the new employee SQL compatible database, and utilizing applications of data modeling, data engineering and data analysis. The project focus is on employees and preparation planning for retirement scenarios. 
Assignments were to identify: 
1) The number of retiring employees with their names, titles and departments, and 
2) The employees that are available for a new Mentorship program. 

For the data modeling, the below Entity Relationship Diagram (ERD), was prepared using the information in the provided six csv files. The ERD aided the process of constructing the needed SQL instructions and queries. 
 

| **Data csv Files** | **Entity Relationship Diagram (ERD)** |
| :---         |     :---:      |
| departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv | ![Employee2DB.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/Employee2DB.png) |


The ERD flowchart highlights the type of information contained within data tables and the relationships to each other. The ERD tool also includes the following from each CSV file:
  - Primary keys
  - Foreign keys
  - Data types for each column



### Resources

- Data sources: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Software: Windows10, PostgreSQL 12, pgAdmin4 4.24
- Tools: Quick Database Diagrams ("Quick DBD")


---

# Results
  (a bulleted list with four major points from the two analysis deliverables. Use images as support where needed) 

### Deliverable 1: The Number of Retiring Employees by Title


| **Deliverable** | |
| :---         |     :---:      |
|  | **Retirement Titles Table**  |
| To begin, data values were retrieved from the tables for employees adn titles, creating a new table joined on the primary key "emp_no". The data was filtered on the birth_date column, for employees born between 1952 and 1955. This highlighted the occurance of duplicate employee numbers for the same employee.| ![retirement_titles.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/retirement_titles.png) |
|  | **Unique Titles Table** |
| Using the previous interim table that identified retirement elibible employees, next the DISTINCT ON statement was used to sort remove the duplicate rows. Also the ORDER BY clause was used to sort/filter so that the most recent title was captured as the first row of the duplicate emp_no. | ![unique_titles.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/unique_titles.png) |
|  | **Retiring Titles Count Table** |
| Finally, The Number of Retiring Employees by Title as "Retiring Titles", derived from the Unique Titles Table. | ![retiring_titles.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/retiring_titles.png) |




.

### Deliverable 2: The Employees Eligible for the Mentorship Program


| **Deliverable** | |
| :---         |     :---:      |
|  **Mentorship Eligible Table**  | |
|   |  |
| ![mentorship_eligibility.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/mentorship_eligibility.png) | To create this table of the employees that are eligible to participate in a Mentorship Program, data values were grouped and filtered on birth-dates between Jan 1 and Dec 31, 1965. Next the DISTINCT ON statement was used to remove duplicate rows, and GROUP BY for the most recent title. And finally, ORDERED BY the employee number. |
| **Mentorship Count per Title Table** |  |
| ![mentorship_count.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/mentorship_count.png) | The number of employees and their titles that are eligible for the Mentorship Program. |



.

  1. k
  2. L
  3. M
  4. mmm 
  
  


.

---

# Summary

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
(addresses the two questions and contains two additional queries or tables that may provide more insight) 

### Two Questions and Replies - 
  1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  
  
  
  2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?




### Additional insights into the upcoming "silver tsunami"
  1. xyz 
  
  2. abc 
  
  
.

.end 
