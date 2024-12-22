-- Uses several JOINs to show the connectivity between the tables
SELECT s.StudentName, c.CourseName, i.InstructorName, d.DepartmentName
FROM Students s
JOIN Courses c ON s.CourseID = c.CourseID
JOIN Instructors i ON c.InstructorID = i.InstructorID
JOIN Departments d ON i.DepartmentID = d.DepartmentID;
GO
