USE AcademyDb
GO

--INSERT INTO [Teacher] (last_name, first_name, birth_date, salary, activity) 
--	VALUES
--	('������', DEFAULT, DEFAULT, DEFAULT, DEFAULT)	
	
	--('�������','��������', '1982-9-5', 95000),
	--('��������','�������', '1979-3-12', 105000),
	--('��������','�������', '1986-6-27', 115000)

--(
	--'������', '����', '1991', 110000.00, 1
	--'������', '����'
	--'1985-05-21', 90000.00, '�������', '�����'
--)
--GO

--UPDATE Teacher
--	SET birth_date = '1988-8-18', salary = 110000
--	WHERE id = 2

--UPDATE Teacher
--	SET salary = salary * 1.05
--	WHERE YEAR(birth_date) < 1991

--DELETE FROM Teacher
--	--WHERE id = 8
--	WHERE first_name IS NULL
