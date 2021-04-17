-- DEPARTMENTS
-- Drop table if exists
DROP TABLE departments;

-- Create table and view column datatypes
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

-- View table columns and data types
SELECT *
FROM departments;


-- DEPT_EMP
-- Drop table if exists
DROP TABLE dept_emp;

-- Create table and view column datatypes
CREATE TABLE dept_emp (
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- View table columns and data types
SELECT *
FROM dept_emp;


-- TITLES
-- Drop table if exists
DROP TABLE titles;

-- Create table and view column datatypes
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

-- View table columns and data types
SELECT *
FROM titles;


-- DEPT_MANAGER
-- Drop table if exists
DROP TABLE dept_manager;

-- Create table and view column datatypes
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

-- View table columns and data types
SELECT *
FROM dept_manager;


-- SALARIES
-- Drop table if exists
DROP TABLE salaries;

-- Create table and view column datatypes
CREATE TABLE salaries (
	emp_no INT,
	salary INT NOT NULL
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

-- View table columns and data types
SELECT *
FROM salaries;


-- EMPLOYEES
-- Drop table if exists
DROP TABLE employees;

-- Create table and view column datatypes
CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR	NOT NULL,
	hire_date DATE NOT NULL
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- View table columns and data types
SELECT *
FROM employees;
