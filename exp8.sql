USE student_info;

SELECT e.ename, d.dname FROM employee e JOIN department d ON e.deptno = d.deptno;

SELECT e1.ename AS Employee, e2.ename AS Manager FROM employee e1 JOIN employee e2 ON e1.mgr = e2.empno WHERE e2.ename = 'JONES';

SELECT e.ename, e.job, d.dname, m.ename AS manager FROM employee e JOIN department d ON e.deptno = d.deptno LEFT JOIN employee m ON e.mgr = m.empno ORDER BY d.dname;

SELECT e.ename, e.job, d.dname, e.sal FROM employee e JOIN department d ON e.deptno = d.deptno WHERE e.job != 'CLERK' ORDER BY e.sal DESC;

SELECT e.ename, e.job, m.ename AS manager FROM employee e LEFT JOIN employee m ON e.mgr = m.empno;

SELECT e.ename, e.job, (e.sal*12) AS annual_sal, d.dname FROM employee e JOIN department d ON e.deptno = d.deptno WHERE (e.sal * 12) = 36000 OR e.job != 'CLERK';

SELECT e.ename, e.job, (e.sal*12) AS annual_sal, d.dname FROM employee e JOIN department d ON e.deptno = d.deptno WHERE (e.sal * 12) = 30000 AND e.job != 'CLERK';

SELECT e.ename, e.empno, IFNULL(m.ename, 'no manager') AS mgr_name, IFNULL(m.empno, 'N/A') AS mgr_no FROM employee e LEFT JOIN employee m ON e.mgr = m.empno;

SELECT d.dname, d.deptno, SUM(e.sal) AS total_sal FROM department d LEFT JOIN employee e ON d.deptno = e.deptno GROUP BY d.dname, d.deptno;

SELECT e.empno, e.ename, d.dname FROM employee e JOIN department d ON e.deptno = d.deptno;

SELECT e.ename, d.dname FROM employee e JOIN department d ON e.deptno = d.deptno;