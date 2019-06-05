SELECT FirstName +'  '+ LastName FROM Person.Person
WHERE LastName ='Jones';

SELECT LastName  +'  '+ FirstName  FROM Person.Person
WHERE LastName LIKE 'B%';

SELECT LastName  +'  '+ FirstName  FROM Person.Person
WHERE LastName LIKE '[ADG]%';

SELECT LastName  +'  '+ FirstName  FROM Person.Person
WHERE FirstName LIKE '%DAV%';
