DECLARE @price INT

DECLARE @prods TABLE
(
	title VARCHAR(50),
	price DECIMAL(8,2)
)


INSERT INTO @prods
	(title, price)
	VALUES
	('clock', 35000.00)


SELECT * FROM @prods
