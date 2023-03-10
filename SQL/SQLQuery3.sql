CREATE TABLE TBL_STUDENT
(
ROLLNO INT PRIMARY KEY
,NAME VARCHAR(50)
,FATHERNAME VARCHAR(50)
,DOJ DATE
,DOB DATE
,BRANCH VARCHAR(50)
)

SELECT * FROM TBL_STUDENT

SELECT * FROM [dbo].[TBL_STUDENT]

INSERT INTO [dbo].[TBL_STUDENT] VALUES(3,'DURGA','PITTLA','07/26/2022','04/22/2000','CSE','B')
INSERT INTO [dbo].[TBL_STUDENT] VALUES(4,'PAVAN','SOREDDY','07/26/2022','04/02/2000','CSE','A')
INSERT INTO TBL_STUDENT VALUES(01,'VAMSI','MAPATHINA','07/26/2022','03/23/2000','JAVA')
INSERT INTO TBL_STUDENT VALUES(02,'CHIRU','KARANAM','07/26/2022','12/13/1999','PYTHON')

ALTER TABLE [dbo].[TBL_STUDENT] ADD GRADE CHAR(3)

ALTER TABLE [dbo].[TBL_STUDENT] ALTER COLUMN GRADE INT

ALTER TABLE [dbo].[TBL_STUDENT] DROP COLUMN GRADE


CREATE TABLE TBL_LIBRARY
(
BOOKNAME VARCHAR(50)
,DOJ DATE
,BRANCH VARCHAR(50)
,ROLLNO INT FOREIGN KEY REFERENCES TBL_STUDENT(ROLLNO)
)

CREATE TABLE TBL_RESULTS
(
ROLLNO INT FOREIGN KEY REFERENCES TBL_STUDENT(ROLLNO)
,NAME VARCHAR(50)
,BRANCH VARCHAR(50)
,COLLEGENAME VARCHAR(50)
,FATHERNAME VARCHAR(50)
)

ALTER TABLE [dbo].[TBL_CHECK] DROP COLUMN EMPID 

ALTER TABLE [TBL_CHECK] ADD PRIMARY KEY (EMPID)

SP_RENAME '[dbo].[TBL_STUDENT].[STUDENTNO]','ROLLNO','COLUMN'
