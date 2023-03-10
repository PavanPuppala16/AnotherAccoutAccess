CREATE TABLE TBL_FIXITYEMP
(
Sno INT
,NAME VARCHAR(50)
,EMAIL VARCHAR(50)
,DOB DATE
,DOJ DATE
,SALARY INT
,ROLE VARCHAR(50)
,BATCH VARCHAR(50)
,STATUS BIT
)

SELECT * FROM TBL_FIXITYEMP

INSERT INTO TBL_FIXITYEMP VALUES(1,'VAMSI','VAMSI@GMAIL.COM','05/26/2000','07/26/2022',10000,'SE','JAVA',1)
INSERT INTO TBL_FIXITYEMP VALUES(2,'GANESH','GANESH@GMAIL.COM','04/06/2000','07/26/2022',10000,'SE','JAVA',1)
INSERT INTO TBL_FIXITYEMP VALUES(3,'RAVI','RAVI@GMAIL.COM','02/16/2000','07/26/2022',10000,'SE','.NET',1)
INSERT INTO TBL_FIXITYEMP VALUES(4,'TEJA','TEJA@GMAIL.COM','11/09/1999','07/26/2022',10000,'SE','NET',1)
INSERT INTO TBL_FIXITYEMP VALUES(5,'VARMA','VARMA@GMAIL.COM','09/28/2000','07/26/2022',10000,'SE','JAVA',1)


--CONSTRAINTS IN SQL  -->  ARE APPLIED WHILE CREATING A TABLE
--1.NOT NULL  IT WILL NOT ALLOW NULL VALUES
--2.UNIQUE  --> NO DUPLICATES
--3.DEFAULT  --> IT WILL TAKE DEFAULT VALUE
--4.CHECK  --> IT WILL CHK THE CONDTION
--5.IDENTITY  --> AUTO IMCREMENT

CREATE TABLE TBL_NOTNULL
(
 SNO INT NOT NULL
,NAME NVARCHAR(50) NOT NULL
,EMAILID NVARCHAR(50) NOT NULL
,DOB DATE NOT NULL
,DOJ DATE NOT NULL
,SALARY INT
,BONUS DECIMAL(18,2)
,ROLE VARCHAR(50)
,BATCH VARCHAR(50)
,STATUS BIT
)

SELECT * FROM TBL_NOTNULL

INSERT INTO TBL_NOTNULL VALUES(1,'ANIL','ANIL@FIXITY.COM','05/22/1995','07/11/2022',10000,1500,'TRAINEE','.NET',1)
INSERT INTO TBL_NOTNULL VALUES(2,'BHARGAV','BHARGAV@FIXITY.COM','02/12/1996','07/11/2022',20000,1500,'TRAINEE','.NET',1)
INSERT INTO TBL_NOTNULL VALUES(3,'DEVESENA','DEVA@FIXITY.COM','1996/05/22','07/11/2022',30000,1500,'TRAINEE','.NET',1)
INSERT INTO TBL_NOTNULL VALUES(4,'DIVYA','DIVY@FIXITY.COM','1995/05/22','07/11/2022',50000,1500,'TRAINEE','.NET',1)
INSERT INTO TBL_NOTNULL VALUES(5,'DURGA','DURGA@FIXITY.COM','05/23/1992','07/11/2022',60000,1500,'TRAINEE','.NET',1)

INSERT INTO TBL_NOTNULL(SNO,NAME,EMAILID,DOB,DOJ,SALARY,BONUS,STATUS) VALUES(6,'SUPRAJA','SUPRAJA@FIXITY.COM','05/23/1992','07/11/2022',60000,1500,1)
INSERT INTO TBL_NOTNULL(SNO,NAME,EMAILID,DOB,DOJ,SALARY,BONUS,ROLE,BATCH,STATUS) VALUES(7,'TEJA','TEJA@FIXITY.COM','05/23/1992','07/11/2022',60000,1500,'TRAINEE','.NET',1)

CREATE TABLE TBL_UNIQUE
(
 SNO INT NOT NULL UNIQUE
,NAME NVARCHAR(50) NOT NULL
,EMAILID NVARCHAR(50) NOT NULL UNIQUE
,DOB DATE NOT NULL 
,DOJ DATE NOT NULL
,SALARY INT 
,BONUS DECIMAL(18,2) 
,ROLE VARCHAR(50) 
,BATCH VARCHAR(50) 
,STATUS BIT 
)

SELECT * FROM TBL_UNIQUE

INSERT INTO TBL_UNIQUE VALUES(1,'ANIL','ANIL@FIXITY.COM','05/22/1995','07/11/2022',10000,1500,'TRAINEE','.NET',1)
INSERT INTO TBL_UNIQUE VALUES(2,'BHARGAV','BHARGAV@FIXITY.COM','02/12/1996','07/11/2022',20000,1500,'TRAINEE','.NET',1)
INSERT INTO TBL_UNIQUE VALUES(3,'DEVESENA','DEVA@FIXITY.COM','1996/05/22','07/11/2022',30000,1500,'TRAINEE','.NET',1)
INSERT INTO TBL_UNIQUE VALUES(4,'DIVYA','DIVY@FIXITY.COM','1995/05/22','07/11/2022',50000,1500,'TRAINEE','.NET',1)
INSERT INTO TBL_UNIQUE VALUES(5,'DURGA','DURGA@FIXITY.COM','05/23/1992','07/11/2022',60000,1500,'TRAINEE','.NET',1)

INSERT INTO TBL_UNIQUE(SNO,NAME,EMAILID,DOB,DOJ,SALARY,BONUS,STATUS) VALUES(6,'SUPRAJA','SUPRAJA@FIXITY.COM','05/23/1992','07/11/2022',60000,1500,1)
INSERT INTO TBL_UNIQUE(SNO,NAME,EMAILID,DOB,DOJ,SALARY,BONUS,ROLE,BATCH,STATUS) VALUES(9,'TEJA','TEJA@FIXITY.COM','05/23/1992','07/11/2022',60000,1500,'TRAINEE','.NET',1)


CREATE TABLE TBL_DEFAULT
(
ID INT UNIQUE
,NAME VARCHAR(50)
,ADDRESS VARCHAR(50)  DEFAULT 'HYD'
)

SELECT * FROM TBL_DEFAULT

INSERT INTO TBL_DEFAULT(ID,NAME,ADDRESS) VALUES(3,'KARTHIK','VSKP')
INSERT INTO TBL_DEFAULT(ID,NAME,ADDRESS) VALUES(4,'ANIL','SHRIDI')
INSERT INTO TBL_DEFAULT(ID,NAME,ADDRESS) VALUES(5,'ANIL','RAIPUR')
INSERT INTO TBL_DEFAULT(ID,NAME,ADDRESS) VALUES(7,'SUNIL','ORISSA')
INSERT INTO TBL_DEFAULT(ID,NAME) VALUES(7,'TEST')
INSERT INTO TBL_DEFAULT(ID,NAME) VALUES(8,'ABC')


CREATE TABLE TBL_CHECK
(
ID INT
,NAME VARCHAR(50)
,AGE INT NOT NULL CHECK (AGE BETWEEN 18 AND 15)
)

SELECT * FROM TBL_CHECK

INSERT INTO TBL_CHECK VALUES(1,'SAM',18)
INSERT INTO TBL_CHECK VALUES(2,'ANU',25)
INSERT INTO TBL_CHECK VALUES(3,'KHAN',100)
INSERT INTO TBL_CHECK VALUES(4,'TEST',1000)
INSERT INTO TBL_CHECK VALUES(5,'CHIRU',18)
INSERT INTO TBL_CHECK VALUES(6,'VAMSI',16)



CREATE TABLE TBL_IDENTITY
(
SNO INT IDENTITY(1,1)
,NAME VARCHAR(50)
)

SELECT * FROM TBL_IDENTITY

INSERT INTO TBL_IDENTITY VALUES('RAJ')
INSERT INTO TBL_IDENTITY VALUES('ANU')
INSERT INTO TBL_IDENTITY VALUES('SAM')
INSERT INTO TBL_IDENTITY VALUES('KHAN')
INSERT INTO TBL_IDENTITY VALUES('ANIL')

CREATE TABLE TBL_IDENTITYEXP
(
SNO INT IDENTITY (1,10)
,NAME VARCHAR(50)
,BRANCH VARCHAR(50)
,COLLEGENAME VARCHAR(50)
)

INSERT INTO TBL_IDENTITYEXP VALUES('VAMSI','CSE','AVANTHI')
INSERT INTO TBL_IDENTITYEXP VALUES('RAVI','ECE','AIET')
INSERT INTO TBL_IDENTITYEXP VALUES('GANESH','ECE','DIET')

SELECT * FROM TBL_IDENTITYEXP

SET IDENTITY_INSERT TBL_IDENTITYEXP ON;
INSERT INTO TBL_IDENTITYEXP(SNO,NAME,BRANCH,COLLEGENAME) VALUES(4,'VARMA','MECH','AVEN')
SET IDENTITY_INSERT TBL_IDENTITYEXP OFF;


------------------------PRACTICE-----PRACTICE-----PRACTICE------------------------------------

CREATE TABLE TB_NOTNULL
(
ROLLNO INT,
NAME VARCHAR(50) NOT NULL,
BRANCH VARCHAR(50)
)

ALTER TABLE [dbo].[TB_NOTNULL] ALTER COLUMN ROLLNO INT NOT NULL

ALTER TABLE [dbo].[TB_NOTNULL] ADD COLLEGE VARCHAR(50)

ALTER TABLE [dbo].[TB_NOTNULL] ADD PRIMARY KEY (ROLLNO)

CREATE TABLE TBL_DIFFERENTS
(
EMPID INT NOT NULL
,NAME VARCHAR(50) 
,COLLEGEID INT CHECK(COLLEGEID BETWEEN 100 AND 150) 
,SERIALNO INT UNIQUE
,COLLEGENAME VARCHAR(50) DEFAULT 'AVEN'
,LIBRARYNO INT PRIMARY KEY
)

INSERT INTO TBL_DIFFERENTS VALUES(1,'VAMSI',120,1456,'AVEN',15331)

SELECT * FROM TBL_DIFFERENTS
