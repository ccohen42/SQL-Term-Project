-- Stored Procedure to get instructor details
CREATE PROCEDURE GetInstructorDetails
    @InstructorID int,
    @InstructorName varchar(50) OUTPUT
AS
BEGIN
    SELECT @InstructorName = InstructorName
    FROM Instructors
    WHERE InstructorID = @InstructorID;
END;
GO
