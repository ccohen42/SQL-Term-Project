USE College
GO

-- Create the Departments table without foreign key constraints
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE Departments(
	DepartmentID  int PRIMARY KEY NOT NULL, -- Primary key for the table
	DepartmentName  varchar(50) NULL, -- Name of the department
	HeadInstructorID int -- Foreign key referencing Instructors table
)
GO

-- Create the Instructors table without foreign key constraints
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE Instructors (
	InstructorID int PRIMARY KEY NOT NULL, -- Primary key for the table
	InstructorName varchar(50) NOT NULL, -- Name of the instructor
	DepartmentID int, -- Foreign key referencing Departments table
	IsHead bit NOT NULL -- Indicates if the instructor is the head of the department
) 
GO

-- Create the Courses table
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE Courses (
	CourseID int PRIMARY KEY NOT NULL, -- Primary key for the table
	CourseName varchar(50) NOT NULL, -- Name of the course
	DepartmentID int NOT NULL, -- Foreign key referencing Departments table
	InstructorID int NOT NULL, -- Foreign key referencing Instructors table
	FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID), -- Foreign key constraint
	FOREIGN KEY (InstructorID) REFERENCES Instructors (InstructorID) -- Foreign key constraint
) 
GO

-- Create the Students table
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE Students(
	StudentID int PRIMARY KEY NOT NULL, -- Primary key for the table
	StudentName varchar(50) NOT NULL, -- Name of the student
	CourseID int NOT NULL, -- Foreign key referencing Courses table
	FOREIGN KEY (CourseID) REFERENCES Courses (CourseID) -- Foreign key constraint
) 
GO
