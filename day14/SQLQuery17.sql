select * from Agent
GO

BEGIN TRAN
Delete From Agent WHERE AgentID = 20 

Rollback TRAN

BEGIN TRAN
Delete From Agent WHERE AgentID = 18

COMMIT TRAN
GO

Create Proc prcEmployTran
AS
BEGIN
begin tran
declare @n int
update Employ set basic=basic+100 where dept='Dotnet'
select @n=avg(basic) from Employ where dept='Dotnet'
   if @n>=25000
   begin
   rollback tran
   print 'Transaction is rolled back'
end
else
begin
    commit tran
    print 'transaction is committed'
end
END
GO

EXEC prcEmployTran
GO
