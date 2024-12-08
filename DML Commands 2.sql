create database managers_db;
use managers_db;

CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY AUTO_INCREMENT,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age >= 20 AND Age <= 40),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F', 'O')),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2) NOT NULL
);

DESC Managers;

INSERT INTO Managers (Manager_Id, First_name, Last_name, DOB, Age, Gender, Department, Salary) VALUES
(1, 'John', 'Smith', '1994-05-10', 30, 'M', 'IT', 30000),
(2, 'Aaliya', 'Khan', '1993-07-15', 29, 'F', 'HR', 28000),
(3, 'David', 'Brown', '1995-08-22', 33, 'M', 'IT', 32000),
(4, 'Sarah', 'Miller', '1996-11-30', 27, 'F', 'Marketing', 25000),
(5, 'Michael', 'Lee', '1993-02-13', 31, 'O', 'Finance', 40000),
(6, 'Sophia', 'Taylor', '1997-03-25', 26, 'F', 'IT', 22000),
(7, 'William', 'Johnson', '1993-06-18', 36, 'M', 'Sales', 27000),
(8, 'Emily', 'Davis', '1998-01-09', 26, 'F', 'IT', 26000),
(9, 'James', 'Wilson', '1995-12-01', 29, 'M', 'HR', 24000),
(10, 'Olivia', 'Moore', '1996-09-14', 28, 'F', 'Marketing', 23000);

SELECT * FROM Managers;

SELECT First_name, Last_name, DOB 
FROM Managers 
WHERE Manager_Id = 1;

SELECT Manager_Id, First_name, Last_name, (Salary * 12) AS Annual_Income 
FROM Managers;

SELECT * 
FROM Managers 
WHERE First_name <> 'Aaliya';

SELECT * 
FROM Managers 
WHERE Department = 'IT' AND Salary > 25000;

SELECT * 
FROM Managers 
WHERE Salary BETWEEN 10000 AND 35000;

