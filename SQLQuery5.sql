
-- 01_create_tables.sql
-- Normalized schema to 3NF for student marks dataset

-- Drop objects if they exist (idempotent script for SQL Server)
IF OBJECT_ID('dbo.Result', 'U') IS NOT NULL DROP TABLE dbo.Result;
IF OBJECT_ID('dbo.[Subject]', 'U') IS NOT NULL DROP TABLE dbo.[Subject];
IF OBJECT_ID('dbo.Student', 'U') IS NOT NULL DROP TABLE dbo.Student;
IF OBJECT_ID('dbo.Department', 'U') IS NOT NULL DROP TABLE dbo.Department;
GO

-- Department dimension
CREATE TABLE dbo.Department (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName NVARCHAR(100) NOT NULL UNIQUE
);
GO

-- Student dimension
CREATE TABLE dbo.Student (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    RollNo INT NOT NULL UNIQUE,
    StudentName NVARCHAR(100) NOT NULL,
    Gender NVARCHAR(20) NOT NULL,
    DepartmentID INT NOT NULL,
    CONSTRAINT FK_Student_Department FOREIGN KEY (DepartmentID)
        REFERENCES dbo.Department(DepartmentID),
    CONSTRAINT CK_Student_Gender CHECK (Gender IN ('Male','Female','Other'))
);
GO

-- Subject dimension
CREATE TABLE dbo.[Subject] (
    SubjectID INT IDENTITY(1,1) PRIMARY KEY,
    SubjectName NVARCHAR(100) NOT NULL UNIQUE
);
GO

-- Fact table: results/marks
CREATE TABLE dbo.Result (
    ResultID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT NOT NULL,
    SubjectID INT NOT NULL,
    Semester TINYINT NOT NULL,
    Marks INT NOT NULL,
    CONSTRAINT FK_Result_Student FOREIGN KEY (StudentID)
        REFERENCES dbo.Student(StudentID),
    CONSTRAINT FK_Result_Subject FOREIGN KEY (SubjectID)
        REFERENCES dbo.[Subject](SubjectID),
    CONSTRAINT CK_Result_Semester CHECK (Semester BETWEEN 1 AND 12),
    CONSTRAINT CK_Result_Marks CHECK (Marks BETWEEN 0 AND 100),
    CONSTRAINT UQ_Result UNIQUE (StudentID, SubjectID, Semester)
);
GO
