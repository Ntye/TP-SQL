use TP;

-- Q1 creating the tables
create table if not exists EMP(
	EMPNO numeric(7),
	ENAME varchar(25),
	JOB varchar(25),
	MGR numeric(7),
	HIREDATE date,
	SAL numeric(9,2),
	COMM numeric(9,2),
	DEPTNO numeric(7)
);

create table if not exists DEPT(
	DEPTNO numeric(7),
	DNAME varchar(25),
	LOC varchar(25)
);

create table if not exists SALGRADE(
	GRADE numeric(7),
	LOSAL numeric(9,2),
	HISAL numeric(9,2)
);

-- Q2 inserting values into the tables
insert into EMP values 
	(7839,"KING","PRESIDENT", NULL,"1981-10-17",500,NULL, 10),
	(7698,"BLAKE","MANAGER",7839,"1981-05-01",2850, NULL, 30),
	(7782,"CLARK","MANAGER",7839,"1981-06-09",1500, NULL,10),
	(7566,"JONES","MANAGER",7839,"1981-04-02",2975, NULL,20),
	(7654,"MARTIN","SALESMAN","7698","1981-09-28",1250,1400,30),
	(7499,"ALLEN","SALESMAN",7698,"1981-02-20",1600,300,30),
	(7844,"TURNER","SALESMAN",7698,"1981-09-08",1500,0,30),
	(7900,"JAMES","CLERK",7698,"1981-12-03",950, NULL,30),
	(7521,"WARD","SALESMAN",7698,"1981-02-22",1250,500,30),
	(7902,"FORD","ANALYST",7566,"1981-12-03",3000, NULL,20),
	(7369,"SMITH","CLERK",7902,"1980-12-17",800, NULL,20),
	(7788,"SCOTT","ANALYST",7566,"1982-12-09",3000, NULL,20),
	(7876,"ADAMS","CLERK",7788,"1983-01-12",1100, NULL,20),
	(7934,"MILLER","CLERK",7782,"1982-01-23",1300, NULL,10);

insert into DEPT values 
	(10,"ACCOUNTING","NEW YORK"),
	(20,"RESEARCH","DALLAS"),
	(30,"SALES","CHICAGO"),
	(40,"OPERATIONS","BOSTON");

insert into SALGRADE values
	(1, 700, 1200),
	(2, 1201, 1400),
	(3, 1401, 2000),
	(4, 2001, 3000),
	(5, 3001, 9999);