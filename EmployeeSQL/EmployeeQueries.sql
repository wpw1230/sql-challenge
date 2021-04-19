-- 1. List employee number, last name, first name, sex, and salary for each employee

-- Perform an INNER JOIN on salaries and employees tables
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no = s.emp_no;


-- 2. For employees hired in 1986, list first name, last name, and hire date

-- Select information from employees table, order by hire date (ascending)
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;


-- 3. List manager of each department with the following information: 
-- department number, department name, manager's employee number, last name, first name

-- Perform an INNER JOIN on departments and dept_manager, and another INNER JOIN on employees and dept_manager
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager AS m
INNER JOIN departments AS d ON
	d.dept_no = m.dept_no
INNER JOIN employees AS e ON
	e.emp_no = m.emp_no;


-- 4. List department of each employee with the following information: 
-- employee number, last name, first name, and department name

-- Perform an INNER JOIN on departments and dept_emp, and another INNER JOIN on employees and dept_emp
-- and order by employee number
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN departments AS d ON
	d.dept_no = de.dept_no
INNER JOIN employees AS e ON
	e.emp_no = de.emp_no
ORDER BY emp_no;


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"

-- Select information from employees table, filter by first_name = "Hercules" and last_name starting with "B"
-- and order by last name
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;


-- 6. List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name

-- Perform an INNER JOIN on departments and dept_emp, and another INNER JOIN on employees and dept_emp,
-- filter by dept_name = 'Sales', and order by employee number
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN departments AS d ON
	d.dept_no = de.dept_no
INNER JOIN employees AS e ON
	e.emp_no = de.emp_no
WHERE dept_name = 'Sales'
ORDER BY emp_no;


-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name

-- Perform an INNER JOIN on departments and dept_emp, and another INNER JOIN on employees and dept_emp,
-- filter by dept_name = 'Sales' OR 'Development', and order by employee number
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN departments AS d ON
	d.dept_no = de.dept_no
INNER JOIN employees AS e ON
	e.emp_no = de.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY emp_no;


-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name

-- List each unique last name, place count of each one in a new column labeled "frequency", 
-- and list in descending order by frequency
SELECT employees.last_name, COUNT(employees.last_name) as frequency
FROM employees
GROUP BY employees.last_name
ORDER BY frequency DESC;