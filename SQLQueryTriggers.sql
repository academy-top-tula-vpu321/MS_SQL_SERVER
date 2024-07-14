--CREATE TABLE product_log
--(
--	id INT PRIMARY KEY IDENTITY(1,1),
--	data_change DATETIME NOT NULL,
--	user_name VARCHAR(50) NOT NULL,
--	sql_command VARCHAR(50) NOT NULL,
--	id_product_old INT NULL,
--	id_product_new INT NULL,
--	id_category_old INT NULL,
--	id_category_new INT NULL,
--	id_brand_old INT NULL,
--	id_brand_new INT NULL,
--	product_title_old INT NULL,
--	product_title_new INT NULL,
--	product_price_old INT NULL,
--	product_price_new INT NULL
--)


CREATE TRIGGER TRG_product_log ON product
	AFTER INSERT, DELETE, UPDATE
	AS
	BEGIN
		DECLARE @sql VARCHAR(50)

		IF EXISTS(SELECT * FROM inserted)
			AND NOT EXISTS(SELECT * FROM deleted)
			SET @sql = 'insert'
		IF NOT EXISTS(SELECT * FROM inserted)
			AND EXISTS(SELECT * FROM deleted)
			SET @sql = 'delete'
		IF EXISTS(SELECT * FROM inserted)
			AND EXISTS(SELECT * FROM deleted)
			SET @sql = 'update'

		IF @sql = 'insert' OR @sql = 'update'
			BEGIN
				INSERT INTO product_log
				(
				data_change,
				user_name,
				sql_command,
				id_product_old,
				id_product_new,
				id_category_old,
				id_category_new,
				id_brand_old,
				id_brand_new,
				product_title_old,
				product_title_new,
				product_price_old,
				product_price_new
				)
				SELECT GETDATE(),
				SUSER_SNAME(),
				@sql,
				d.id,
				i.id,
				d.category_id,
				i.category_id,
				d.brand_id,
				i.brand_id,
				d.title,
				i.title,
				d.price,
				i.price
					FROM inserted AS i
					LEFT JOIN deleted AS d
						ON i.id = d.id
			END

		IF @sql = 'delete'
			BEGIN
				INSERT INTO product_log
				(
				data_change,
				user_name,
				sql_command,
				id_product_old,
				id_product_new,
				id_category_old,
				id_category_new,
				id_brand_old,
				id_brand_new,
				product_title_old,
				product_title_new,
				product_price_old,
				product_price_new
				)
				SELECT GETDATE(),
				SUSER_SNAME(),
				@sql,
				d.id,
				NULL,
				d.category_id,
				NULL,
				d.brand_id,
				NULL,
				d.title,
				NULL,
				d.price,
				NULL
					FROM deleted AS d
			END
	END

--DISABLE TRIGGER TRG_product_log ON product;
ENABLE TRIGGER TRG_product_log ON product;
INSERT INTO product
	(title, price, category_id, brand_id)
	VALUES
	('phone', 50000.00, 1, 4)
GO


UPDATE product
	SET price = 70000, 
		title = 'iPhone', 
		category_id = 4
	WHERE title = 'phone'
GO

DELETE FROM product
	WHERE title = 'iPhone'

GO
