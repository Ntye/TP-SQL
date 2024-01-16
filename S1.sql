create database if not exists TP;
use TP;

-- Q1 Creating the Departement table
create table if not exists DEPARTEMENT(
	ID numeric(7),
    NAME varchar(25)
);

-- Q3 Creating the Employee table
create table if not exists EMPLOYEE(
	ID numeric(7),
    LAST_NAME varchar(25),
    FIRST_NAME varchar(25),
    DEPT_ID numeric(7)
);

-- Q5 Creating the Employee2 table
create table if not exists EMPLOYEE2(
	EMPNO numeric(7),
    ENAME varchar(25),
    DEPTNO numeric(7)
);
