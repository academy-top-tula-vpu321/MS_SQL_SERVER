--CREATE TABLE #Prods
--(
--	id INT IDENTITY(1,1),
--	title VARCHAR(50),
--	price DECIMAL(8,2)
--)

--SELECT p.title,
--		b.title AS [brand],
--		p.price
--	INTO #tempProds
--	FROM product AS p
--	JOIN brand AS b
--		ON p.brand_id = b.id

WITH TempProds AS
(
	SELECT p.title,
		b.title AS [brand],	
		p.price
	FROM product AS p
	JOIN brand AS b
		ON p.brand_id = b.id
)

SELECT * FROM TempProds
