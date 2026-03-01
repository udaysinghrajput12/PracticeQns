USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'Wipro26')
BEGIN
    DROP DATABASE Wipro26;
END
GO

/* *****************************************************************************************
							CREATING 'WIPRO26'  DATABASE
   *****************************************************************************************
*/

CREATE DATABASE Wipro26;
GO

USE Wipro26;
GO

/* *****************************************************************************************
							CREATING EMPLOY TABLE
   *****************************************************************************************
*/


CREATE TABLE Employ
(
    Empno INT 
	CONSTRAINT PK_EMPLOY_Empno PRIMARY KEY, 
	Name VARCHAR(30) NOT NULL,
	Gender VARCHAR(10)
	CONSTRAINT chk_employ_gender CHECK(Gender IN('MALE','FEMALE')),
	Dept VARCHAR(20)
	CONSTRAINT chk_employ_dept CHECK(Dept IN('Java','Sql','Dotnet')),
	Desig VARCHAR(20)
	CONSTRAINT chk_employ_desig CHECK(Desig IN('Manager','TeamLead','Developer')),
	Basic Numeric(9,2)
	CONSTRAINT chk_employ_basic CHECK(Basic BETWEEN 10000 AND 100000)
)
GO

/* *****************************************************************************************
							INSERTING RECORDS INTO 'EMPLOY' TABLE
   *****************************************************************************************
*/

INSERT INTO Employ(Empno,Name,Gender,Dept,Desig,Basic) 
	values(1,'Abhishek','MALE','JAVA','Developer',88234),
	    (2,'Tushar','MALE','Dotnet','Manager',88222),
		(3,'Ganesh','MALE','Dotnet','TeamLead',97722),
		(4,'Karthik','MALE','Java','Developer',77722),
		(5,'Yash','MALE','Sql','Manager',88722),
		(6,'Mythri','FEMALE','Java','Developer',88822),
		(7,'Sanvi','FEMALE','Dotnet','Manager',82355)
GO

Drop Table LeaveDetails 
GO

CREATE TABLE LeaveDetails
(
    LeaveId INT IDENTITY(1,1) CONSTRAINT PK_LeaveDetails_LeaveId Primary Key,
	Empno INT CONSTRAINT FK_LeaveDetails_Empno REFERENCES Employ(Empno),
	LeaveStartDate Date,
	LeaveEndDate Date,
	NoOfDays INT,
	LeaveReason varchar(30)
)
GO

INSERT INTO LeaveDetails(Empno,LeaveStartDate, LeaveEndDate, LeaveReason) 
values(1,'01-01-2026','01-03-2026','Going Home'),
     (20,'01-06-2026','01-10-2026','Exams')
GO

