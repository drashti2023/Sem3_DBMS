CREATE TABLE Stu_Info (
    Rno INT ,
    Name VARCHAR(50),
    Branch VARCHAR(50)
);

INSERT INTO Stu_Info (Rno, Name, Branch)
VALUES 
    (101, 'Raju', 'CE'),
    (102, 'Amit', 'CE'),
    (103, 'Sanjay', 'ME'),
    (104, 'Neha', 'EC'),
    (105, 'Meera', 'EE'),
    (106, 'Mahesh', 'ME');
select * from Stu_Info;

CREATE TABLE Result (
	RNO INT,
    SPI DECIMAL(4, 2),
	);
	
INSERT INTO Result (Rno, SPI)
VALUES 
    (101, 8.8),
    (102, 9.2),
    (103, 7.6),
    (104, 8.2),
    (105, 7.0),
    (107, 8.9);  
select * from Result;

CREATE TABLE EMPLOYEE_MASTER (
    EmployeeNo VARCHAR(50) ,
    Name VARCHAR(50),
    ManagerNo VARCHAR(50)
);

INSERT INTO Employee_Master(EmployeeNo, Name, ManagerNo)
VALUES 
    ('E01', 'Tarun', NULL),
    ('E02', 'Rohan', 'E02'),
    ('E03', 'Priya', 'E01'),
    ('E04', 'Milan', 'E03'),
    ('E05', 'Jay', 'E01'),
    ('E06', 'Anjana', 'E04');
select * from Employee_Master;

--Part – A:
--1. Combine information from student and result table using cross join or Cartesian product.
select * from STU_INFO 
cross Join Result;

--2. Perform inner join on Student and Result tables.
select * from STU_INFO S
inner Join Result R
on S.RNo = R.RNo;

--3. Perform the left outer join on Student and Result tables.
select * from STU_INFO S
left outer Join Result R
on S.RNo = R.RNo;

--4. Perform the right outer join on Student and Result tables.
select * from STU_INFO S 
right outer Join Result R 
on S.RNo = R.RNo;

--5. Perform the full outer join on Student and Result tables.
select * from STU_INFO S 
full outer Join Result R
on S.RNo = R.RNo;

--6. Display Rno, Name, Branch and SPI of all students.
select 
	S.RNo,S.Name,S.Branch,R.SPI 
from STU_INFO S
left outer Join Result R
on S.RNo = R.RNo;

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
select 
	S.RNo,S.Name,S.Branch,R.SPI 
from STU_INFO S
left outer Join Result R
on S.RNo = R.RNo 
where S.Branch='CE';

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select 
	S.RNo,S.Name,S.Branch,R.SPI 
from STU_INFO S
left outer Join Result R
on S.RNo = R.RNo 
where S.Branch != 'EC';

--9. Display average result of each branch.
select 
	S.Branch,avg(R.SPI) 
from STU_INFO S
Join Result R
on S.RNo = R.RNo 
Group by S.Branch;

--10. Display average result of CE and ME branch.
select 
	S.Branch,avg(R.SPI) 
AS AVG_SPI 
from STU_INFO S
Join Result R
on S.RNo = R.RNo 
Group by S.Branch 
having S.Branch ='CE' or S.Branch ='ME';

--Part – B:
--1. Display average result of each branch and sort them in ascending order by SPI.
select 
	S.Branch,avg(R.SPI) 
from STU_INFO S
Join Result R
on S.RNo = R.RNo 
Group by S.Branch 
order by avg(R.SPI) Asc;

--2. Display highest SPI from each branch and sort them in descending order.
select 
	S.Branch,max(R.SPI) 
from STU_INFO S
Join Result R
on S.RNo = R.RNo 
Group by S.Branch 
order by max(R.SPI) Desc;

--Part – C:
--1. Retrieve the names of employee along with their manager’s name from the Employee table.
select 
	A.Name as 'EMP_Name', 
	B.Name as 'Manager_Name' 
from EMPLOYEE_MASTER A 
inner join EMPLOYEE_MASTER B 
on A.EmployeeNo = B.ManagerNo;
