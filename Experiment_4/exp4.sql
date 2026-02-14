SET SQL_SAFE_UPDATES = 0;
USE student_info;
SELECT *
FROM employee
WHERE hiredate < '1980-06-30'
   OR hiredate > '1981-12-31';
   SELECT ename
FROM employee
WHERE ename LIKE '_A%';
SELECT ename
FROM employee
WHERE CHAR_LENGTH(ename) = 5;
SELECT ename
FROM employee
WHERE ename LIKE '_A%';
SELECT ename
FROM employee
WHERE job NOT IN ('SALESMAN', 'CLERK', 'ANALYST');
SELECT ename, sal*12 AS annual_salary
FROM employee
ORDER BY annual_salary DESC;
SELECT 
ename,
sal,
sal*0.15 AS hra,
sal*0.05 AS pf,
sal*0.10 AS da,
sal + (sal*0.15) + (sal*0.10) - (sal*0.05) AS totalsal
FROM employee
ORDER BY totalsal ASC;
UPDATE employee
SET sal = sal + (sal*0.10)
WHERE comm IS NULL;
SELECT *
FROM employee
WHERE sal + (sal*0.20) > 3000;
SELECT *
FROM employee
WHERE sal >= 100;