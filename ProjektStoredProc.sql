USE School

DROP PROC IF EXISTS PassedExamsForStudent

GO
CREATE PROC PassedExamsForStudent
@student_id INT
AS
BEGIN
SELECT e.exam_name
FROM Exam e
INNER JOIN ExamResult er
ON e.exam_Id = er.exam_Id
AND er.grade > 0
AND er.student_id = @student_id
END

GO
EXEC PassedExamsForStudent 1