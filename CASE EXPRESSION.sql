--case epxression--

SELECT ProductID, Name ,Availability = 
 CASE DaysToManufacture
		WHEN 0 THEN 'Imediate'
		WHEN 1 THEN 'Two Business Days'
		WHEN 2 Then 'Threee Business Days'
		WHEN 3 Then 'Four Business Days'
	ELSE 'Verify Availability'
 END
FROM Production.Product;

 SELECT ProductID, Name ,Availability = 
		CASE 
			WHEN DaysToManufacture = '0' THEN 'Imediate'
			WHEN DaysToManufacture > 0 AND  DaysToManufacture < '4'THEN 'Four Business Days'
			WHEN DaysToManufacture = 4 THEN 'Six Business Days'
			ELSE 'Verify Availability'
		END
 FROM Production.Product;
