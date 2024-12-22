-- Uses GROUP BY ORDER BY and COUNT to get the number of courses per department
SELECT DepartmentID, COUNT(*) AS NumberOfCourses
FROM Courses
GROUP BY DepartmentID
ORDER BY NumberOfCourses DESC;
GO
