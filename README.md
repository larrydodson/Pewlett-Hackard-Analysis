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
The assignments were to generate these two major Deliverable actions: 
1) The number of retiring employees with their names, titles and departments, and 
2) The employees that are available for a new Mentorship program. 

For the data modeling, the below Entity Relationship Diagram (ERD), was prepared using the information in the provided six csv files. The ERD aided the process of constructing the needed SQL instructions and queries. 
 
   | **Entity Relationship Diagram (ERD)** |
   |     :---:      |
   | ![Employee2DB.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/Employee2DB.png) |


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
   Below are descriptions and copies of the Tables that were generated for each of the two major Deliverables. 

### Deliverable 1: The Number of Retiring Employees by Title

| ....................... | **Retirement Titles Table**  |
| :--- | :---  |
|  | To begin, data values were retrieved from the tables for employees and titles, creating a new table joined on the primary key "emp_no". The data was filtered on the birth_date column, for employees born between 1952 and 1955. This highlighted the occurance of duplicate employee numbers for the same employee.|
| **Figure-1a** | ![retirement_titles.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/retirement_titles.png) |
|  |  |
|  | **Unique Titles Table** |
|  | Using the previous interim table that identified retirement elibible employees, next the DISTINCT ON statement was used to sort remove the duplicate rows. Also the ORDER BY clause was used to sort/filter so that the most recent title was captured as the first row of the duplicate emp_no. |
| **Figure-1b** | ![unique_titles.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/unique_titles.png) |
|  |  |
|  | **Retiring Titles Table** |
|  | The number of employees by their most recent job title who are about to retire. |
| **Figure-1c** | ![retiring_titles.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/retiring_titles.png) |

.


### Deliverable 2: The Employees Eligible for the Mentorship Program

| **Deliverable: Mentorship Eligible Table** |
| :---         | 
| To create this table of the employees that are eligible to participate in a Mentorship Program, data values were grouped and filtered on birth-dates between Jan 1 and Dec 31, 1965. Next the DISTINCT ON statement was used to remove duplicate rows, and GROUP BY for the most recent title. And finally, ORDERED BY the employee number. | 
| **Figure-2** |
| ![mentorship_eligibility.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/mentorship_eligibility.png) | 


  
.

  1. **Diligence on the use of "dates"**: --  For accurate analysis, great care was needed when using the employee "from_date" and "to_date" data. As was noted, there were duplicate employee numbers ("emp_no"), and were created when an employee's titled changed over their career, and the record remained in the data. In order to arrive at accurate numbers for total employees, and for retiring employees, as well as those that were candidates for the Mentorship Program, attention was needed to use the correct date.
    
  2. **Recommendation on correct date for accuracy**:  --  Instructions within 2nd part of the assignment Challenge included using the from_date from the "Department Employee" table. However, to arrive at an accurate date for the most recent employee title, it may be recommended to instead use the from_date within the "Titles" table.   
    
  3. **Large percentage of retirees expected**:  --  From the data, the company has a very large number of total employees at about 300,000. A retirement scenario exists that a large number of employees are reaching the retirement age, and as a result will create the possibility for a "silver tsunami", where a large number will retire within a 3-4 year window. There are over 90,000 employees within the retirement window, and this represents a large percentage of employees at approximately 30%. A third of the workforce would be retiring within a 3-4 year window. As the company has realized, advanced planning is needed for such a large percent. 
    
  4. **Majority number of retirees are at the most senior positions**:  --  As seen in table in Figure-1c above on "Retiring Titles", by far most of the employees coming to retirement age are at the most senior roles of Senior Engineer and Senior Staff. This is 57,668 employees, representing 64% of all retiring employees. This another major factor to consider for planning with the coming "silver tsunami" :) 


.

---

# Summary

### Two Questions and Replies 
  1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  
  Over the three to four year period of the "Silver Tsunami", there will be approx. 90,398 employees retiring from the company. IF the company is to maintain the current number of workforce, these roles will need to be filled.
  
  
  2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard employees?
  
  What is shown in Figure-5 and Figure-3 below, is that the number of candidates as mentors is very limited, when compared to the number of employees to retire based on Title.  This ratio is high, and likely not maintainable. Examples - For Technique Leader the ratio is 77 Mentors to 4,502 retiring. For Staff it is 155 Mentors to 40,497 Sr and Staff retiring. These are extremely high ratios, and likely very difficult to support.

.

### Additional insights into the upcoming "silver tsunami"
  1. The number of retiring employees by their department is shown in Figure-4 below. It is shown that the Departments with the major impacts are in "Development", "Production", and "Sales". Of the 90k+ employees leaving, approx. 70% are represented by these three departments. All nine departments have a major turn-over coming with thousands of employees to leave and new candidates to be hired and trained. 
  
  2. When looking at the numbers of employees as possible Mentors, shown in Figure-5, we see that for employees as Engineers, there would be 43,636 Senior Engineer and Engineer roles retiring (reference Figure-3). And, the Mentor staff at 529 Senior Engineers available with possibly another 190 experienced Engineers, for a total of 719 as Mentors. Therefore, 719 Mentors for an expected 43,636 new Engineer employees, for a ratio of 60 employees per Mentor.
  
  3. Based on the above information and insights, it would be recommended that the P-H look at other programs to mitigate the Tsunami. Other programs to be considered could include:  
   - Hiring more advanced levels and for experience, where Mentoring is not a requirement, 
   - Implement Training Programs for new-Hires, that take into account the large loss of experienced employees, 
   - Establish retaining enticements such as bonuses and income to experienced retiring qualified employees to remain working and as Mentors longer to fill the gaps in time to hire and train new people. 
  



![emp_3counts.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/emp_3counts.png)

.


| **Retirees by Title** (from above) | **Retirees by Department** |  **Mentorship Count per Title**  |
| :--- | :---  | :---  |
|  **Figure-3** The Number of Retiring Employees by Title | **Figure-4** The Number of Retiring Employees by Department | **Figure-5** The number of employees and their titles, eligible for the Mentorship Program.  |
| ![retiring_titles.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/retiring_titles.png) | ![retire_dept.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/retire_dept.png) | ![mentorship_count.png](https://github.com/larrydodson/Pewlett-Hackard-Analysis/blob/master/mentorship_count.png) |


.

.end 
