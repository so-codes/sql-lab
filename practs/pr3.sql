-- @block
CREATE TABLE Persons
(
PersonID int,
LastName varchar(255),
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);

-- @block
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (1, 'Doe', 'John', 'Highway 71', 'New York');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (2, 'Taz', 'Kurizu', 'Highway 72', 'London');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (3, 'Moe', 'Charls', 'Highway 73', 'Tokyo');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (4, 'Lua', 'Jane', 'Highway 74', 'New York');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (5, 'Rez', 'Lisa', 'Highway 75', 'Chicago');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (6, 'Muc', 'Hiro', 'Highway 76', 'Tokyo');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (7, 'Kur', 'Kurisu', 'Highway 77', 'London');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (8, 'Lop', 'Makise', 'Highway 78', 'Kyoto');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (9, 'Urt', 'Criz', 'Highway 79', 'Paris');
INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES (10, 'Nat', 'Maki', 'Highway 80', 'Washington');

-- @block
SELECT PersonID, FirstName, City FROM Persons;

-- @block
UPDATE Persons SET City = 'Mumbai' WHERE PersonID = 5;

-- @block
SELECT * FROM Persons;

-- @block
DELETE FROM Persons WHERE PersonID = 9;