use Wipro26 
GO

select * from Agent
Go

create proc prcAgentSearchOut
				@agentId INT,
				@firstName varchar(30) OUTPUT,
				@lastName varchar(30) OUTPUT,
				@City varchar(30) OUTPUT,
				@state varchar(30) OUTPUT,
				@ssn varchar(30) OUTPUT
AS
BEGIN
	IF EXISTS(Select * from Agent WHERE AgentID = @agentId) 
	BEGIN
		SELECT @firstName = FirstName,
			   @lastName = LastName,
			   @City = City,
			   @state = State,
			   @ssn = SSN
		FROM Agent WHERE AgentID = @agentId
		RETURN 0
	END
	ELSE 
	BEGIN
		RETURN 1
	END
END
GO

Create Proc PrcAgentExecOut
						@agentId INT
AS
BEGIN
	Declare
		@FirstName varchar(30),
		@lastName varchar(30),
		@city varchar(30),
		@state varchar(30),
		@ssn varchar(30),
		@res INT
	BEGIN
		EXEC @res = prcAgentSearchOut @AgentId,@FirstName OUTPUT, @lastName OUTPUT,
						@city OUTPUT, @state OUTPUT,@ssn OUTPUT 
		IF @res = 0
		BEGIN
			PRINT 'First Name ' +@firstName
			PRINT 'Last Name ' +@lastName 
			PRINT 'City ' +@city
			PRINT 'State  ' +@state 
			PRINT 'SSN ' +@ssn
		END
		ELSE
		BEGIN
			PRINT 'Agent Id Not Found...'
		END
	END
END
GO

EXEC PrcAgentExecOut 3  
GO
