use TP;

-- Q1
create table if not exists MY_EMPLOYEE(
	ID numeric(4) not null,
	LAST_NAME varchar(25),
	FIRST_NAME varchar(25),
	USERID varchar(8),
	SALARY numeric(9,2)
);