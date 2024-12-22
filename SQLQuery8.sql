-- Uses MAX to get the highest CourseID per department
SELECT DepartmentID, MAX(CourseID) AS MaxCourseID
FROM Courses
GROUP BY DepartmentID;
GO

