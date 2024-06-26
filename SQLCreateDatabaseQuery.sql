--CREATE DATABASE AcademyDb
--ALTER DATABASE AcademyDB MODIFY NAME = AcademyDb
--DROP DATABASE AcademyDb
--GO

USE AcademyDb
GO

CREATE TABLE temp_table 
(
	id INT NOT NULL,
	title VARCHAR(20)
)
GO

ALTER TABLE temp_table 
	--ALTER COLUMN title VARCHAR(50)
	ADD activity BIT
GO

DROP TABLE temp_table
GO

