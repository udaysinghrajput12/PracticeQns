CREATE FUNCTION GetCustomersWithOrdersDetails ()
RETURNS @CustomersWithOrders TABLE 
(
	CustomerID int, 
	ContactName nvarchar(50), 
	Orderid int,
	orderdate date,
	city varchar(50)
)
AS
BEGIN
   INSERT INTO @CustomersWithOrders
   SELECT c.customer_id, c.ContactName, 
   order_id ,order_date,city
   FROM Customer c
   JOIN Orders o ON c.customer_id = o.customer_id
   RETURN
END
GO

select * from dbo.GetCustomersWithOrdersDetails()
GO
