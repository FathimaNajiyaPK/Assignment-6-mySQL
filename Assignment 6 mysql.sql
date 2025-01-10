CREATE database Country;
use Country;

# Create a table named Country

CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);

# Create a table named Persons

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating INT,
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);
# Insert 10 Rows into the Country Table

INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331002651, 9833517),
(2, 'Canada', 37742154, 9984670),
(3, 'Brazil', 212559417, 8515767),
(4, 'India', 1380004385, 3287263),
(5, 'China', 1393409038, 9596961),
(6, 'Germany', 83783942, 357022),
(7, 'France', 67391582, 643801),
(8, 'Australia', 25499884, 7692024),
(9, 'Russia', 145934462, 17098242),
(10, 'Mexico', 128933207, 1964375);

# Insert 10 Rows into the Persons Table

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331002651, 5, 1, 'USA'),
(2, 'Jane', 'Smith', 37742154, 4, 2, 'Canada'),
(3, 'Carlos', 'Mendez', 212559417, 4, 3, 'Brazil'),
(4, 'Amit', 'Sharma', 1380004385, 5, 4, 'India'),
(5, 'Li', 'Wang', 1393409038, 3, 5, 'China'),
(6, 'Max', 'Müller', 83783942, 4, 6, 'Germany'),
(7, 'Sophie', 'Dupont', 67391582, 5, 7, 'France'),
(8, 'Jack', 'Johnson', 25499884, 4, 8, 'Australia'),
(9, 'Nikolai', 'Petrov', 145934462, 5, 9, 'Russia'),
(10, 'Maria', 'Garcia', 128933207, 4, 10, 'Mexico');

select* from persons;
select* from country;


-- INNER JOIN

SELECT Persons.Id AS Person_Id, Persons.Fname, Persons.Lname, Country.Country_name AS Country_Name
FROM Persons
INNER JOIN Country ON Persons.Country_Id = Country.Id;

-- LEFT JOIN 

SELECT Persons.Id AS Person_Id, Persons.Fname, Persons.Lname, Country.Country_name AS Country_Name
FROM Persons
LEFT JOIN Country ON Persons.Country_Id = Country.Id;

-- RIGHT JOIN 
 
SELECT Persons.Id AS Person_Id, Persons.Fname, Persons.Lname, Country.Country_name AS Country_Name
FROM Persons
RIGHT JOIN Country ON Persons.Country_Id = Country.Id;

-- ALL DISTINCT COUNTRY NAME FROM ABOVE TABLES

SELECT Country_name FROM Country
UNION
SELECT Country_name FROM Persons;


-- ALL COUNTRY NAME INCLUDING DUPLICATES FROM ABOVE TABLE

SELECT Country_name FROM Country
UNION ALL
SELECT Country_name FROM Persons;

-- Round the ratings of all persons to the nearest Integer in the Persons table.

SELECT rating,ROUND(rating) as rounded_rating FROM persons;

SELECT * FROM persons;