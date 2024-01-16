use TP;

-- Q2 Entering the values in the Departement table
insert into DEPARTEMENT (ID, NAME) values
	(10, "ACCOUNTING"),
    (20, "RESEARCH"),
    (30, "SALES"),
    (40, "OPERATIONS");



-- Q4 ALters the column value data type length
alter table EMPLOYEE modify LAST_NAME varchar(50);

-- Q6 Changing the column names for Employee2 table
alter table EMPLOYEE2
	rename column EMPNO to ID,
    rename column ENAME to LAST_NAME,
    rename column DEPTNO to DEPT_ID;
    
-- Q8 Changing the table name 
rename table EMPLOYEE2 to EMPLOYEE;

-- Q9 Adding a primary key to the Employee table
alter table EMPLOYEE
	add primary key (ID);

-- Q10 Adding a primary key to the Departement table
alter table DEPARTEMENT
	add primary key (ID);
    
-- Q11 Adding a foreign key to the employee table
alter table EMPLOYEE
	add foreign key (DEPT_ID) references DEPARTEMENT (ID);