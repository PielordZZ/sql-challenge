
--1.
SELECT emp_id, last_name, first_name, sex, (SELECT salary FROM salary WHERE salary.emp_id = employee.emp_id)
FROM employee;

--2.
SELECT first_name, last_name, hire_date
FROM employee
WHERE RIGHT(hire_date,4) = '1986';

--3
SELECT dp.dept_id, dp.dept_name, em.emp_id, em.first_name, em.last_name 
FROM dept_manager AS dm
INNER JOIN department as dp ON dp.dept_id=dm.dept_id
INNER JOIN employee as em ON dm.emp_id = em.emp_id;





--Epilogue
SELECT * 
FROM employee
WHERE emp_id = 499942;
--I've been got