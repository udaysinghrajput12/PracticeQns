

CREATE FUNCTION fnEvenOdd(@n INT) RETURNS VARCHAR(30)
AS
BEGIN
	Declare
		@res varchar(30)
	if @n%2 = 0
	BEGIN
		SET @Res= 'EVEN NUMBER'
	END
	ELSE 
	BEGIN
		SET @res= 'ODD Number'
	END
	RETURN @res
END
GO

SELECT dbo.fnEvenOdd(11) 
GO

Create Function FnTax(@Salary Numeric(9,2)) RETURNS Numeric(9,2)
AS
BEGIN
	RETURN @Salary * 0.03
END
GO

Create Function FnTds(@Salary Numeric(9,2)) RETURNS Numeric(9,2)
AS
BEGIN
	RETURN @Salary * 0.10
END
GO

SELECT dbo.FnTax(10000) 
GO

SELECT DBO.FnTds(100000) 
GO


SELECT Empno, NAME,Basic, Dbo.FnTax(Basic) 'Tax Amount'
FROM Employ
GO

SELECT Empno, NAME,Basic, Dbo.FnTds(Basic) 'Tds Amount', Basic - DBO.FnTds(Basic) 'Take Home'
FROM Employ
GO

