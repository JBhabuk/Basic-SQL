create table EmployeeDemographics
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
);


Insert into EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male');

INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000);

Select * from EmployeeSalary where Salary>60000
order by 2,1;

Select * from EmployeeDemographics where FirstName='Jim';

Select * from EmployeeDemographics 
where Age <>30 and Gender='Male';

Select * From EmployeeDemographics
Where LastName Like '%s%'

Select Gender,COUNT(Gender) as CGender
from EmployeeDemographics

Select *from EmployeeDemographics
select * from EmployeeSalary

Select a.EmployeeID, FirstName, LastName, JobTitle,Salary
from tutorial..EmployeeDemographics a 
join Tutorial..EmployeeSalary b 
on a.EmployeeID=b.EmployeeID where a.EmployeeID is not null

Select JobTitle,Max(Salary)
from tutorial..EmployeeDemographics a 
join Tutorial..EmployeeSalary b 
on a.EmployeeID=b.EmployeeID
where JobTitle= 'Salesman'
group by JobTitle

Select EmployeeID,FirstName,Age
from Tutorial..EmployeeDemographics
UNION
Select EmployeeID,JobTitle,Salary
from tutorial..EmployeeSalary
Order by EmployeeID

SELECT FirstName,Lastname,Age
from Tutorial..EmployeeDemographics
Where Age is not null
Order by Age

SELECT FirstName,Lastname,Age,
CASE 
	When Age>30 Then 'Old' 
	When Age Between 27 and 30 then 'Young'
	Else 'Baby'
END
from Tutorial..EmployeeDemographics
Where Age is not null
Order by Age


---------------------------------------------------------
SELECT FirstName,JobTitle,Salary,
CASE 
	When JobTitle ='Salesman' Then Salary+(Salary*.10)
	When JobTitle ='Accountant' Then Salary+(Salary*.05)
	When JobTitle ='HR' Then Salary+(Salary*.04)
	Else Salary+(Salary*.02)
END as SalaryafterRaise
from Tutorial..EmployeeDemographics a
join Tutorial..EmployeeSalary b
on a.EmployeeID=b.EmployeeID
Where Age is not null
Order by Age
Select JobTitle, COUNT(JobTitle)
from Tutorial..EmployeeSalary
Where JobTitle is not null
Group by JobTitle


SELECT JobTitle , COUNT(JobTitle)  
from Tutorial..EmployeeDemographics a 
join Tutorial..EmployeeSalary b
on a.EmployeeID=b.EmployeeID
group by JobTitle
Having COUNT(JobTitle) >1 

Select * 
from Tutorial..EmployeeDemographics
update tutorial..EmployeeDemographics 
set EmployeeID=1012 where FirstName='Holly'

delete from Tutorial..EmployeeDemographics
where EmployeeID=1005

Select AVG(Age)
from Tutorial..EmployeeDemographics
group by Age


Select FirstName,LastName, Gender,Salary,

from Tutorial..EmployeeDemographics Demo
join Tutorial..EmployeeSalary Sal
on Demo.EmployeeID=Sal.EmployeeID