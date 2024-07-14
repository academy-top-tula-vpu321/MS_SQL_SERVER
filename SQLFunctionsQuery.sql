--ALTER FUNCTION MinPrice
--	(
--		@brandId INT
--	)
--	RETURNS DECIMAL(8,2)
--	AS
--	BEGIN
--		--DECLARE @prodName VARCHAR(50)
--		--SELECT @prodName = p.title
--		--	FROM product AS p,
--		--	(SELECT MIN(price) AS price FROM product) AS pt
--		--	WHERE p.price = pt.price
--		--RETURN @prodName

--		DECLARE @prodPrice DECIMAL(8,2)
--		SELECT @prodPrice = MIN(price) 
--			FROM product AS p
--			WHERE p.brand_id = @brandId
--		RETURN @prodPrice
--	END

--SELECT *
--	FROM product AS p
--	WHERE p.price = dbo.MinPrice(3)


CREATE FUNCTION ProdCategory
	(
		@categoryId INT
	)
	RETURNS TABLE
	AS

		RETURN SELECT 
				p.title,
				b.title AS [brand],
				c.title AS [category],
				p.price
					FROM product AS p
					JOIN brand AS b ON p.brand_id = b.id
					JOIN category AS c ON p.category_id = c.id
					WHERE p.category_id = @categoryId

--SELECT * FROM ProdCategory(1)