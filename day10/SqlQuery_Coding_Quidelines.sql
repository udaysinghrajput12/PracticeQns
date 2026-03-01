/* =========================================================================================
   DATABASE  : Wipro26
   PURPOSE   : Employee Management Sample Database
   ========================================================================================= */

USE master;
GO

/* =========================================================================================
   DROP DATABASE IF EXISTS
   ========================================================================================= */

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = N'Wipro26')
BEGIN
    ALTER DATABASE Wipro26 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Wipro26;
END
GO

/* =========================================================================================
   CREATE DATABASE
   ========================================================================================= */

CREATE DATABASE Wipro26;
GO

USE Wipro26;
GO

/* =========================================================================================
   CREATE TABLE : dbo.Employ
   ========================================================================================= */

CREATE TABLE dbo.Employ
(
    EmpNo   INT             NOT NULL,
    Name    NVARCHAR(30)    NOT NULL,
    Gender  NVARCHAR(10)    NOT NULL,
    Dept    NVARCHAR(20)    NOT NULL,
    Desig   NVARCHAR(20)    NOT NULL,
    Basic   NUMERIC(9,2)    NOT NULL,

    CONSTRAINT PK_Employ PRIMARY KEY (EmpNo),

    CONSTRAINT CK_Employ_Gender 
        CHECK (Gender IN ('MALE', 'FEMALE')),

    CONSTRAINT CK_Employ_Dept 
        CHECK (Dept IN ('JAVA', 'SQL', 'DOTNET')),

    CONSTRAINT CK_Employ_Desig 
        CHECK (Desig IN ('MANAGER', 'TEAMLEAD', 'DEVELOPER')),

    CONSTRAINT CK_Employ_Basic 
        CHECK (Basic BETWEEN 10000 AND 100000)
);
GO

/* =========================================================================================
   INSERT SAMPLE DATA
   ========================================================================================= */

INSERT INTO dbo.Employ (EmpNo, Name, Gender, Dept, Desig, Basic)
VALUES
(1, N'Abhishek', N'MALE',   N'JAVA',   N'DEVELOPER', 88234),
(2, N'Tushar',   N'MALE',   N'DOTNET', N'MANAGER',   88222),
(3, N'Ganesh',   N'MALE',   N'DOTNET', N'TEAMLEAD',  97722),
(4, N'Karthik',  N'MALE',   N'JAVA',   N'DEVELOPER', 77722),
(5, N'Yash',     N'MALE',   N'SQL',    N'MANAGER',   88722),
(6, N'Mythri',   N'FEMALE', N'JAVA',   N'DEVELOPER', 88822),
(7, N'Sanvi',    N'FEMALE', N'DOTNET', N'MANAGER',   82355);
GO