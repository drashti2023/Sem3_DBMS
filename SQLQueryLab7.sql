--Part – A:

create table EMP(
  EID INT,
  ENAME VARCHAR(20),
  DEPARTMENT VARCHAR(20),
  SALARY INT ,
  JOINING_DATE DATETIME,
  CITY VARCHAR(20)
);

INSERT INTO EMP(EID,ENAME,DEPARTMENT,SALARY,JOINING_DATE,CITY)
VALUES
(101,'RAHUL','ADMIN',56000,'1-JAN-90','RAJKOT'),
(102,'HARDIK','IT',18000,'25-SEP-90','AHMEDABAD'),
(103,'BHAVIN','HR',25000,'14-MAY-91','BARODA'),
(104,'BHOOMI','ADMIN',39000,'8-FEB-91','RAJKOT'),
(105,'ROHIT','IT',17000,'23-JUL-90','JAMNAGAR'),
(106,'PRIYA','IT',9000,'18-OCT-90','AHMEDABAD'),
(107,'BHOOMI','HR',34000,'25-DEC-91','RAJKOT')

select * from emp
	
--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
select max(salary) as Maximum, min(salary) as Minimum from emp;

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
select sum(salary) as Total_Sal, avg(salary) as Average_Sal from emp;

--3. Find total number of employees of EMPLOYEE table.
select count(*) from emp;
select count(EName) from emp;

--4. Find highest salary from Rajkot city.
select max(salary) from emp where city='Rajkot';

--5. Give maximum salary from IT department.
select max(salary) from emp where department='IT';

--6. Count employee whose joining date is after 8-feb-91.
select count(EName) from emp where Joining_Date > '8-feb-91'

--7. Display average salary of Admin department.
select avg(salary) from emp where department='Admin';

--8. Display total salary of HR department.
select sum(salary) from emp where department='HR';

--9. Count total number of cities of employee without duplication.
select count(distinct city) from emp;

--10. Count unique departments.
select count(distinct department) from emp;

--11. Give minimum salary of employee who belongs to Ahmedabad.
select min(salary) from emp where city='Ahmedabad';

--12. Find city wise highest salary.
select city,max(salary) from emp group by city;

--13. Find department wise lowest salary.
select department,min(salary) from emp group by department;

--14. Display city with the total number of employees belonging to each city.
select city,count(Ename) from emp group by city;

--15. Give total salary of each department of EMP table.
select department,count(salary) from emp group by department;

--16. Give average salary of each department of EMP table without displaying the respective department
--name.
select avg(salary) from emp group by department;

--Part – B:

--1. Count the number of employees living in Rajkot.
select count(EName) from emp where city='Rajkot';

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(salary) - min(salary) as DIFFERENCE from EMP;

--3. Display the total number of employees hired before 1st January, 1991.
select count(EName) from emp where Joining_Date < '1-Jan-91';

--Part – C:

--1. Count the number of employees living in Rajkot or Baroda.
select count(EName) from emp where City = 'Rajkot' or City= 'Baroda';

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
select count(EName) from emp where Joining_Date < '1-Jan-91' and Department= 'IT';

--3. Find the Joining Date wise Total Salaries.
select Joining_Date, sum(salary) from emp group by Joining_Date;

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
select city, department, max(salary) from emp where city like 'R%' group by city, department;