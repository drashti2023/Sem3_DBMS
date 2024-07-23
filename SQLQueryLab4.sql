--Alter Operation
--Part – A:

--Use Deposit table of lab-1:DEPOSIT
--From the above given tables perform the following queries (ALTER Operation):

--1. Add two more columns City VARCHAR (20) and Pincode INT.
Alter table deposit add city varchar(20), pincode int

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
Alter table deposit alter column cname varchar(35)

--3. Change the data type DECIMAL to INT in amount Column.
Alter table deposit alter column amount int
select * from deposit

--4. Rename Column ActNo to ANO.
SP_RENAME "DEPOSIT.AMOUNT","ANO"

--5. Delete Column City from the DEPOSIT table.
Alter table deposit drop column city

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
SP_RENAME "DEPOSIT", "DEPOSIT_DETAIL"
select * from deposit_detail

--Part – B:

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
SP_RENAME "DEPOSIT_DETAIL.ADATE","AOPENDATE"

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
Alter table deposit_detail drop column aopendate

--3. Rename Column CNAME to CustomerName.
SP_RENAME "DEPOSIT_DETAIL.CNAME","CustomerName"

--Part – C:

CREATE TABLE STUDENT_DETAIL(
      Enrollment_No VARCHAR(20),
	  Name varchar(25),
	  CPI DECIMAL(5,2),
	  Birthdate DATETIME
	);
select * from student_detail

--From the above given tables perform the following queries (ALTER Operation):

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
Alter table student_detail add City varchar(20) not null default 'RAJKOT', Backlog int

--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
Alter table student_detail alter column name varchar(35)

--3. Change the data type DECIMAL to INT in CPI Column.
Alter table student_detail alter column CPI int

--4. Rename Column Enrollment_No to ENO.
SP_RENAME "STUDENT_DETAIL.ENROLLMENT_NO","ENO"

--5. Delete Column City from the student_detail table.
 Alter table student_detail drop column city

--6. Change name of table student_detail to STUDENT_MASTER.
 SP_RENAME "STUDENT_DETAIL","STUDENT_MASTER"

--DELETE,TRUNCATE,DROP OPERATION
--Part – A:

--Use Deposit_Detail table (Altered table of DEPOSIT)

select * from deposit_detail

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
Delete from deposit_detail where ano>=4000

--2. Delete all the accounts CHANDI BRANCH.
Delete from deposit_detail where bname='CHANDI'

--3. Delete all the accounts having account number (ANO) is greater than 105.
Delete from deposit_detail where ano>105

--4. Delete all the records of Deposit_Detail table. (Use Truncate)
Truncate table DEPOSIT_DETAIL

--5. Remove Deposit_Detail table. (Use Drop)
Drop table DEPOSIT_DETAIL

--Part – B:

CREATE TABLE EMPLOYEE_MASTER(
    EmpNo INT,
	EmpName Varchar(25),
	JoiningDate Datetime,
	Salary decimal(8,2),
	City varchar(20)
 );
 
  insert into EMPLOYEE_MASTER VALUES(101, 'Keyur', '1902-01-05', 12000, 'Rajkot')
  insert into EMPLOYEE_MASTER VALUES(102, 'Hardik', '1904-02-15', 14000, 'Ahmedabad')
  insert into EMPLOYEE_MASTER VALUES(103, 'Kajal', '1906-03-14', 15000, 'Baroda')
  insert into EMPLOYEE_MASTER VALUES(104, 'Bhoomi', '1905-06-23', 12500, 'Ahmedabad')
  insert into EMPLOYEE_MASTER VALUES(105, 'Harmit', '1904-02-15', 14000, 'Rajkot')
  insert into EMPLOYEE_MASTER VALUES(106, 'Mitesh', '1901-09-25', 5000, 'Jamnagar')
  insert into EMPLOYEE_MASTER VALUES(107, 'Meera', NULL, 7000, 'Morbi')
  insert into EMPLOYEE_MASTER VALUES(108, 'Kishan', '1903-02-06', 10000, NULL)
  select *from EMPLOYEE_MASTER

--From the above given tables perform the following queries (DELETE Operation):

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
Delete from employee_master where salary>=14000

--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
Delete from employee_master where city='rajkot'

--3. Delete all the Employees who joined after 1-1-2007.
Delete from employee_master where JoiningDate>'2007-1-1'

--4. Delete the records of Employees whose joining date is null and Name is not null.
Delete from employee_master where joiningdate is null AND empname is not null

--5. Delete the records of Employees whose salary is 50% of 20000.
Delete from employee_master where salary=10000

--6. Delete the records of Employees whose City Name is not empty.
Delete from employee_master where city is not null

--7. Delete all the records of Employee_MASTER table. (Use Truncate)
Truncate table EMPLOYEE_MASTER

--8. Remove Employee_MASTER table. (Use Drop)
Drop table EMPLOYEE_MASTER

--Part – C:

--1. Summarize Delete, Truncate and Drop
