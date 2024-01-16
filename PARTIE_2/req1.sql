use TP;

-- Q2
insert into MY_EMPLOYEE values
	(1, "Patel", "Ralph", "Rpatel", 795);

-- Q3
insert into MY_EMPLOYEE (ID, LAST_NAME, FIRST_NAME, USERID, SALARY) values
	(2, "Dancs", "Betty", "Bdancs", 860);

insert into MY_EMPLOYEE values
	(3, "Biri", "Ben", "Bbiri", 1100),
	(4, "Newman", "Chad", "Cnewman", 750);

-- Q4
update MY_EMPLOYEE set LAST_NAME = "Drexler" where ID = 3;

-- Q5
update MY_EMPLOYEE set SALARY = 1000 where SALARY < 900;

--Q6
delete from MY_EMPLOYEE where LAST_NAME ="Dancs" and FIRST_NAME="Betty";

-- Q7
delete from MY_EMPLOYEE;