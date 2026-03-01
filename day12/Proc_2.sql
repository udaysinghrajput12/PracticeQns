CREATE  PROCEDURE PrcEmployInsert
				@Empno INT,
				@Name VARCHAR(30),
				@Gender VARCHAR(30),
				@Dept VARCHAR(30),
				@Desig VARCHAR(30),
				@Basic NUMERIC(9,2)
AS
BEGIN
	INSERT INTO Employ(Empno, Name, Gender, Dept, Desig, Basic) 
			VALUES(@Empno, @Name, @Gender, @Dept, @Desig, @Basic)
END
GO

EXEC PrcEmployInsert 17,'Rupesh','MALE','Sql','DEVELOPER',84823 
GO

SELECT * FROM Employ
GO
