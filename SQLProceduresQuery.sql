--ALTER PROCEDURE AddProduct
--(
--	@title VARCHAR(50),
--	@price DECIMAL(8,2) = NULL,
--	@brand VARCHAR(50),
--	@category VARCHAR(50) = 'computers'
--	--@id INT OUTPUT
--)
--AS
--BEGIN
--	DECLARE @brand_id INT = NULL,
--			@category_id INT = NULL
--	SELECT @brand_id = b.id
--		FROM brand AS b
--		WHERE b.title = @brand
--	SELECT @category_id = c.id
--		FROM category AS c
--		WHERE c.title = @category
--	IF TRIM(@title) <> ''
--		INSERT INTO product
--			(title, brand_id, category_id, price)
--			VALUES
--			(@title, @brand_id, @category_id, @price)
	
--	DECLARE @id INT
--	SET @id = @@IDENTITY
--	RETURN @id
--END
--GO

--DECLARE @id INT

--EXECUTE @id = AddProduct 'burger', 300.00, '¬кусно и точка', 'foods' --, @id OUTPUT
--PRINT @id

--GO
--SELECT * FROM product
--DELETE FROM product WHERE id > 1002

--CREATE PROCEDURE GetProdInfo
--(
--	@id INT,
--	@title VARCHAR(50) OUTPUT,
--	@price DECIMAL(8,2) OUTPUT
--)
--AS
--BEGIN
--	SELECT @title = title, @price = price
--		FROM product
--		WHERE id = @id
--END

--DECLARE @t VARCHAR(50), @p DECIMAL(8,2)

--EXECUTE GetProdInfo 1, @t OUTPUT, @p OUTPUT
--SELECT @t, @p
USE shop
GO

--EXECUTE sys.sp_databases
--EXECUTE sp_helpdb 'shop'
EXECUTE sp_rename 'client', 'clients'
