USE student_info;
SELECT COUNT(*) AS total_employees
FROM employee;
SELECT SUM(sal) AS total_salary
FROM employee;
SELECT MAX(sal) AS max_salary
FROM employee;
SELECT MIN(sal) AS min_salary
FROM employee;
SELECT AVG(sal) AS avg_salary
FROM employee;
SELECT MAX(sal) AS max_clerk_salary
FROM employee
WHERE job = 'CLERK';
SELECT MAX(sal) AS max_salary_dept20
FROM employee
WHERE deptno = 20;
SELECT MIN(sal) AS min_salesman_salary
FROM employee
WHERE job = 'SALESMAN';
SELECT AVG(sal) AS avg_manager_salary
FROM employee
WHERE job = 'MANAGER';
SELECT SUM(sal) AS total_analyst_salary
FROM employee
WHERE job = 'ANALYST'
AND deptno = 40;
SELECT UPPER(ename) AS uppercase_name
FROM employee;
SELECT LOWER(ename) AS lowercase_name
FROM employee;
SELECT CONCAT(UPPER(LEFT(ename,1)), LOWER(SUBSTRING(ename,2))) AS proper_name
FROM employee;
SELECT CHAR_LENGTH('Rahul') AS name_length;
SELECT ename, CHAR_LENGTH(ename) AS name_length
FROM employee;