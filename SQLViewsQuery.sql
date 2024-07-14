--CREATE VIEW ProductFull
--	AS
--	SELECT p.title,
--			b.title AS [brand],
--			c.title AS [category],
--			p.price
--		FROM product AS p
--		JOIN brand AS b 
--			ON p.brand_id = b.id
--		JOIN category AS c
--			ON p.category_id = c.id
--GO

--SELECT * FROM ProductFull
--	ORDER BY price

-- ALTER VIEW ProductFull
-- DROP VIEW ProductFull

--CREATE VIEW ClientView
--	AS 
--	SELECT c.last_name,
--			c.first_name,
--			c.birth_date,
--			c.phone
--		FROM client AS c
--GO

--INSERT INTO ClientView
--	(first_name, birth_date, phone)
--	VALUES
--	('Sammy', '1990-10-05', '+7 999 555-66-88')

--UPDATE ClientView 
--	SET first_name = 'Sammy'
--	WHERE last_name = 'Smith'

DELETE FROM ClientView
	WHERE last_name = 'Smith'

SELECT * FROM client
