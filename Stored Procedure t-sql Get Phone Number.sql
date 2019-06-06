
Create Procedure GetPhoneNUmber 
@lastname varchar(50)='%',
@firstname varchar(50) ='%'
AS
SELECT p.FirstName  + '   ' + p.LastName , pp.PhoneNumber FROM Person.Person p
JOIN Person.PersonPhone pp
on P.BusinessEntityID = pp.BusinessEntityID
WHERE LastName LIKE @lastname AND FirstName LIKE @firstname;

GetPhoneNumber '%ams','Ale%'