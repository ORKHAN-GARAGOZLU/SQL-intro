CREATE DATABASE Department

USE Department

CREATE TABLE Employee(
  [Id] INT PRIMARY KEY IDENTITY,
  [Fullname] NVARCHAR(40) NOT NULL,
  [Age] TINYINT CHECK(Age >= 18) NOT NULL,
  [Email] VARCHAR(40) UNIQUE,
  [Salary] INT NOT NULL CHECK(Salary >= 345)
)

INSERT INTO Employee
VALUES('Adam Smith', 45, 'adamsmith@gmail.com', 1500),
      ('Adam Smith', 35, 'adamsmith1@gmail.com', 500),
	  ('Adam Smith', 18, 'adamsmith2@gmail.com', 500),
	  ('Adam Smith', 20, 'adamsmith3@gmail.com', 2500),
	  ('Adam Smith', 32, 'adamsmith4@gmail.com', 1000)
       
SELECT * FROM Employee

UPDATE Employee 
SET [Salary] = 1200 
WHERE [ID] = 1

SELECT * FROM Employee
WHERE [Salary] = 500

SELECT [Fullname], [Email], [Salary] FROM Employee

