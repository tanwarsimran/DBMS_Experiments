USE student_info;
SELECT empno, ename, deptno,
CASE deptno
    WHEN 10 THEN 'ACCOUNTING'
    WHEN 20 THEN 'RESEARCH'
    WHEN 30 THEN 'SALES'
    WHEN 40 THEN 'OPERATIONS'
    ELSE 'UNKNOWN'
END AS dname
FROM employee;
SELECT DATEDIFF(CURDATE(), '2000-01-01') AS age_in_days;
SELECT TIMESTAMPDIFF(MONTH, '2000-01-01', CURDATE()) AS age_in_months;
SELECT DATE_FORMAT(CURDATE(), '%D %M %W %Y') AS formatted_date;
SELECT CONCAT(
ename,
' has joined the company on ',
DATE_FORMAT(hiredate, '%W %D %M %Y')
) AS message
FROM employee;
SELECT NEXT_DAY(CURDATE(), 'SATURDAY') AS next_saturday;
SELECT CURTIME() AS current_time;
SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AS date_before_3_months;
SELECT *
FROM employee
WHERE MONTH(hiredate) = 12;
SELECT ename,
LEFT(hiredate, 2) AS first2_hiredate,
RIGHT(sal, 2) AS last2_salary
FROM employee;
SELECT *
FROM employee
WHERE sal * 0.10 = YEAR(hiredate);
SELECT *
FROM employee
WHERE hiredate < DATE_SUB(CURDATE(), INTERVAL 15 MONTH);
SELECT *
FROM employee
WHERE DAY(hiredate) < 15;
SELECT *
FROM employee
WHERE hiredate IS NOT NULL;
SELECT DATE_ADD(CURDATE(), 
INTERVAL ((7 - DAYOFWEEK(CURDATE()) + 7) % 7) DAY) AS next_saturday;
SELECT DATE_ADD(CURDATE(),
INTERVAL ((6 - DAYOFWEEK(CURDATE()) + 7) % 7) DAY) AS next_saturday;
SELECT DATE_ADD(CURDATE(), INTERVAL (5 - WEEKDAY(CURDATE()) + 7) % 7 DAY) AS next_saturday;
SELECT DATE_ADD(CURDATE(), INTERVAL 6 - DAYOFWEEK(CURDATE()) DAY) AS next_saturday;
SELECT DATE_ADD(CURDATE(), INTERVAL (7 - DAYOFWEEK(CURDATE())) DAY) AS next_saturday;
SELECT DATE_ADD(CURDATE(), INTERVAL ((6 - DAYOFWEEK(CURDATE()) + 7) % 7) DAY) AS next_saturday;
SELECT DATE_ADD(CURDATE(), INTERVAL (12 - DAYOFWEEK(CURDATE())) % 7 DAY) AS next_saturday;