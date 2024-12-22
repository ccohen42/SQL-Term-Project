-- Stored Procedure to get courses by department
CREATE PROCEDURE GetDepartmentCourses
    @DepartmentID int
AS
BEGIN
    SELECT CourseName
    FROM Courses
    WHERE DepartmentID = @DepartmentID;
END;
GO
