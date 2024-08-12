--Math functions
--Part – A:
--1. Display the result of 5 multiply by 30.
select abs(5*30)

--2. Find out the absolute value of -25, 25, -50 and 50.
select abs(-25),abs(25),abs(-50),abs(50)

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
select ceiling(25.2),ceiling(25.7),ceiling(-25.2)

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select floor(25.2),floor(25.7),floor(-25.2)

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
select abs(5%2),abs(5%3)

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
select power(3,2),power(4,3)

--7. Find out the square root of 25, 30 and 50.
select sqrt(25),sqrt(30),sqrt(50)

--8. Find out the square of 5, 15, and 25.
select square(5),square(15),square(25)

--9. Find out the value of PI.
select PI()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
select round(157.732,2),round(157.732,0),round(157.732,-2)

--11. Find out exponential value of 2 and 3.
select exp(2),exp(3)

--12. Find out logarithm having base e of 10 and 2.
select log(10),log(2)

--13. Find out logarithm having base b having value 10 of 5 and 100.
select log10(5),log10(100)
select log(5,10),log(100,10)

--14. Find sine, cosine and tangent of 3.1415.
select sin(3.1415),cos(3.1415),tan(3.1415)

--15. Find sign of -25, 0 and 25.
select sign(-25),sign(0),sign(25)

--16. Generate random number using function.
select rand()

--Part – B:

create table EMP_MASTER(
	EMPNO INT,
	EMPNAME VARCHAR(20),
	JOININGDATE DATETIME,
	SALARY DECIMAL(8,2),
	COMMISSION INT,
	CITY VARCHAR(20),
	DEPT_CODE VARCHAR(20)
	);

INSERT INTO EMP_MASTER(EMPNO,EMPNAME,JOININGDATE,SALARY,COMMISSION,CITY,DEPT_CODE)
VALUES
(101,'KEYUR','2002-1-5',12000.00,4500,'RAJKOT','3@g'),
(102,'HARDIK','2004-2-15',14000.00,2500,'AHMEDABAD','3@g'),
(103,'KAJAL','2006-3-14',15000.00,3000,'BARODA','3-GD'),
(104,'BHOOMI','2005-6-23',12500.00,1000,'AHMEDABAD','1A3D'),
(105,'HARMIT','2004-2-15',14000.00,2000,'RAJKOT','312A')

select * from emp_master

--1. Display the result of Salary plus Commission..
select empname,(salary + commission) as Result
from emp_master

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
select ceiling(55.2),ceiling(35.7),ceiling(-55.2)

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
select floor(55.2),floor(35.7),floor(-55.2)

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
select (55%2),(55%3)

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
select power(23,2),power(14,3)

--Part – C:
--1. Find out the square root of 36, 49 and 81.
select sqrt(36),sqrt(49),sqrt(81)

--2. Find out the square of 3, 9, and 12.
select square(3),square(9),square(12)

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
select round(280.8952,2),round(280.8952,0),round(280.8952,-2)

--4. Find sine, cosine and tangent of 4.2014.
select sin(4.2014),cos(4.2014),tan(4.2014)

--5. Find sign of -55, 0 and 95.
select sign(-55),sign(0),sign(95)

--String functions
--Part – A:
--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
select len(NULL)
select len(' hello ')
select len('')

--2. Display your name in lower & upper case.
select upper('drashti'),lower('DRAShtI')

--3. Display first three characters of your name.
select substring('Drashti',1,3)

--4. Display 3rd to 10th character of your name(space count thase)
select substring('Drashti Rathod',3,10)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
select replace('abc123efg','123','XYZ')
select replace('abcabcabc','c','5')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
select ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z')
select ASCII(0),ASCII(9)

--7. Write a query to display character based on number 97,65,122,90,48,57.
select char(97),char(65),char(122),char(90),char(48),char(57)

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
select ltrim('  hello world  ')

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
select rtrim('  hello world  ')

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
select left('SQL Server',4),right('SQL Server',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
select cast('1234.56' as int)
select convert(int,'1234.56')

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
select cast(10.58 as int)
select convert(int,10.58)

--13. Put 10 space before your name using function.
select space(10)+'Drashti'

--14. Combine two strings using + sign as well as CONCAT ().
select concat_ws('#23','Drashti','Rathod','August')
select 'Drashti' +' '+ 'Rathod'

--15. Find reverse of “Darshan”.
select reverse('Darshan')

--16. Repeat your name 3 times.
select replicate('Drashti',3)

--Part – B: Perform following queries on Student table of practical no 5.
--1. Find the length of FirstName and LastName columns.
select stuID, len(FirstName) as FirstName,len(LastName) as LastName from student

--2. Display FirstName and LastName columns in lower & upper case.
select lower(firstname) as firstname, lower(lastname) as lastname from student
select upper(firstname) as FIRSTNAME, upper(lastname) as LASTNAME from student

--3. Display first three characters of FirstName column.
select substring(firstname,1,3) from student

--4. Display 3rd to 10th character of Website column.
select substring(website,3,10) from student

--5. Write a query to display first 4 & Last 5 characters of Website column.
select left(website,4) as first4,right(website,5) as last5 from student

--Part – C: Perform following queries on Student table of practical no 5.
--1. Put 10 space before FirstName using function.
select SPACE(10) + FirstName from student

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
select CONCAT_ws(' ',FirstName,LastName) from student
select FirstName+ ' '+LastName from student

--3. Combine all columns using + sign as well as CONCAT ().
select CONCAT_ws(' ',FirstName,LastName,Website,City,Address) from student
select FirstName+ ' '+LastName+' '+Website+' '+City+' '+' '+Address from student

--4. Find reverse of FirstName column.
select REVERSE(FirstName) from student

--5. Repeat FirstName column 3 times
select REPLICATE(FirstName,3) from student

--6. Give the Names which contains 5 characters.
select * from student where FirstName like '___'

--7. Combine the result as <FirstName> Lives in <City>.
select FirstName +' Lives in '+ City from student

--8. Combine the result as Student_ID of < FirstName > is <StuID>.SELECT CONCAT('Student_ID of ', FirstName, ' is ', stuID) AS StudentInfo
FROM student--Date Functions
--Part – A:
--1. Write a query to display the current date & time. Label the column Today_Date.
select GETDATE() as Today_Date

--2. Write a query to find new date after 365 day with reference to today.
select DATEADD(DD,365,GETDATE())

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
select FORMAT(GETDATE(), 'MMM dd yyyy hh:mm:sstt')

--4. Display the current date in a format that appears as 03 Jan 1995.
select FORMAT(GETDATE(),'dd MMM yyyy')

--5. Display the current date in a format that appears as Jan 04, 96.
select FORMAT(GETDATE(),'MMM dd, yy')

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
select DATEDIFF(month,'2008-12-31','2009-03-31')

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
select DATEDIFF(year,'2012-01-25','2010-09-14')

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
select DATEDIFF(hour,'2012-01-25 7:00','2012-01-26 10:30')

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
select DATEPART(DAY,'2016-05-12') as 'Day'
select DATEPART(MONTH,'2016-05-12') as 'Month'
select DATEPART(YEAR,'2016-05-12') as 'Year'

--10. Write a query that adds 5 years to current date.
select DATEADD(yy,5,GETDATE())

--11. Write a query to subtract 2 months from current date.
select DATEADD(mm,-2,GETDATE())

--12. Extract month from current date using datename () and datepart () function.
select DATENAME(month,GETDATE()) as 'Month'
select DATEPART(month,GETDATE()) as 'Month'

--13. Write a query to find out last date of current month.
select EOMONTH(GETDATE())

--14. Calculate your age in years and months.
select DATEDIFF(year,'2005-08-23',GETDATE())
select DATEDIFF(month,'2005-08-23',GETDATE())

--Part – B:

create table EMP_DETAIL(
	EMPNO INT,
	EMPNAME VARCHAR(10),
	JOININGDATE DATETIME,
	SALARY INT,
	CITY VARCHAR(10)
	);

INSERT INTO EMP_DETAIL(EMPNO,EMPNAME,JOININGDATE,SALARY,CITY)
VALUES
(101,'KEYUR','15-JAN-02',12000,'RAJKOT'),
(102,'HARDIK','15-FEB-04',14000,'AHMEDABAD'),
(103,'KAJAL','14-MAR-06',15000,'BARODA'),
(104,'BHOOMI','23-JUN-05',12500,'AHMEDABAD'),
(105,'HARMIT','15-FEB-04',14000,'RAJKOT'),
(106,'JAY','12-MAR-07',12000,'SURAT')

select * from emp_detail

--1. Write a query to find new date after 365 day with reference to JoiningDate.
select DATEADD(DD,365,JoiningDate) from emp_detail

--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
select FORMAT(JoiningDate, 'MMM dd yyy hh:mm:sstt') from emp_detail

--3. Display the JoiningDate in a format that appears as 03 Jan 1995.
select FORMAT(JoiningDate, 'dd MMM yyy') from emp_detail

--4. Display the JoiningDate in a format that appears as Jan 04, 96.
select FORMAT(JoiningDate, 'MMM dd, yy') from emp_detail

--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09
select DATEDIFF(MONTH,JoiningDate,'31-Mar-09') from emp_detail

--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
select DATEDIFF(YEAR,JoiningDate,'14-Sep-10') from emp_detail

--Part – C:
--1. Write a query to extract Day, Month, Year from JoiningDate.
select DATEPART(DAY,JoiningDate) As 'Day' from emp_detail
select DATEPART(MONTH,JoiningDate) As 'Month' from emp_detail
select DATEPART(YEAR,JoiningDate) As 'Year' from emp_detail

--2. Write a query that adds 5 years to JoiningDate.
select DATEADD(YY,5,JoiningDate) from emp_detail

--3. Write a query to subtract 2 months from JoiningDate.
select DATEADD(MM,-2,JoiningDate) from emp_detail

--4. Extract month from JoiningDate using datename () and datepart () function.
select DATEPART(MONTH,JoiningDate) As 'Month' from emp_detail
select DATENAME(MONTH,JoiningDate) as 'Month' from emp_detail

--5. Calculate your age in years and months
select DATEDIFF(year,'2004-12-18',JoiningDate) from emp_detail
select DATEDIFF(month,'2004-12-18',JoiningDate) from emp_detail