-- Creating a database
CREATE DATABASE PersonsCountriesDB;
USE PersonsCountriesDB;

-- Creating Country table
CREATE TABLE Country (
    CountryID INT PRIMARY KEY AUTO_INCREMENT,
    CountryName VARCHAR(100)
);

-- Creating Persons table
CREATE TABLE Persons (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    CountryID INT,
    Rating DECIMAL(5, 2),
    FOREIGN KEY (CountryID) REFERENCES Country(CountryID)
);

-- Inserting values into Country table
INSERT INTO Country (CountryName)
VALUES
('USA'),
('Canada'),
('UK'),
('India'),
('Australia');

-- Inserting values into Persons table
INSERT INTO Persons (Name, CountryID, Rating)
VALUES
('John Doe', 1, 4.5),
('Jane Smith', 2, 3.7),
('Emily Davis', 3, 4.9),
('Chris Johnson', NULL, 3.2),
('Anna Brown', 4, 5.0);

-- 1.Inner Join:

SELECT Persons.ID, Persons.Name, Country.CountryName
FROM Persons
INNER JOIN Country
ON Persons.CountryID = Country.CountryID;

-- 2.Left Join:

SELECT Persons.ID, Persons.Name, Country.CountryName
FROM Persons
LEFT JOIN Country
ON Persons.CountryID = Country.CountryID;

-- 3.Right Join:

SELECT Persons.ID, Persons.Name, Country.CountryName
FROM Persons
RIGHT JOIN Country
ON Persons.CountryID = Country.CountryID;

-- 4.List all distinct country names from both tables:

SELECT DISTINCT CountryName
FROM (
    SELECT CountryName FROM Country
    UNION
    SELECT 'Unknown' AS CountryName
    FROM Persons
    WHERE CountryID IS NULL
) AS CombinedCountries;

-- 5.List all country names from both tables, including duplicates:

SELECT CountryName FROM Country
UNION ALL
SELECT 'Unknown' AS CountryName FROM Persons WHERE CountryID IS NULL;

-- 6.Round the ratings of all persons to the nearest integer:

UPDATE Persons
SET Rating = ROUND(Rating);
