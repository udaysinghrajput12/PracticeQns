use wipro26 
go

-- Display all tables in the current database 

select * from INFORMATION_SCHEMA.TABLES
GO

-- Display Info about Employ table 

sp_help Employ 
GO

-- Display all records from Employ Table 

select * from Employ
GO

-- Implementing Projection (Empno, Name, Gender, Basic) from Employ Table 

select Empno, Name, Gender, Basic
from Employ
GO

-- Where Clause : Used to display Filtered Records 

-- Display info whose Empno is 1

select * from Employ WHERE Empno = 1 
GO

-- Display info whose Basic > 80000

select * from Employ WHERE Basic > 80000 
GO 

-- Display Info whose Dept is 'Dotnet' 

select * from Employ WHERE Dept='Dotnet'
GO

-- Display Info whose Gender is 'MALE'

select * from Employ where Gender = 'MALE'
GO

-- Display info about Agent table 

sp_help Agent 
GO

-- Display all records from Agent Table 

select * from Agent 
GO

-- Display (AgentId,FIrstName,LastName,City,State,SSN) from Agent Table 

select AgentId, FirstName, LastName, City, State, SSN
From Agent 
GO

-- Display info whose MaritalStatus is 1

select * from Agent WHERE MaritalStatus = 1
GO

select * from Agent WHERE MaritalStatus = 0
GO

-- Display info whose gender is 'MALE' from Agent table 

select * FROM Agent where Gender='MALE' 
GO

-- Display Info whose COuntry is 'USA'

SELECT * From Agent WHERE Country = 'USA' 
GO

-- Between...AND : Used to display records from start to end 

select * from Employ WHERE Basic BETWEEN 85000 and 99000
GO

select * from Agent WHERE DOB BETWEEN '01-01-1980' AND '01-01-1986'
GO

select * from Employ WHERE Basic NOT BETWEEN 85000 and 99000
GO

select * from Agent WHERE DOB NOT BETWEEN '01-01-1980' AND '01-01-1986'
GO

-- IN  Clause : Used to display multiple values of particular attribute 

select * from Employ WHERE Dept IN('Java','Dotnet')
GO

Select * from Agent WHERE FirstName IN('Sunitha','Raj','Ramesh','Lavanya')
GO

select * from Employ WHERE Dept NOT IN('Java','Dotnet')
GO

Select * from Agent WHERE FirstName NOT IN('Sunitha','Raj','Ramesh','Lavanya')
GO

-- LIKE Operator : Used to display records w.r.t. Wild Cards 

-- Display records whose name starts with 'S' of Agent table

select * from Agent WHERE FirstName LIKE 'S%'
GO

-- Display all records whose Name ends with 'I' 

select * from Agent WHERE FirstName LIKE '%I'
GO

-- Order By : Used to display records on Particular field(s) in ascending or desc order

select * from Employ
GO

select * from Employ Order By Name 
Go

select * from Employ ORDER By Basic DESC
GO

SELECT * FROM Employ ORDER By Dept, Name 
GO

SELECT * FROM Employ ORDER By Dept, Name DESC
GO

select * from Agent 
GO

select AgentID, FirstName, LastName, City,State, Country
from AGENT  ORDER By Country,FirstName 
GO

select AgentID, FirstName, LastName, City,State, Country
from AGENT  ORDER By Country DESC,FirstName ASC
GO

-- TOP Keyword : Used to display top records based on condition

select * from Employ ORDER BY Basic DESC
GO

select TOP 3 * from Employ ORDER BY Basic DESC
GO

select TOP 3 AgentID, FirstName, LastName, City,State, Country
from AGENT  ORDER By Country,FirstName 
GO

-- Distinct : Used to remove duplicate entries at the time of display 

select dept from Employ 
GO

select distinct DEPT From Employ
GO

select * from Employ
GO
-- Generate column at runtime as 'MANAGER' FOR Java Ronald For Dotnet Nissy For SQL Vinod 

select Empno, Name,Dept,Basic ,
CASE Dept 
   WHEN 'JAVA' THEN 'Ronald'
   WHEN 'Dotnet' THEN 'Nissy'
   WHEN 'SQL' THEN 'Vinod'
END 'Manager'
from Employ
GO


select * from Agent 
GO

select AgentID, FirstName, LastName, CIty,State, MaritalStatus,
CASE MaritalStatus
   WHEN 0 THEN 'Unmarried'
   WHEN 1 THEN 'Married'
END 'Status'
from Agent
GO

select * from Policy
GO

select PolicyID, AppNumber, AppDate, PaymentModeID,
CASE PaymentModeID
  WHEN 1 THEN 'Yearly'
  WHEN 2 THEN 'Half-Yearly'
  WHEN 3 THEN 'Quarterly'
END 'Status'
from Policy
GO
