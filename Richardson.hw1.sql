#Q1

#SELECT COUNT(DISTINCT emp_no) FROM employees.employees;

#Q2

#SELECT dept_name FROM employees.departments;

#Q3

#SELECT COUNT(DISTINCT emp_no) 
#FROM employees.dept_emp
#WHERE dept_no = 'd002';

#Q4 How many women work in development
#Couldn't figure out how to get count function to work properly(just displayed 1's in each row), error codes: 1046, 1140, 1052, 1055

#USE employees;

#SELECT employees.employees.emp_no, employees.dept_emp.emp_no, employees.employees.gender, employees.dept_emp.dept_no
#FROM employees.employees
#INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
#WHERE dept_no = 'd005' AND gender = 'F'
#GROUP BY dept_no, employees.emp_no;

#Q5 Top company salary?

#SELECT MAX(salary) FROM employees.salaries;

#Q6 What is the average salary for marketing?

#same as Q4, unsure how to use math function within larger join queries 

#SELECT employees.employees.emp_no, employees.salaries.salary, employees.salaries.emp_no
#FROM employees
#JOIN employees.salaries ON employees.employees.emp_no = employees.salaries.emp_no
#ORDER BY salary DESC;

#Q7

#same issue as Q4, Q6, need to run a methematical operation within Select statement, can't figure out how...
#something to do with using Group by potentially? 
#Q8

#same as Q7
