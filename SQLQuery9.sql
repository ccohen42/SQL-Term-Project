 -- Uses CASE to determine the role of the instructor
SELECT InstructorName, 
       CASE 
           WHEN IsHead = 1 THEN 'Head of Department'
           ELSE 'Instructor'
       END AS Role
FROM Instructors;
GO
