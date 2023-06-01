-- ***SQL CHALLENGE QUESTIONS AND QUERIES***

-- **1. List the employee number, last name, first name, sex, and salary of each employee**
Select e.emp_no, last_name, first_name, sex, salary
From employees e
Join salaries s on e.emp_no = s.emp_no
;

-- **2. List the first name, last name, and hire date for the employees who were hired in 1986**
Select first_name, last_name, hire_date
From employees
Where hire_date Between '1986-01-01' And '1986-12-31'
;

-- **3. List the manager of each department along with their department number, department name, employee number, last name, and first name**
Select title, d.dept_no, dept_name, e.emp_no, last_name, first_name
From titles t
Join employees e on t.title_id = e.emp_title_id
Join dept_manager dm on e.emp_no = dm.emp_no
Join departments d on dm.dept_no = d.dept_no
Where title_id = 'm0001'
;

-- **4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name**
Select de.dept_no, e.emp_no, last_name, first_name, d.dept_name
From employees e
Join dept_emp de on e.emp_no = de.emp_no
Join departments d on de.dept_no = d.dept_no
;

-- **5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B**
Select first_name, last_name, sex
From employees
Where first_name = 'Hercules' And last_name Like 'B%'
;

-- **6. List each employee in the Sales department, including their employee number, last name, and first name**
Select dept_name, e.emp_no, last_name, first_name
From employees e
Join dept_emp de on e.emp_no = de.emp_no
Join departments d on de.dept_no = d.dept_no
Where dept_name = 'Sales'
;

-- **7a. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name**
Select e.emp_no, last_name, first_name, dept_name
From employees e
Join dept_emp de on e.emp_no = de.emp_no
Join departments d on de.dept_no = d.dept_no
Where dept_name = 'Sales' Or dept_name = 'Development'
;

-- ***EXTRA QUERY***
-- **7b. List each employee who works in both the Sales and Development departments, including their employee number, last name, first name, and department name**
Select Concat(last_name, ', ', first_name) As employee_name, Count(de.dept_no)
From employees e
Join dept_emp de on e.emp_no = de.emp_no
Join departments d on de.dept_no = d.dept_no
Where dept_name = 'Sales' Or dept_name = 'Development'
Group By employee_name
Having Count(de.dept_no) > 1
Order By employee_name
;

-- **8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)**
Select last_name, Count(last_name) As same_last_name
From employees
Group By last_name
Order By same_last_name Desc
;