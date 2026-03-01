Create Proc PrcAgentInsert
					@firstName varchar(30),
					@mi varchar(1),
					@lastName varchar(30),
					@gender varchar(10),
					@dob DateTime,
					@ssn varchar(30),
					@maritalStatus INT,
					@address1 varchar(30),
					@address2 varchar(30),
					@city varchar(30),
					@state varchar(30),
					@zipcode varchar(30),
					@country varchar(30),
					@agentId INT OUTPUT,
					@fullName varchar(30) OUTPUT 
AS
BEGIN
	SELECT @fullName = @firstName + ' ' + @mi + ' ' + @lastName 
	Insert into Agent(FirstName,Mi,LastName,Gender,DOB,SSN,MaritalStatus,Address1,Address2,
			City,State,ZipCode,Country) VALUES(@firstName,@mi,@lastName,@gender,@dob,@ssn,@maritalStatus,
			@address1,@address2,@city,@state,@zipcode,@country)
	SELECT @agentId = SCOPE_IDENTITY()
END
GO

Create Proc PrcAgentInsertOut
					@firstName varchar(30),
					@mi varchar(1),
					@lastName varchar(30),
					@gender varchar(10),
					@dob DateTime,
					@ssn varchar(30),
					@maritalStatus INT,
					@address1 varchar(30),
					@address2 varchar(30),
					@city varchar(30),
					@state varchar(30),
					@zipcode varchar(30),
					@country varchar(30)
AS
BEGIN
	DECLARE
		@agentId INT,
		@fullName varchar(30)
	BEGIN
	EXEC PrcAgentInsert @firstName,@mi,@lastName,@gender,@dob,@ssn,@maritalStatus,@address1,@address2,
				@city,@state,@zipcode,@country,@agentId OUTPUT,@fullName OUTPUT 
		PRINT 'Agent ID is ' +CONVERT(VARCHAR(10),@AgentID)
		PRINT 'Full Name is ' +@fullName 
	END
END
GO

EXEC PrcAgentInsertOut 'Komala','M','Mahesh','FEMALE','01-01-1990','123-33-2244',1,'TRT-81','Madhura Nagar',
'Hyderabad','TS','8482334','INDIA'
GO

select * from Agent 
GO
