CREATE TABLE departments (
	dept_no CHAR(4) PRIMARY KEY,
	dept_name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title CHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date DATE NOT NULL	
);

CREATE TABLE salaries(
	emp_no INT,
	salary INT NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE
);

CREATE TABLE dept_manager(
	dept_no CHAR(4),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no CHAR(4),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE
);

SET datestyle = 'MDY';

CREATE TABLE temp_employees (
  emp_no INT,
  emp_title CHAR(5),
  birth_date TEXT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  sex CHAR(1),
  hire_date TEXT
);

INSERT INTO employees (emp_no, emp_title, birth_date, first_name, last_name, sex, hire_date)
SELECT
  emp_no,
  emp_title,
  TO_DATE(birth_date, 'MM/DD/YYYY') AS birth_date,
  first_name,
  last_name,
  sex,
  TO_DATE(hire_date, 'MM/DD/YYYY') AS hire_date
FROM temp_employees;

SELECT * FROM employees LIMIT 10;

DROP TABLE temp_employees;

CREATE TABLE titles (
  title_id CHAR(5) PRIMARY KEY,
  title VARCHAR(50) NOT NULL
);