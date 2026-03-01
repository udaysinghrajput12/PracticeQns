Create Proc PrcEmploySearch
				@Empno INT
AS
BEGIN
	DECLARE
		@Name VARCHAR(30),
		@Gender VARCHAR(30),
		@Dept VARCHAR(30),
		@Desig VARCHAR(30),
		@Basic NUMERIC(9,2)
	BEGIN
	   SELECT 
		@Name = Name, 
		@Gender = Gender,
		@Dept = Dept, 
		@Desig = Desig,
		@Basic = Basic
	   FROM Employ  WHERE Empno = @Empno
	   PRINT 'Employ Name ' +@Name 
	   PRINT 'Gender ' +@Gender
	   PRINT 'Department  ' +@Dept
	   PRINT 'Designation  ' +@Desig
	   PRINT 'Basic  ' +CONVERT(VARCHAR(30),@Basic)
	END
END
GO

EXEC PrcEmploySearch 1 
GO
