-- TITLES
-- Drop table if exists
DROP TABLE titles;

-- Create table and column data types
CREATE TABLE titles (
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
	);

-- Import data, then view table columns and data types
SELECT *
FROM titles;


-- EMPLOYEES
-- Drop table if exists
DROP TABLE employees;

-- Create table and column data types
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR	NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);

-- Import data, then view table columns and data types
SELECT *
FROM employees;


-- SALARIES
-- Drop table if exists
DROP TABLE salaries;

-- Create table and column data types
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

-- Import data, then view table columns and data types
SELECT *
FROM salaries;


-- DEPARTMENTS
-- Drop table if exists
DROP TABLE departments;

-- Create table and column data types
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
	);

-- Import data, then view table columns and data types
SELECT *
FROM departments;


-- DEPT_MANAGER
-- Drop table if exists
DROP TABLE dept_manager;

-- Create table and column data types
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

-- Import data, then view table columns and data types
SELECT *
FROM dept_manager;


-- DEPT_EMP
-- Drop table if exists
DROP TABLE dept_emp;

-- Create table and column data types
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

-- Import data, then view table columns and data types
SELECT *
FROM dept_emp;


