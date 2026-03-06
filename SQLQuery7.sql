
-- 03_stored_procedure.sql
IF OBJECT_ID('dbo.usp_GetStudentAggregates', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_GetStudentAggregates;
GO

CREATE PROCEDURE dbo.usp_GetStudentAggregates
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        s.RollNo              AS RollNumber,
        s.StudentName         AS StudentName,
        d.DepartmentName      AS Department,
        COUNT(DISTINCT r.SubjectID) AS TotalSubjects,
        SUM(r.Marks)          AS TotalMarks,
        CAST(AVG(CAST(r.Marks AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS AverageMarks,
        MAX(r.Marks)          AS HighestMarks,
        MIN(r.Marks)          AS LowestMarks
    FROM dbo.Student s
    INNER JOIN dbo.Department d ON d.DepartmentID = s.DepartmentID
    INNER JOIN dbo.Result r      ON r.StudentID = s.StudentID
    GROUP BY s.RollNo, s.StudentName, d.DepartmentName
    ORDER BY s.RollNo;
END
GO
