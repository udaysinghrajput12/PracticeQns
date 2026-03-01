-- SUM 

select sum(basic) from EMploy;

-- AVG 

select AVG(Basic) from Employ
GO

-- MAX

SELECT MAX(Basic) From Employ
GO

-- MIN

SELECT MIN(Basic) FROM Employ 
GO

-- COUNT(*)  : Displays total records of the particular table 

SELECT COUNT(*) from Employ 
GO

-- GROUP BY : Used to generate summary report on the field specified 

select DEPT, sum(BASIC) FROM EMploy 
GROUP BY DEPT 

-- DIsplay dept-wise how many employees are working 

select DEPT, COUNT(*) FROM Employ 
GROUP By Dept 
GO

-- Display DEpt-wise Sum,Avg,Max,Min,Count of EMploees 

select Dept, Sum(Basic) 'Total Salary', 
	Avg(Basic) 'Avg Salary', 
	Max(Basic) 'Max Salary', 
	Min(Basic) 'Min Salary', 
	Count(*) 'Total Employees'
from Employ Group By Dept
GO

-- HAVING : Used to check condition on Aggregate fields 

select Dept, Sum(Basic) 'Total Salary', 
	Avg(Basic) 'Avg Salary', 
	Max(Basic) 'Max Salary', 
	Min(Basic) 'Min Salary', 
	Count(*) 'Total Employees'
from Employ Group By Dept
HAVING COUNT(*) > 1
GO


select DEPT, sum(BASIC) FROM EMploy 
GROUP BY DEPT 
HAVING SUM(BASIC) > 90000
GO


