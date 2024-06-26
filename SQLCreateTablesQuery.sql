--CREATE TABLE Teacher
--(
--	id INT IDENTITY(1,1) PRIMARY KEY,
--	last_name VARCHAR(50) NOT NULL,
--	first_name VARCHAR(50) NULL,
--	activity BIT DEFAULT(1)
--)

--CREATE TABLE Student
--(
--	id INT IDENTITY(1,1) NOT NULL,
--	last_name NVARCHAR(50) NOT NULL,
--	age INT NULL,
--	group_id INT NULL,
--	phone NVARCHAR(20) NULL,
--	activity BIT NOT NULL CONSTRAINT DF_Activity DEFAULT 1,

--	CONSTRAINT PK_StudentId PRIMARY KEY (id),
--	CONSTRAINT UQ_Phone UNIQUE (phone),
--	--CONSTRAINT DF_Activity DEFAULT ((1)) FOR [activity],
--	CONSTRAINT CK_Age CHECK (age > 0 AND age < 100),
--	CONSTRAINT FK_StudentGroup FOREIGN KEY (group_id) REFERENCES [StudyGroup] (id)
--		ON DELETE 
--					--CASCADE - cascade delete
--					--NO ACTION
--					SET NULL
--					--SET DEFAULT

--)

--CREATE TABLE StudyGroup
--(
--	id INT IDENTITY(1,1) PRIMARY KEY,
--	title NVARCHAR(10) NOT NULL,
--	activity BIT DEFAULT (1)
--)

--ALTER TABLE Student
--	DROP CK_Age;
--GO

--ALTER TABLE Student
--	DROP COLUMN age;
--GO

--ALTER TABLE Student
--	ADD birth_date DATE NULL;
--GO

--ALTER TABLE Student
--	ADD CONSTRAINT CK_BirthDate CHECK 
--		(
--		YEAR(birth_date) > YEAR(GETDATE()) - 100 
--		AND YEAR(birth_date) <= YEAR(GETDATE()) - 16
--		);
--GO