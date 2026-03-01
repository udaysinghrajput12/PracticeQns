Use Wipro26
GO

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE Name='Student') 
DROP TABLE Student
GO

CREATE TABLE Student
(
	Sno INT IDENTITY(1,1)  
	CONSTRAINT Pk_Student_Sno PRIMARY KEY,
	Name VARCHAR(30) NOT NULL,
	Sub1 INT 
	CONSTRAINT chk_student_sub1 CHECK(Sub1 BETWEEN 1 AND 100),
	Sub2 INT
	CONSTRAINT chk_student_sub2 CHECK(Sub2 BETWEEN 1 AND 100),
	Sub3 INT
	CONSTRAINT chk_student_sub3 CHECK(Sub3 BETWEEN 1 AND 100),
	Total Numeric(9,2),
	Aveg Numeric(9,2)
)
GO

INSERT INTO STUDENT(Name,Sub1,Sub2,Sub3) 
  VALUES('Kabir',88,78,84),
     ('Kishore',87,89,94),
	 ('Vinay',87,91,94),
	 ('Irfan',97,85,77)
GO

UPDATE Student SET Total = Sub1 + Sub2 + Sub3, Aveg = (Sub1 + Sub2 + Sub3) / 3
GO


SELECT * FROM Student 
GO
