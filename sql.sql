-- Active: 1680591660189@@radixusers3.com@3306@milan_charan1
create table Employee (
	EMPLOYEE_ID int,
    FIRST_NAME varchar(255),
    LAST_NAME varchar(255),
    SALARY int,
    JOINING_DATE date,
    DEPARTMENT varchar(255)
);

INSERT INTO Employee (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES (1,'John', 'Abraham', 1000000, STR_TO_DATE("02-07-2016", "%m-%d-%Y"), 'Banking');

INSERT INTO Employee (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES (2, 'Michael', 'Clarke', 800000, STR_TO_DATE("01-06-2023", "%m-%d-%Y"), 'Insurance');

INSERT INTO Employee (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES (3, 'Roy', 'Thomas', 700000, STR_TO_DATE("07-07-2023", "%m-%d-%Y"), 'Banking');

INSERT INTO Employee (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES (4, 'Tom', 'Jose', 600000, STR_TO_DATE("07-16-1998", "%m-%d-%Y"), 'Insurance');

INSERT INTO Employee (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES (5, 'Jerry', 'Pinto', 650000, STR_TO_DATE("01-02-2013", "%m-%d-%Y"), 'Insurance');

INSERT INTO Employee (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES (6, 'Philip', 'Mathew', 750000, STR_TO_DATE("01-02-2013", "%m-%d-%Y"), 'Services');

INSERT INTO Employee (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES (7, 'TestName1', '123', 650000, STR_TO_DATE("01-02-2013", "%m-%d-%Y"), 'Services');

INSERT INTO Employee (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES (8, 'TestName2', 'Lname%', 600000, STR_TO_DATE("01-02-2013", "%m-%d-%Y"), 'Insurance');

INSERT INTO Employee (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES (9, 'TestName2', 'abdcio', 600000, STR_TO_DATE("01-02-2013", "%m-%d-%Y"), 'Insurance');

select * from Employee;

select FIRST_NAME, LAST_NAME from Employee;

select * from Employee
where FIRST_NAME = 'John' OR FIRST_NAME = 'Roy';

select * from Employee
where NOT FIRST_NAME = 'John' AND NOT FIRST_NAME = 'Roy';

select * from Employee
where FIRST_NAME like 'J%';

select * from Employee
where FIRST_NAME like '%o%';


select * from Employee
where SALARY between 500000 and 800000;

select distinct DEPARTMENT from Employee;

SELECT MAX(SALARY)
FROM Employee;

select SALARY from Employee
group by salary
order by salary desc limit 2;

with myCte as (
  select SALARY from Employee
  group by salary
  order by salary desc limit 2
)
select avg(salary) 'Average Salary' from myCte;

Select * from Employee 
where LAST_NAME like '%\%%';

-- CREATE TABLE incentives (s1 INT);


select FIRST_NAME, LENGTH(FIRST_NAME) LENGTH from Employee
where FIRST_NAME like 'A%' OR FIRST_NAME like 'J%' OR FIRST_NAME like 'M%'
ORDER BY FIRST_NAME;


select FIRST_NAME, LPAD(salary,10,'$') AS SALARY from Employee;

SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,JOINING_DATE 
FROM Employee
WHERE POSITION("07" IN DATE_FORMAT(JOINING_DATE, '%d %m %Y'))>0;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME , JOINING_DATE FROM Employee
WHERE DAY(JOINING_DATE) = 7 OR MONTH(JOINING_DATE) = 7 ;

select DISTINCT LENGTH(FIRST_NAME) LENGTH_NAME, LAST_NAME from Employee
where LAST_NAME like '__%c%'

