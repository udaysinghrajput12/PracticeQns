Create Proc PrcEmployOut
			@Empno INT,
			@Name VARCHAR(30) OUTPUT,
			@Gender VARCHAR(30) OUTPUT,
			@Dept VARCHAR(30) OUTPUT,
			@Desig VARCHAR(30) OUTPUT,
			@Basic Numeric(9,2) OUTPUT
AS
BEGIN
	IF EXISTS(SELECT * FROM Employ WHERE Empno = @Empno) 
	BEGIN
		SELECT 
			@Name = Name, 
			@Gender = Gender, 
			@Dept = Dept, 
			@Desig = Desig, 
			@Basic = Basic
		FROM Employ WHERE Empno = @Empno
		RETURN 0
	END
	ELSE 
	BEGIN
		RETURN 1
	END
END