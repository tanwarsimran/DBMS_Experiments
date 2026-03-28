USE student_info;
SELECT DATEDIFF('2026-12-31', CURDATE()) AS days_remaining;
SELECT MAX(sal) AS highest, MIN(sal) AS lowest, (MAX(sal) - MIN(sal)) AS difference 
FROM employee;
SELECT ename FROM employee WHERE comm > (0.25 * sal);
SELECT ename, CONCAT('$', FORMAT(sal, 2)) AS salary_in_dollars FROM employee;
SELECT job, 
       SUM(CASE WHEN deptno = 10 THEN sal ELSE 0 END) AS Dept10,
       SUM(CASE WHEN deptno = 20 THEN sal ELSE 0 END) AS Dept20,
       SUM(CASE WHEN deptno = 30 THEN sal ELSE 0 END) AS Dept30,
       SUM(sal) AS Total_Salary
FROM employee GROUP BY job;
SELECT COUNT(*) AS Total,
       SUM(CASE WHEN YEAR(hiredate) = 1980 THEN 1 ELSE 0 END) AS Hired_1980,
       SUM(CASE WHEN YEAR(hiredate) = 1981 THEN 1 ELSE 0 END) AS Hired_1981,
       SUM(CASE WHEN YEAR(hiredate) = 1982 THEN 1 ELSE 0 END) AS Hired_1982,
       SUM(CASE WHEN YEAR(hiredate) = 1983 THEN 1 ELSE 0 END) AS Hired_1983
FROM employee;
SELECT DATE_SUB(LAST_DAY(CURDATE()), INTERVAL (WEEKDAY(LAST_DAY(CURDATE())) + 1) % 7 DAY) AS last_sunday;
SELECT deptno, COUNT(*) AS total_employees FROM employee GROUP BY deptno;
SELECT job, COUNT(*) AS total_employees FROM employee GROUP BY job;
SELECT deptno, SUM(sal) AS total_salary FROM employee GROUP BY deptno;