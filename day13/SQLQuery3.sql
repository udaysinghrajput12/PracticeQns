Create Proc PrcAgentAll
			@FirstName varchar(40),    
			@LastName varchar(40),
			@MI varchar(2),
			@DOB DateTime,    
			@FullName varchar(80),    
			@Gender varchar(10),
			@SSN varchar(20),
			@MaritalStatus int,    
			@Address1 varchar(15),
			@Address2 varchar(15),
			@City varchar(15),
			@State varchar(15),    
			@ZipCode varchar(15),
			@country varchar(30),    
			@AgentID int output,
			@opt int=0
AS
BEGIN
	if(@opt=2)    
	begin    
		Insert into Agent(FirstName,MI,LastName,Gender,DOB,SSN,MaritalStatus,    
			Address1,Address2,City,State,ZipCode,Country)    
			values(@FirstName,@mi,@lastname,@gender,@DOB,@SSN,@MaritalStatus,    
				@address1,@address2,@city,@state,@zipcode,@Country)    
			select @AgentId=SCOPE_IDENTITY()    
			UPDATE Agent SET FullName = FirstName + ' ' + MI + ' ' + LastName WHERE AgentID = @AgentID
	END
	if(@opt=4)    
	begin    
		Update Agent set    
			FirstName=isnull(@FirstName,FirstName),  
			MI=isnull(@mi,MI),    
			LastName=isnull(@lastname,LastName),    
			FullName=IsNull(@FullName,FullName),    
			Gender=isnull(@gender,Gender),    
			SSN=isnull(@ssn,SSN),    
			DOB=ISNULL(@DOB,DOB),    
			MaritalStatus=ISNULL(@MaritalStatus,MARITALSTATUS),    
			Address1=isnull(@address1,Address1),    
			Address2=isnull(@address2,Address2),    
			City=isnull(@city,City),    
			State=isnull(@state,State),    
			ZipCode=isnull(@zipcode,ZipCode),    
			Country=IsNull(@Country,Country)    
		where AgentId=@AgentId    
	end    
	if(@opt=8)    
	begin    
		--print @agentid    
		delete from Agent where AgentId=@AgentId    
	end    
	if(@opt=12)    
	begin    
		select 
			@FirstName = FirstName,
			@LastName = LastName,
			@MI = MI,
			@Gender = Gender,
			@DOB = DOB,
			@SSN = SSN,
			@MaritalStatus = MaritalStatus,
			@Address1 = Address1,
			@Address2 = Address2,
			@City = City,
			@State = State, 
			@ZipCode = ZipCode,
			@country = Country
		from Agent where AgentId=@AgentId
		PRINT 'First Name   ' +@FirstName 
		PRINT 'MI  ' +@Mi
		PRINT 'Last Name  ' +@LastName 
		PRINT 'Gender  ' +@Gender 
		PRINT 'DOB  ' +CONVERT(VARCHAR(10),@DOB)
		PRINT 'SSN   ' +@SSN 
		PRINT 'MARITAL STATUS   ' +CONVERT(VARCHAR(10),@MaritalStatus) 
		PRINT 'Address 1   ' +@Address1 
		PRINT 'Address 2  ' +@Address2 
		PRINT 'City  ' +@City
		PRINT 'State  ' +@State 
		PRINT 'Zipcode  ' +@ZipCode 
		PRINT 'Country   ' +@Country
	END
END
GO

-- INSERT OPERATION
DECLARE
	@AgentID INT 
Exec PrcAgentAll 'Abhishek','Palli','A','01-01-2000',NULL,
'MALE','123-22-4422',0,'LIG B96','ASRAO Nagar','Hyderabad','TS','8482355','INDIA',@AgentID OUTPUT,2 

-- UPDATE OPERATION
EXEC PrcAgentAll NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ramapuram','DLF','Chennai','TN','848234','INDIA',20,4
GO

-- Search Operation

EXEC PrcAgentAll NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,12 
GO

-- Delete Operation

EXEC PrcAgentAll NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,8
GO
