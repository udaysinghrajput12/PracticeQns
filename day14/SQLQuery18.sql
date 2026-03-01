Create Proc PrcTranMult
AS
BEGIN
begin tran
update Employ set basic=basic+100 where dept='Java'
save tran t1
update Employ set basic=basic+300 where dept='Dotnet'
if (select avg(basic) from Employ where dept='Dotnet') >= 25000
begin
     print 'Transaction 1 is committed but transaction 2 has not completed'
     rollback tran t1
end
else
begin
   print 'Both transactions are committed'
   commit tran
end
END

EXEC PrcTranMult
GO
