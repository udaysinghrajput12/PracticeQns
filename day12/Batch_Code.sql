declare
	@sname varchar(30)
BEGIN
	SET @sname = 'Karthik'
	Print 'Student Name is ' +@Sname
END
GO


DECLARE
	@Age INT 
BEGIN
	SET @Age = 24 
	PRINT 'Student Age is ' +Convert(varchar(10),@Age)
END
GO

DECLARE
	@N INT
BEGIN
	SET @N = 20
	IF @N%2 = 0 
	BEGIN
		PRINT 'Even Number...'
    END
	ELSE
	BEGIN
		PRINT 'Odd Number...'
	END
END
GO

DECLARE
	@TotalRecords INT
BEGIN
	SELECT @TotalRecords = COUNT(*) FROM Employ 
	PRINT 'Total Recods Are ' +CONVERT(VARCHAR(10),@TotalRecords)
END
GO

DECLARE
	@MaxSal INT
BEGIN
	SELECT @MaxSal = MAX(BASIC) FROM Employ 
	PRINT 'Max Salary is ' +CONVERT(VARCHAR(10),@MaxSAL)
END
GO

