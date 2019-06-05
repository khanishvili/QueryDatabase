CREATE TABLE Employee
(
EID INT NOT NULL,
FirstName VARCHAR(10) NOT NULL,
LastName VARCHAR(25) NOT NULL,
StreetAdress VARCHAR(70) NOT NULL,
City VARCHAR(12) NOT NULL,
State CHAR(2)
)

CREATE TABLE Costumers
(
CID INT NOT NULL,
FirstName VARCHAR(10) NOT NULL,
LastName VARCHAR(25) NOT NULL,
StreetAdress VARCHAR(70) NOT NULL,
City VARCHAR(12) NOT NULL,
State CHAR(2)
)




SELECT * FROM Employee;


INSERT INTO Costumers VALUES('111','Michael','Royski','777 Cleveland DR' ,'Akron' , 'OH');
INSERT INTO Costumers VALUES('112','Donald','Trump','1600 Pennsylvania Ave NW' ,'Washington' , 'DC');
INSERT INTO Costumers VALUES('113','George','Bush','412 Freedom DR' ,'Dallas' , 'TX');
INSERT INTO Costumers VALUES('114','Benjamin','Franklin','.net Drive' ,'Kersey' , 'PA');
INSERT INTO Costumers VALUES('115','Volfgang','Goete' , '182 Marks Ave' ,'Cleveland' , 'TX');


SELECT FirstName , LastName , StreetAdress , City FROM Employee
UNION
SELECT FirstName , LastName , StreetAdress , City FROM Costumers
ORDER BY LastName, FirstName ASC;
