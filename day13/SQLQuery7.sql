Create Function Fact(@N INT) RETURNS INT
AS
BEGIN
	Declare
		@f INT,
		@i INT
	BEGIN
		SET @f = 1 
		SET @i = 1
		WHILE @i < @n 
		BEGIN
			SET @f = @f * @i 
			SET @i = @i + 1
		END
	END
	RETURN @f 
END
GO

select DBO.Fact(7) 
GO

Create Function NCR(@n INT, @r INT) RETURNS INT
AS
BEGIN
	Declare
		@res INT 
	BEGIN
		SELECT @res = dbo.Fact(@n) / (dbo.Fact(@n-@r) * dbo.Fact(@r))
	END
	RETURN @res
END
GO

select dbo.NCR(6,2)
GO
