-- Insert data into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName, HeadInstructorID)
VALUES (1, 'Computer Science', 1),
       (2, 'Mathematics', 2),
       (3, 'Physics', 3);
GO

-- Insert data into the Instructors table
INSERT INTO Instructors (InstructorID, InstructorName, DepartmentID, IsHead)
VALUES (1, 'Dr. Alice Smith', 1, 1),
       (2, 'Dr. Bob Johnson', 2, 1),
       (3, 'Dr. Carol White', 3, 1),
       (4, 'Dr. David Brown', 1, 0),
       (5, 'Dr. Eve Davis', 2, 0);
GO

-- Insert data into the Courses table
INSERT INTO Courses (CourseID, CourseName, DepartmentID, InstructorID)
VALUES (1, 'Introduction to Programming', 1, 1),
       (2, 'Data Structures', 1, 4),
       (3, 'Calculus I', 2, 2),
       (4, 'Linear Algebra', 2, 5),
       (5, 'Quantum Mechanics', 3, 3);
GO

-- Insert data into the Students table
INSERT INTO Students (StudentID, StudentName, CourseID)
VALUES (1, 'John Doe', 1),
       (2, 'Jane Smith', 2),
       (3, 'Emily Johnson', 3),
       (4, 'Michael Brown', 4),
       (5, 'Sarah Davis', 5);
GO
