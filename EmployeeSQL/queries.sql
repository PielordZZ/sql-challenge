
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

--4
SELECT e.emp_id, e.last_name, e.first_name, d.dept_name
FROM department AS d
FULL JOIN dept_emp AS ed ON d.dept_id = ed.dept_id
FULL JOIN employee AS e ON ed.emp_id = e.emp_id;

--5
SELECT first_name, last_name, sex
FROM employee
WHERE (first_name LIKE 'Hercules') AND (Left(last_name,1) = 'B');

--6
SELECT e.emp_id, e.last_name, e.first_name, d.dept_name
FROM department AS d
FULL JOIN dept_emp AS ed ON d.dept_id = ed.dept_id
FULL JOIN employee AS e ON ed.emp_id = e.emp_id
WHERE d.dept_name = 'Sales';

--7
SELECT e.emp_id, e.last_name, e.first_name, d.dept_name
FROM department AS d
FULL JOIN dept_emp AS ed ON d.dept_id = ed.dept_id
FULL JOIN employee AS e ON ed.emp_id = e.emp_id
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--8
SELECT last_name, COUNT(last_name) AS num_of_family
FROM employee
GROUP BY last_name
ORDER BY num_of_family DESC;



--Epilogue
SELECT * 
FROM employee
WHERE emp_id = 499942;
--I've been got