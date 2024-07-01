CREATE TABLE TeacherModule
(
	teacher_id INT NOT NULL,
	module_id INT NOT NULL,
	CONSTRAINT PK_TeacherModule PRIMARY KEY (teacher_id, module_id),
	CONSTRAINT FK_TeacherModule_Teacher
		FOREIGN KEY (teacher_id) REFERENCES Teacher(id),
	CONSTRAINT FK_TeacherModule_Module
		FOREIGN KEY (module_id) REFERENCES Module(id)
)
GO

CREATE TABLE GroupModule
(
	group_id INT NOT NULL,
	module_id INT NOT NULL,
	CONSTRAINT PK_GroupModule PRIMARY KEY (group_id, module_id),
	CONSTRAINT FK_GroupModule_Group
		FOREIGN KEY (group_id) REFERENCES GroupStudy(id),
	CONSTRAINT FK_GroupModule_Module
		FOREIGN KEY (module_id) REFERENCES Module(id)
)
GO