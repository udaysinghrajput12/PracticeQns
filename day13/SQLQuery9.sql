TRUNCATE TABLE ERROR 
GO

TRUNCATE TABLE AgentC
GO

CREATE FUNCTION fnFirstNamevalidate
			(
				@FirstName varchar(15)
			)
RETURNS INT
as
BEGIN
  DECLARE
	@ret INT
  IF (@FirstName is null or len(@FirstName) > 50 
  or @FirstName like '%[^a-zA-Z]%')
  BEGIN
	SET @ret=0
  END
  else 
  BEGIN
   SET @ret=1
  END
  return @ret
end    
GO

CREATE FUNCTION fnSSNValidate(
					@SSN varchar(20)
					)
RETURNS INT 
AS
BEGIN
   DECLARE 
	@ret INT
   if @ssn NOT LIKE 
'[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]'
  BEGIN
   set @ret=0
  END
   else
  BEGIN
   set @ret=1
  END
   return @ret
end  
GO

-- CALLING Above From Stored Procedure 

CREATE proc prcAgentTransfer
as
BEGIN
		Insert into Error(EntityId,ErrorMsg,ColumnName)
			select EntityID,'First Name is Invalid','FirstName' 
				from TempAgent where dbo.fnFirstNamevalidate(FirstName)=0

		Insert Into Error(EntityID,ErrorMsg,ColumnName)
			select EntityID,'SSN is Not in Proper Format','SSN'
			from TempAgent where dbo.fnSSNValidate(SSN)=0

		Insert into AgentC(FirstName,SSN) 
			select FirstName,SSN from TempAgent where 
			EntityID <> All(Select EntityID from Error)
END
GO

EXEC prcAgentTransfer
GO


select * from AgentC

select * from Error