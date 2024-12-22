-- Add Default Constraints
ALTER TABLE Departments ADD CONSTRAINT DF_Departments_DepartmentName DEFAULT ('Unknown Department') FOR DepartmentName
GO

ALTER TABLE Instructors ADD CONSTRAINT DF_Instructors_IsHead DEFAULT (0) FOR IsHead
GO

-- Add Foreign Key Constraints
ALTER TABLE Departments ADD CONSTRAINT FK_Departments_HeadInstructor FOREIGN KEY (HeadInstructorID)
REFERENCES Instructors (InstructorID)
GO

ALTER TABLE Instructors ADD CONSTRAINT FK_Instructors_Departments FOREIGN KEY (DepartmentID)
REFERENCES Departments (DepartmentID)
GO
