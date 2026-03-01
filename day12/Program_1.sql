select * from Employ;

-- SUM () : Used to generate sum of numeric column specified 

select sum(basic) from Employ
GO

-- AVG() : Used to generate avg of the numeric column specified 

select avg(basic) from Employ
GO

-- MAX() : Used to generate max of the numeric column specified 

SELECT MAX(Basic) From Employ
GO

-- MIN() : Used to generate min of the numeric column specified 

select MIN(Basic) FROM Employ
GO

-- COUNT(*)  : Used to display no.of rows of a particular table 

SELECT COUNT(*) cnt FROM Employ
GO

-- Group BY : Allows you to generate summary reports on the field specified 

select DEPT, Sum(BASIC) 
from Employ GROUP BY DEPT 
GO

select DEPT, AVG(BASIC) 
from Employ GROUP BY DEPT 
GO

select DEPT, Sum(BASIC) 'Sum Sal', 
AVG(BASIC) 'Avg Sal',
Max(Basic) 'Max Sal', 
MIN(Basic) 'Min Sal', 
COUNT(*) 'Total Records' 
from Employ GROUP BY DEPT 
GO

select Gender,COUNT(*)
from Employ GROUP BY Gender
GO
