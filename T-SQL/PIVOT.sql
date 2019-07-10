SELECT * FROM PivotTest;
--Pivot-- Group by Sales ID and Sort of QTY by CustID
SELECT SalesID,
SUM(CASE WHEN CustID = 'A' THEN QTY END) as Alfa,
SUM(CASE WHEN CustID = 'B' THEN QTY END) as Beta,
SUM(CASE WHEN CustID = 'C' THEN QTY END) as Gama from PivotTest
Group BY SalesID;

SELECT 
	SalesID , A,B,C
FROM 
  ( SELECT 
			SalesId , CustID , Qty 
	FROM 
	PivotTest) as TempTable
PIVOT 
	(SUM(Qty) 
			FOR CustID IN (A,B,C)
	)as piv;