select ProductID from Production.Product
EXCEPT 
select DISTINCT ProductID from Production.WorkOrder;


SELECT ProductID FROM Production.Product
INTERSECT 
SELECT DISTINCT ProductID FROM Production.WorkOrder;