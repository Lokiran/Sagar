-- 02_insert_seed_data.sql
SET NOCOUNT ON;

-- Insert Departments
SET IDENTITY_INSERT dbo.Department ON; INSERT INTO dbo.Department (DepartmentID, DepartmentName) VALUES (1, N'Computer Science'); SET IDENTITY_INSERT dbo.Department OFF;
SET IDENTITY_INSERT dbo.Department ON; INSERT INTO dbo.Department (DepartmentID, DepartmentName) VALUES (2, N'Electronics'); SET IDENTITY_INSERT dbo.Department OFF;
SET IDENTITY_INSERT dbo.Department ON; INSERT INTO dbo.Department (DepartmentID, DepartmentName) VALUES (3, N'Civil'); SET IDENTITY_INSERT dbo.Department OFF;
SET IDENTITY_INSERT dbo.Department ON; INSERT INTO dbo.Department (DepartmentID, DepartmentName) VALUES (4, N'IT'); SET IDENTITY_INSERT dbo.Department OFF;

-- Insert Students
SET IDENTITY_INSERT dbo.Student ON; INSERT INTO dbo.Student (StudentID, RollNo, StudentName, Gender, DepartmentID) VALUES (1, 1, N'Amit', N'Male', 1); SET IDENTITY_INSERT dbo.Student OFF;
SET IDENTITY_INSERT dbo.Student ON; INSERT INTO dbo.Student (StudentID, RollNo, StudentName, Gender, DepartmentID) VALUES (2, 2, N'Sagar', N'Male', 2); SET IDENTITY_INSERT dbo.Student OFF;
SET IDENTITY_INSERT dbo.Student ON; INSERT INTO dbo.Student (StudentID, RollNo, StudentName, Gender, DepartmentID) VALUES (3, 3, N'Riya', N'Female', 1); SET IDENTITY_INSERT dbo.Student OFF;
SET IDENTITY_INSERT dbo.Student ON; INSERT INTO dbo.Student (StudentID, RollNo, StudentName, Gender, DepartmentID) VALUES (4, 4, N'Neha', N'Female', 3); SET IDENTITY_INSERT dbo.Student OFF;
SET IDENTITY_INSERT dbo.Student ON; INSERT INTO dbo.Student (StudentID, RollNo, StudentName, Gender, DepartmentID) VALUES (5, 5, N'Karan', N'Male', 3); SET IDENTITY_INSERT dbo.Student OFF;
SET IDENTITY_INSERT dbo.Student ON; INSERT INTO dbo.Student (StudentID, RollNo, StudentName, Gender, DepartmentID) VALUES (6, 6, N'Vijay', N'Male', 1); SET IDENTITY_INSERT dbo.Student OFF;
SET IDENTITY_INSERT dbo.Student ON; INSERT INTO dbo.Student (StudentID, RollNo, StudentName, Gender, DepartmentID) VALUES (7, 7, N'Anita', N'Female', 1); SET IDENTITY_INSERT dbo.Student OFF;
SET IDENTITY_INSERT dbo.Student ON; INSERT INTO dbo.Student (StudentID, RollNo, StudentName, Gender, DepartmentID) VALUES (8, 8, N'Sonal', N'Female', 2); SET IDENTITY_INSERT dbo.Student OFF;
SET IDENTITY_INSERT dbo.Student ON; INSERT INTO dbo.Student (StudentID, RollNo, StudentName, Gender, DepartmentID) VALUES (9, 9, N'Rahul', N'Male', 3); SET IDENTITY_INSERT dbo.Student OFF;
SET IDENTITY_INSERT dbo.Student ON; INSERT INTO dbo.Student (StudentID, RollNo, StudentName, Gender, DepartmentID) VALUES (10, 10, N'Tina', N'Female', 4); SET IDENTITY_INSERT dbo.Student OFF;

-- Insert Subjects
SET IDENTITY_INSERT dbo.[Subject] ON; INSERT INTO dbo.[Subject] (SubjectID, SubjectName) VALUES (1, N'Physics'); SET IDENTITY_INSERT dbo.[Subject] OFF;
SET IDENTITY_INSERT dbo.[Subject] ON; INSERT INTO dbo.[Subject] (SubjectID, SubjectName) VALUES (2, N'Electronics'); SET IDENTITY_INSERT dbo.[Subject] OFF;
SET IDENTITY_INSERT dbo.[Subject] ON; INSERT INTO dbo.[Subject] (SubjectID, SubjectName) VALUES (3, N'Data Structures'); SET IDENTITY_INSERT dbo.[Subject] OFF;
SET IDENTITY_INSERT dbo.[Subject] ON; INSERT INTO dbo.[Subject] (SubjectID, SubjectName) VALUES (4, N'Programming'); SET IDENTITY_INSERT dbo.[Subject] OFF;
SET IDENTITY_INSERT dbo.[Subject] ON; INSERT INTO dbo.[Subject] (SubjectID, SubjectName) VALUES (5, N'Maths'); SET IDENTITY_INSERT dbo.[Subject] OFF;

-- Insert Results
INSERT INTO dbo.Result (StudentID, SubjectID, Semester, Marks) VALUES (1, 1, 1, 74);
INSERT INTO dbo.Result (StudentID, SubjectID, Semester, Marks) VALUES (2, 2, 5, 98);
INSERT INTO dbo.Result (StudentID, SubjectID, Semester, Marks) VALUES (3, 2, 6, 45);
INSERT INTO dbo.Result (StudentID, SubjectID, Semester, Marks) VALUES (4, 1, 2, 88);
INSERT INTO dbo.Result (StudentID, SubjectID, Semester, Marks) VALUES (5, 3, 2, 69);
INSERT INTO dbo.Result (StudentID, SubjectID, Semester, Marks) VALUES (6, 4, 4, 66);
INSERT INTO dbo.Result (StudentID, SubjectID, Semester, Marks) VALUES (7, 3, 6, 86);
INSERT INTO dbo.Result (StudentID, SubjectID, Semester, Marks) VALUES (8, 1, 1, 52);
INSERT INTO dbo.Result (StudentID, SubjectID, Semester, Marks) VALUES (9, 1, 4, 98);
INSERT INTO dbo.Result (StudentID, SubjectID, Semester, Marks) VALUES (10, 5, 1, 86);