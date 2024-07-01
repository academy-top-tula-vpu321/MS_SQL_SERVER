--SELECT last_name AS 'LastName', 
--	   first_name AS [FirstName],
--	   first_name + ' ' + last_name AS [FullName],
--	   salary AS [Salary],
--	   salary * 1.1 AS [SalaryWithBonus]
--	FROM Teacher
--	WHERE activity = 1 AND salary > 100000

--SELECT DISTINCT last_name
--	FROM Teacher

--SELECT DISTINCT first_name
--	FROM Student

--SELECT last_name, first_name, salary
--	INTO TeacherSalary
--	FROM Teacher

--SELECT * FROM TeacherSalary

--DELETE FROM Teacher
--	WHERE salary IS NULL


--INSERT INTO Teacher
--	(last_name, first_name, birth_date)
--	SELECT last_name, 
--	       first_name,
--		   birth_date
--		FROM Student
--		WHERE YEAR(birth_date) < 2000

--UPDATE Teacher
--	SET salary = salary + 5000
--	FROM
--	(SELECT teacher_id
--		FROM TeacherModule
--		WHERE module_id = 1) AS teachers
--	WHERE id = teachers.teacher_id

--DELETE Teacher FROM
--	(SELECT teacher_id
--		FROM TeacherModule
--		WHERE module_id = 5 OR module_id = 6) AS teachers
--	WHERE id = teachers.teacher_id

--ALTER TABLE TeacherModule
--	DROP CONSTRAINT [FK_TeacherModule_Teacher]
--GO

--ALTER TABLE TeacherModule
--	ADD CONSTRAINT [FK_TeacherModule_Teacher]
--		FOREIGN KEY (teacher_id) REFERENCES Teacher(id)
--			ON DELETE CASCADE
--GO


SELECT *
	FROM Student
	ORDER BY last_name ASC
		OFFSET 9 ROWS
		FETCH NEXT 5 ROWS ONLY