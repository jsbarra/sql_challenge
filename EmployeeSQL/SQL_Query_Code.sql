--ANALYSIS 1

SELECT e.emp_no, e.last_name, e.sex, s.salary
FROM employees as e
inner join salaries as s
on s.emp_no = e.emp_no;


--ANALYSIS 2

SELECT first_name, last_name, hire_date
FROM public."Employees"
WHERE hire_date .= '1/1/1986' and hire_date < '1/1/1987';

--ANALYSIS 3

SELECT A.dept_no, B.dept_name, A.emp_no, C.last_name, C.first_name
FROM public."Department_Manager" as A
INNER JOIN public."Departments" as B
ON A.dept_no = B.dept_no;

--ANALYSIS 4

SELECT A.emp_no, C.last_name, C.first_name, B.dept_name
FROM public."Department_Employee" as A
INNER JOIN public."Departments" as B
ON A.dept_no = B.dept_no
INNER JOIN public."Employees" as C
ON A.emp_no = C.emp_no;

--ANALYSIS 5

SELECT first_name, last_name, sex
FROM public."Employees"
WHERE first_name = 'Hercules' and left(last_name,1) = 'B';

--ANALYSIS 6

SELECT A.emp_no, C.last_name, C.first_name, B.dept_name
FROM public."Department_Employee" as A 
INNER JOIN public."Departments" as B 
ON A.dept_no = B.dept_no
INNER JOIN public."Departments" as C 
ON A.emp_no = C.emp_no
WHERE dept_name = 'Sales';

--ANALYSIS 7

SELECT A.emp_no, C.last_name, C.first_name, B.dept_name
FROM public."Department_Employee" as A 
INNER JOIN public."Departments" as B 
ON A.dept_no = B.dept_no
INNER JOIN public."Employees" as C 
ON A.emp_no = C.emp_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

--ANALYSIS 8

SELECT A.last_name, COUNT(A.last_name) as frequency
FROM public."Employees" as A 
GROUP BY A.last_name
ORDER BY "frequency" DESC;









