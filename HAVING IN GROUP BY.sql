 

SELECT  ProductID , SUM(LineToTal) 'TOTAL'FROM Sales.SalesOrderDetail
WHERE LineTotal>2000
GROUP BY ProductID
HAVING SUM(LineTotal)>550000
ORDER BY 'TOTAL';