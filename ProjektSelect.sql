USE School

--Find alle studerende, der har fået 12
SELECT *
FROM Student s
INNER JOIN ExamResult er
ON er.student_id = s.student_id
AND er.grade = 12

--Find alle studerende, der har bestået eksaminer, men aldrig er dumpet
SELECT * FROM Student 
WHERE student_id in
 (
	SELECT student_id FROM ExamResult
	WHERE grade > 0
	AND student_id NOT IN (SELECT student_id FROM ExamResult WHERE grade < 2)
)

--Find gennemsnittet af de beståede eksamensresultater, grupper efter exam_name
--Ved brug af INNER JOIN
SELECT e.exam_name, AVG(CAST(er.grade AS DECIMAL(4,2))) AS averagePassedGrade
FROM Exam e
INNER JOIN ExamResult er
ON e.exam_id = er.exam_id
AND er.grade > 0
GROUP BY e.exam_name

--Find gennemsnittet af eksamensresultater for en eksamen, inklusiv de dumpede
--Ved brug af where 
SELECT e.exam_name, AVG(CAST(er.grade AS DECIMAL(4,2))) AS averageGrade
FROM Exam e, ExamResult er
WHERE e.exam_id = er.exam_id
GROUP BY e.exam_name
