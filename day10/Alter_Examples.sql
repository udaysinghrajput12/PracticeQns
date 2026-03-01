-- EmpNew (empno,name,salary) 

use wipro26
go

if exists(select * from sysobjects where name='EmpNew') 
Drop Table EmpNew
Go

Create Table EmpNew
(
    Empno INT,
	Name varchar(30),
	Salary Numeric(9,2)
)
GO

/* Add Primary Key on Empno Field */

ALTER TABLE EMPNEW ALTER COLUMN Empno INT NOT NULL
GO

ALTER TABLE EmpNEW 
ADD Constraint Pk_EmpNew_Empno Primary Key(Empno) 
GO

-- ADD Field Gender as VARCHAR(30) 

ALTER TABLE EmpNew
Add Gender varchar(10)
GO

-- Drop Column Gender from EmpNew Table

Alter Table EmpNew
Drop Column Gender
GO
