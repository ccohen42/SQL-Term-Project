-- Creates a view for Instructors
CREATE VIEW View_Instructors AS
SELECT InstructorID, InstructorName, DepartmentID
FROM Instructors;
GO

-- Creates a view for Courses
CREATE VIEW View_Courses AS
SELECT CourseID, CourseName, DepartmentID, InstructorID
FROM Courses;
GO
