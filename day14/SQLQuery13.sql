-- Create a table valued function, that which returns all Dotnet Dept records

Create Function FnEmployDeptInfo
(	
	@dept varchar(30)
)
RETURNS TABLE
AS
RETURN
(
	SELECT Empno, Name,Dept,Desig, Basic
		FROM Employ WHERE Dept = @dept
);
GO

SELECT * from FnEmployDeptInfo('Dotnet');
SELECT * from FnEmployDeptInfo('Java');
GO

Create Function FnEmployGenderInfo
(
	@Gender varchar(30)
)
RETURNS TABLE
AS
RETURN
(
	SELECT Empno, Name, Gender, Dept,Desig, Basic
	 FROM Employ WHERE Gender = @Gender
)
GO

Select * from FnEmployGenderInfo('MALE')
GO

Select * from FnEmployGenderInfo('FEMALE')
GO

Create Function FnAgentInfo
(
	@Mstat INT
)
RETURNS TABLE
AS
RETURN
(
	SELECT AgentID, FirstName, LastName, State,SSN,City,ZipCode,MaritalStatus
	FROM Agent WHERE MaritalStatus = @Mstat
)
GO


SELECT * FROM FnAgentInfo(0)
GO

SELECT * FROM FnAgentInfo(1)
GO


