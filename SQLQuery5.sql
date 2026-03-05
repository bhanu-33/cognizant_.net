create database Assigment
use Assigment

CREATE TABLE Worker(
WORKER_ID INT PRIMARY KEY IDENTITY(1,1),
FIRST_NAME VARCHAR(25),
LAST_NAME VARCHAR(25),
SALARY INT,
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
)

CREATE TABLE Bonus(
WORKER_REF_ID INT,
BONUS_AMOUNT INT,
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)
ON DELETE CASCADE
)

CREATE TABLE Title(
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)
ON DELETE CASCADE
)

INSERT INTO Worker (FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES
('Monika', 'Arora', 100000, GETDATE(), 'HR'),
('Niharika', 'Verma', 80000, GETDATE(), 'Admin'),
('Vishal', 'Singhal', 300000, GETDATE(), 'HR'),
('Amitabh', 'Singh', 500000, GETDATE(), 'Admin'),
('Vivek', 'Bhati', 500000, GETDATE(), 'Admin'),
('Vipul', 'Diwan', 200000, GETDATE(), 'Account'),
('Satish', 'Kumar', 75000, GETDATE(), 'Account'),
('Geetika', 'Chauhan', 90000, GETDATE(), 'Admin');

INSERT INTO Bonus(WORKER_REF_ID, BONUS_DATE, BONUS_AMOUNT)
VALUES
(1,GETDATE(),5000),
(2,GETDATE(),3000),
(3,GETDATE(),4000),
(1,GETDATE(),4500),
(2,GETDATE(),3500);

INSERT INTO Title(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM)
VALUES
(1,'Manager',GETDATE()),
(2,'Executive',GETDATE()),
(8,'Executive',GETDATE()),
(5,'Manager',GETDATE()),
(4,'Asst.Manager',GETDATE()),
(7,'Executive',GETDATE()),
(6,'Lead',GETDATE()),
(3,'Lead',GETDATE());

SELECT FIRST_NAME AS WORKER_NAME FROM Worker; 
--- 1st answer

SELECT UPPER(FIRST_NAME) FROM Worker;
--- 2nd answer

SELECT DISTINCT DEPARTMENT FROM Worker;
--- 3rd answer

SELECT CHARINDEX('a',FIRST_NAME) FROM Worker WHERE FIRST_NAME = 'Amitabh';
--- 5th answer

select rtrim(FIRST_NAME) FROM Worker;
--- 6th answer

select ltrim(DEPARTMENT) from Worker;
--- 7th answer

select distinct DEPARTMENT, LEN(DEPARTMENT) FROM Worker;
--- 8th answer

select replace(FIRST_NAME, 'a', 'A') from Worker;
--- 9th answer

select FIRST_NAME + ''+LAST_NAME AS COMPLETE_NAME FROM Worker;
--- 10th answer

select * from Worker order by FIRST_NAME asc;
--- 11 answer

select * from Worker order by FIRST_NAME ASC, DEPARTMENT DESC;
--- 12 answer

select * from Worker WHERE FIRST_NAME IN ('Vipul','Satish');
--- 13 answer

select * from Worker WHERE FIRST_NAME NOT IN ('Vipul','Satish');
--- 14 answer

select * from Worker where DEPARTMENT = 'Admin';
--- 15 answer

select * from Worker where FIRST_NAME LIKE '%a%';
--- 16 answer

select * from Worker where FIRST_NAME like '%a';
--- 17 answer

select * from Worker where FIRST_NAME like '_____h';
--- 18 answer

select * from Worker where SALARY BETWEEN 100000 and 500000;
--- 19 answer

select FIRST_NAME from Worker where salary between 50000 and 100000;
--- 21 answer

select DEPARTMENT, COUNT(*) as NO_OF_WORKERS from Worker GROUP BY DEPARTMENT ORDER BY NO_OF_WORKERS desc;
--- 22 answer

select GETDATE();
--- 24 answer

select top 10 * from Worker;
--- 25 answer





