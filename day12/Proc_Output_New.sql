Create PROCEDURE PrcEmployShowOut
					@Empno INT
AS
BEGIN
	DECLARE
		@Name VARCHAR(30),
		@Gender VARCHAR(30),
		@Dept VARCHAR(30),
		@Desig VARCHAR(30),
		@Basic NUMERIC(9,2),
		@RES INT
	BEGIN
		EXEC @RES = PrcEmployOut @Empno, @Name OUTPUT, @Gender OUTPUT, @Dept OUTPUT, @Desig OUTPUT,
						@Basic OUTPUT 
		IF @RES = 0 
		BEGIN
			PRINT 'Employ Name ' +@Name 
			PRINT 'Gender ' +@Gender 
			PRINT 'Department ' +@Dept
			PRINT 'Designation ' +@Desig  
			PRINT 'Basic ' +CONVERT(VARCHAR(10),@Basic)
		END
		ELSE 
		BEGIN
			PRINT 'RECORD Not Found...'
		END
	END
END
GO

EXEC PrcEmployShowOut 10
GO
