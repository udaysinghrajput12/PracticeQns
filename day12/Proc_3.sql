CREATE Proc PrcEmployDelete
				@Empno INT
AS
BEGIN
	IF EXISTS(SELECT * FROM Employ WHERE Empno = @Empno) 
	BEGIN
		DELETE From Employ WHERE Empno = @Empno
	END
	ELSE
	BEGIN
		PRINT 'Employ Record Not Found...' +Convert(varchar(10),@Empno)
	END
END
GO

EXEC PrcEmployDelete 17 
GO
