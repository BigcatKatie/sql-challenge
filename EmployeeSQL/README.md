# Module 9 Challenge: SQL Challenge

#Data Modeling
	#Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site.

#Data Engineering: Use the provided information to create a table schema for each of the six CSV files. 
	# Create departments table
	# Create employees table
	# Create Salaries table
	# Create dept_manager table
	# Create dept_emp table
	# Create temp_emplyees table to temporary hold the data because unable to import the csv file for employees table, here treat the birth_date and hire_date column as TEXT to avoid a date parsing error being triggered
	# Import the CSV File into the Temporary Table, and then convert and insert the data into the original employees table
	# Verify the import and drop the Temporary table
	# Create titles table

# Data Analysis

	#List the employee number, last name, first name, sex, and salary of each employee.

	#List the first name, last name, and hire date for the employees who were hired in 1986.

	#List the manager of each department along with their department number, department name, employee number, last name, and first name.

	#List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

	#List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

	#List each employee in the Sales department, including their employee number, last name, and first name.

	#List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

	#List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

# Resources:
	# http://127.0.0.1:64940/help/help/import_export_data.html
	# https://www.postgresql.org/docs/16/sql-copy.html