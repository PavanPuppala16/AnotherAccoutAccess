---UPDATE COMMAND---DELETE COMMAND---TRUNCATE COMMAND---

select * from  [dbo].[TBL_UNIQUE]

insert into [TBL_UNIQUE] values(10,'moin','moin@yahoo.com','05/29/1990','07/11/2022',10000,1500,'trainer','.net',1)

--update and delete command

update [TBL_UNIQUE]  set role='TRAINEE' , batch='.Net' where sno=6

UPDATE TBL_UNIQUE SET NAME = 'MOIN', EMAILID = 'MOIN@FIXITYTECH.COM', ROLE = 'TRAINER', BATCH = '.NET' WHERE SNO = 10 

update [TBL_UNIQUE] set salary=50000 where batch='.net'

update [TBL_UNIQUE] set bonus='2000'  where role='TRAINEE'

--unique field , identity, primary key

update [TBL_UNIQUE] set bonus='1500'  where sno=1
update [TBL_UNIQUE] set bonus='1700'  where sno=2
update [TBL_UNIQUE] set bonus='1400'  where sno=3
update [TBL_UNIQUE] set bonus='1800'  where sno=4
update [TBL_UNIQUE] set bonus='1600'  where sno=5
update [TBL_UNIQUE] set bonus='1500'  where sno=6

UPDATE TBL_UNIQUE SET SALARY = 30000 WHERE SNO = 8

update [TBL_UNIQUE] set bonus='3000'
--all will changes
--error
--only one row


-------delete for deleting the data---


delete from [TBL_UNIQUE] where BONUS='1400'

delete from [TBL_UNIQUE]

--we cant delete specific cell value

update [TBL_UNIQUE] set batch='' where sno=02

select * from  [dbo].[TBL_UNIQUE]

-- using we can delete complete table and also specific row
delete from [TBL_UNIQUE] where sno= 3


--truncate for deleting the data

truncate table [TBL_UNIQUE] where sno=8

select * from  [dbo].[TBL_UNIQUE]

select * from [TBL_IDENTITY]


delete from [TBL_IDENTITY]  -- 

truncate table [TBL_UNIQUE] --

---------------drop remove complete data with structure---------


alter table [TBL_UNIQUE] drop column status

drop table [TBL_UNIQUE]

drop database --enter database name


-- Create alter drop   --->   realted to structure  --> ddl
-- Insert update delete truncate  --> realtes to data  --> dml

SELECT * FROM TBL_UNIQUE


--------------------------------------PRACTICE-----------------------------------------

CREATE TABLE TBL_FIXITY
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

SELECT * FROM TBL_FIXITY

INSERT INTO TBL_FIXITY VALUES(1,'VAMSI','VAMSI@GMAIL.COM','05/26/2000','07/26/2022',10000,'SE','JAVA',1)
INSERT INTO TBL_FIXITY VALUES(2,'GANESH','GANESH@GMAIL.COM','04/06/2000','07/26/2022',10000,'SE','JAVA',1)
INSERT INTO TBL_FIXITY VALUES(3,'RAVI','RAVI@GMAIL.COM','02/16/2000','07/26/2022',10000,'SE','.NET',1)
INSERT INTO TBL_FIXITY VALUES(4,'TEJA','TEJA@GMAIL.COM','11/09/1999','07/26/2022',10000,'SE','NET',1)
INSERT INTO TBL_FIXITY VALUES(5,'VARMA','VARMA@GMAIL.COM','09/28/2000','07/26/2022',10000,'SE','JAVA',1)

TRUNCATE TABLE TBL_FIXITY

ALTER TABLE TBL_FIXITY ADD BONUS INT

UPDATE TBL_FIXITY SET BONUS = 3000

UPDATE TBL_FIXITY SET ROLE = 'SD' WHERE BATCH = 'JAVA'

UPDATE TBL_FIXITY SET STATUS = 0 WHERE NAME = 'VARMA'

UPDATE TBL_FIXITY SET SALARY = NULL WHERE STATUS = 0

DELETE TBL_FIXITY WHERE STATUS =0

DELETE TBL_FIXITY WHERE BATCH = 'JAVA'

UPDATE TBL_FIXITY SET SALARY = NULL WHERE SNO = 3

DELETE TBL_FIXITY WHERE NAME = 'RAVI'