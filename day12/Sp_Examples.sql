CREATE PROC PrcSayHello
AS
BEGIN
	PRINT 'Welcome To Stored Procedure'
END
GO

-- To Execute the Stored Procedure 

EXEC PrcSayHello 
GO

CREATE PROC PrcGreeting
				@Sname Varchar(30)
AS
BEGIN
	PRINT 'Good Moring...' +@Sname
END
GO

EXEC PrcGreeting 'Prasanna'
GO

CREATE PROC PrcCalculation
					@a INT,
					@b INT
AS
BEGIN
	DECLARE
		@C INT 
	SET @C = @a + @b 
	PRINT 'Sum is ' +Convert(varchar(10),@C)
	SET @C = @a - @b 
	PRINT 'Sub is ' +Convert(varchar(10),@C)
	SET @C = @a * @b 
	PRINT 'Mult is ' +Convert(varchar(10),@C)
END
GO

EXEC PrcCalculation 12,5 
GO

Create Proc PrcMaxSal
AS
BEGIN
	DECLARE
		@MaxSal INT
	SELECT @MaxSal = MAX(BASIC) FROM Employ
	PRINT 'Max Salary is ' +CONVERT(Varchar(10),@MaxSal)
END
GO

Exec PrcMaxSal
GO

CREATE PROC PrcTotalRecords
AS
BEGIN
	DECLARE
		@TotalRecords INT
	SELECT @TotalRecords = Count(*)
	FROm Employ 
	PRINT 'Total Records ' +CONVERT(Varchar(10),@TotalRecords)
END
GO

EXEC PrcTotalRecords
GO
