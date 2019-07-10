SELECT TOP 5 * FROM Production.Product;
SELECT TOP 5 * FROM Production.ProductReview


SELECT p.Name , pr.ProductReviewID FROM Production.Product p
JOIN
Production.ProductReview pr
ON
	pr.ProductID=p.ProductID

		SELECT p.Name , pr.ProductReviewID FROM Production.Product p
LEFT OUTER JOIN
Production.ProductReview pr
ON
	pr.ProductID=p.ProductID


	SELECT p.Name , pr.ProductReviewID FROM Production.Product p
RIGHT OUTER JOIN
Production.ProductReview pr
ON
	pr.ProductID=p.ProductID
 
SELECT p.Name ,SUM(pr.ProductReviewID) FROM Production.Product p
CROSS JOIN
Production.ProductReview pr
GROUP BY p.Name