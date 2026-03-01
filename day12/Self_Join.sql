USE Wipro26
GO

IF EXISTS(Select * from Sysobjects where name='EmployMgr') 
Drop Table EmployMgr 
GO

Create Table EmployMgr
(
   Empno INT Primary Key,
   Name varchar(30),
   Gender varchar(10),
   Salary Numeric(9,2),
   MgrID INT REFERENCES EmployMgr(Empno)
)
GO

INSERT INTO EmployMgr(Empno,Name,Gender,Salary,MgrID) 
values(1,'Tushar','MALE',84234,NULL),
(2,'Aryan','MALE',99234,1),
(3,'Vinay','MALE',84234,1),
(4,'Karthik','MALE',84234,2),
(5,'Abhishek','MALE',91234,1),
(6,'Akarsh','MALE',99911,2),
(7,'Ganesh','MALE',92234,1),
(8,'Kabir','MALE',91133,3)
GO
