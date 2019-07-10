--USING FETHC AND OFFSET--
SELECT ProductID, Name , ProductNumber , ListPrice
FROM Production.Product 
ORDER BY Name ASC
OFFSET 30 ROWS FETCH NEXT 15 ROWS ONLY;

