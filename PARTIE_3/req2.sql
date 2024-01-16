use TP;

-- Q3
select ENAME, JOB, HIREDATE, EMPNO from EMP;

-- Q4
select concat(ENAME, ", ", JOB) as "Employee and Title" from EMP;

-- Q5
select concat(EMPNO, " , ", ENAME, " , ", JOB, " , ", ifnull(MGR, " "), "
 , ", HIREDATE, " , ", SAL, " , ", ifnull(COMM, " "), " , ", DEPTNO) as THE_OUTP
UT from EMP;

-- Q6
select ENAME , DEPTNO from EMP  where EMPNO = 7566;


-- Q7
-- this select ENAME, SAL from EMP where SAL < 1500 or SAL > 2850; or this
select ENAME, SAL from EMP where SAL not between 1500 and 2850;


-- Q8
select ENAME, JOB, HIREDATE from EMP where HIREDATE between "1981-02-20" and "1981-05-01";

-- Q9
select DEPTNO, ENAME from EMP where DEPTNO in (10, 30) order by DEPTNO asc;

-- Q10
select ENAME as "Employee", SAL as "Monthly Salary" from EMP where DEPTNO in (10, 30) and SAL > 1500;

-- Q11
select ENAME, JOB from EMP where MGR is NULL;

--Q12
select ENAME, SAL, COMM from EMP where not COMM = 0;

-- Q13
-- this: select ENAME from EMP where substring(ENAME , 3 , 1) = "A";
select ENAME from EMP where ENAME like "__A%"; -- or this

-- Q14
-- this: select ENAME from EMP where ((length(ENAME) - length(replace(ENAME, "L",""))) =2) and (MGR = 7782 or DEPTNO = 30);
select ENAME from EMP where ENAME like "%L%L%" and (MGR = 7782 or DEPTNO = 30);

-- Q15
select ENAME, JOB, SAL from EMP where JOB in ("CLERK", "ANALYST") and SAL not in (1000, 3000, 5000);

-- Q16
select ENAME, SAL, COMM from EMP where COMM > 1.1*SAL;

-- Q17
select EMPNO, concat(lower(ENAME), " ", JOB) as "Name and Post", length(ENAME) as "NAME_LENGTH", SAL*1.15 as "New Salary" from EMP;

-- Q18
select EMPNO, concat(lower(ENAME), " ", JOB) as "Name and Post", length(ENAME) as "NAME_LENGTH", SAL*1.15 as "New Salary", SAL*0.15 as "Increase" from EMP;

-- Q19
select * from EMP where ENAME like "%N";

-- Q20
select ENAME, HIREDATE,date_format(date_add(date_add(HIREDATE , interval 6 month), interval 9 - dayofweek(date_add(HIREDATE , interval 6 month)) day), "%W, the %D of %M, %Y") as REVIEW from EMP;

-- Q21
select concat(ENAME, " earns ", SAL, " monthly but wants ", 3*SAL) as "Dream Salaries" from EMP;

-- Q22
select ENAME, HIREDATE, date_format(HIREDATE, "%W") as DAY from EMP;

-- Q23
select ENAME, if(COMM is null, "No Commission", COMM) as COMM from EMP;

-- Q24
select max(SAL) as Maximum, min(SAL) as Minimum, sum(SAL) as Sum, avg(SAL) as Average from EMP;

-- Q25
select JOB, group_concat(ENAME) from EMP group by JOB;
select JOB, count(*) from EMP group by JOB; -- I didn't quite understand what was asked for...

-- Q26
select count(*) as "Number of Managers" from EMP where JOB = "MANAGER";

-- Q27
select max(SAL) - min(SAL) as DIFFERENCE from EMP;

-- Q28
select MGR, min(SAL) as "MINIMUM SALARY" from EMP group by MGR having MGR
 and min(SAL) >= 1000 order by min(SAL) desc;

-- Q29
select DEPTNO as "Number of Dept", count(*) as "Number of People", avg(SAL) as "Salary" from EMP group by DEPTNO;

-- Q30
select count(*) as "Total", sum(year(HIREDATE) =1980) as "1980", sum(year(HIREDATE) = 1981) as "1981", sum(year(HIREDATE) = 1982) as "1982", sum(year(HIREDATE) = 1983) as "1983" from EMP;

-- Q31
select JOB, sum(SAL) as SALARY from EMP group by JOB;

-- Q32
select ENAME, DEPTNO from EMP;

-- Q33
select distinct JOB from EMP where DEPTNO = 30;

-- Q34
-- or select ENAME, DEPTNO, DNAME from EMP natural join DEPT where LOC = "DALLAS";
-- or select EMP.ENAME, EMP.DEPTNO, DEPT.DNAME from EMP natural join DEPT where DEPT.LOC = "DALLAS";
select EMP.ENAME, EMP.DEPTNO, DEPT.DNAME from EMP join DEPT on EMP.DEPTNO = DEPT.DEPTNO where DEPT.LOC = "DALLAS";

-- Q35
select E.EMPNO as "Emp#", ENAME as "Employee", MGR as "Manager", ifnull((select ENAME from EMP where EMPNO = E.MGR), "") as "Mgr#" from EMP as E;

-- Q36
select ENAME, JOB, DNAME, SAL, ifnull((select GRADE from SALGRADE where EMP.SAL <= HISAL and EMP.SAL >= LOSAL), "Out of range") as GRADE from EMP natural join DEPT;

-- Q37
select ENAME, HIREDATE from EMP where  HIREDATE > (select HIREDATE from EMP where ENAME = "BLAKE");

-- Q38
select ENAME, HIREDATE from EMP natural join DEPT where DNAME = (select DNAME from EMP natural join DEPT where ENAME = "BLAKE") and not ENAME = "BLAKE";

-- Q39
select EMPNO, ENAME from EMP where SAL > (select avg(SAL) from EMP) order by SAL desc;

-- Q40
select EMPNO, ENAME from EMP where DEPTNO in (select DEPTNO from EMP where ENAME like "%T%");

-- Q41
select DEPTNO, ENAME, JOB from EMP natural join DEPT where DNAME = "SALES";