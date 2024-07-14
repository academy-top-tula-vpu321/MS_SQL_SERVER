-- 1
DECLARE @id INT,
		@title VARCHAR(50),
		@price DECIMAL(8,2);

-- 2
DECLARE product_cursor 
	CURSOR FOR
	SELECT id, title, price 
		FROM product

--3
OPEN product_cursor

--4
FETCH NEXT FROM product_cursor 
	INTO @id, @title, @price

WHILE @@FETCH_STATUS = 0
BEGIN
	IF @price < 50000
		UPDATE product
			SET price = price * 1.05
			WHERE id = @id

	FETCH NEXT FROM product_cursor 
		INTO @id, @title, @price
END

--5
CLOSE product_cursor
DEALLOCATE product_cursor